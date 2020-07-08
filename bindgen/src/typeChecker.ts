import { TypeName, Module, Source, Parser } from "visitor-as/as";
import { BaseVisitor } from "visitor-as";

declare interface RegExp {
  test(s: string): bool;
}

const toIgnore = [
  "builtin",
  ".spec",
  "dataview",
  "date",
  "math",
  "number",
  "string",
  "typedarray",
  "bindings/Date",
  "bindings/Math",
];

export class TypeChecker extends BaseVisitor {
  static floatsFound: string[] = [];

  check(node: Source): void {
    let first = node.text.substring(0, node.text.indexOf("\n"));
    if (
      !(
        first.includes("ignore") ||
        toIgnore.some((n) => node.normalizedPath.includes(n))
      )
    ) {
      this.visit(node);
    }
  }

  static check(node: Parser): void {
    const typeChecker = new TypeChecker();
    for (let i: i32 = 0; i < node.sources.length; i++) {
      typeChecker.check(node.sources[i]);
    }
  }

  visitTypeName(node: TypeName): void {
    const regex: RegExp = <RegExp>/f32|f64/;
    if (regex.test(node.identifier.text)) {
      let range = node.range;
      let source = range.source;
      let line = source.lineAt(range.start);
      let lineStr = source.text.split("\n")[line - 1];

      TypeChecker.floatsFound.push(
        "\n" +
          " ".repeat(4) +
          lineStr +
          "\n" +
          "in " +
          source.normalizedPath +
          "(" +
          line.toString() +
          "," +
          source.columnAt().toString() +
          ")"
      );
    }
  }

  static checkBinary(node: Module) {
    const wat = node.toText();
    const regex: RegExp = <RegExp>/f32|f64/;
    if (regex.test(wat)) {
      throw new Error(
        "Floating point numbers are not allowed in smart contracts: Check\n" +
          TypeChecker.floatsFound.join("\n")
      );
    }
  }
}
