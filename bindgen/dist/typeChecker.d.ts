import { TypeName, Module, Source, Parser } from "visitor-as/as";
import { BaseVisitor } from "visitor-as";
export declare class TypeChecker extends BaseVisitor {
    static floatsFound: string[];
    check(node: Source): void;
    static check(node: Parser): void;
    visitTypeName(node: TypeName): void;
    static checkBinary(node: Module): void;
}
