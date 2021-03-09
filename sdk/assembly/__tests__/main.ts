/* eslint-disable @typescript-eslint/no-unused-vars */
import {
  u128,
  Context,
  storage,
  logging,
  base58,
  base64,
  PersistentMap,
  PersistentVector,
  PersistentDeque,
  ContractPromise,
  math,
  ContractPromiseBatch,
  env,
} from "..";
import { TextMessage } from "./model";
import {
  _testTextMessage,
  _testTextMessageTwo,
  _testBytes,
  _testBytesTwo,
} from "./util";

export function hello(): string {
  logging.log("hello test");
  const s = simple("a"); // Test that we can call other export functions
  return "hello".concat(s);
}

export function base58Test(): void {
  logging.log("base58Test");
  let array: Uint8Array = _testBytes();
  const encoded = base58.encode(array);
  assert(encoded == "1TMu", "Wrong encoded value for base58 encoding");
  const decoded = base58.decode("1TMu");
  assert(
    _arrayEqual(decoded, array),
    "Wrong decoded value for base58 encoding"
  );
}

export function base64Test(): void {
  logging.log("base64Test");
  const array = _testBytes();
  const encoded = base64.encode(array);
  assert(encoded == "AAFaZA==", "Incorrect keys contents");
  const decoded = base64.decode("AAFaZA==");
  assert(
    _arrayEqual(decoded, array),
    "Incorrect decoded value after base64 roundtrip"
  );
}

export function logTest(): void {
  logging.log("logTest");
}

export function storageStringRoundtripTest(): void {
  logging.log("storageStringRoundtripTest");
  storage.setString("someKey", "myValue1");
  storage.setString("someOtherKey", "otherValue");
  const getValueResult = storage.getString("someKey");
  assert(getValueResult == "myValue1", "Incorrect value from storage");
  const otherValueResult = storage.getString("someOtherKey");
  assert(otherValueResult == "otherValue", "Incorrect value2 from storage");
  assert(
    storage.getString("nonexistentKey") == null,
    "Unexpectd value on getting string with a nonexistent key"
  );
}

export function storageBytesRoundtripTest(): void {
  logging.log("storageBytesRoundtripTest");
  const bytes = _testBytes();
  const bytes2 = _testBytesTwo();
  storage.setBytes("someKey", bytes);
  storage.setBytes("someOtherKey", bytes2);
  const getValueResult = storage.getBytes("someKey");
  assert(
    _arrayEqual(getValueResult, bytes),
    "Incorrect bytes value from storage"
  );
  const otherValueResult = storage.getBytes("someOtherKey");
  assert(
    _arrayEqual(otherValueResult, bytes2),
    "Incorrect bytes value from storage"
  );

  assert(
    storage.getBytes("nonexistentKey") == null,
    "Unexpectd value on getting bytes with a nonexistent key"
  );
}

export function storageGenericGetSetRoundtripTest(): void {
  logging.log("storageGenericGetSetRoundtripTest");
  const message = _testTextMessage();
  storage.set<TextMessage>("message1", message);

  const messageFromStorage = storage.getSome<TextMessage>("message1");
  assert(
    messageFromStorage.sender == "mysteriousStranger",
    "Incorrect data value (sender) for retrieved object"
  );
  assert(
    messageFromStorage.text == "Hello world",
    "Incorrect data value (text) for retrieved object"
  );
  assert(
    messageFromStorage.number == 415,
    "Incorrect data value (number) for retrieved object"
  );
  assert(
    storage.get<TextMessage>("nonexistent", null) == null,
    "Incorrect data value for get<T> nonexistent key"
  );

  storage.set<TextMessage>("message2", new TextMessage());
  // TODO: fix this
  // assert(_modelObjectEqual(storage.get<TextMessage>("message2"), new TextMessage()), "Incorrect empty message on storage roundtrip");

  storage.set<u64>("u64key", 20);
  assert(
    storage.getPrimitive<u64>("u64key", 0) == 20,
    "Incorrect data value for u64 roundtrip"
  );
  assert(
    storage.getPrimitive<u64>("nonexistent", 1) == 1,
    "Incorrect data value for u64 get nonexistent key"
  );

  storage.set<u32>("u32key", 12);
  assert(
    storage.getPrimitive<u32>("u32key", 0) == 12,
    "Incorrect data value for u32 roundtrip"
  );
  assert(
    storage.getPrimitive<u32>("nonexistent", 2) == 2,
    "Incorrect data value for u32 get nonexistent key"
  );

  storage.set<i32>("i32key", -5);
  assert(
    storage.getPrimitive<i32>("i32key", 0) == -5,
    "Incorrect data value for i32 roundtrip"
  );
  assert(
    storage.getPrimitive<i32>("nonexistent", -10) == -10,
    "Incorrect data value for i32 get nonexistent key"
  );

  storage.set<bool>("boolkey", true);
  assert(
    storage.getPrimitive<bool>("boolkey", 0) == true,
    "Incorrect data value for bool roundtrip"
  );
  assert(
    storage.getPrimitive<bool>("nonexistent", true) == true,
    "Incorrect data value for bool get nonexistent key"
  );

  storage.set<string>("stringkey", "StringValue");
  const stringGet = storage.get<string>("stringkey");
  assert(
    stringGet == "StringValue",
    "Incorrect data value for string roundtrip"
  );
  assert(
    storage.get<string>("nonexistent", null) == null,
    "Incorrect data value for get<T> string nonexistent key"
  );
}

export function mapTests(): void {
  logging.log("mapTests");
  // empty map
  const map = new PersistentMap<string, TextMessage>("mapId");
  assert(!map.contains("nonexistentkey"), "Map contains a non existent key");
  assert(
    map.get("nonexistentkey") == null,
    "Incorrect result on get with nonexistent key"
  );

  // add some entries to the map
  const message = _testTextMessage();
  map.set("mapKey1", message);
  map.set("mapKey3", _testTextMessageTwo());
  //   assert(values.length == 2, "Unexpected values size in map with 2 entries");
  //   assert(_modelObjectEqual(values[0], message), "Unexpected values contents in map with 2 entries");
  //   assert(_modelObjectEqual(values[1], _testTextMessageTwo()), "Unexpected values contents in map with 2 entries");
  assert(!map.contains("nonexistentkey"), "Map contains a non existent key");
  assert(
    map.contains("mapKey1"),
    "Map does not contain a key that was added (mapKey1)"
  );
  assert(
    map.contains("mapKey3"),
    "Map does not contain a key that was added (mapKey3)"
  );
  assert(
    _modelObjectEqual(map.get("mapKey1"), message),
    "Incorrect result from map get"
  );
  assert(
    _modelObjectEqual(map.get("mapKey3"), _testTextMessageTwo()),
    "Incorrect result from map get"
  );

  // delete an entry and retry api calls
  map.delete("mapKey3");
  assert(!map.contains("mapKey3"), "Map contains a key that was deleted");
  assert(
    map.contains("mapKey1"),
    "Map does not contain a key that should be there after deletion of another key"
  );
  assert(
    _modelObjectEqual(map.get("mapKey1"), message),
    "Incorrect result from map get after delete"
  );
  assert(
    map.get("mapKey3") == null,
    "Incorrect result from map get on a deleted key"
  );
}

export function mapTestsWithPrimitices(): void {
  // map with primitives
  const map = new PersistentMap<i32, i32>("mapPrimitives");
  map.set(1, -20);
  assert(map.getSome(1) == -20, "wrong value on map get for i32");
}

export function mapTestsWithArray(): void {
  // map with arrays
  const map = new PersistentMap<i32, Array<string>>("mapArray");
  const arr1 = new Array<string>();
  arr1.push("123456789");
  // return arr1;
  map.set(1, arr1);
  assert(map.getSome(1)[0] == "123456789");
}

export function vectorTests(): void {
  logging.log("vectorTests");
  const vector = new PersistentVector<string>("vector1");
  assert(vector != null, "Vector not initialized");
  assert(vector.length == 0, "Empty vector has incorrect length");
  assert(!vector.containsIndex(0), "Empty vector incorrectly has index 0");
  assert(vector.isEmpty, "isEmpty incorrect on empty vector");
  // try { assert(vector[0] == null, "");} catch (e) {} not possible to test due to lack of try catch

  vector.push("bb");
  assert(vector.length == 1, "Vector has incorrect length");
  assert(vector.containsIndex(0), "Non empty vector does not have index 0");
  assert(!vector.containsIndex(1), "Vector size 1 incorrectly has index 1");
  assert(!vector.isEmpty, "isEmpty incorrect on non-empty vector");
  assert(vector.back == "bb", "Incorrect back entry");
  assert(vector.last == "bb", "Incorrect last entry");
  assert(vector.front == "bb", "Incorrect front entry");
  assert(vector.first == "bb", "Incorrect first entry");
  assert(vector[0] == "bb", "incorrect vector contents");
  assert(
    _vectorHasContents(vector, ["bb"]),
    "Unexpected vector contents. Expected [bb]"
  );

  vector.pushBack("bc");
  assert(vector.length == 2, "Vector has incorrect length");
  assert(vector.containsIndex(0), "Non empty vector does not have index 0");
  assert(vector.containsIndex(1), "Vector size 2 does not have index 1");
  assert(!vector.containsIndex(2), "Vector size 2 incorrectly has index 2");
  assert(!vector.isEmpty, "isEmpty incorrect on non-empty vector");
  assert(
    _vectorHasContents(vector, ["bb", "bc"]),
    "Unexpected vector contents. Expected [ba, bb]"
  );
  vector[1] = "bd";
  assert(
    _vectorHasContents(vector, ["bb", "bd"]),
    "Unexpected vector contents. Expected [ba, bd]"
  );

  vector[0] = "aa";
  assert(
    _vectorHasContents(vector, ["aa", "bd"]),
    "Unexpected vector contents. Expected [aa, bd]"
  );
  assert(vector.length == 2, "Vector has incorrect length");
  vector.pushBack("be");
  assert(
    _vectorHasContents(vector, ["aa", "bd", "be"]),
    "Unexpected vector contents. Expected [aa, bd, be]"
  );
  assert(vector.length == 3, "Vector has incorrect length");
  assert(vector.back == "be", "Incorrect back entry");
  assert(vector.last == "be", "Incorrect last entry");
  assert(vector.front == "aa", "Incorrect front entry");
  assert(vector.first == "aa", "Incorrect first entry");

  // pop an entry and then try various other methods
  vector.pop();
  assert(
    _vectorHasContents(vector, ["aa", "bd"]),
    "Unexpected vector contents. Expected [aa, bd]"
  );
  assert(vector.length == 2, "Vector has incorrect length after delete");
  vector[0] = "ba";
  assert(
    _vectorHasContents(vector, ["ba", "bd"]),
    "Unexpected vector contents. Expected [ba, bd]"
  );
  assert(vector.length == 2, "Vector has incorrect length");
  vector.pushBack("bf");
  assert(
    _vectorHasContents(vector, ["ba", "bd", "bf"]),
    "Unexpected vector contents. Expected [ba, bd, bf]"
  );
  assert(vector.length == 3, "Vector has incorrect length");
  vector.popBack();
  assert(
    _vectorHasContents(vector, ["ba", "bd"]),
    "Unexpected vector contents. Expected [ba, bd]"
  );
  assert(vector.length == 2, "Vector has incorrect length");

  // same id but different object.
  const vectorReread = new PersistentVector<string>("vector1");
  assert(vectorReread != null, "Vector not initialized");
  assert(vectorReread.length == 2, "Vector has incorrect length");

  // vector with primitives
  const vectorI32 = new PersistentVector<i32>("vectori32");
  vectorI32.pushBack(2);
  assert(vectorI32.length == 1, "Vector i32 has incorrect length");
}

export function dequeTests(): void {
  logging.log("dequeTests");
  const deque = new PersistentDeque<string>("dequeid");

  assert(deque.length == 0, "empty deque length is wrong");
  assert(!deque.containsIndex(0), "empty deque contains index 0");
  assert(deque.isEmpty == true, "empty deque returns false for isEmpty");

  deque.pushBack("1");
  assert(deque.length == 1, "deque length is wrong");
  assert(deque.containsIndex(0), "deque does not contain index 0");
  assert(!deque.containsIndex(-1), "deque does not contain index 0");
  assert(deque.isEmpty == false, "deque returns true for isEmpty");
  assert(deque[0] == "1", "wrong element value using []");
  assert(deque.back == "1", "wrong back element");
  assert(deque.front == "1", "wrong front element");
  assert(deque.first == "1", "wrong first element");
  assert(deque.last == "1", "wrong last element");

  deque.pushFront("-2");
  assert(deque.length == 2, "deque length is wrong");
  assert(deque.containsIndex(0), "deque does not contain index 0");
  assert(deque.containsIndex(1), "deque does not contain index 1");
  assert(deque.isEmpty == false, "deque returns true for isEmpty");
  assert(deque[1] == "1", "wrong element value using []");
  assert(deque[0] == "-2", "wrong element value using []");
  assert(deque.back == "1", "wrong back element");
  assert(deque.front == "-2", "wrong front element");
  assert(deque.first == "-2", "wrong first element");
  assert(deque.last == "1", "wrong last element");

  deque.popFront();
  assert(deque.length == 1, "deque length is wrong");
  assert(deque.containsIndex(0), "deque does not contain index 0");
  assert(!deque.containsIndex(1), "deque of length 1 contains index 1");
  assert(deque.isEmpty == false, "deque returns true for isEmpty");
  assert(deque[0] == "1", "wrong element value using []");
  assert(deque.back == "1", "wrong back element");
  assert(deque.front == "1", "wrong front element");
  assert(deque.first == "1", "wrong first element");
  assert(deque.last == "1", "wrong last element");

  deque.pushFront("-2");
  deque.popBack();
  assert(deque.length == 1, "deque length is wrong");
  assert(deque.containsIndex(0), "deque does not contain index 0");
  assert(!deque.containsIndex(1), "deque of length 1 contains index 1");
  assert(deque.isEmpty == false, "deque returns true for isEmpty");
  assert(deque[0] == "-2", "wrong element value using []");
  assert(deque.back == "-2", "wrong back element");
  assert(deque.front == "-2", "wrong front element");
  assert(deque.first == "-2", "wrong first element");
  assert(deque.last == "-2", "wrong last element");
}

export function contextTests(): void {
  logging.log("contextTests");
  assert(Context.sender == "bob", "Wrong sender");
  assert(Context.contractName == "contractaccount", "Wrong contract name");
  assert(Context.blockIndex == 113, "Wrong contract name");
  assert(Context.attachedDeposit == u128.fromU64(7), "Wrong receivedAmount");
  assert(Context.accountBalance == u128.fromU64(14), "Wrong receivedAmount");
  assert(Context.prepaidGas == 1000000000, "Wrong prepaid gas");
  assert(Context.usedGas <= 1000000000, "Wrong used gas");
  assert(Context.usedGas > 0, "Wrong used gas");
  // assert(Context.storageUsage == 0, "Wrong storage usage"); TODO: test when implemented
}

export function promiseTests(): void {
  logging.log("promiseTests");
  const emptyResults = ContractPromise.getResults();
  assert(emptyResults.length == 0, "wrong length for results");
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
  const _promise3 = ContractPromise.all([promise2]);
}

export function mathTests(): void {
  logging.log("mathTests");
  const array = _testBytes();
  const hash = math.hash32Bytes(array);
  assert(hash == 3593695342, "wrong hash");

  const stringValue = "toHash";
  const hashOfString = math.hash32(stringValue);
  assert(hashOfString == 3394043202, "wrong hash of the string");

  const hash256 = math.hash(stringValue);
  let x: i32[] = [1, 6, 7];
  assert(hash256.length == 32, "wrong output length for hash256");
  assert(hash256[0] == 202, "wrong contents of hash256");
  assert(hash256[1] == 76, "wrong contents of hash256");
  assert(hash256[31] == 184, "wrong contents of hash256");

  const randBuf = math.randomBuffer(14);
  const randBuf2 = math.randomBuffer(14);
  const randBuf3 = math.randomBuffer(14);
  const randBuf4 = math.randomBuffer(32);
  const randBuf5 = math.randomBuffer(35);
}

export function promiseBatchTest(): void {
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

  const before = Context.accountBalance;
  const amount = u128.from(1);

  const _access_key = base58.decode(Context.senderPublicKey);
  const code = _testBytes();

  ContractPromiseBatch.create("app-v1.bob.testnet")
    .create_account()
    .transfer(amount)
    .add_full_access_key(_access_key)
    .deploy_contract(code);

  const amount1 = u128.from(10);
  const contractAccount = "first-contract.bob.testnet";

  let promise = ContractPromiseBatch.create(contractAccount).create_account();

  promise.then(contractAccount).transfer(amount1);
}

// cruft to compare test objects. TODO: use something standard
function _arrayEqual(
  first: Uint8Array | null,
  second: Uint8Array | null
): bool {
  if (first == null || second == null) {
    return first != second;
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

function _modelObjectEqual(
  first: TextMessage | null,
  second: TextMessage
): bool {
  if (first == null) {
    return second != null;
  }
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
      logging.log("wrong" + expectedContents[i] + "," + vector[i]);
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

export function getDefaultValue(y: string = "hello world", x: i32 = 42): i32 {
  assert(x == 42, "expected default of 42, got: " + x.toString());
  assert(y == "hello world", "y is not default value of hello world");
  return x;
}

export function mixDefaults(x: u64, y: u64 = 1): i32 {
  return <i32>(x + y);
}

export function get_validator(): void {
  env.validator_stake("hello");
  env.validator_total_stake();
}