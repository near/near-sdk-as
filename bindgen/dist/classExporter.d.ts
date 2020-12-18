import { ClassDeclaration, FieldDeclaration, MethodDeclaration, Source } from "visitor-as/as";
import { ClassDecorator } from "visitor-as";
export declare class ClassExporter extends ClassDecorator {
    sb: string[];
    static classSeen: ClassDeclaration;
    static hasConstructor: boolean;
    static get className(): string;
    checkMethods(name: string): void;
    visitFieldDeclaration(node: FieldDeclaration): void;
    visitMethodDeclaration(node: MethodDeclaration): void;
    visitClassDeclaration(node: ClassDeclaration): void;
    get name(): string;
    static visit(source: Source): void;
}
