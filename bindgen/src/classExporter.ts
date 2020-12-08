import {
  ClassDeclaration,
  FieldDeclaration,
  MethodDeclaration,
  Source,
  CommonFlags,
  SourceKind,
  FunctionDeclaration,
} from "visitor-as/as";
import { utils, ClassDecorator } from "visitor-as";
import { isEntry } from "./JSONBuilder";
import { SimpleParser } from "./utils";

const toString = utils.toString;

export class ClassExporter extends ClassDecorator {
  sb: string[] = [];
  static classSeen: ClassDeclaration;

  get className(): string {
    return toString(ClassExporter.classSeen.name);
  }

  visitFieldDeclaration(node: FieldDeclaration): void {
    let orgName = node.name.text;
    let type = toString(node.type!);
    if (node.is(CommonFlags.PUBLIC)) {
      node.flags = node.flags ^ CommonFlags.PUBLIC;
      node.flags = node.flags | CommonFlags.PRIVATE;
    }
    node.name.text = `__${orgName}`;
    let setter = `
  private set ${orgName}(${orgName}: ${type}) {
    __updated = true;
    this.${node.name.text} = ${orgName};
  }`;
    let getter = `
    private get ${orgName}(): ${type} {
      return this.${node.name.text};
    }`;
    let parent = ClassExporter.classSeen;
    let methods = [setter, getter].map((m) =>
      SimpleParser.parseMethodDeclaration(m, parent)
    );
    parent.members.push(...methods);
  }

  visitMethodDeclaration(node: MethodDeclaration): void {
    if (node.is(CommonFlags.SET) || node.is(CommonFlags.GET)) {
      throw new Error(
        "Exported Singleton class cannot have properties. Found " +
          node.name.text
      );
    }
    // Private methods should be skipped.
    if (node.is(CommonFlags.PRIVATE)) {
      return;
    }
    let name = toString(node.name);
    let decorators = (node.decorators || []).map(toString);
    let returnType = toString(node.signature.returnType);
    let origParams = node.signature.parameters.map(utils.cloneNode);
    let parameters = origParams.map((param) => {
      if (param.implicitFieldDeclaration) {
        param.name.text = param.name.text.substring(2);
      }
      return toString(param);
    });
    let pramNames = origParams.map((param) => {
      return toString(param.name);
    });
    let isInit = name === "constructor";
    let assertStr = isInit
      ? `assert(isNull(__contract), "contract is already initialized");`
      : `assert(!isNull(__contract), "contract is not initialized");`;
    let isVoid = returnType === "void";
    let body = isInit
      ? `__contract = new ${this.className}(${pramNames.join(", ")});`
      : `${!isVoid ? "let res =  " : ""}__contract.${name}(${pramNames.join(
          ", "
        )});`;
    if (isInit) {
      name = "init";
      parameters = origParams.map(
        (node) =>
          `${toString(node.name)}: ${toString(node.type)}${
            node.initializer ? " = " + toString(node.initializer) : ""
          }`
      );
      returnType = "void";
    }
    if (isInit) {
      if (!decorators.some((decorator) => decorator.includes("exportAs"))) {
        decorators.push(`@exportAs("new")`);
      }
    }
    this.sb.push(
      `${decorators.join("\n")}
      export function ${name}(${parameters.join(", ")}): ${returnType} {
  ${assertStr}
  ${body}
  ${isInit ? `__setState(__contract)` : "__updateState(__contract)"};
  ${isVoid || isInit ? "" : "return res"}
}`
    );
  }

  visitClassDeclaration(node: ClassDeclaration): void {
    if (isEntry(node) && node.is(CommonFlags.EXPORT)) {
      let name = toString(node.name);
      if (ClassExporter.classSeen) {
        throw new Error(
          `Cannot export class ${name}. ${ClassExporter.classSeen} already exported. `
        );
      }
      ClassExporter.classSeen = node;
      this.sb.push(
        `let __contract: ${name};
if (__checkState()) {
  __contract = __getState<${name}>();
}`
      );
      this.visit(node.members);
      node.flags = node.flags ^ CommonFlags.EXPORT;
      let newStatements = SimpleParser.parseTopLevel(this.sb.join("\n")).map(
        (n) => {
          if (n instanceof FunctionDeclaration) {
            n.flags = n.flags | CommonFlags.EXPORT;
            n.flags = n.flags | CommonFlags.MODULE_EXPORT;
          }
          n.range = node.range;
          return n;
        }
      );
      node.range.source.statements.push(...newStatements);
    }
  }

  get name(): string {
    return "nearBindgen";
  }

  static visit(source: Source): void {
    if (source.sourceKind != SourceKind.USER_ENTRY) {
      return;
    }
    let visitor = new ClassExporter();
    visitor.visit(source);
  }
}
