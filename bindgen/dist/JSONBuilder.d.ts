import { Node, FunctionDeclaration, Source, ClassDeclaration } from "visitor-as/as";
import { BaseVisitor } from "visitor-as";
export declare function isEntry(source: Source | Node): boolean;
export declare class JSONBindingsBuilder extends BaseVisitor {
    private sb;
    private exportedClasses;
    static isTest: boolean;
    wrappedFuncs: Set<string>;
    static build(source: Source): string;
    static nearFiles(sources: Source[]): Source[];
    static checkTestBuild(sources: Source[]): void;
    visitClassDeclaration(node: ClassDeclaration): void;
    needsWrapper(node: FunctionDeclaration): boolean;
    visitFunctionDeclaration(node: FunctionDeclaration): void;
    camelCaseToSnakeCaseExport(name: string, prefix?: string): string;
    private generateWrapperFunction;
    private typeName;
    build(source: Source): string;
}
