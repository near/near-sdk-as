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
    expect(rng.next()).toBeCloseTo(roundtrip<T>(rng.last(), true, true));
    expect(rng.last()).toBeCloseTo(roundtrip<T>(rng.last(), false, true));
  }
}


describe("Round Trip", () => {
  it("should return the same TextMessage", () => {
    const message = _testTextMessage();
    // @ts-ignore
    const messageFromStorage = util.parseFromBytes<TextMessage>(
      encode(message)
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
      encode(message)
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
    roundtrip(u32);
    roundtrip(u32, false);
  });

  it("should handle non-empty arrays", () => {
    const arr: Array<i32> = [42, 84];
    roundtrip(arr);
    roundtrip(arr, false);
  });

  it("should handle empty arrays", () => {
    const arr: Array<i32> = [];
    roundtrip(arr);
    roundtrip(arr, false);
  });

  it("should handle integers", () => {
    roundtrip(42);
    roundtrip(42, false);
    roundtrip(42);
    roundtrip(42, false);
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
      roundtrip(arr);
      roundtrip(arr, false);
      arr.push("hello");
      roundtrip(arr);
      roundtrip(arr, false);
    });
    it("Set", () => {
      let arr = new PersistentSet<string>("hi");
      roundtrip(arr);
      roundtrip(arr, false);
      arr.add("hello");
      roundtrip(arr);
      roundtrip(arr, false);
    });
    it("Map", () => {
      let arr = new PersistentMap<string, string>("hi");
      roundtrip(arr);
      roundtrip(arr, false);
      arr.set("hello", "world");
      roundtrip(arr);
      roundtrip(arr, false);
    });
    it("Deque", () => {
      let arr = new PersistentDeque<string>("hi");
      roundtrip(arr);
      roundtrip(arr, false);
      arr.pushFront("hello");
      roundtrip(arr);
      roundtrip(arr, false);
    });
  });

  describe("Map", () => {
    beforeEach(() => {
      map = new Map<string, string>();
    });

    it("should handle an empty map", () => {
      roundtrip(map);
      roundtrip(map, false);
    });

    it("should handle entries", () => {
      map.set("hello", "world");
      roundtrip(map);
      roundtrip(map, false);
      map.set("world", "hello");
      roundtrip(map);
      roundtrip(map, false);
    });
  });
  describe("Set", () => {
    beforeEach(() => {
      aSet = new Set<string>();
    });

    it("should handle an empty set", () => {
      roundtrip(aSet.values());
      roundtrip(aSet.values(), false);
    });

    it("should handle entries", () => {
      aSet.add("hello");
      roundtrip(aSet);
      roundtrip(aSet, false);
      aSet.add("world");
      roundtrip(aSet);
      roundtrip(aSet, false);
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
