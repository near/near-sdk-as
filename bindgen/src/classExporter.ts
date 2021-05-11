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
const privateDecorator = "contractPrivate";

export class ClassExporter extends ClassDecorator {
  sb: string[] = [];
  static classSeen: ClassDeclaration;
  static hasConstructor: boolean;

  static get className(): string {
    return toString(ClassExporter.classSeen.name);
  }

  checkMethods(name: string) {
    let _class = ClassExporter.classSeen;
    _class.members.forEach((member) => {
      if (
        member instanceof MethodDeclaration &&
        !member.is(CommonFlags.PRIVATE)
      ) {
        if (toString(member.name) === name) {
          throw new Error(
            `Method "${toString(
              member.name
            )}" already used; cannot export constructor using the same name.`
          );
        }
      }
    });
  }

  visitFieldDeclaration(node: FieldDeclaration): void {}

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
    let privateCheck = utils.hasDecorator(node, privateDecorator)
      ? `__assertPrivate();`
      : "";
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
    let assertStr: string = "";
    if (isInit) {
      assertStr = `assert(isNull(__contract), "contract is already initialized");`;
    } else if (ClassExporter.hasConstructor) {
      assertStr = `assert(!isNull(__contract), "contract is not initialized");`;
    }
    let isVoid = returnType === "void";
    let body = isInit
      ? `__contract = new ${ClassExporter.className}(${pramNames.join(", ")});`
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
        this.checkMethods("new");
      } else {
        let decorator = node.decorators!.find(
          (d) => toString(d.name) === "exportAs"
        )!;
        if (decorator.args!.length == 1) {
          this.checkMethods(toString(decorator.args![0]));
        }
      }
    }
    const hasMutateState = decorators.some((decorator) => {
      let res = decorator.includes("mutateState");
      return res;
    });
    this.sb.push(
      `${decorators.join("\n")}
export function ${name}(${parameters.join(", ")}): ${returnType} {
  ${privateCheck}
  ${assertStr}
  ${body}
  ${isInit || hasMutateState ? `__setState(__contract);` : ""}
  ${isVoid || isInit ? "" : "return res;"}
}`
    );
  }

  visitClassDeclaration(node: ClassDeclaration): void {
    if (isEntry(node) && node.is(CommonFlags.EXPORT)) {
      let name = toString(node.name);
      if (ClassExporter.classSeen) {
        throw new Error(
          `Cannot export class ${name}. ${ClassExporter.className} already exported. `
        );
      }
      ClassExporter.classSeen = node;
      ClassExporter.hasConstructor = node.members.some((member) => {
        if (member instanceof MethodDeclaration) {
          return toString(member.name) === "constructor";
        }
        return false;
      });
      this.sb.push(
        `let __contract: ${name};
if (__checkState()) {
  __contract = __getState<${name}>();
}${
          !ClassExporter.hasConstructor
            ? ` else {
  __contract = new ${name}();
}`
            : ""
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
