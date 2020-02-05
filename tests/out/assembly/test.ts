import * as main from "./main"
import {
  base64,
  logging
} from "near-runtime-ts"
import {
  FooBar,
  Nullables,
  ContainerClass,
  AnotherContainerClass
} from "./model"
import {
  u128
} from "bignum"
function roundtrip<T>(obj: T): T {
  return decode<T>(encode<T>(obj));
}
export function runTest(): void {
  logging.log("starting test");
  const original = new FooBar();
  original.u32Arr = [42, 11];
  original.foo = 321;
  original.bar = 123;
  original.flag = true;
  original.baz = "foo";
  original.uint8array = base64.decode("aGVsbG8sIHdvcmxkIQ==");
  original.u128Val = new u128(128);
  original.arr = [["Hello"], ["World"]];
  original.uint8arrays = new Array<Uint8Array>(2);
  original.uint8arrays[0] = base64.decode("aGVsbG8sIHdvcmxkIQ==");
  original.uint8arrays[1] = base64.decode("aGVsbG8sIHdvcmxkIQ==");
  original.u64Arr = [10000000000, 100000000000];
  logging.log("Before: " + original.toJSON());
  const encoded = original.encode();
  let decoded: FooBar = decode<FooBar>(encoded);
  logging.log("After:  " + decoded.toJSON());
  let decodedStatic: FooBar = FooBar.decode(encoded);
  assert(decoded.toJSON() == decodedStatic.toJSON());
  assert(original.foo == decoded.foo);
  assert(original.bar == decoded.bar);
  assert(base64.encode(original.uint8array) == base64.encode(decoded.uint8array));
  assert(base64.encode(original.uint8arrays[0]) == base64.encode(decoded.uint8arrays[0]));
  assert(original.arr[0][0] == "Hello");
  assert(original.u64Arr[0] == decoded.u64Arr[0]);
  assert(original.u64_zero == decoded.u64_zero);
  const nullable = new Nullables();
  const nullable2 = decode<Nullables>(nullable.encode());
  assert(nullable2.str == null);
  assert(nullable2.u128 == <u128>null);
  assert(nullable2.uint8Array == null);
  const foobar2 = new FooBar();
  foobar2.arr = [];
  const foobar2_ = decode<FooBar>(foobar2.encode());
  assert(foobar2_.arr.length == foobar2.arr.length);
  const arr: Array<u64> = [123456789];
  const encodedArr: Uint8Array = encode<Array<u64>>(arr);
  const arr2: Array<u64> = decode<Array<u64>>(encodedArr);
  assert(arr[0] == arr2[0]);
  assert(roundtrip<Array<u64>>([]).length == 0);
  assert(roundtrip<i32>(42) == 42);
  assert(roundtrip<i64>(42) == 42);
  assert(roundtrip<string>("hello world") == "hello world", "expected \"hello world\"");
  assert(roundtrip<u128>(new u128(42, 42)).lo == 42);
  logging.log("Test Passed");
}
function convertFoobars(foobars: Array<FooBar>): Array<ContainerClass> {
  return main.convertFoobars(foobars);
}
function getStringArrayLength(arr: Array<string>): i32 {
  return main.getStringArrayLength(arr);
}
function rewrapFoobar(container: ContainerClass): AnotherContainerClass {
  return main.rewrapFoobar(container);
}
function unwrapFoobar(container: AnotherContainerClass): FooBar {
  return main.unwrapFoobar(container);
}
function stringOrNull(): string | null {
  return main.stringOrNull();
}
type StringAlias = string
function stringAliasTest(str: StringAlias): StringAlias {
  return str + " World";
}
function classOrNull(): FooBar | null {
  return main.classOrNull();
}
function classAndNull(): FooBar | null {
  return null;
}
function __wrapper_convertFoobars(): void {
  const obj = getInput();
  let result: Array<ContainerClass> = convertFoobars(decode<Array<FooBar>, JSON.Obj>(obj, "foobars"));
  const val = encode<Array<ContainerClass>>(result);
  value_return(val.byteLength, <usize>val.buffer);
}
export { __wrapper_convertFoobars as convertFoobars }
function __wrapper_getStringArrayLength(): void {
  const obj = getInput();
  let result: i32 = getStringArrayLength(decode<Array<string>, JSON.Obj>(obj, "arr"));
  const val = encode<i32>(result);
  value_return(val.byteLength, <usize>val.buffer);
}
export { __wrapper_getStringArrayLength as getStringArrayLength }
function __wrapper_rewrapFoobar(): void {
  const obj = getInput();
  let result: AnotherContainerClass = rewrapFoobar(decode<ContainerClass, JSON.Obj>(obj, "container"));
  const val = encode<AnotherContainerClass>(result);
  value_return(val.byteLength, <usize>val.buffer);
}
export { __wrapper_rewrapFoobar as rewrapFoobar }
function __wrapper_unwrapFoobar(): void {
  const obj = getInput();
  let result: FooBar = unwrapFoobar(decode<AnotherContainerClass, JSON.Obj>(obj, "container"));
  const val = encode<FooBar>(result);
  value_return(val.byteLength, <usize>val.buffer);
}
export { __wrapper_unwrapFoobar as unwrapFoobar }
function __wrapper_stringOrNull(): void {
  let result: string | null = stringOrNull();
  const val = encode<string>(changetype<string>(result));
  value_return(val.byteLength, <usize>val.buffer);
}
export { __wrapper_stringOrNull as stringOrNull }
function __wrapper_stringAliasTest(): void {
  const obj = getInput();
  let result: StringAlias = stringAliasTest(decode<StringAlias, JSON.Obj>(obj, "str"));
  const val = encode<StringAlias>(result);
  value_return(val.byteLength, <usize>val.buffer);
}
export { __wrapper_stringAliasTest as stringAliasTest }
function __wrapper_classOrNull(): void {
  let result: FooBar | null = classOrNull();
  const val = encode<FooBar>(changetype<FooBar>(result));
  value_return(val.byteLength, <usize>val.buffer);
}
export { __wrapper_classOrNull as classOrNull }
function __wrapper_classAndNull(): void {
  let result: FooBar | null = classAndNull();
  const val = encode<FooBar>(changetype<FooBar>(result));
  value_return(val.byteLength, <usize>val.buffer);
}
export { __wrapper_classAndNull as classAndNull }