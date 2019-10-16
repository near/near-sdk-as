import { TypeName, Module } from './ast';
import { BaseVisitor } from './base';


declare interface RegExp {
  test(s: string): bool;
}

export class TypeChecker extends BaseVisitor {

  static check(node: Module): void {
    const wat = node.toText();
    const regex: RegExp = <RegExp> /f32|f64/;
    if (regex.test(wat))
      throw new Error("Floating point numbers are not allowed in smart contracts");    
    }
    
}