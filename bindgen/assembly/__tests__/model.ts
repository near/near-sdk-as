import { u128 } from "near-sdk-core";

@nearBindgen
export class FooBar {
  foo: i32 = 0;
  bar: u32 = 1;
  u64Val: u64 = 4294967297;
  u64_zero: u64;
  i64Val: i64 = -64;
  f32: f32 = 3.14;
  f64: f64 = 3.141592653589793238462643383279;
  f32_zero: f32;
  f64_zero: f64;
  flag: bool;
  baz: string = "123";
  uint8array: Uint8Array;
  arr: Array<Array<string>>;
  u32Arr: u32[];
  i32Arr: i32[];
  u128Val: u128;
  uint8arrays: Array<Uint8Array>;
  // TODO: Fix u64 arrays
  u64Arr: u64[];
}

@nearBindgen
export class Nullables {
  str: string;
  u128: u128;
  uint8Array: Uint8Array;
}

@nearBindgen
export class ContainerClass {
  foobar: FooBar;
}

@nearBindgen
export class AnotherContainerClass {
  constructor(public foobars: Array<Array<FooBar>>) {}
}

@nearBindgen
export class PromiseArgs {
  receiver: string;
  methodName: string;
  args: PromiseArgs;
  balance: i32;
  callback: string;
  callbackArgs: PromiseArgs;
  callbackBalance: i32;
}

@nearBindgen
export class MyContractPromiseResult {
  ok: bool;
  r: MyCallbackResult;
}

@nearBindgen
export class MyCallbackResult {
  rs: MyContractPromiseResult[];
  n: string;
}

@nearBindgen
export class Generic<T> {
  value: T;
}
