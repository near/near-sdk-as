//out
import * as main from "./main";
import { base64, logging } from "near-runtime-ts";
import { FooBar, Nullables, ContainerClass, AnotherContainerClass } from './model';
import { u128 } from "bignum";

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
    original.uint8arrays = Array.create<Uint8Array>(2);
    original.uint8arrays[0] = base64.decode("aGVsbG8sIHdvcmxkIQ==");
    original.uint8arrays[1] = base64.decode("aGVsbG8sIHdvcmxkIQ==");
    original.u64Arr =  [10000000000, 100000000000];
    //@ts-ignore
    logging.log("Before: " + original.toJSON());
    //@ts-ignore
    const encoded = original.encode();
    //@ts-ignore
    let decoded: FooBar = decode<FooBar>(encoded);
    logging.log("After:  "+ decoded.toJSON());
    assert(original.foo == decoded.foo);
    assert(original.bar == decoded.bar);
    assert(base64.encode(original.uint8array) == base64.encode(decoded.uint8array));
    assert(base64.encode(original.uint8arrays[0]) == base64.encode(decoded.uint8arrays[0]));
    assert(original.arr[0][0] == "Hello");
    assert(original.u64Arr[0] == decoded.u64Arr[0]);
    assert(original.u64_zero == decoded.u64_zero);

    const nullable = new Nullables();
    //@ts-ignore
    const nullable2 = decode<Nullables>(nullable.encode());
    assert(nullable2.str == null);
    assert(nullable2.u128 == <u128> null);
    assert(nullable2.uint8Array == null);

    const foobar2 = new FooBar();
    foobar2.arr  = [];
    const foobar2_ = decode<FooBar>(foobar2.encode());
    assert(foobar2_.arr.length == foobar2.arr.length);

    // Handle arrays without field;
    const arr: u64[] = [123456789];
    const encodedArr: Uint8Array = encode<u64[]>(arr);
    const arr2: u64[] = decode<u64[]>(encodedArr);
    assert(arr[0] == arr2[0]);

    assert(roundtrip<u64[]>([]).length == 0);
    assert(roundtrip<i32>(42) == 42);
    assert(roundtrip<i64>(42) == 42);
    assert(roundtrip<string>("hello world") == "hello world", "expected \"hello world\"");
    assert(roundtrip<u128>(new u128(42,42)).lo == 42);


    logging.log("Test Passed");
}

export function convertFoobars(foobars: Array<FooBar>): Array<ContainerClass> {
    //@ts-ignore will be converted when parsed
    return main.convertFoobars(foobars);
}

export function getStringArrayLength(arr: string[]): i32 {
    //@ts-ignore will be converted when parsed
    return main.getStringArrayLength(arr);
}
export function rewrapFoobar(container: ContainerClass): AnotherContainerClass {
    return main.rewrapFoobar(container);
}

export function unwrapFoobar(container: AnotherContainerClass): FooBar {
    //@ts-ignore will be converted when parsed
    return main.unwrapFoobar(container);
}

export function stringOrNull(): string | null {
    return main.stringOrNull();
}

type StringAlias = string;

export function stringAliasTest(str: StringAlias): StringAlias {
    return str + " World"
}

export function classOrNull(): FooBar | null {
    return main.classOrNull();
}

export function classAndNull(): FooBar | null {
    return null;
}