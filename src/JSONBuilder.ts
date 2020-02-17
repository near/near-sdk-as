import {
  Node,
  FunctionDeclaration,
  NodeKind,
  Source,
  SourceKind,
  TypeNode,
  ClassDeclaration,
  DeclarationStatement,
  Parser,
  CommonFlags,
  FieldDeclaration,
  ParameterNode,
} from "./ast";
import { ASTBuilder } from "./ASTBuilder";
import { BaseVisitor } from "./base";

function returnsVoid(node: FunctionDeclaration): boolean {
  return toString(node.signature.returnType) === "void";
}

function numOfParameters(node: FunctionDeclaration): number {
  return node.signature.parameters.length;
}

function hasNearDecorator(stmt: Source): boolean {
  return stmt.text.includes("@nearfile") || isEntry(stmt);
}

function toString(node: Node): string {
  return ASTBuilder.build(node);
}

export function isEntry(source: Source | Node): boolean {
  let _source = <Source>(
    (source.kind == NodeKind.SOURCE ? source : source.range.source)
  );
  return _source.sourceKind == SourceKind.USER_ENTRY;
}

function isClass(type: Node): boolean {
  return type.kind == NodeKind.CLASSDECLARATION;
}

function isField(mem: DeclarationStatement) {
  return mem.kind == NodeKind.FIELDDECLARATION;
}

// TODO: Extract this into separate module, preferrable pluggable
export class JSONBindingsBuilder extends BaseVisitor {
  private sb: string[] = [];
  private exportedClasses: Map<string, ClassDeclaration> = new Map();
  wrappedFuncs: Set<string> = new Set();

  static build(parser: Parser, source: Source): string {
    return new JSONBindingsBuilder().build(source);
  }

  static nearFiles(parser: Parser): Source[] {
    return parser.program.sources.filter(hasNearDecorator);
  }

  visitClassDeclaration(node: ClassDeclaration): void {
    if (!this.exportedClasses.has(toString(node.name))) {
      this.exportedClasses.set(toString(node.name), node);
    }
    super.visitClassDeclaration(node);
  }

  visitFunctionDeclaration(node: FunctionDeclaration): void {
    if (
      !isEntry(node) ||
      this.wrappedFuncs.has(toString(node.name)) ||
      !node.is(CommonFlags.EXPORT) ||
      (numOfParameters(node) == 0 && returnsVoid(node))
    ) {
      super.visitFunctionDeclaration(node);
      return;
    }
    this.generateWrapperFunction(node);
    // Change function to not be an export
    node.flags = node.flags ^ CommonFlags.EXPORT;
    this.wrappedFuncs.add(toString(node.name));
    super.visit(node);
  }

  /*
  Create a wrapper function that will be export in the function's place.
  */
  private generateWrapperFunction(func: FunctionDeclaration) {
    let signature = func.signature;
    let params = signature.parameters;
    let returnType = signature.returnType;
    let returnTypeName = toString(returnType)
      .split("|")
      .map(name => name.trim())
      .filter(name => name !== "null")
      .join("|");
    let hasNull = toString(returnType).includes("null");
    let name = func.name.text;

    this.sb.push(`function __wrapper_${name}(): void {`);
    if (params.length > 0) {
      this.sb.push(`  const obj = getInput();`);
    }
    if (toString(returnType) !== "void") {
      this.sb.push(`  let result: ${toString(returnType)} = ${name}(`);
    } else {
      this.sb.push(`  ${name}(`);
    }
    if (params.length > 0) {
      this.sb[this.sb.length - 1] += params
        .map(param => createDecodeStatement(param))
        .join(", ");
    }
    this.sb[this.sb.length - 1] += ");";
    if (toString(returnType) !== "void") {
      this.sb.push(`  const val = encode<${returnTypeName}>(${hasNull ? `changetype<${returnTypeName}>(result)` : "result"});
  value_return(val.byteLength, val.dataStart);`);
    }
    this.sb.push(`}
export { __wrapper_${name} as ${name} }`);
  }

  private typeName(type: TypeNode | ClassDeclaration): string {
    if (!isClass(type)) {
      return ASTBuilder.build(type);
    }
    type = <ClassDeclaration>type;
    let className = toString(type.name);
    if (type.isGeneric) {
      className += "<" + type.typeParameters!.map(toString).join(", ") + ">";
    }
    return className;
  }

  build(source: Source): string {
    this.sb = [];
    this.visit(source);
    let sourceText = source.statements.map(stmt => {
      let str = ASTBuilder.build(stmt);
      if (isClass(stmt)) {
        let _class = <ClassDeclaration>stmt;
        str = str.slice(0, str.lastIndexOf("}"));
        let fields = _class.members
          .filter(isField)
          .map((field: FieldDeclaration) => field);
        if (fields.some(field => field.type == null)) {
          throw new Error("All Fields must have explict type declaration.");
        }
        let className = this.typeName(_class);
        str += `
  decode<V = Uint8Array>(buf: V): ${className} {
    let json: JSON.Obj;
    if (buf instanceof Uint8Array) {
      json = JSON.parse(buf);
    } else {
      assert(buf instanceof JSON.Obj, "argument must be Uint8Array or Json Object");
      json = <JSON.Obj> buf;
    }
    return this._decode(json);
  }

  static decode(buf: Uint8Array): ${className} {
    return decode<${className}>(buf);
  }

  private _decode(obj: JSON.Obj): ${className} {
    ${createDecodeStatements(_class).join("\n    ")}
    return this;
  }

  _encode(name: string | null = "", _encoder: JSONEncoder | null = null): JSONEncoder {
    let encoder = (_encoder == null ? new JSONEncoder() : _encoder)!;
    encoder.pushObject(name);
    ${createEncodeStatements(_class).join("\n    ")}
    encoder.popObject();
    return encoder;
  }
  encode(): Uint8Array {
    return this._encode().serialize();
  }

  serialize(): Uint8Array {
    return this.encode();
  }

  toJSON(): string {
    return this._encode().toString();
  }
}`;
      }
      return str;
    });
    return sourceText.concat(this.sb).join("\n");
  }
}

function createDecodeStatements(_class: ClassDeclaration): string[] {
  return _class.members
    .filter(isField)
    .map((field: FieldDeclaration): string => {
      const name = toString(field.name);
      return (
        createDecodeStatement(field, `this.${name} = obj.has("${name}") ? `) +
        `: ${field.initializer != null ? ASTBuilder.build(field.initializer) : `this.${name}`};`
      );
    });
}

function createDecodeStatement(
  field: FieldDeclaration | ParameterNode,
  setterPrefix: string = ""
): string {
  let T = toString(field.type!);
  let name = toString(field.name);
  return `${setterPrefix}decode<${T}, JSON.Obj>(obj, "${name}")`;
}

function createEncodeStatements(_class: ClassDeclaration): string[] {
  return _class.members
    .filter(isField)
    .map((field: FieldDeclaration): string => {
      let T = toString(field.type!);
      let name = toString(field.name);
      return `encode<${T}, JSONEncoder>(this.${name}, "${name}", encoder);`;
    });
}
