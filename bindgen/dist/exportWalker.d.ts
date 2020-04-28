/**
 * Definition builders for WebIDL and TypeScript.
 * @module definitions
 */ /***/
/// <reference types="assemblyscript/std/portable" />
import { Program, ClassPrototype, Element, Global, Enum, Field, Function, Class, Interface, Namespace, Type, File } from "visitor-as/as";
/** Walker base class. */
export declare abstract class ExportsWalker {
    /** Program reference. */
    program: Program;
    /** Whether to include private members */
    includePrivate: bool;
    /** Already seen elements. */
    seen: Map<Element, string>;
    /** Exports that are exposed by generics. */
    workset: Set<ClassPrototype>;
    /** Constructs a new Element walker. */
    constructor(program: Program, includePrivate?: bool);
    /** Walks all elements and calls the respective handlers. */
    walk(): void;
    /** Visits all exported elements of a file. */
    visitFile(file: File): void;
    /** Visits an element.*/
    visitElement(name: string, element: Element): void;
    private visitFunctionInstances;
    private visitClassInstances;
    private visitPropertyInstances;
    abstract visitGlobal(name: string, element: Global): void;
    abstract visitEnum(name: string, element: Enum): void;
    abstract visitFunction(name: string, element: Function): void;
    abstract visitClass(name: string, element: Class): void;
    abstract visitInterface(name: string, element: Interface): void;
    abstract visitField(name: string, element: Field): void;
    abstract visitNamespace(name: string, element: Element): void;
    abstract visitAlias(name: string, element: Element, originalName: string): void;
}
/** A WebIDL definitions builder. */
export declare class IDLBuilder extends ExportsWalker {
    /** Builds WebIDL definitions for the specified program. */
    static build(program: Program): string;
    private sb;
    private indentLevel;
    /** Constructs a new WebIDL builder. */
    constructor(program: Program, includePrivate?: bool);
    visitGlobal(name: string, element: Global): void;
    visitEnum(name: string, element: Enum): void;
    visitFunction(name: string, element: Function): void;
    visitClass(name: string, element: Class): void;
    visitInterface(name: string, element: Interface): void;
    visitField(name: string, element: Field): void;
    visitNamespace(name: string, element: Namespace): void;
    visitAlias(name: string, element: Element, originalName: string): void;
    typeToString(type: Type): string;
    build(): string;
}
/** A TypeScript definitions builder. */
export declare class TSDBuilder extends ExportsWalker {
    /** Builds TypeScript definitions for the specified program. */
    static build(program: Program): string;
    private sb;
    private indentLevel;
    private unknown;
    /** Constructs a new WebIDL builder. */
    constructor(program: Program, includePrivate?: bool);
    visitGlobal(name: string, element: Global): void;
    visitEnum(name: string, element: Enum): void;
    visitFunction(name: string, element: Function): void;
    visitClass(name: string, element: Class): void;
    visitInterface(name: string, element: Interface): void;
    visitField(name: string, element: Field): void;
    visitNamespace(name: string, element: Element): void;
    visitAlias(name: string, element: Element, originalName: string): void;
    typeToString(type: Type): string;
    visitType(type: Type): void;
    build(): string;
}
