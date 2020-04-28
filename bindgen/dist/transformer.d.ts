import { Transform, Parser, Module } from "visitor-as/as";
declare class JSONTransformer extends Transform {
    parser: Parser;
    entryPath: string;
    static isTest: boolean;
    afterParse(parser: Parser): void;
    /** Check for floats */
    afterCompile(module: Module): void;
}
export { JSONTransformer };
