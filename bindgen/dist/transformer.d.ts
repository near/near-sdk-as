import { Transform, Parser, Program } from "visitor-as/as";
declare class JSONTransformer extends Transform {
    parser: Parser;
    afterParse(parser: Parser): void;
    afterInitialize(program: Program): void;
}
export { JSONTransformer };
