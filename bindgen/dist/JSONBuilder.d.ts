import { Source, ClassDeclaration, FieldDeclaration } from "visitor-as/as";
import { BaseVisitor } from "visitor-as";
export declare class JSONBindingsBuilder extends BaseVisitor {
    private sb;
    private exportedClasses;
    isNearFile: boolean;
    currentClass?: ClassDeclaration;
    fields: FieldDeclaration[];
    get className(): string;
    visitSource(node: Source): void;
    visitFieldDeclaration(node: FieldDeclaration): void;
    visitClassDeclaration(node: ClassDeclaration): void;
    static visit(sources: Source[]): Source[];
}
