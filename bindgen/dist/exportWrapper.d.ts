import { Function, Program } from "visitor-as/as";
import { TSDBuilder } from "./exportWalker";
export declare class TypesTransformer extends TSDBuilder {
    static build(program: Program): string;
    visitFunction(name: string, element: Function): void;
}
