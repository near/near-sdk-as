import { Node, FunctionDeclaration, Source, ClassDeclaration } from "visitor-as/as";
import { BaseVisitor } from "visitor-as";
export declare function isEntry(source: Source | Node): boolean;
export declare class JSONBindingsBuilder extends BaseVisitor {
    private sb;
    private exportedClasses;
    wrappedFuncs: Set<string>;
    static build(source: Source): string;
    static nearFiles(sources: Source[]): Source[];
    visitClassDeclaration(node: ClassDeclaration): void;
    visitFunctionDeclaration(node: FunctionDeclaration): void;
    private generateWrapperFunction;
    private typeName;
    build(source: Source): string;
}
