/// <reference types="assemblyscript/std/assembly" />
/* eslint-disable @typescript-eslint/no-explicit-any */
declare interface Uint8Array {
  dataStart: usize;
}

declare interface Array<T> {
  dataStart: usize;
}

declare function decode<T, K = Uint8Array>(buffer: K, name?: string): T;
declare function encode<T, K = Uint8Array>(
  item: T,
  name?: string,
  encoder?: any
): K;

declare interface Object {
  encode(): Uint8Array;
  decode<T, K = Uint8Array>(bytes: K): T;
  toJSON(): string;
  serialize(): Uint8Array;
}

declare function isNull<T>(t: T): bool;

/**
 * Decorator used to make classes serializable.
 */
declare function nearBindgen(_class: any): void;

declare function defaultValue<T>(): T;

/**
 * Throw if attached deposit.
 */
declare function notPayable(): void;

/**
 * Produces a warning during transform that element is deprecated.
 */
declare function deprecated(_any: any): void;

/**
 * Inject data from a file as a StaticArray of bytes.
 */
declare function includeBytes(path: string): StaticArray<u8>;

/**
 * Rename Wasm module export to any string including keywords.
 */
declare function exportAs(_func: any, name: string): void;


/**
 * Declare that a singleton method should commit updates 
 * to the state of the singleton contract so that changes persist.
 */
declare function mutateState(): (target: any,
  propertyKey: string,
  descriptor: any) => void;
