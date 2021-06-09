import { Source, FunctionDeclaration, Statement } from "visitor-as/as";
import { BaseVisitor } from "visitor-as";
export declare class FunctionExportWrapper extends BaseVisitor {
    functions: Statement[];
    exports: string[];
    static isTest: boolean;
    wrappedFuncs: Set<string>;
    static checkTestBuild(sources: Source[]): void;
    needsWrapper(node: FunctionDeclaration): boolean;
    visitFunctionDeclaration(node: FunctionDeclaration): void;
    camelCaseToSnakeCaseExport(name: string, prefix?: string): string;
    private generateWrapperFunction;
    visitSource(node: Source): void;
    static visit(sources: Source[]): void;
}
