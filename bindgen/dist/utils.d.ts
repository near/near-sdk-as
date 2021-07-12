import { utils } from "visitor-as";
import { TypeNode } from "visitor-as/as";
export declare function posixRelativePath(from: string, to: string): string;
export declare function makeSnakeCase(s: string): string;
export declare const getName: typeof utils.getName;
export declare const toString: typeof utils.toString;
export declare function getTypeName(type: TypeNode): string;
