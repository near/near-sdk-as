import { context, storage, near } from "./near";
import { base64 } from "./base64";
import { base58 } from "./base58";
import { collections } from "./collections";
import { logging } from "./logging";
import { runtime_api } from "./runtime_api";
import { TextMessage } from "./model.near";

export function hello(): string {
  return "hello".concat("alice");
}

export function vectorOperations(): void {
  const vector = new collections.Vector<String>("vector1");
  assert(vector != null, "Vector not initialized");
  assert(vector.length == 0, "Empty vector has incorrect length");
}

export function base58Test(): void {
  const array = _testBytes();
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
  assert(_arrayEqual(getValueResult, bytes), "Incorrect bytes value from storage");
  const otherValueResult = storage.getBytes("someOtherKey");
  assert(_arrayEqual(otherValueResult, bytes2), "Incorrect bytes value from storage");
}

export function storageGenericGetSetRoundtripTest(): TextMessage {
  const message = new TextMessage();
  message.sender = "mysteriousStranger";
  message.text = "Hello world";
  message.number = 415;
  storage.set<TextMessage>("message1", message);

  const messageFromStorage = storage.get<TextMessage>("message1");
  assert(messageFromStorage.sender == "mysteriousStranger", "Incorrect data value (sender) for retrieved object");
  assert(messageFromStorage.text == "Hello world", "Incorrect data value (text) for retrieved object");
  assert(messageFromStorage.number == 415, "Incorrect data value (number) for retrieved object");

  storage.set<u64>("u64key", 20);
  const u64get = storage.get<u64>("u64key");
  assert(u64get == 20, "Incorrect data value for u64 roundtrip");

  storage.set<String>("stringkey", "StringValue");
  const stringGet = storage.get<String>("stringkey");
  assert(stringGet == "StringValue", "Incorrect data value for string roundtrip");
  return messageFromStorage;
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


// Testing helper functions
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
