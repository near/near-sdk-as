import { ClassDeclaration, Source, FunctionDeclaration, Statement } from "visitor-as/as";
import { BaseVisitor } from "visitor-as";
export declare class FunctionClass extends BaseVisitor {
    _class: ClassDeclaration;
    visitFunctionDeclaration(node: FunctionDeclaration): void;
    static visit(node: FunctionDeclaration): ClassDeclaration;
}
export declare class FunctionExportWrapper extends BaseVisitor {
    static isTest: boolean;
    functions: Statement[];
    exports: string[];
    wrappedFuncs: Set<string>;
    classWrappers: ClassDeclaration[];
    static checkTestBuild(sources: Source[]): void;
    needsWrapper(node: FunctionDeclaration): boolean;
    visitFunctionDeclaration(node: FunctionDeclaration): void;
    camelCaseToSnakeCaseExport(name: string, prefix?: string): string;
    private generateWrapperFunction;
    addExport(name: string): void;
    visitSource(node: Source): void;
    static visit(sources: Source[]): void;
}
