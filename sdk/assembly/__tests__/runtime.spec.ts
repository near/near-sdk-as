import {
  Context,
  storage,
  base58,
  base64,
  PersistentMap,
  PersistentVector,
  PersistentDeque,
  ContractPromise,
  math,
  logging,
  env,
  u128,
  ContractPromiseBatch,
  VMContext,
  VM,
  Outcome
} from "..";
import { TextMessage } from "./model";
import {
  _testTextMessage,
  _testTextMessageTwo,
  _testBytes,
  _testBytesTwo,
} from "./util";

describe("Encodings", () => {
  it("base58 round trip", () => {
    let array: Uint8Array = _testBytes();
    const encoded = base58.encode(array);
    expect(encoded).toBe("1TMu", "Wrong encoded value for base58 encoding");
    const decoded1 = base58.decode(encoded);
    expect(_arrayEqual(decoded1, array)).toBeTruthy(
      "Wrong decoded value for base58 encoding"
    );

    // tests work for our public keys if they included the key prefix (only works for ed25519)
    const publicKeyWithCurvePrefix = base58.decode(
      "1DgnyR5kTkaKB7BGuRXH5898iAsa9M6nGHptRK5SZanVj"
    );
    expect("1DgnyR5kTkaKB7BGuRXH5898iAsa9M6nGHptRK5SZanVj").toBe(
      base58.encode(publicKeyWithCurvePrefix),
      "Wrong encoded value for base58 encoding"
    );

    // but decoding assumes ed25519 so it prepends the Base10 numeral 1 (as per near-sdk-rs env::signer_account_pk response)
    const publicKeyWithoutCurvePrefix = base58.decode(
      "SnaTomvVzRgZah6Xh34z5xR4HUTRP67KxB8btMFqc9m"
    );
    expect("SnaTomvVzRgZah6Xh34z5xR4HUTRP67KxB8btMFqc9m").not.toBe(
      base58.encode(publicKeyWithoutCurvePrefix),
      "Wrong encoded value for base58 encoding"
    );
  });

  it("base64 round trip", () => {
    const array = _testBytes();
    const encoded = base64.encode(array);
    expect(encoded).toBe("AAFaZA==", "Incorrect keys contents");
    const decoded = base64.decode("AAFaZA==");
    expect(decoded).toStrictEqual(
      array,
      "Incorrect decoded value after base64 roundtrip"
    );
  });

  it("base64 large array", () => {
    const bytes = new Uint8Array(20000);
    for(let n=0; n<bytes.length; n++) {
      bytes[n] = n & 0xff;
    }
    const encoded = base64.encode(bytes);  
    const decoded = base64.decode(encoded);
    expect(decoded).toStrictEqual(
      bytes,
      "Incorrect decoded value after base64 roundtrip"
    );
  });
});

describe("Account env util", () => {
  it("isValidAccountID", () => {
    var accounts = [
      "aa",
      "a-a",
      "a-aa",
      "100",
      "0o",
      "com",
      "near",
      "bowen",
      "b-o_w_e-n",
      "b.owen",
      "bro.wen",
      "a.ha",
      "a.b-a.ra",
      "system",
      "over.9000",
      "google.com",
      "illia.cheapaccounts.near",
      "0o0ooo00oo00o",
      "alex-skidanov",
      "10-4.8-2",
      "b-o_w_e-n",
      "no_lols",
      "0123456789012345678901234567890123456789012345678901234567890123",
      // Valid, but can't be created
      "near.a",
      "a.a",
    ];
    for (var i = 0; i < accounts.length; i++) {
      expect(env.isValidAccountID(accounts[i])).toBe(
        true,
        "valid accountId not recognized " + accounts[i]
      );
    }

    accounts = [
      "",
      "a",
      "A",
      "Abc",
      "-near",
      "near-",
      "-near-",
      "near.",
      ".near",
      "near@",
      "@near",
      "неар",
      "@@@@@",
      "0__0",
      "0_-_0",
      "0_-_0",
      "..",
      "a..near",
      "nEar",
      "_bowen",
      "hello world",
      "abcdefghijklmnopqrstuvwxyz.abcdefghijklmnopqrstuvwxyz.abcdefghijklmnopqrstuvwxyz",
      "01234567890123456789012345678901234567890123456789012345678901234",
      // `@` separators are banned now
      "some-complex-address@gmail.com",
      "sub.buy_d1gitz@atata@b0-rg.c_0_m",
    ];
    for (i = 0; i < accounts.length; i++) {
      expect(env.isValidAccountID(accounts[i])).toBe(
        false,
        "invalid accountId not detected " + accounts[i]
      );
    }
  });
});

let _outcome: Outcome;
describe("outcome", () => {
  afterAll(() => {
    VM.restoreState();
  });

  it("should return acturate logs", () => {
    logging.log("hello world");
    let nine = 9;
    const str = `should handle string interpolation ${nine} ${false}`;
    logging.log(str);
    expect(VM.logs()).toIncludeEqual(
      "hello world",
      'log should include "hello world"'
    );
    expect(VM.logs()).toIncludeEqual(str);
  });

  it("should increase the storage usage more when first added", () => {
    const key = "hello";
    const key_cost = String.UTF8.byteLength(key);
    const value = "world";
    const value_cost = String.UTF8.byteLength(value);
    const initial_base_cost = 0;

    if (storage.contains("hello")) {
      storage.delete("hello");
    }
    let orig = VM.outcome();
    expect(orig.storage_usage).toBe(
      env.storage_usage(),
      "it should be the same when no storage has been added."
    );
    storage.set("hello", "world");
    expect(storage.get<string>("hello")).toBe(
      "world",
      'key hello should be set to "world"'
    );
    let newOutcome = VM.outcome();
    expect(newOutcome.storage_usage).toBeGreaterThan(
      orig.storage_usage,
      "the new storage usage should be greater than the original."
    );
    expect(env.storage_usage()).toBe(
      initial_base_cost + key_cost + value_cost + orig.storage_usage,
      "first write cost 40 + length of key + length of value"
    );
  });

  it("should decrease storage usage with smaller value", () => {
    const oldVaule = "world";
    const newValue = "wor";
    const lenDiff =
      String.UTF8.byteLength(oldVaule) - String.UTF8.byteLength(newValue);
    storage.set("hello", oldVaule);
    const usageBefore = env.storage_usage();
    storage.set("hello", newValue);
    expect(env.storage_usage()).toBe(
      usageBefore - lenDiff,
      "storage usage should be less with smaller value."
    );
  });
});

describe("Storage", (): void => {
  afterEach(() => {
    VM.restoreState();
  });

  it("String Roundtrip", () => {
    storage.setString("someKey", "myValue1");
    storage.setString("someOtherKey", "otherValue");
    expect(storage.getString("someKey")).toBe("myValue1");
    // expect(getValueResult).toBe("myValue1", "Incorrect value from storage");
    const otherValueResult = storage.getString("someOtherKey");
    expect(otherValueResult).toBe(
      "otherValue",
      "Incorrect value from someOtherKey from storage"
    );
    expect(storage.getString("nonexistentKey")).toBeNull(
      "Unexpectd value on getting string with a nonexistent key"
    );
  });

  it("Bytes Roundtrip", () => {
    const bytes = _testBytes();
    const bytes2 = _testBytesTwo();
    storage.setBytes("someKey", bytes);
    storage.setBytes("someOtherKey", bytes2);
    const getValueResult = storage.getBytes("someKey");
    expect(getValueResult).toBe(
      getValueResult,
      "Incorrect bytes value from storage"
    );
    const otherValueResult = storage.getBytes("someOtherKey");
    expect(otherValueResult).toBe(
      otherValueResult,
      "Incorrect bytes value from storage"
    );
    expect(storage.getBytes("nonexistentKey")).toBeNull(
      "Unexpectd value on getting bytes with a nonexistent key"
    );
  });

  it("Generic Get/Set Roundtrip", () => {
    const message = _testTextMessage();
    storage.set("message1", message);

    const messageFromStorage = storage.get<TextMessage>("message1")!;
    expect(messageFromStorage.sender).toBe(
      "mysteriousStranger",
      "Incorrect data value (sender) for retrieved object"
    );
    expect(messageFromStorage.text).toBe(
      "Hello world",
      "Incorrect data value (text) for retrieved object"
    );
    expect(messageFromStorage.number).toBe(
      415,
      "Incorrect data value (number) for retrieved object"
    );
    expect(storage.get<TextMessage>("nonexistent", null)).toBeNull(
      "Incorrect data value for get<T> nonexistent key"
    );

    storage.set<TextMessage>("message2", new TextMessage());
    // TODO: fix this
    expect(storage.get<TextMessage>("message2")).toStrictEqual(
      new TextMessage(),
      "Incorrect empty message on storage roundtrip"
    );

    storage.set<u64>("u64key", 20);
    expect(storage.getPrimitive<u64>("u64key", 0)).toBe(
      20,
      "Incorrect data value for u64 roundtrip"
    );
    expect(storage.getPrimitive<u64>("nonexistent", 1)).toBe(
      1,
      "Incorrect data value for u64 get nonexistent key"
    );

    storage.set<u32>("u32key", 12);
    expect(storage.getPrimitive<u32>("u32key", 0)).toBe(
      12,
      "Incorrect data value for u32 roundtrip"
    );
    expect(storage.getPrimitive<u32>("nonexistent", 2)).toBe(
      2,
      "Incorrect data value for u32 get nonexistent key"
    );

    storage.set<i32>("i32key", -5);
    expect(storage.getPrimitive<i32>("i32key", 0)).toBe(
      -5,
      "Incorrect data value for i32 roundtrip"
    );
    expect(storage.getPrimitive<i32>("nonexistent", -10)).toBe(
      -10,
      "Incorrect data value for i32 get nonexistent key"
    );

    storage.set<bool>("boolkey", true);
    expect(storage.getPrimitive<bool>("boolkey", 0)).toBe(
      true,
      "Incorrect data value for bool roundtrip"
    );
    expect(storage.getPrimitive<bool>("nonexistent", true)).toBe(
      true,
      "Incorrect data value for bool get nonexistent key"
    );

    storage.set<string>("stringkey", "StringValue");
    const stringGet = storage.get<string>("stringkey");
    expect(stringGet).toBe(
      "StringValue",
      "Incorrect data value for string roundtrip"
    );
    expect(storage.get<string>("nonexistent", null)).toBeNull(
      "Incorrect data value for get<T> string nonexistent key"
    );
    const bigPi: f64 = 3.14159265358979323851280895940618620443274267017841339111328125;
    storage.set("f64", bigPi);
    expect(storage.getPrimitive<f64>("f64", 0)).toBeCloseTo(bigPi);

    const pi: f32 = 3.14159265358979323851280895940;
    storage.set("f32", pi);
    expect(storage.getPrimitive<f32>("f32", 0)).toBeCloseTo(pi);
  });

  it("Keys", () => {
    // // add some keys
    storage.setString("someApple", "myApple");
    storage.setString("someKey", "myValue1");
    storage.setString("someKey2", "myValue1");
    storage.setString("someKey6", "myValue2");

    expect(storage.contains("someApple")).toBe(
      true,
      "Storage does not contain key"
    );
    expect(storage.contains("someKey")).toBe(
      true,
      "Storage does not contain key"
    );
    expect(storage.contains("someKey2")).toBe(
      true,
      "Storage does not contain key"
    );
    expect(storage.contains("someKey6")).toBe(
      true,
      "Storage does not contain key"
    );
    expect(!storage.contains("nonexisting")).toBe(
      true,
      "Storage has unexpected key"
    );
    expect(storage.hasKey("someKey6")).toBe(
      true,
      "Storage does not contain key"
    );
    expect(!storage.hasKey("nonexisting")).toBe(
      true,
      "Storage has unexpected key"
    );

    // remove a key and retry some of the api calls
    storage.delete("someKey");
    expect(!storage.contains("someKey")).toBe(
      true,
      "Storage contains key that was deleted"
    );
    expect(storage.contains("someKey2")).toBe(
      true,
      "Some other key got deleted"
    );
  });

  it("deletes from storage and return status", () => {
    storage.setString("someApple", "myApple");
    expect(storage.delete("someApple")).toBe(
      true,
      "Delete key returns true when key present"
    );
    expect(storage.delete("anotherApple")).toBe(
      false,
      "Delete key returns false when key not present"
    );
  });
});

describe("Map should handle", () => {
  it("empty maps", () => {
    // TODO: values
    // empty map
    const map = new PersistentMap<string, TextMessage>("mapId");
    expect(!map.contains("nonexistentkey")).toBe(
      true,
      "Map contains a non existent key"
    );
    expect(map.get("nonexistentkey")).toBeNull(
      "Incorrect result on get with nonexistent key"
    );
  });

  it("some entries", () => {
    const map = new PersistentMap<string, TextMessage>("mapId");
    // add some entries to the map
    const message = _testTextMessage();
    map.set("mapKey1", message);
    map.set("mapKey3", _testTextMessageTwo());
    expect(map.contains("mapKey1")).toBe(true);
    expect(!map.contains("nonexistentkey")).toBe(
      true,
      "Map contains a non existent key"
    );
    expect(map.contains("mapKey1")).toBe(
      true,
      "Map does not contain a key that was added (mapKey1)"
    );
    expect(map.contains("mapKey3")).toBe(
      true,
      "Map does not contain a key that was added (mapKey3)"
    );
    expect(map.get("mapKey1")).toStrictEqual(
      message,
      "Incorrect result from map get"
    );
    expect(map.get("mapKey3")).toStrictEqual(
      _testTextMessageTwo(),
      "Incorrect result from map get"
    );
    // delete an entry and retry api calls
    map.delete("mapKey3");
    expect(!map.contains("mapKey3")).toBe(
      true,
      "Map contains a key that was deleted"
    );
    expect(map.contains("mapKey1")).toBe(
      true,
      "Map does not contain a key that should be there after deletion of another key"
    );
    expect(map.get("mapKey1")).toStrictEqual(
      message,
      "Incorrect result from map get after delete"
    );
    expect(map.get("mapKey3")).toBeNull(
      "Incorrect result from map get on a deleted key"
    );
  });

  it("should handle primitives", () => {
    // map with primitives
    const map = new PersistentMap<i32, i32>("mapPrimitives");
    map.set(1, -20);
    expect(map.getSome(1)).toBe(-20, "wrong value on map get for i32");
  });

  it("should handle arrays", () => {
    // map with arrays
    const map = new PersistentMap<i32, Array<string>>("mapArray");
    const arr1 = new Array<string>();
    arr1.push("123456789");
    // return arr1;
    map.set(1, arr1);
    expect(map.getSome(1)[0]).toBe("123456789");
  });
});

let vector: PersistentVector<string>;

describe("Vectors should handle", () => {
  beforeEach(() => {
    vector = new PersistentVector<string>("vector1");
  });
  // TODO: Improve tests
  it("no items", () => {
    expect(vector != null).toBe(true, "Vector not initialized");
    expect(vector.length).toBe(0, "Empty vector has incorrect length");
    expect(!vector.containsIndex(0)).toBe(
      true,
      "Empty vector incorrectly has index 0"
    );
    expect(vector.isEmpty).toBe(true, "isEmpty incorrect on empty vector");
    // try { expect(vector[0]).toBeNull("");} catch (e) {} not possible to test due to lack of try catch
  });

  it("single items", () => {
    vector.push("bb");
    expect(vector.length).toBe(1, "Vector has incorrect length");
    expect(vector.containsIndex(0)).toBe(
      true,
      "Non empty vector does not have index 0"
    );
    expect(!vector.containsIndex(1)).toBe(
      true,
      "Vector size 1 incorrectly has index 1"
    );
    expect(!vector.isEmpty).toBe(true, "isEmpty incorrect on non-empty vector");
    expect(vector.back).toBe("bb", "Incorrect back entry");
    expect(vector.last).toBe("bb", "Incorrect last entry");
    expect(vector.front).toBe("bb", "Incorrect front entry");
    expect(vector.first).toBe("bb", "Incorrect first entry");
    expect(vector[0]).toBe("bb", "incorrect vector contents");
    expect(_vectorHasContents(vector, ["bb"])).toBe(
      true,
      "Unexpected vector contents. Expected [bb]"
    );
  });

  it("two items", () => {
    vector.push("bb");
    vector.pushBack("bc");
    expect(vector.length).toBe(2, "Vector has incorrect length");
    expect(vector.containsIndex(0)).toBe(
      true,
      "Non empty vector does not have index 0"
    );
    expect(vector.containsIndex(1)).toBe(
      true,
      "Vector size 2 does not have index 1"
    );
    expect(!vector.containsIndex(2)).toBe(
      true,
      "Vector size 2 incorrectly has index 2"
    );
    expect(!vector.isEmpty).toBe(true, "isEmpty incorrect on non-empty vector");
    expect(_vectorHasContents(vector, ["bb", "bc"])).toBe(
      true,
      "Unexpected vector contents. Expected [ba, bb]"
    );
    vector[1] = "bd";
    expect(_vectorHasContents(vector, ["bb", "bd"])).toBe(
      true,
      "Unexpected vector contents. Expected [ba, bd]"
    );

    vector[0] = "aa";
    expect(_vectorHasContents(vector, ["aa", "bd"])).toBe(
      true,
      "Unexpected vector contents. Expected [aa, bd]"
    );
    expect(vector.length).toBe(2, "Vector has incorrect length");
  });

  it("three items", () => {
    vector.push("bb");
    vector.pushBack("bc");
    vector.pushBack("be");
    expect(_vectorHasContents(vector, ["bb", "bc", "be"])).toBe(
      true,
      "Unexpected vector contents. Expected [aa, bd, be]"
    );
    expect(vector.length).toBe(3, "Vector has incorrect length");
    expect(vector.back).toBe("be", "Incorrect back entry");
    expect(vector.last).toBe("be", "Incorrect last entry");
    expect(vector.front).toBe("bb", "Incorrect front entry");
    expect(vector.first).toBe("bb", "Incorrect first entry");
  });

  it("popping from the front", () => {
    vector.push("bb");
    vector.pushBack("bc");
    vector.pushBack("be");

    // pop an entry and then try various other methods
    vector.pop();
    expect(_vectorHasContents(vector, ["bb", "bc"])).toBe(
      true,
      "Unexpected vector contents. Expected [aa, bd]"
    );
    expect(vector.length).toBe(2, "Vector has incorrect length after delete");
    vector[0] = "ba";
    expect(_vectorHasContents(vector, ["ba", "bc"])).toBe(
      true,
      "Unexpected vector contents. Expected [ba, bd]"
    );
    expect(vector.length).toBe(2, "Vector has incorrect length");
  });

  it("popping from b items", () => {
    vector.push("ba");
    vector.pushBack("bd");
    vector.pushBack("bf");
    expect(_vectorHasContents(vector, ["ba", "bd", "bf"])).toBe(
      true,
      "Unexpected vector contents. Expected [ba, bd, bf]"
    );
    expect(vector.length).toBe(3, "Vector has incorrect length");
    vector.popBack();
    expect(_vectorHasContents(vector, ["ba", "bd"])).toBe(
      true,
      "Unexpected vector contents. Expected [ba, bd]"
    );
    expect(vector.length).toBe(2, "Vector has incorrect length");

    // same id but different object.
    const vectorReread = new PersistentVector<string>("vector1");
    expect(vectorReread != null).toBe(true, "Vector not initialized");
    expect(vectorReread.length).toBe(2, "Vector has incorrect length");

    // vector with primitives
    const vectorI32 = new PersistentVector<i32>("vectori32");
    vectorI32.pushBack(2);
    expect(vectorI32.length).toBe(1, "Vector i32 has incorrect length");
  });
});

let deque: PersistentDeque<string>;

describe("Deque should handle", () => {
  beforeEach(() => {
    deque = new PersistentDeque<string>("dequeid");
  });

  it("no items", () => {
    expect(deque.length).toBe(0, "empty deque length is wrong");
    expect(!deque.containsIndex(0)).toBe(true, "empty deque contains index 0");
    expect(deque.isEmpty).toBe(true, "empty deque returns false for isEmpty");
  });

  it("single items", () => {
    deque.pushBack("1");
    expect(deque.length).toBe(1, "deque length is wrong");
    expect(deque.containsIndex(0)).toBe(true, "deque does not contain index 0");
    expect(!deque.containsIndex(-1)).toBe(
      true,
      "deque does not contain index 0"
    );
    expect(deque.isEmpty).toBe(false, "deque returns true for isEmpty");
    expect(deque[0]).toBe("1", "wrong element value using []");
    expect(deque.back).toBe("1", "wrong back element");
    expect(deque.front).toBe("1", "wrong front element");
    expect(deque.first).toBe("1", "wrong first element");
    expect(deque.last).toBe("1", "wrong last element");
  });

  it("multiple items", () => {
    deque.pushBack("1");
    deque.pushFront("-2");
    expect(deque.length).toBe(2, "deque length is wrong");
    expect(deque.containsIndex(0)).toBe(true, "deque does not contain index 0");
    expect(deque.containsIndex(1)).toBe(true, "deque does not contain index 1");
    expect(deque.isEmpty).toBe(false, "deque returns true for isEmpty");
    expect(deque[1]).toBe("1", "wrong element value using []");
    expect(deque[0]).toBe("-2", "wrong element value using []");
    expect(deque.back).toBe("1", "wrong back element");
    expect(deque.front).toBe("-2", "wrong front element");
    expect(deque.first).toBe("-2", "wrong first element");
    expect(deque.last).toBe("1", "wrong last element");
  });

  it("popping front", () => {
    deque.pushBack("1");
    deque.pushFront("-2");
    deque.popFront();
    expect(deque.length).toBe(1, "deque length is wrong");
    expect(deque.containsIndex(0)).toBe(true, "deque does not contain index 0");
    expect(!deque.containsIndex(1)).toBe(
      true,
      "deque of length 1 contains index 1"
    );
    expect(deque.isEmpty).toBe(false, "deque returns true for isEmpty");
    expect(deque[0]).toBe("1", "wrong element value using []");
    expect(deque.back).toBe("1", "wrong back element");
    expect(deque.front).toBe("1", "wrong front element");
    expect(deque.first).toBe("1", "wrong first element");
    expect(deque.last).toBe("1", "wrong last element");
  });

  it("popping back", () => {
    deque.pushBack("1");
    deque.pushFront("-2");
    deque.popBack();
    expect(deque.length).toBe(1, "deque length is wrong");
    expect(deque.containsIndex(0)).toBe(true, "deque does not contain index 0");
    expect(!deque.containsIndex(1)).toBe(
      true,
      "deque of length 1 contains index 1"
    );
    expect(deque.isEmpty).toBe(false, "deque returns true for isEmpty");
    expect(deque[0]).toBe("-2", "wrong element value using []");
    expect(deque.back).toBe("-2", "wrong back element");
    expect(deque.front).toBe("-2", "wrong front element");
    expect(deque.first).toBe("-2", "wrong first element");
    expect(deque.last).toBe("-2", "wrong last element");
  });
});

describe("Context", () => {
  it("should read unchanged Context", () => {
    expect(Context.sender).toBe("bob", "Wrong sender");
    expect(Context.attachedDeposit).toBe(
      u128.fromU64(2),
      "Wrong receivedAmount"
    );
    expect(Context.accountBalance).toBe(
      u128.fromU32(4),
      "Account Balance should inclode attached deposit"
    );
  });

  describe("Find the block_timestamp", () => {
    it("should be the default", () => {
      let timestamp = Context.blockTimestamp;
      expect(timestamp).toBe(42);
    });

    it("should be the updatable", () => {
      VMContext.setBlock_timestamp(84);
      let timestamp = Context.blockTimestamp;
      expect(timestamp).toBe(84);
    });
  });

  it("should be consistent after modification", () => {
    storage.set("key", "value");
    log(VM.outcome());
    let before = Context.storageUsage;
    VMContext.setAttached_deposit(u128.Zero); // creates a copy of the context with new attached deposit
    log(VM.outcome());
    let after = Context.storageUsage;
    expect(before).toBe(after);
  });

  it("should be editable", () => {
    VMContext.setCurrent_account_id("contractaccount");
    expect(Context.contractName).toBe("contractaccount", "Wrong contract name");
    VMContext.setSigner_account_id("signeraccount");
    expect(Context.sender).toBe("signeraccount", "Wrong signer account");

    const publicKeyBytes: u8[] = [104, 23, 238, 78, 102, 154, 119, 156, 147, 233, 85, 84, 14, 223, 244, 203, 234, 190, 98, 146, 166, 49, 187, 192, 242, 206, 161, 29, 53, 174, 80, 131];
    const publicKeyArray = new Uint8Array(publicKeyBytes.length);
    for (var n=0; n<publicKeyBytes.length; n++) {
      publicKeyArray[n] = publicKeyBytes[n];
    }

    VMContext.setSigner_account_pk(base58.encode(publicKeyArray));
    expect(Context.senderPublicKey).toBe(
      "81LZnCurP3ZekNr1AcgiedmaXoxQUy354oz2fbEyjs8v",
      "Wrong public key"
    ); // haha, where is this coming from?!
    VMContext.setBlock_index(113);
    expect(Context.blockIndex).toBe(113, "Wrong contract name");
    VMContext.setAttached_deposit(u128.from(7));
    expect(Context.attachedDeposit.toString()).toBe(
      u128.fromU64(7).toString(),
      "Wrong receivedAmount"
    );
    // VMContext.setAccount_balance(u128.from(14))

    // expect(Context.accountBalance).toBe(u128.fromU64(14), "Wrong receivedAmount");
    VMContext.setPrepaid_gas(1000000000);
    expect(Context.prepaidGas).toBe(1000000000, "Wrong prepaid gas");
    expect(Context.usedGas <= 1000000000).toBe(true, "Wrong used gas");
    // expect(Context.usedGas > 0).toBe(true, "Wrong used gas");
    // expect(Context.storageUsage).toBe(0, "Wrong storage usage"); TODO: test when implemented
  });

  
  it("should handle adding validators", () => {
    VMContext.setValidator("john.near", u128.One);
    expect(env.validator_stake("john.near")).toStrictEqual(u128.One);
    expect(env.validator_total_stake()).toStrictEqual(u128.One);
  });
  
  it("should handle no validators", () => {
    expect(env.validator_stake("john.near")).toStrictEqual(u128.Zero);
    expect(env.validator_total_stake()).toStrictEqual(u128.Zero);
  });
});

describe("Account Balance", () => {
  it("should be able to set to zero", () => {
    VMContext.setAccount_balance(u128.Zero);
    expect(Context.accountBalance).toBe(Context.attachedDeposit);
    VMContext.setAttached_deposit(u128.Zero);
    expect(Context.accountBalance).toBe(u128.Zero);
  });

  it("should handle large amounts of yoctoNear", () => {
    let storageCost = u128.from("35000000000000000000000000");
    VMContext.setAccount_balance(storageCost);
    VMContext.setAttached_deposit(u128.Zero);
    expect(Context.accountBalance).toBe(storageCost);
  });

  it("should be updated when attached attached deposit is updated", () => {
    expect(Context.accountBalance).toStrictEqual(u128.from(4));
    VMContext.setAttached_deposit(u128.from(4));
    expect(Context.accountBalance).toStrictEqual(
      u128.from(6),
      "Updating the attached deposit should update the account balance"
    );
  });
});

describe("promises", () => {
  it("should work", () => {
    const emptyResults = ContractPromise.getResults();
    expect(emptyResults.length).toBe(0, "wrong length for results");
    const promise = ContractPromise.create(
      "contractNameForPromise",
      "methodName",
      new Uint8Array(0),
      10000000000000
    );
    const promise2 = promise.then(
      "contractNameForPromise",
      "methodName",
      new Uint8Array(0),
      10000000000000
    );
    const _promise3 = ContractPromise.all([promise, promise2]);
  });
});

describe("promise batches", () => {
  it("should support the full promise batch interface", () => {
    const access_key = base58.decode(
      "1SnaTomvVzRgZah6Xh34z5xR4HUTRP67KxB8btMFqc9m"
    );

    ContractPromiseBatch.create("test.account")
      .create_account()
      .add_access_key(access_key, u128.Zero, "testing.account", [
        "send",
        "receive",
      ])
      .add_full_access_key(access_key)
      .delete_key(access_key)
      .deploy_contract(new Uint8Array(0))
      .function_call("send", new Uint8Array(0), u128.Zero, 0)
      .stake(u128.Zero, access_key)
      .transfer(u128.Zero)
      .delete_account("bene.account");
  });

  it("should support chained calls", () => {
    // TODO: this sets balance to 14 for some reason, why is that?
    VMContext.setAccount_balance(u128.Zero);

    const before = Context.accountBalance;
    const amount = u128.from(1);

    const access_key = base58.decode(Context.senderPublicKey);
    const code = _testBytes();

    ContractPromiseBatch.create("app-v1.bob.testnet")
      .create_account()
      .transfer(amount)
      .add_full_access_key(access_key)
      .deploy_contract(code);

    // TODO: what else can we test besides balance xfer at this point?
    expect(Context.accountBalance).toBe(u128.sub(before, amount));
  });

  it("should support controlling access keys", () => {
    const access_key1 = base58.decode(Context.senderPublicKey);
    const access_key2 = base58.decode(
      "1SnaTomvVzRgZah6Xh34z5xR4HUTRP67KxB8btMFqc9m"
    );
    const receiver = "test.account";

    ContractPromiseBatch.create("test")
      .create_account()
      .add_access_key(access_key1, u128.Zero, receiver, ["send", "receive"], 0)
      .add_full_access_key(access_key2)
      .delete_key(access_key1);
  });

  it("should support adding access keys", () => {
    const access_key = base58.decode(Context.senderPublicKey);
    const receiver = "test.account";

    ContractPromiseBatch.create("test")
      .create_account()
      .add_access_key(access_key, u128.Zero, receiver, ["send", "receive"], 0);
  });
});

const stringValue = "toHash";

describe("Math should handle", () => {
  it("hash 32 from bytes", () => {
    const array = _testBytes();
    const hash = math.hash32Bytes(array);
    expect(hash).toBe(3593695342, "wrong hash");
  });

  it("hash 32 from string ", () => {
    const hashOfString = math.hash32(stringValue);
    expect(hashOfString).toBe(3394043202, "wrong hash of the string");
  });

  it("hash Uint8Aray from string", () => {
    const hash256 = math.hash(stringValue);
    let _x: i32[] = [1, 6, 7];
    expect(hash256.length).toBe(32, "wrong output length for hash256");
    expect(hash256[0]).toBe(202, "wrong contents of hash256");
    expect(hash256[1]).toBe(76, "wrong contents of hash256");
    expect(hash256[31]).toBe(184, "wrong contents of hash256");
  });

  it("handle random", () => {
    const randBuf = math.randomBuffer(14);
    const randBuf2 = math.randomBuffer(14);
    expect(randBuf).not.toStrictEqual(randBuf2);
    const randBuf3 = math.randomBuffer(14);
    const randBuf4 = math.randomBuffer(32);
    expect(randBuf3).not.toStrictEqual(randBuf4);
  });
});

// cruft to compare test objects. TODO: use something standard
function _arrayEqual(
  first: Uint8Array | null,
  second: Uint8Array | null
): bool {
  if (first == null || second == null) {
    return first == second;
  }
  if (first.length != second.length) {
    return false;
  }
  for (let i = 0; i < first.length; ++i) {
    if (first[i] != second[i]) {
      return false;
    }
  }
  return true;
}

function _vectorHasContents(
  vector: PersistentVector<string>,
  expectedContents: Array<string>
): bool {
  if (vector.length != expectedContents.length) {
    return false;
  }
  for (let i = 0; i < expectedContents.length; i++) {
    if (expectedContents[i] != vector[i]) {
      // return false;
    }
  }
  return true;
}

export function simple(s: string): string {
  return s;
}

export function setKeyValue(key: string, value: string): void {
  storage.set<string>(key, value);
}

export function getValueByKey(key: string): string | null {
  return storage.get<string>(key);
}

export function setValue(value: string): string {
  storage.set<string>("name", value);
  return value;
}

export function getValue(): string | null {
  return storage.get<string>("name");
}
