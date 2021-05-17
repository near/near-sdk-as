import { Expression, Statement, Node, MethodDeclaration, ClassDeclaration } from "visitor-as/as";
export declare class SimpleParser {
    private static parser;
    private static getTokenizer;
    static parseExpression(s: string): Expression;
    static parseStatement(s: string, topLevel?: boolean): Statement;
    static parseTopLevel(s: string): Statement[];
    static parseMethodDeclaration(s: string, parent: ClassDeclaration): MethodDeclaration;
}
export declare function posixRelativePath(from: string, to: string): string;
export declare function toString(node: Node): string;
export declare function makeSnakeCase(s: string): string;
