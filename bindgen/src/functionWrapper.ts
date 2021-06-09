import {
  ClassDeclaration,
  FieldDeclaration,
  MethodDeclaration,
  Source,
  CommonFlags,
  SourceKind,
  FunctionDeclaration,
  BlockStatement,
  Statement,
} from "visitor-as/as";
import { utils, BaseVisitor } from "visitor-as";
import {
  createDecodeStatement,
  isEntry,
  NEAR_DECORATOR,
  numOfParameters,
  parseTopLevelStatements,
  returnsVoid,
  WRAPPER_PREFIX,
} from "./common";
import { getName, makeSnakeCase, toString } from "./utils";
import { RangeTransform } from "visitor-as/dist/transformRange";

export class FunctionExportWrapper extends BaseVisitor {
  functions: Statement[] = [];
  exports: string[] = [];
  static isTest: boolean = false;
  wrappedFuncs: Set<string> = new Set();

  static checkTestBuild(sources: Source[]) {
    this.isTest = sources.some((s) => s.normalizedPath.includes(".spec."));
  }

  needsWrapper(node: FunctionDeclaration): boolean {
    let isExport = node.is(CommonFlags.EXPORT);
    let alreadyWrapped = this.wrappedFuncs.has(toString(node.name));
    let noInputOrOutput = numOfParameters(node) == 0 && returnsVoid(node);
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
    const name = getName(node);
    if (!this.needsWrapper(node)) {
      if (
        (isEntry(node) || utils.hasDecorator(node, NEAR_DECORATOR)) &&
        !this.wrappedFuncs.has(name) &&
        node.is(CommonFlags.EXPORT)
      ) {
        this.exports.push(this.camelCaseToSnakeCaseExport(name, ""));
        this.wrappedFuncs.add(name);
      }
      super.visitFunctionDeclaration(node);
      return;
    }
    this.functions.push(
      parseTopLevelStatements(this.generateWrapperFunction(node))[0]
    );
    console.log(utils.toString(this.functions[this.functions.length - 1]));
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
    let returnTypeNameNoNull = returnTypeName
      .split("|")
      .map((name) => name.trim())
      .filter((name) => name !== "null")
      .join("");
    let hasNull = returnTypeName.includes("null");
    let name = getName(func);
    if (func.decorators && func.decorators.length > 0) {
      funcSource.push(
        func.decorators.map((decorator) => toString(decorator)).join("\n")
      );
    }
    funcSource.push(`function __wrapper_${name}(): void {`);
    if (params.length > 0) {
      funcSource.push(`  const obj = getInput();`);
    }
    if (returnTypeName !== "void") {
      funcSource.push(`  let result: ${returnTypeName} = ${name}(`);
    } else {
      funcSource.push(`  ${name}(`);
    }
    if (params.length > 0) {
      funcSource[funcSource.length - 1] += params
        .map((param) => {
          let name = toString(param.name);
          let type = toString(param.type);
          let res = `obj.has('${name}') ?
             ${createDecodeStatement(param)} : ${
            param.initializer
              ? toString(param.initializer)
              : `requireParameter<${type}>("${name}")`
          }`;
          return res;
        })
        .join(",\n    ");
    }
    funcSource[funcSource.length - 1] += ");";
    if (returnTypeName !== "void") {
      funcSource.push(`  const val = encode<${returnTypeNameNoNull}>(${
        hasNull ? `changetype<${returnTypeNameNoNull}>(result)` : "result"
      });
  value_return(val.byteLength, val.dataStart);
  `);
    }
    funcSource.push(`}`);
    this.exports.push(`
export { ${WRAPPER_PREFIX + name} as ${name} }
${this.camelCaseToSnakeCaseExport(name)}
`);
    return funcSource.join("\n");
  }

  visitSource(node: Source): void {
    this.functions = [];
    this.exports = [];
    // console.log(this.functions.join("\n"))
    console.log(this.exports.join("\n"));
    super.visitSource(node);
    // const newCode = this.functions.join("\n")
    if (this.functions) {
      node.statements.push(
        ...this.functions.map((n) => RangeTransform.visit(n, node))
      );
    }
  }

  static visit(sources: Source[]): void {
    FunctionExportWrapper.checkTestBuild(sources);
    new FunctionExportWrapper().visit(sources);
  }
}
