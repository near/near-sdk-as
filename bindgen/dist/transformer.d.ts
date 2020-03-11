import { Transform, Parser, Module } from "./ast";
declare class JSONTransformer extends Transform {
    parser: Parser;
    static isTest: boolean;
    afterParse(parser: Parser): void;
    /** Check for floats */
    afterCompile(module: Module): void;
}
export { JSONTransformer };
