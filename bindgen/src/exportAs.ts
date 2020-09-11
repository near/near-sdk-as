import { registerDecorator, FunctionDecorator } from "visitor-as";
import { FunctionDeclaration, StringLiteralExpression } from "visitor-as/as";

class ExportAs extends FunctionDecorator {
  visitFunctionDeclaration(node: FunctionDeclaration): void {
    let decl = node.decorators![0];
    if (!decl.args || decl.args.length == 0) {
      throw new Error("exportAs expects at least on arguement");
    }
    let newNameArg = decl.args![0];
    if (newNameArg instanceof StringLiteralExpression) {
      let newName = newNameArg.value;
      node.name.text = newName;
      return;
    }
    throw new Error("exportAs requiers a string literal.");
  }

  get name(): string {
    return "exportAs";
  }
}

export = registerDecorator(new ExportAs());
