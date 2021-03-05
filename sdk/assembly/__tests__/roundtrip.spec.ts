import { _testTextMessage, roundtrip } from "./util";
import { TextMessage } from "./model";
import {
  util,
  PersistentVector,
  PersistentSet,
  PersistentMap,
  PersistentDeque,
  RNG,
} from "..";
import { Box } from "./generic";

const NUM_RANDOM_FLOATS = 100;

function testFloat<T>(): void {
  let rng = new RNG<T>(NUM_RANDOM_FLOATS);
  for (let i = 0; i < NUM_RANDOM_FLOATS; i++) {
    expect(rng.next()).toBeCloseTo(roundtrip<T>(rng.last()));
  }
}


describe("Round Trip", () => {
  it("should return the same TextMessage", () => {
    const message = _testTextMessage();
    // @ts-ignore
    const messageFromStorage = util.parseFromBytes<TextMessage>(
      message.serialize()
    );
    expect<string>(messageFromStorage.sender).toStrictEqual(
      "mysteriousStranger",
      "Incorrect data value (sender) for retrieved object"
    );
    expect<string>(messageFromStorage.text).toStrictEqual(
      "Hello world",
      "Incorrect data value (text) for retrieved object"
    );
    expect<u64>(messageFromStorage.number).toBe(
      415,
      "Incorrect data value (number) for retrieved object"
    );
  });

  it("should handle empty Message", () => {
    const message = new TextMessage();
    log<TextMessage>(message);
    // @ts-ignore
    const messageFromStorage = util.parseFromBytes<TextMessage>(
      message.serialize()
    );
    expect<string>(messageFromStorage.sender).toStrictEqual(
      message.sender,
      "Incorrect data value (sender) for retrieved object"
    );
    expect<string>(messageFromStorage.text).toStrictEqual(
      message.text,
      "Incorrect data value (text) for retrieved object"
    );
    expect<u64>(messageFromStorage.number).toBe(
      message.number,
      "Incorrect data value (number) for retrieved object"
    );
  });

  it("should handle generics", () => {
    const u32 = new Box<u32>();
    u32.t = 42;
    // @ts-ignore
    const u32_2 = util.parseFromBytes<Box<u32>>(u32.serialize());
    expect<u32>(u32.t).toBe(u32_2.t);
  });

  it("should handle non-empty arrays", () => {
    const arr: Array<i32> = [42, 84];
    expect<i32[]>(roundtrip<i32[]>(arr)).toStrictEqual(arr);
  });

  it("should handle empty arrays", () => {
    const arr: Array<i32> = [];
    expect<i32[]>(roundtrip<i32[]>(arr)).toStrictEqual(arr);
  });

  it("should handle integers", () => {
    expect<i32>(roundtrip<i32>(42)).toBe(42);
    expect<i64>(roundtrip<i64>(42)).toBe(42);
  });

  it("should handle strings", () => {
    expect<string>(roundtrip<string>("hello world!")).toBe("hello world!");
  });

  it("sholud handle null", () => {
    expect<TextMessage | null>(roundtrip<TextMessage | null>(null)).toBeNull();
  });

  describe("should handle floats", () => {
    it("f32", () => {
      testFloat<f32>();
    });

    it("f64", () => {
      testFloat<f64>();
    });
  });

  describe("Persistent Collections are serializable ", () => {
    it("Vector", () => {
      let arr = new PersistentVector<string>("hi");
      expect<PersistentVector<string>>(roundtrip(arr)).toStrictEqual(arr);
      arr.push("hello");
      expect<PersistentVector<string>>(roundtrip(arr)).toStrictEqual(arr);
    });
    it("Set", () => {
      let arr = new PersistentSet<string>("hi");
      expect(roundtrip(arr)).toStrictEqual(arr);
      arr.add("hello");
      expect(roundtrip(arr)).toStrictEqual(arr);
    });
    it("Map", () => {
      let arr = new PersistentMap<string, string>("hi");
      expect<PersistentMap<string, string>>(roundtrip(arr)).toStrictEqual(arr);
      arr.set("hello", "world");
      expect<PersistentMap<string, string>>(roundtrip(arr)).toStrictEqual(arr);
    });
    it("Deque", () => {
      let arr = new PersistentDeque<string>("hi");
      expect<PersistentDeque<string>>(roundtrip(arr)).toStrictEqual(arr);
      arr.pushFront("hello");
      expect<PersistentDeque<string>>(roundtrip(arr)).toStrictEqual(arr);
    });
  });

  describe("Map", () => {
    beforeEach(() => {
      map = new Map<string, string>();
    });

    it("should handle an empty map", () => {
      expect(roundtrip(map)).toStrictEqual(map);
    });

    it("should handle entries", () => {
      map.set("hello", "world");
      expect(roundtrip(map)).toStrictEqual(map);
      map.set("world", "hello");
      expect(roundtrip(map)).toStrictEqual(map);
    });
  });
  describe("Set", () => {
    beforeEach(() => {
      aSet = new Set<string>();
    });

    it("should handle an empty set", () => {
      expect(roundtrip(aSet.values())).toStrictEqual([]);
    });

    it("should handle entries", () => {
      aSet.add("hello");
      expect(roundtrip(aSet).values()).toStrictEqual(aSet.values());
      aSet.add("world");
      expect(roundtrip(aSet).values()).toStrictEqual(aSet.values());
    });
  });
});

let map: Map<string, string>;
let aSet: Set<string>;

class Generic<T> {
  constructor(public value: T) {}
}

class Foo {}
export const Foo_ID = idof<Foo>();
export const Generic_i32_ID = idof<Generic<i32>>();
export const Generic_Foo_ID = idof<Generic<Foo>>();

function _foo<T>(): string {
  return nameof<T>();
}

function makeArray<T>(): T {
  let t = instantiate<T>();
  if (isArray<T>()) {
    // @ts-ignore
    t.push(42);
  }
  return t;
}
describe("Instantiated array", () => {
  it("starts with a length of zero", () => {
    let arr = instantiate<Array<i32>>();
    expect<i32>(arr.length).toBe(0);
  });

  it("can have an item added to it", () => {
    let arr = makeArray<u32[]>();
    expect<u32>(arr[0]).toBe(42);
  });
});

function _isBox<T>(): bool {
  return nameof<T>().startsWith("Box");
}

describe("Generic classes", () => {
  it("can use instanceof", () => {
    let genericFoo = new Generic<Foo>(new Foo());
    // @ts-ignore
    expect<boolean>(genericFoo instanceof Generic).toBe(true);
  });
});
