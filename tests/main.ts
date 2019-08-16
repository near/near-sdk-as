//@nearfile
import { near, context, storage, logging, base58 } from "near-runtime-ts";
import { TextMessage } from "./model";
// import { storage } from "./storage"
// import { base64 } from "./base64";
// import { base58 } from "./base58";
// import { collections } from "./collections";
// import { logging } from "./logging";
// import { runtime_api } from "./runtime_api";
// import { context, ContractPromise } from "./contract";
// import { TextMessage } from "./model.near";
// import { Map } from "./collections/map";
// import { Vector } from "./collections/vector";
// import { Deque } from "./collections/deque";
// import { TopN } from "./collections/topn";
// import { u128 } from "bignum";
// import { util } from "./util";
// import { math } from "./math";

export function hello(): string {
  return "hello".concat("alice");
}

export function base58Test(): void {
  const array = this._testBytes();
  const encoded = base58.encode(array);
  logging.log("base58 encoded value " + encoded);
  assert(encoded == "1TMu", "Wrong encoded value for base58 encoding")
}

export function base64Test(): void {
  const array = _testBytes();
  const encoded = base64.encode(array);
  assert(encoded == "AAFaZA==", "Incorrect keys contents");
  const decoded = base64.decode("AAFaZA==");
  assert(_arrayEqual(decoded, array), "Incorrect decoded value after base64 roundtrip");
}

export function logTest(): void {
  logging.log("hello world log");
}

export function storageStringRoundtripTest(): void {
  storage.setString("someKey", "myValue1");
  storage.setString("someOtherKey", "otherValue");
  const getValueResult = storage.getString("someKey");
  assert(getValueResult == "myValue1", "Incorrect value from storage");
  const otherValueResult = storage.getString("someOtherKey");
  assert(otherValueResult == "otherValue", "Incorrect value2 from storage");

  assert(storage.getString("nonexistentKey") == null, "Unexpectd value on getting string with a nonexistent key");
}

export function storageBytesRoundtripTest(): void {
  const bytes = _testBytes();
  const bytes2 = _testBytesTwo();
  storage.setBytes("someKey", bytes);
  storage.setBytes("someOtherKey", bytes2);
  const getValueResult = storage.getBytes("someKey");
  assert(_arrayEqual(getValueResult!, bytes), "Incorrect bytes value from storage");
  const otherValueResult = storage.getBytes("someOtherKey");
  assert(_arrayEqual(otherValueResult!, bytes2), "Incorrect bytes value from storage");

  assert(storage.getBytes("nonexistentKey") == null, "Unexpectd value on getting bytes with a nonexistent key");
}

export function storageGenericGetSetRoundtripTest(): TextMessage {
  const message = _testTextMessage();
  storage.set<TextMessage>("message1", message);

  // const messageFromStorage = storage.get<TextMessage>("message1");
  // assert(messageFromStorage.sender == "mysteriousStranger", "Incorrect data value (sender) for retrieved object");
  // assert(messageFromStorage.text == "Hello world", "Incorrect data value (text) for retrieved object");
  // assert(messageFromStorage.number == 415, "Incorrect data value (number) for retrieved object");
  // 
  // storage.set<u64>("u64key", 20);
  // const u64get = storage.get<u64>("u64key");
  // assert(u64get == 20, "Incorrect data value for u64 roundtrip");
  //
  // storage.set<String>("stringkey", "StringValue");
  // const stringGet = storage.get<String>("stringkey");
  // assert(stringGet == "StringValue", "Incorrect data value for string roundtrip");
  // return messageFromStorage;
}

export function storageKeysTest(): string[] {
  // empty storage
  const emptyKeys = storage.keys("someKey");
  assert(emptyKeys.length == 0, "Incorrect keys contents for empty storage");

  // add some keys
  storage.setString("someApple", "myApple");
  storage.setString("someKey", "myValue1");
  storage.setString("someKey2", "myValue1");
  storage.setString("someKey6", "myValue2");

  const keyRange = storage.keyRange("someKey", "someKey3");
  assert(keyRange.length == 2, "Incorrect keys length");
  assert(keyRange[0] == "someKey", "Incorrect keys contents");
  assert(keyRange[1] == "someKey2", "Incorrect keys contents");
  const keyRangeWithLimit = storage.keyRange("someKey", "someKey3", 1);
  assert(keyRangeWithLimit.length == 1, "Incorrect keys length");
  assert(keyRangeWithLimit[0] == "someKey", "Incorrect keys contents");

  const keys = storage.keys("someKey");
  assert(keys.length == 3, "Incorrect keys length");
  assert(keys[0] == "someKey", "Incorrect keys contents");
  assert(keys[1] == "someKey2", "Incorrect keys contents");
  assert(keys[2] == "someKey6", "Incorrect keys contents");
  const keysWithLimit = storage.keys("someKey", 1);
  assert(keysWithLimit.length == 1, "Incorrect keys length");
  assert(keys[0] == "someKey", "Incorrect keys contents")

  assert(storage.contains("someApple"), "Storage does not contain key");
  assert(storage.contains("someKey"), "Storage does not contain key");
  assert(storage.contains("someKey2"), "Storage does not contain key");
  assert(storage.contains("someKey6"), "Storage does not contain key");
  assert(!storage.contains("nonexisting"), "Storage has unexpected key");

  // remove a key and retry some of the api calls
  storage.delete("someKey");
  assert(!storage.contains("someKey"), "Storage contains key that was deleted");
  assert(storage.contains("someKey2"), "Some other key got deleted");
  const keyswithdelete = storage.keys("someKey");
  assert(keyswithdelete.length == 2, "Incorrect keys length after removing a key")
  assert(keyswithdelete[0] == "someKey2", "Incorrect keyswithdelete contents");
  assert(keyswithdelete[1] == "someKey6", "Incorrect keyswithdelete contents");
  return keyswithdelete;
}


export function mapTests(): void {
  // empty map
  //const map = new Map<string, TextMessage>("mapId");
  // const valuesEmpty = map.values();
  // assert(valuesEmpty.length == 0, "Unexpected values in empty map");
  // assert(!map.contains("nonexistentkey"), "Map contains a non existent key");
  // assert(map.get("nonexistentkey") == null, "Incorrect result on get with nonexistent key");
  //
  // // add some entries to the map
  // const message = _testTextMessage();
  // map.set("mapKey1", message);
  // map.set("mapKey3", new TextMessage());
  // const values = map.values();
  // assert(values.length == 2, "Unexpected values size in map with 2 entries");
  // assert(_modelObjectEqual(values[0], message), "Unexpected values contents in map with 2 entries");
  // assert(_modelObjectEqual(values[1], new TextMessage()), "Unexpected values contents in map with 2 entries");
  // assert(map.values("mapKey3").length == 1, "Unexpected values size in map with 2 entries");
  // assert(map.values(null, "mapKey2").length == 1, "Unexpected values size in map with 2 entries");
  // assert(map.values(null, null, 1).length == 1, "Unexpected values size in map with 2 entries");
  // assert(map.values("mapKey1", null, -1, false).length == 1, "Unexpected values size in map with 2 entries");
  // assert(!map.contains("nonexistentkey"), "Map contains a non existent key");
  // assert(map.contains("mapKey1"), "Map does not contain a key that was added (mapKey1)");
  // assert(map.contains("mapKey3"), "Map does not contain a key that was added (mapKey3)");
  // assert(_modelObjectEqual(map.get("mapKey1"), message), "Incorrect result from map get");
  // assert(_modelObjectEqual(map.get("mapKey3"), new TextMessage()), "Incorrect result from map get");
  //
  // // delete an entry and retry api calls
  // map.delete("mapKey3");
  // assert(map.values().length == 1, "Unexpected values size in map after delete");
  // assert(_modelObjectEqual(map.values()[0], message), "Unexpected values contents in map after delete");
  // assert(map.values("mapKey1").length == 1, "Unexpected values size in map after delete");
  // assert(!map.contains("mapKey3"), "Map contains a key that was deleted");
  // assert(map.contains("mapKey1"), "Map does not contain a key that should be there after deletion of another key");
  // assert(_modelObjectEqual(map.get("mapKey1"), message), "Incorrect result from map get after delete");
  // assert(map.get("mapKey3") == null, "Incorrect result from map get on a deleted key");
}

/*
export function vectorTests(): void {
  const vector = new Vector<String>("vector1");
  assert(vector != null, "Vector not initialized");
  assert(vector.length == 0, "Empty vector has incorrect length");
  assert(!vector.containsIndex(0), "Empty vector incorrectly has index 0");
  assert(vector.isEmpty, "isEmpty incorrect on empty vector");
  //try { assert(vector[0] == null, "");} catch (e) {} not possible to test due to lack of try catch

  vector.push("bb");
  assert(vector.length == 1, "Vector has incorrect length");
  assert(vector.containsIndex(0), "Non empty vector does not have index 0");
  assert(!vector.containsIndex(1), "Vector size 1 incorrectly has index 1");
  assert(!vector.isEmpty, "isEmpty incorrect on non-empty vector");
  assert(vector.back == "bb", "Incorrect back entry")
  assert(vector.last == "bb", "Incorrect last entry")
  assert(vector.front == "bb", "Incorrect front entry")
  assert(vector.first == "bb", "Incorrect first entry")
  assert(vector[0] == "bb", "incorrect vector contents");
  assert(_vectorHasContents(vector, ["bb"]), "Unexpected vector contents. Expected [bb]");

  vector.pushBack("bc");
  assert(vector.length == 2, "Vector has incorrect length");
  assert(vector.containsIndex(0), "Non empty vector does not have index 0");
  assert(vector.containsIndex(1), "Vector size 2 does not have index 1");
  assert(!vector.containsIndex(2), "Vector size 2 incorrectly has index 2");
  assert(!vector.isEmpty, "isEmpty incorrect on non-empty vector");
  assert(_vectorHasContents(vector, ["bb", "bc"]), "Unexpected vector contents. Expected [ba, bb]");
  vector[1] = "bd";
  assert(_vectorHasContents(vector, ["bb", "bd"]), "Unexpected vector contents. Expected [ba, bd]");

  // Delete an entry and then try various other methods
  vector.delete(0);
  assert(_vectorHasContents(vector, [null, "bd"]), "Unexpected vector contents. Expected [null, bd]");
  assert(vector.length == 2, "Vector has incorrect length after delete")
  assert(vector.containsIndex(0), "Does not contain index 0 after delete")
  assert(vector.back == "bd", "Incorrect back entry")
  assert(vector.last == "bd", "Incorrect last entry")
  assert(vector.front == null, "Incorrect front entry")
  assert(vector.first == null, "Incorrect first entry")
  vector[0] = "aa";
  assert(_vectorHasContents(vector, ["aa", "bd"]), "Unexpected vector contents. Expected [aa, bd]");
  assert(vector.length == 2, "Vector has incorrect length")
  vector.pushBack("be");
  assert(_vectorHasContents(vector, ["aa", "bd", "be"]), "Unexpected vector contents. Expected [aa, bd, be]");
  assert(vector.length == 3, "Vector has incorrect length")
  assert(vector.back == "be", "Incorrect back entry")
  assert(vector.last == "be", "Incorrect last entry")
  assert(vector.front == "aa", "Incorrect front entry")
  assert(vector.first == "aa", "Incorrect first entry")

  // pop an entry and then try various other methods
  vector.pop();
  assert(_vectorHasContents(vector, ["aa", "bd"]), "Unexpected vector contents. Expected [aa, bd]");
  assert(vector.length == 2, "Vector has incorrect length after delete")
  vector[0] = "ba";
  assert(_vectorHasContents(vector, ["ba", "bd"]), "Unexpected vector contents. Expected [ba, bd]");
  assert(vector.length == 2, "Vector has incorrect length")
  vector.pushBack("bf");
  assert(_vectorHasContents(vector, ["ba", "bd", "bf"]), "Unexpected vector contents. Expected [ba, bd, bf]");
  assert(vector.length == 3, "Vector has incorrect length")
  vector.popBack();
  assert(_vectorHasContents(vector, ["ba", "bd"]), "Unexpected vector contents. Expected [ba, bd]");
  assert(vector.length == 2, "Vector has incorrect length")
}

export function dequeTests(): void {
  const deque = new Deque<string>("dequeid");
  assert(!deque.containsIndex(0), "empty deque contains index 0");

  const keys = storage.keys("");
  logging.log("KEYS")
  for (let i = 0; i < keys.length; i++) {
    logging.log(keys[i]);
  }

  // empty deque - bugged
  //assert(deque.frontIndex == -1, "Wrong front index for an empty deque");
  logging.log("Dq 1 " + u128.fromU64(deque.frontIndex).toString() + ", " + u128.fromU64(deque.backIndex).toString() + u128.fromU64(deque.length).toString()); //??
}

export function topnTests(): void {
  // empty topn cases
  const topn = new TopN<string>("topnid");
  assert(topn != null, "topn is null");
  assert(topn.isEmpty, "empty topn - wrong result for isEmpty");
  assert(topn.length == 0, "empty topn - wrong length");
  assert(!topn.contains("nonexistentKey"), "empty topn - contains nonexistent key");
  topn.delete("nonexistentKey"); // this should not crash
  assert(topn.keysToRatings(new Array<string>(0)).length == 0, "keys to ratings for empty topn is not empty");
  assert(topn.getTop(10).length == 0, "get top for empty topn returned non empty list")
  //assert(topn.getTopFromKey(10, "somekey").length == 0, "getTopFromKey for empty topn returned non empty list")
  // The line above would trigger an assert and fail
  assert(topn.getTopWithRating(10).length == 0, "getTopWithRating for empty topn is not empty");
  //assert(topn.getTopWithRatingFromKey(10, "somekey").length == 0, "getTopWithRatingFromKey for empty topn is not empty");
  // The line above would trigger an assert and fail

  topn.setRating("k1", 5);
  assert(!topn.isEmpty, "topn - wrong result for isEmpty");
  assert(topn.length == 1, "topn - wrong length");
  assert(!topn.contains("nonexistentKey"), "topn - contains nonexistent key");
  assert(topn.contains("k1"), "topn - does not contain a key that should be there");
  topn.delete("nonexistentKey"); // this should not crash
  assert(topn.keysToRatings(["k1"]).length == 1, "keys to ratings wrong for topn");
  assert(topn.keysToRatings(["k1"])[0].value == 5, "keys to ratings wrong for topn");
  assert(topn.getTop(10).length == 1, "get top for topn returned non empty list");
  assert(topn.getTop(10)[0] == "k1", "wrong key in getTop")
  assert(topn.getTopFromKey(10, "k1").length == 0, "getTopFromKey for topn wrong result");
  assert(topn.getTopWithRating(10).length == 1, "getTopWithRating for topn with 1 element is wrong size");
  assert(topn.getTopWithRatingFromKey(10, "k1").length == 0, "getTopWithRatingFromKey for topn is not empty");

  // Tests with 2 entries --  k1: 6, k: 5
  topn.setRating("k", 5);
  topn.incrementRating("k1");
  assert(!topn.isEmpty, "topn - wrong result for isEmpty");
  assert(topn.length == 2, "topn - wrong length");
  assert(!topn.contains("nonexistentKey"), "topn - contains nonexistent key");
  assert(topn.contains("k"), "topn - does not contain a key that should be there");
  assert(topn.contains("k1"), "topn - does not contain a key that should be there");
  topn.delete("nonexistentKey"); // this should not crash
  assert(topn.keysToRatings(["k1"]).length == 1, "keys to ratings wrong for topn");
  assert(topn.keysToRatings(["k1", "k"]).length == 2, "keys to ratings wrong for topn");
  assert(topn.keysToRatings(["k1", "k"])[0].value == 6, "keys to ratings wrong for topn");
  assert(topn.keysToRatings(["k1", "k"])[1].value == 5, "keys to ratings wrong for topn");
  assert(topn.getTop(10).length == 2, "get top for topn is wrong");
  assert(topn.getTop(10)[0] == "k1", "wrong key in getTop");
  assert(topn.getTop(10)[1] == "k", "wrong key in getTop");
  assert(topn.getTop(1).length == 1, "get top for topn is wrong when limit is applied");
  assert(topn.getTop(1)[0] == "k1", "wrong key in getTop");
  assert(topn.getTopFromKey(10, "k").length == 0, "getTopFromKey for topn wrong result");
  assert(topn.getTopFromKey(10, "k1").length == 1, "getTopFromKey for topn wrong result");
  assert(topn.getTopFromKey(10, "k1")[0] == "k", "getTopFromKey for topn wrong result");
  assert(topn.getTopWithRating(10).length == 2, "getTopWithRating for topn with 1 element is wrong size");
  assert(topn.getTopWithRating(10)[0].value == 6, "getTopWithRating for topn with 1 element is wrong size");
  assert(topn.getTopWithRating(10)[1].value == 5, "getTopWithRating for topn with 1 element is wrong size");

  topn.delete("k1");
  topn.incrementRating("k");
  assert(!topn.isEmpty, "topn - wrong result for isEmpty");
  assert(topn.length == 1, "topn - wrong length");
  assert(!topn.contains("nonexistentKey"), "topn - contains nonexistent key");
  assert(topn.contains("k"), "topn - does not contain a key that should be there");
  topn.delete("nonexistentKey"); // this should not crash
  assert(topn.keysToRatings(["k"]).length == 1, "keys to ratings wrong for topn");
  assert(topn.keysToRatings(["k"])[0].value == 6, "keys to ratings wrong for topn");
  assert(topn.getTop(10).length == 1, "get top for topn returned non empty list");
  assert(topn.getTop(10)[0] == "k", "wrong key in getTop")
  assert(topn.getTopFromKey(10, "k").length == 0, "getTopFromKey for topn wrong result");
  assert(topn.getTopWithRating(10).length == 1, "getTopWithRating for topn with 1 element is wrong size");
  assert(topn.getTopWithRatingFromKey(10, "k").length == 0, "getTopWithRatingFromKey for topn is not empty");
}

export function contextTests(): void {
  assert(context.sender == "bob", "Wrong sender");
  assert(context.contractName == "contractaccount", "Wrong contract name");
  assert(context.blockIndex == 113, "Wrong contract name");
  assert(context.attachedDeposit == u128.fromU64(7), "Wrong receivedAmount");
  assert(context.accountBalance == u128.fromU64(14), "Wrong receivedAmount");
  assert(context.prepaidGas == 1000000000, "Wrong prepaid gas");
  assert(context.usedGas <= 1000000000, "Wrong used gas");
  assert(context.usedGas > 0, "Wrong used gas");
  //assert(context.storageUsage == 0, "Wrong storage usage"); TODO: test when implemented
}

export function promiseTests(): void {
  const promise = ContractPromise.create("contractNameForPromise", "methodName", new Uint8Array(0));
  const promise2 = promise.then("contractNameForPromise", "methodName", new Uint8Array(0));
  promise2.returnAsResult();
  //assert(context.storageUsage == 0, "Wrong storage usage"); TODO: test when enabled
}

export function mathTests(): void {
  const array = _testBytes();
  const hash = math.hash32Bytes(array);
  assert(hash == 3593695342, "wrong hash")

  const stringValue = "toHash";
  const hashOfString = math.hash32(stringValue);
  assert(hashOfString == 3394043202, "wrong hash of the string")

  const random = math.random32();
  assert(random == 88676, "wrong random");
}

*/

// Testing helper functions
function _testBytes(): Uint8Array {
  const array = new Uint8Array(4);
  array[0] = 0;
  array[1] = 1;
  array[2] = 90;
  array[3] = 100;
  return array;
}

function _testBytesTwo(): Uint8Array {
  const array = new Uint8Array(3);
  array[0] = 8;
  array[1] = 2;
  array[2] = 101;
  return array;
}

function _testTextMessage(): TextMessage {
  const message = new TextMessage();
  message.sender = "mysteriousStranger";
  message.text = "Hello world";
  message.number = 415;
  return message;
}

// cruft to compare test objects. TODO: use something standard
function _arrayEqual(first: Uint8Array, second: Uint8Array): bool {
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

function _modelObjectEqual(first: TextMessage, second: TextMessage): bool {
  if (first.sender != second.sender) {
    return false;
  }
  if (first.text != second.text) {
    return false;
  }
  if (first.number != second.number) {
    return false;
  }
  return true;
}

function _vectorHasContents(vector: Vector<string>, expectedContents: Array<string>): bool {
  if (vector.length != expectedContents.length) {
    return false;
  }
  for (let i = 0; i < expectedContents.length; i++) {
    if (expectedContents[i] != vector[i]) {
      //return false;
      logging.log("wrong" + expectedContents[i] + "," + vector[i]);
    }
  }
  return true;
}
