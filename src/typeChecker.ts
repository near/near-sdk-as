import { BaseVisitor, TypeName, Node } from './as-transformer';

export class TypeChecker extends BaseVisitor {

  visitTypeName(node: TypeName): void {
    const name = node.identifier.text;
    if (name === "f32" || name === "f64"){
      // TODO: Add back when no floats in std
      // throw new Error("Floating point numbers are not allowed in smart contracts");
    }
    if (node.next != null){
      this.visitTypeName(node.next);
    }
  }
  static checkTypes(node: Node): void {
    // const typeChecker = new TypeChecker();
    // typeChecker.visit(node);
  }
}