import { Transform, Parser } from "visitor-as/as";
declare class JSONTransformer extends Transform {
    parser: Parser;
    afterParse(parser: Parser): void;
}
export { JSONTransformer };
