export declare function toNum(x: number | BigInt): number;
export declare function UTF8toStr(array: Uint8Array | number[]): string;
export declare function StrtoUTF8(str: string): Uint8Array;
export declare function createU128Str(lo: BigInt, hi: BigInt): string;
export declare function encodeBs58(str: string): string;
export declare function decodeBs58(str: string): string;
export declare function assign<T>(...args: T[] | Partial<T>[]): T;
