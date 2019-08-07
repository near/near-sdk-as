import { context, storage, near } from "./near";
import { base64 } from "./base64";
import { collections } from "./collections";

export function hello(): string {
    return "hello".concat("alice");
}

export function base64encode(): string {
  const array = new Uint8Array(4);
  array[0] = 0;
  array[1] = 1;
  array[2] = 90;
  array[3] = 100;
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

export function storageStringRoundtripTest(): string {
  storage.setString("someKey", "myValue1");
  storage.setString("someOtherKey", "otherValue");
  const getValueResult = storage.getString("someKey");
  assert(getValueResult == "myValue1", "Incorrect value from storage");
  const otherValueResult = storage.getString("someOtherKey");
  assert(otherValueResult == "otherValue", "Incorrect value2 from storage");
  return getValueResult + "," + otherValueResult;
}

export function storageKeyRangeTest(): string[] {
  storage.setString("someApple", "myApple");
  storage.setString("someKey", "myValue1");
  storage.setString("someKey2", "myValue1");
  storage.setString("someKey6", "myValue2");
  const keys = storage.keyRange("someKey", "someKey3");
  assert(keys.length == 2, "Incorrect keys length");
  const keysWithLimit = storage.keyRange("someKey", "someKey3", 1);
  assert(keysWithLimit.length == 1, "Incorrect keys length");
  return keys;
}
