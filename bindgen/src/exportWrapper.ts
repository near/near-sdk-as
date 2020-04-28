import {
  ExportsWalker,
  Element,
  Function,
  Program,
  Global,
  CommonFlags,
  indent,
  Enum,
  ElementKind,
  EnumValue,
  ConstantValueKind,
  Class,
  Interface,
  Field,
  Type,
  TypeKind,
  FunctionPrototype
} from "visitor-as/as";
import { TSDBuilder } from "./exportWalker";

export class TypesTransformer extends TSDBuilder {
  static build(program: Program): string {
    return (new TypesTransformer(program)).build();
  }
  
  visitFunction(name: string, element: Function): void {
    const realFuncName = element.internalName.replace("__wrapper_", "");
    // console.log(realFuncName);
    const realFuncProto = <FunctionPrototype>this.program.elementsByName.get(realFuncName)!;
    // console.log(realFunc);
    let realFunc = Array.from(realFuncProto.instances!.values())[0];
    element.signature = realFunc.signature;
    console.log(realFunc.signature.toString());
    super.visitFunction(name, element);
  }
}