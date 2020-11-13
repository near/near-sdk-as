import {
  ClassDeclaration,
  FieldDeclaration,
  MethodDeclaration,
  Source,
  CommonFlags,
} from "visitor-as/as";
import { utils, ClassDecorator, registerDecorator } from "visitor-as";
import { isEntry } from "./JSONBuilder";

const toString = utils.toString;

export class ClassExporter extends ClassDecorator {
  sb: string[] = [];
  static classSeen: ClassDeclaration;

  get className(): string {
    return toString(ClassExporter.classSeen.name);
  }

  visitFieldDeclaration(node: FieldDeclaration): void {}

  visitMethodDeclaration(node: MethodDeclaration): void {
    let name = toString(node.name);
    let decorators = (node.decorators || []).map(toString);
    let returnType = toString(node.signature.returnType);
    let parameters = node.signature.parameters.map(toString);
    let pramNames = node.signature.parameters.map((node) =>
      toString(node.name)
    );
    let isInit = name === "constructor";
    let assertStr = isInit
      ? `assert(isNull(__contract), "contract is already initialized");`
      : `assert(!isNull(__contract), "contract is not initialized");`;
    let body = isInit
      ? `__contract = new ${this.className}(${pramNames.join(", ")});
setState(__contract);`
      : `return __contract.${name}(${pramNames.join(", ")});`;
    if (isInit) {
      name = "init";
      parameters = node.signature.parameters.map(
        (node) =>
          `${toString(node.name)}: ${toString(node.type)}${
            node.initializer ? " = " + toString(node.initializer) : ""
          }`
      );
      returnType = "void";
    }
    this.sb.push(
      `${decorators.join("\n")}export function ${name}(${parameters.join(
        ", "
      )}): ${returnType} {
  ${assertStr}
  
}`
    );
  }

  visitClassDeclaration(node: ClassDeclaration): void {
    if (isEntry(node) && node.is(CommonFlags.EXPORT)) {
      if (ClassExporter.classSeen) {
        throw new Error(
          `Cannot export class ${toString(node.name)}. ${
            ClassExporter.classSeen
          } already exported. `
        );
      }
      ClassExporter.classSeen = node;
      this.sb.push(
        `let __contract: ${toString(node.name)};
if (__checkState()) {
  __contract = __getState();
}
`
      );
      this.visit(node.members);
      node.set(node.flags ^ CommonFlags.EXPORT);
    }
  }

  get name(): string {
    return "nearBindgen";
  }

  static visit(source: Source): void {
    let visitor = new ClassExporter();
    visitor.visit(source);
  }
}
