import { context, storage, near } from "./near";
import { base64 } from "./base64";
import { collections } from "./collections";
import { logging } from "./logging";
import { runtime_api } from "./runtime_api";

export function hello(): string {
    return "hello".concat("alice");
}

export function base64encode(): string {
  const array = _testBytes();
  return base64.encode(array);
}

export function base64decode(): Uint8Array {
  const encoded = "AAFaZA==";
  const decoded = base64.decode(encoded);
  return decoded;
}

export function vectorOperations(): void {
  const vector = new collections.Vector<String>("vector1");
  assert(vector != null, "Vector not initialized");
  assert(vector.length == 0, "Empty vector has incorrect length");
}

export function logTest(): void {
  logging.log("hello world log");
}

export function storageStringRoundtripTest(): string {
  storage.setString("someKey", "myValue1");
  storage.setString("someOtherKey", "otherValue");
  const getValueResult = storage.getString("someKey");
  assert(getValueResult == "myValue1", "Incorrect value from storage");
  const otherValueResult = storage.getString("someOtherKey");
  assert(otherValueResult == "otherValue", "Incorrect value2 from storage");
  return getValueResult + "," + otherValueResult;
}

export function storageBytesRoundtripTest(): void {
  const bytes = _testBytes();
  const bytes2 = _testBytesTwo();
  storage.setBytes("someKey", bytes);
  storage.setBytes("someOtherKey", bytes2);
  const getValueResult = storage.getBytes("someKey");
  assert(_arrayEqual(getValueResult, bytes), "Incorrect value from storage");
  const otherValueResult = storage.getBytes("someOtherKey");
  assert(_arrayEqual(otherValueResult, bytes2), "Incorrect value from storage");
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

  let start_encoded = near.stringToBytes("someKey");
  let end_encoded = near.stringToBytes("someKey3");
  const iterator_id = runtime_api.storage_iter_range(
    start_encoded.buffer.byteLength,
    start_encoded.buffer as u64,
    end_encoded.buffer.byteLength,
    end_encoded.buffer as u64);
  logging.log("iterator_id " + iterator_id.toString());
  runtime_api.storage_iter_next(iterator_id, 0, 1);
  //const keyRange = storage.keyRange("someKey", "someKey3");
  // assert(keyRange.length == 2, "Incorrect keys length");
  // assert(keyRange[0] == "someKey", "Incorrect keys contents");
  // assert(keyRange[1] == "someKey2", "Incorrect keys contents");
  // const keyRangeWithLimit = storage.keyRange("someKey", "someKey3", 1);
  // assert(keyRangeWithLimit.length == 1, "Incorrect keys length");
  // assert(keyRangeWithLimit[0] == "someKey", "Incorrect keys contents");

  // const keys = storage.keys("someKey");
  // assert(keys.length == 3, "Incorrect keys length");
  // assert(keys[0] == "someKey", "Incorrect keys contents");
  // assert(keys[1] == "someKey2", "Incorrect keys contents");
  // assert(keys[2] == "someKey6", "Incorrect keys contents");
  // const keysWithLimit = storage.keys("someKey", 1);
  // assert(keysWithLimit.length == 1, "Incorrect keys length");
  // assert(keys[0] == "someKey", "Incorrect keys contents")
  //
  // assert(storage.contains("someApple"), "Storage does not contain key");
  // assert(storage.contains("someKey"), "Storage does not contain key");
  // assert(storage.contains("someKey2"), "Storage does not contain key");
  // assert(storage.contains("someKey6"), "Storage does not contain key");
  // assert(!storage.contains("nonexisting"), "Storage has unexpected key");
  //
  // // remove a key and retry some of the api calls
  // storage.delete("someKey");
  // const keyswithdelete = storage.keys("someKey");  BUG HAPPENS HERE
  //assert(!storage.contains("someKey"), "Storage does not contain key");
  //return storage.keys("someKey");
  //assert(storage.keys("someKey").length == 2, "Incorrect keys length after removing a key")
  //return keysWithLimit;
  return null;
}



export function _testBytes(): Uint8Array {
  const array = new Uint8Array(4);
  array[0] = 0;
  array[1] = 1;
  array[2] = 90;
  array[3] = 100;
  return array;
}

export function _testBytesTwo(): Uint8Array {
  const array = new Uint8Array(3);
  array[0] = 8;
  array[1] = 2;
  array[2] = 101;
  return array;
}

// crud to compare arrays. TODO: use something standard
export function _arrayEqual(first: Uint8Array, second: Uint8Array) : bool {
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
