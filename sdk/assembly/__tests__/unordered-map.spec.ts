import { PersistentUnorderedMap, RNG } from "..";
import { TextMessage } from "./model";
import {
  _testTextMessage,
  _testTextMessageTwo,
  _testTextMessageThree,
  _testBytes,
  _testBytesTwo,
} from "./util";

let unOrderedMap: PersistentUnorderedMap<string, TextMessage>;
let imap: PersistentUnorderedMap<i32, i32>;
let keys: i32[];
describe("Unordered Map should handle", () => {
  beforeEach(() => {
    unOrderedMap = new PersistentUnorderedMap<string, TextMessage>(
      "unOrderedMap"
    );
  });

  describe("empty maps", () => {
    it("should not contain key", () => {
      expect(!unOrderedMap.contains("nonexistentkey")).toBe(
        true,
        "Map contains a non existent key"
      );
    });

    throws("should throw when retrieving key that doesn't exist", () => {
      expect(unOrderedMap.getSome("nonexistentkey")).toBeNull(
        "Incorrect result on get with nonexistent key"
      );
    });
  });

  it("some entries", () => {
    // add some entries to the map
    const message = _testTextMessage();
    unOrderedMap.set("mapKey1", message);
    unOrderedMap.set("mapKey3", _testTextMessageTwo());
    expect(unOrderedMap.contains("mapKey1")).toBe(true);
    expect(!unOrderedMap.contains("nonexistentkey")).toBe(
      true,
      "Map contains a non existent key"
    );
    expect(unOrderedMap.contains("mapKey1")).toBe(
      true,
      "Map does not contain a key that was added (mapKey1)"
    );
    expect(unOrderedMap.contains("mapKey3")).toBe(
      true,
      "Map does not contain a key that was added (mapKey3)"
    );
    expect(unOrderedMap.getSome("mapKey1")).toStrictEqual(
      message,
      "Incorrect result from map get"
    );
    expect(unOrderedMap.getSome("mapKey3")).toStrictEqual(
      _testTextMessageTwo(),
      "Incorrect result from map get"
    );
    // delete an entry and retry api calls
    unOrderedMap.pop();
    expect(!unOrderedMap.contains("mapKey3")).toBe(
      true,
      "Map contains a key that was deleted"
    );
    expect(unOrderedMap.contains("mapKey1")).toBe(
      true,
      "Map does not contain a key that should be there after deletion of another key"
    );
    expect(unOrderedMap.getSome("mapKey1")).toStrictEqual(
      message,
      "Incorrect result from map get after delete"
    );
  });

  it("should replace value on set(key, value)", () => {
    // add an entry to the map
    const message = _testTextMessage();
    const message2 = _testTextMessageTwo();
    unOrderedMap.set("mapKey1", message);
    expect(unOrderedMap.length).toBe(1, "length after set");
    expect(unOrderedMap.contains("mapKey1")).toBe(true);
    expect(unOrderedMap.getSome("mapKey1")).toStrictEqual(
      message,
      "Incorrect result from map get"
    );
    // set a new value for the key
    unOrderedMap.set("mapKey1", message2);
    expect(unOrderedMap.contains("mapKey1")).toBe(true);
    expect(unOrderedMap.length).toBe(1, "length after replace");
    expect(unOrderedMap.getSome("mapKey1")).toStrictEqual(
      message2,
      "Incorrect result from map get"
    );
  });

  it("deleting last entry", () => {
    // add some entries to the map
    const message = _testTextMessage();
    unOrderedMap.set("mapKey1", message);
    unOrderedMap.set("mapKey2", _testTextMessageTwo());
    unOrderedMap.set("mapKey3", _testTextMessageThree());
    expect(unOrderedMap.contains("mapKey1")).toBe(true);
    expect(unOrderedMap.contains("mapKey2")).toBe(true);
    expect(unOrderedMap.contains("mapKey3")).toBe(true);
    // delete last entry and retry api calls
    unOrderedMap.delete("mapKey3");

    expect(unOrderedMap.contains("mapKey2")).toBe(
      true,
      "Map does not contain a key that should be there after deletion of another key"
    );
    expect(unOrderedMap.getSome("mapKey2")).toStrictEqual(
      _testTextMessageTwo(),
      "Incorrect result from map get after delete"
    );
    expect(unOrderedMap.contains("mapKey1")).toBe(
      true,
      "Map does not contain a key that should be there after deletion of another key"
    );
    expect(unOrderedMap.getSome("mapKey1")).toStrictEqual(
      message,
      "Incorrect result from map get after delete"
    );
    expect(unOrderedMap.contains("mapKey3")).toBe(
      false,
      "Map contains a key that was deleted"
    );

    expect(unOrderedMap.values(0, 1)).toIncludeEqual(
      message,
      "uMap.values(0,1) fails"
    );
    expect(unOrderedMap.values(1, 2)).toIncludeEqual(
      _testTextMessageTwo(),
      "uMap.values(1,2) fails"
    );
  });

  it("should handle primitives", () => {
    // map with primitives
    const map = new PersistentUnorderedMap<i32, i32>("mapPrimitives");
    map.set(1, -20);
    expect(map.getSome(1)).toBe(-20, "wrong value on map get for i32");
    expect(map.values()).toStrictEqual([-20]);
  });

  it("should handle arrays", () => {
    // map with arrays
    const map = new PersistentUnorderedMap<i32, Array<string>>("mapArray");
    const arr1 = new Array<string>();
    arr1.push("123456789");
    // return arr1;
    map.set(1, arr1);
    expect(map.getSome(1)[0]).toBe("123456789");
  });

  describe("Unordered Map order", () => {
    beforeEach(() => {
      imap = new PersistentUnorderedMap<i32, i32>("mapPrimitives");
      keys = new Array<i32>();
      let rng = new RNG<i32>(100, 100);
      for (let _i = 0; _i < 10; _i++) {
        let i = rng.next();
        if (!imap.contains(i)) {
          imap.set(i, i);
          keys.push(i);
        } else {
          _i--;
        }
      }
    });

    it("should maintain order if no deletions before penultimate key", () => {
      expect(imap.keys()).toStrictEqual(
        keys,
        "keys should be in order inserted"
      );
      expect(imap.values()).toStrictEqual(
        keys,
        "values should be in order inserted"
      );

      imap.delete(keys.pop());

      expect(imap.keys()).toStrictEqual(
        keys,
        "keys should be in order inserted"
      );
      expect(imap.values()).toStrictEqual(
        keys,
        "values should be in order inserted"
      );

      let oldEnd = keys.pop();
      imap.delete(keys.pop());
      keys.push(oldEnd);

      expect(imap.keys()).toStrictEqual(
        keys,
        "keys should be in order inserted"
      );
      expect(imap.values()).toStrictEqual(
        keys,
        "values should be in order inserted"
      );
    });

    it("should not be in order if key deleted before penultimate key", () => {
      imap.delete(keys.shift());
      expect(imap.keys()).not.toStrictEqual(
        keys,
        "keys should not be in order inserted"
      );
      expect(imap.values()).not.toStrictEqual(
        keys,
        "values should not be in order inserted"
      );
    });
  });
});
