import {
  Source,
  ClassDeclaration,
  FieldDeclaration,
  ParameterNode,
  Node,
} from "visitor-as/as";
import { BaseVisitor, utils, SimpleParser } from "visitor-as";
import { getName, toString } from "./utils";
import {
  createDecodeStatements,
  createEncodeStatements,
  hasNearDecorator,
  isClass,
  isEncodable,
  isField,
  NEAR_DECORATOR,
} from "./common";

// TODO: Extract this into separate module, preferrable pluggable
export class JSONBindingsBuilder extends BaseVisitor {
  private sb: string[] = [];
  private exportedClasses: Map<string, ClassDeclaration> = new Map();
  isNearFile: boolean = false;
  currentClass?: ClassDeclaration;
  fields: FieldDeclaration[] = [];

  get className(): string {
    return getName(this.currentClass!);
  }

  visitSource(node: Source): void {
    this.isNearFile = node.text.includes("@nearfile");
    super.visitSource(node);
  }

  visitFieldDeclaration(node: FieldDeclaration): void {
    assert(
      node.type != null,
      `${this.className}.${getName(node)} must have explicit type declaration.`
    );
    if (node.initializer == null) {
      node.initializer = SimpleParser.parseExpression(
        `defaultValue<${toString(node.type!)}>())`
      );
    }
    this.fields.push(node);
  }

  visitClassDeclaration(node: ClassDeclaration): void {
    console.log(`visiting ${getName(node)}`);
    if (utils.hasDecorator(node, NEAR_DECORATOR) || this.isNearFile) {
      return;
    }
    this.currentClass = node;
    this.fields = [];
    if (!utils.hasDecorator(node, NEAR_DECORATOR)) {
      console.error(
        "\x1b[31m",
        `@nearfile is deprecated use @${NEAR_DECORATOR} decorator on ${this.className}`,
        "\x1b[0m"
      );
    }
    // Visit Fields
    super.visitClassDeclaration(node);

    const newMethods: string[] = [];
    const className = this.className;

    newMethods.push(`
    decode<_V = Uint8Array>(buf: _V): ${className} {
      let json: JSON.Obj;
      if (buf instanceof Uint8Array) {
        json = JSON.parse(buf);
      } else {
        assert(buf instanceof JSON.Obj, "argument must be Uint8Array or Json Object");
        json = <JSON.Obj> buf;
      }
      return this._decode(json);
    }
    `);
    newMethods.push(`
    static decode(buf: Uint8Array): ${className} {
      return decode<${className}>(buf);
    }
    `);

    newMethods.push(`
    private _decode(obj: JSON.Obj): ${className} {
      ${createDecodeStatements(node).join("\n    ")}
      return this;
    }
    `);

    newMethods.push(`
    _encode(name: string | null = "", _encoder: JSONEncoder | null = null): JSONEncoder {
      let encoder = _encoder == null ? new JSONEncoder() : _encoder;
      encoder.pushObject(name);
      ${createEncodeStatements(node).join("\n    ")}
      encoder.popObject();
      return encoder;
    }
    `);

    newMethods.push(`
    encode(): Uint8Array {
      return this._encode().serialize();
    }
    `);

    newMethods.push(`
    serialize(): Uint8Array {
      return this.encode();
    }
    `);

    newMethods.push(`
    toJSON(): string {
      return this._encode().toString();
    }
    `);
    let statemnts = newMethods.map((s) =>
      SimpleParser.parseClassMember(s, node)
    );
    node.members.push(...statemnts);
    console.log(toString(node));
  }

  static visit(sources: Source[]): Source[] {
    const builder = new JSONBindingsBuilder();
    console.log("in JSONBuilder");
    builder.visit(sources);
    return sources;
  }
}
