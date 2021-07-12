// @nearfile out
import * as main from "./main";
import { base64, logging, u128, JSON, util } from "near-sdk-as";
import {
  FooBar,
  Nullables,
  ContainerClass,
  AnotherContainerClass,
} from "./model";

function roundTrip<T>(obj: T): T {
  return JSON.parse<T>(JSON.stringify<T>(obj));
}

function isNull<T>(t: T): bool {
  if (isNullable<T>() || isReference<T>()) {
    return changetype<usize>(t) == 0;
  }
  return false;
}

const SMALL_FLOAT = 0.0000000001;

function equalFloat(f: f64, f1: f64): boolean {
  return Math.abs(f - f1) < SMALL_FLOAT;
}

function decodeJSON<T>(encoded: Uint8Array): T {
  const str = util.bytesToString(encoded)!;
  return JSON.parse<T>(str);
}

function encodeJSON<T>(t: T): Uint8Array {
  return util.stringToBytes(JSON.stringify<T>(t));
}

export function runTest(): void {
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

  const encoded = encodeJSON(original);
  let decoded: FooBar = decodeJSON<FooBar>(encoded);
  let decodedStatic: FooBar = decodeJSON<FooBar>(encoded);
  assert(JSON.stringify(decoded) == JSON.stringify(decodedStatic));
  assert(original.foo == decoded.foo);
  assert(original.bar == decoded.bar);
  assert(
    base64.encode(original.uint8array) == base64.encode(decoded.uint8array)
  );
  assert(
    base64.encode(original.uint8arrays[0]) ==
      base64.encode(decoded.uint8arrays[0])
  );
  assert(original.arr![0][0] == "Hello");
  assert(original.u64Arr[0] == decoded.u64Arr[0]);
  assert(original.u64_zero == decoded.u64_zero);

  const nullable = new Nullables();
  
  const nullable2 = roundTrip(nullable);
  assert(nullable2.str == null);
  assert(
    isNull(nullable2.uint8Array),
    "expected nullable2.uint8Array to be null"
  );

  const foobar2 = new FooBar();
  foobar2.arr = [];
  const foobar2_ = roundTrip(foobar2);
  assert(foobar2_.arr!.length == foobar2.arr!.length);

  // Handle arrays without field;
  const arr: u64[] = [123456789];
  const encodedArr: Uint8Array = encode<u64[]>(arr);
  const arr2: u64[] = decodeJSON<u64[]>(encodedArr);
  assert(arr[0] == arr2[0]);
  assert(original.f32 == decoded.f32);
  assert(original.f64 == decoded.f64);
  assert(original.f32_zero == decoded.f32_zero);
  assert(original.f64_zero == decoded.f64_zero);

  assert(roundTrip<f32>(3.4) == 3.4);

  assert(roundTrip<u64[]>([]).length == 0);
  assert(roundTrip<i32>(42) == 42);
  assert(roundTrip<i64>(42) == 42);
  const str = roundTrip<string>("hello world");
  assert(
    str == "hello world",
    'expected "hello world" + got '+ str
  );
  assert(roundTrip<u128>(new u128(42, 42)).lo == 42);

  logging.log("Test Passed");
}

function _convertFoobars(foobars: Array<FooBar>): Array<ContainerClass> {
  return foobars.map<ContainerClass>((foobar) => ({ foobar }));
}

export function convertFoobars(foobars: Array<FooBar>): Array<ContainerClass> {
  // @ts-ignore will be converted when parsed
  return _convertFoobars(foobars);
}

export function getStringArrayLength(arr: string[]): i32 {
  // @ts-ignore will be converted when parsed
  return main.getStringArrayLength(arr);
}
export function rewrapFoobar(container: ContainerClass): AnotherContainerClass {
  return main.rewrapFoobar(container);
}

export function unwrapFoobar(container: AnotherContainerClass): FooBar {
  // @ts-ignore will be converted when parsed
  return main.unwrapFoobar(container);
}

export function stringOrNull(): string | null {
  return main.stringOrNull();
}

type StringAlias = string;

export function stringAliasTest(str: StringAlias): StringAlias {
  return str + " World";
}

export function classOrNull(): FooBar | null {
  return main.classOrNull();
}

export function classAndNull(): FooBar | null {
  return null;
}

export function SomeExport(): void {}

export function changeUserAPIKey(): string {
  return "";
}