import { Expression, Statement, Node } from "visitor-as/as";
export declare class SimpleParser {
    private static parser;
    private static getTokenizer;
    static parseExpression(s: string): Expression;
    static parseStatement(s: string, topLevel?: boolean): Statement;
}
export declare function posixRelativePath(from: string, to: string): string;
export declare function toString(node: Node): string;
