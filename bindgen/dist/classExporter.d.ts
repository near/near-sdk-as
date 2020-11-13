import { ClassDeclaration, FieldDeclaration, MethodDeclaration, Source } from "visitor-as/as";
import { ClassDecorator } from "visitor-as";
export declare class ClassExporter extends ClassDecorator {
    sb: string[];
    static classSeen: string;
    visitFieldDeclaration(node: FieldDeclaration): void;
    visitMethodDeclaration(node: MethodDeclaration): void;
    visitClassDeclaration(node: ClassDeclaration): void;
    get name(): string;
    static visit(source: Source): void;
}
