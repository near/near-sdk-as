import {
  ClassDeclaration,
  Source,
  CommonFlags,
  FunctionDeclaration,
  Statement,
  Program,
  NodeKind,
  Parser,
} from "visitor-as/as";
import { utils, BaseVisitor, SimpleParser } from "visitor-as";
import {
  createDecodeStatement,
  isEntry,
  NEAR_DECORATOR,
  numOfParameters,
  parseTopLevelStatements,
  returnsVoid,
  WRAPPER_PREFIX,
} from "./common";
import { getName, getTypeName, makeSnakeCase, toString } from "./utils";
import { RangeTransform } from "visitor-as/dist/transformRange";
import { MethodInjector } from "@serial-as/transform/dist/methodInjector";
import { isLibrary } from "visitor-as/dist/utils";

export class FunctionClass extends BaseVisitor {
  _class: ClassDeclaration;

  visitFunctionDeclaration(node: FunctionDeclaration): void {
    let name = getName(node);
    let fields = node.signature.parameters.map(
      (p) => `${toString(p.name)}: ${getName(p.type)}`
    );
    let params = node.signature.parameters.map((p) => `this.${getName(p)}`);
    if (fields.length > 0) {
      // add blank to make join add ;
      fields.push("");
    }

    const fieldStrs = fields.join(";\n");
    let _classStr = `class ${name}__class {
  ${fieldStrs}
  call(): ${getTypeName(node.signature.returnType)} {
    ${returnsVoid(node) ? "" : "return "}${name}(${params.join(",")});
  }
}`;
    console.log(_classStr);
    let _class = <ClassDeclaration>(
      SimpleParser.parseTopLevelStatement(_classStr)
    );
    // MethodInjector.visit(_class);
    this._class = _class;
  }

  static visit(node: FunctionDeclaration): ClassDeclaration {
    const funcClass = new FunctionClass();
    funcClass.visit(node);
    return funcClass._class;
  }
}

function emptySignature(node: FunctionDeclaration): boolean {
  return numOfParameters(node) == 0 && returnsVoid(node);
}
export class FunctionExportWrapper extends BaseVisitor {
  static isTest: boolean = false;
  functions: Statement[] = [];
  exports: string[] = [];
  wrappedFuncs: Set<string> = new Set();
  classWrappers: ClassDeclaration[] = [];

  static checkTestBuild(sources: Source[]) {
    this.isTest = sources.some((s) => s.normalizedPath.includes(".spec."));
  }

  needsWrapper(node: FunctionDeclaration): boolean {
    let isExport = node.is(CommonFlags.EXPORT);
    let alreadyWrapped = this.wrappedFuncs.has(toString(node.name));
    let noInputOrOutput = emptySignature(node);
    if (
      !isExport ||
      alreadyWrapped ||
      noInputOrOutput ||
      FunctionExportWrapper.isTest
    )
      return false;
    return isEntry(node) || utils.hasDecorator(node, NEAR_DECORATOR);
  }

  visitFunctionDeclaration(node: FunctionDeclaration): void {
    const name = toString(node.name);
    if (!this.needsWrapper(node)) {
      if (
        (isEntry(node) || utils.hasDecorator(node, NEAR_DECORATOR)) &&
        !this.wrappedFuncs.has(name) &&
        node.is(CommonFlags.EXPORT)
      ) {
        const snakeCase = this.camelCaseToSnakeCaseExport(name, "");
        this.wrappedFuncs.add(name);
        if (snakeCase) {
          this.exports.push(snakeCase);
        }
      }
      super.visitFunctionDeclaration(node);
      return;
    }
    if (numOfParameters(node) > 0) {
      const _class = FunctionClass.visit(node);
      RangeTransform.visit(_class, node);
      this.classWrappers.push(_class);
    }
    this.functions.push(
      parseTopLevelStatements(this.generateWrapperFunction(node))[0]
    );
    // Change function to not be an export
    node.flags = node.flags ^ CommonFlags.EXPORT;
    this.wrappedFuncs.add(name);
  }

  camelCaseToSnakeCaseExport(
    name: string,
    prefix: string = WRAPPER_PREFIX
  ): string {
    let s = makeSnakeCase(name);
    if (s.normalize() === name.normalize()) {
      return "";
    }
    return `export { ${prefix + name} as ${s} }`;
  }

  /*
  Create a wrapper function that will be export in the function's place.
  */
  private generateWrapperFunction(func: FunctionDeclaration): string {
    let funcSource: string[] = [];
    let signature = func.signature;
    let params = signature.parameters;
    let returnType = signature.returnType;
    let returnTypeName = toString(returnType);
    let name = getName(func);
    if (func.decorators && func.decorators.length > 0) {
      funcSource.push(
        func.decorators.map((decorator) => toString(decorator)).join("\n")
      );
    }
    const className = name + "__class";
    funcSource.push(`
    function __wrapper_${name}(): void {`);
    if (params.length > 0) {
      funcSource.push(
        `  const _class = JSON.parse<${className}>(getInputString())`
      );
    }
    if (returnTypeName !== "void") {
      if (params.length > 0) {
        funcSource.push(`let result: ${returnTypeName} = _class.call();`);
      } else {
        funcSource.push(`let result: ${returnTypeName} = ${name}();`);
      }
      funcSource.push(`
      const val = String.UTF8.encode(JSON.stringify(result));
      value_return(val.byteLength, changetype<usize>(val));
  `);
    } else {
      if (params.length > 0) {
        funcSource.push(`_class.call()`);
      } else {
        funcSource.push(`${name}();`);
      }
    }
    funcSource.push(`}`);
    this.addExport(name);
    return funcSource.join("\n");
  }

  addExport(name: string): void {
    this.exports.push(`export {${WRAPPER_PREFIX + name} as ${name}}`);
    let res = this.camelCaseToSnakeCaseExport(name, WRAPPER_PREFIX);
    if (res) {
      this.exports.push(res);
    }
  }

  visitSource(node: Source): void {
    super.visitSource(node);
    const newParser = new Parser();
    const lastStatement =
      (node.statements.length && node.statements[node.statements.length - 1]) ||
      node;
    if (this.functions.length > 0) {
      node.statements.push(
        ...this.functions.map((n) => RangeTransform.visit(n, lastStatement))
      );

      const str = this.exports.join("\n");
      newParser.parseFile(str, node.normalizedPath, isEntry(node));
      const exportsSource = newParser.sources[0];
      node.statements = node.statements.concat(exportsSource.statements);
      node.statements.push(...this.classWrappers);
    }
  }

  static visit(sources: Source[]): void {
    FunctionExportWrapper.checkTestBuild(sources);
    sources.forEach((s) => {
      new FunctionExportWrapper().visit(s);
    });
  }
}
