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
import { getName, makeSnakeCase, toString } from "./utils";
import { RangeTransform } from "visitor-as/dist/transformRange";
import { MethodInjector } from "@serial-as/transform/dist/MethodInjector";
import { isLibrary } from "visitor-as/dist/utils";

export class FunctionClass extends BaseVisitor {
  _class: ClassDeclaration;

  visitFunctionDeclaration(node: FunctionDeclaration): void {
    let name = getName(node);
    let fields = node.signature.parameters.map(
      (p) => p.range.toString() + ` = defaultValue<${getName(p.type)}>()`
    );
    let params = node.signature.parameters.map((p) => `this.${getName(p)}`);
    if (fields.length > 0) {
      // add blank to make join add ;
      fields.push("");
    }
    const fieldStrs = fields.join(";\n");
    let _classStr = `class ${name}__class {
  ${fieldStrs}
  call(): ${getName(node.signature.returnType)} {
    return ${name}(${params.join(",")});
  }
}`;
    let _class = <ClassDeclaration>(
      SimpleParser.parseTopLevelStatement(_classStr)
    );
    MethodInjector.visit(_class);
    this._class = _class;
  }

  static visit(node: FunctionDeclaration): ClassDeclaration {
    const funcClass = new FunctionClass();
    funcClass.visit(node);
    return funcClass._class;
  }
}

// class RenamedExport {
//   constructor(public from: string, public to: string){}

//   parse(): Statement {
//     const val = this.toString();
//     console.log(`About to parse ${val}`);
//     return SimpleParser.parseTopLevelStatement(val);
//   }

//   toString(): string {
//     return `\nexport { ${this.from} as ${this.to}}`;
//   }

//   addExport(p: Program): void {
//     for (let file of p.filesByName.values()) {
//       const _export = file.lookupInSelf(this.from);
//       if (_export) {
//         console.log(`about to rename ${this.from} to ${this.to}`);
//         // file.ensureExport(this.to, _export);
//         return
//       } else {
//         if (file.members && !isLibrary(file.source)) {
//           console.log(file.name)
//           file.members.forEach(m => {
//             console.log(m.name)
//           })
//         }
//       }
//     }
//   }
// }

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
        console.log("adding...  " + name);
        this.exports.push(this.camelCaseToSnakeCaseExport(name, ""));
        this.wrappedFuncs.add(name);
      }
      super.visitFunctionDeclaration(node);
      return;
    }
    const _class = FunctionClass.visit(node);
    RangeTransform.visit(_class, node);
    this.classWrappers.push(_class);
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
    // let returnTypeNameNoNull = returnTypeName
    //   .split("|")
    //   .map((name) => name.trim())
    //   .filter((name) => name !== "null")
    //   .join("");
    // let hasNull = returnTypeName.includes("null");
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
        `  const _class = JSON.decode<${className}>(getInputString())`
      );
    } else {
      `const _class = instantiate<${className}>();`;
    }
    if (returnTypeName !== "void") {
      funcSource.push(`  
      let result: ${returnTypeName} = _class.call();
      const val = String.UTF8.encode(JSON.encode(result));
      value_return(val.byteLength, changetype<usize>(val));
  `);
    } else {
      funcSource.push(`_class.call()`);
    }
    funcSource.push(`}`);
    this.addExport(name);
    return funcSource.join("\n");
  }

  addExport(name: string): void {
    console.log(`adding ${name}!!!`);
    this.exports.push(`export {${WRAPPER_PREFIX + name} as ${name}}`);
    let res = this.camelCaseToSnakeCaseExport(name, WRAPPER_PREFIX);
    if (res) {
      this.exports.push(res);
    }
  }

  visitSource(node: Source): void {
    // this.functions = [];
    // this.exports = [];
    // this.classWrappers = [];
    // let exports: Statement[] = this.exports.map(parseTopLevelStatements).flat();

    // console.log(`exports:\n${exports.map(utils.toString)}`)
    // console.log(this.functions.join("\n"))
    // console.log(this.exports.join("\n"));
    super.visitSource(node);
    const newParser = new Parser();
    // const newCode = this.functions.join("\n")
    if (this.functions.length > 0) {
      node.statements.push(
        ...this.functions.map((n) => RangeTransform.visit(n, node))
      );

      const str = this.exports.join("\n");
      newParser.parseFile(str, node.normalizedPath, isEntry(node));
      const exportsSource = newParser.sources[0];
      // RangeTransform.visit(exportsSource, node);
      node.statements = node.statements.concat(exportsSource.statements);
      // console.log(`source: ${utils.toString(node)}`)
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
