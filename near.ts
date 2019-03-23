const DEFAULT_SCRATCH_BUFFER_SIZE: usize = 1 << 16;

type DataTypeIndex = u32;

const DATA_TYPE_ORIGINATOR_ACCOUNT_ID: DataTypeIndex = 1;
const DATA_TYPE_CURRENT_ACCOUNT_ID: DataTypeIndex = 2;
const DATA_TYPE_STORAGE: DataTypeIndex = 3;
const DATA_TYPE_INPUT: DataTypeIndex = 4;
const DATA_TYPE_RESULT: DataTypeIndex = 5;
const DATA_TYPE_STORAGE_ITER: DataTypeIndex = 6;

/**
 * Represents contract storage.
 */
export class Storage {
  private _scratchBuf: Uint8Array = new Uint8Array(DEFAULT_SCRATCH_BUFFER_SIZE);

  /**
   * Returns list of keys starting with given prefix.
   *
   * NOTE: Must be very careful to avoid exploding amount of compute with this method.
   * Make sure there is a hard limit on number of keys returned even if contract state size grows.
   */
  keys(prefix: string): string[] {
    let result: string[] = new Array<string>();
    let iterId = storage_iter(prefix.lengthUTF8 - 1, prefix.toUTF8());
    do {
      let key = this._internalReadString(DATA_TYPE_STORAGE_ITER, 0, iterId);
      if (key != null) {
        result.push(key);
      }
    } while (storage_iter_next(iterId));
    return result;
  }

  /**
   * @deprecated Use setString or set<string>
   */
  setItem(key: string, value: string): void {
    this.setString(key, value);
  }

  /**
   * @deprecated Use getString or get<string>
   */
  getItem(key: string): string {
    return this.getString(key);
  }

  /**
   * Store string value under given key. Both key and value are encoded as UTF-8 strings.
   */
  setString(key: string, value: string): void {
    storage_write(key.lengthUTF8 - 1, key.toUTF8(), value.lengthUTF8 - 1, value.toUTF8());
  }

  /**
   * Get string value stored under given key. Both key and value are encoded as UTF-8 strings.
   */
  getString(key: string): string {
    return this._internalReadString(DATA_TYPE_STORAGE, key.lengthUTF8 - 1, key.toUTF8());
  }

  /**
   * Store byte array under given key. Key is encoded as UTF-8 strings.
   * Byte array stored as is.
   *
   * It's convenient to use this together with `domainObject.encode()`.
   */
  setBytes(key: string, value: Uint8Array): void {
    storage_write(key.lengthUTF8 - 1, key.toUTF8(), value.byteLength, value.buffer.data);
  }

  /**
   * Get byte array stored under given key. Key is encoded as UTF-8 strings.
   * Byte array stored as is.
   *
   * It's convenient to use this together with `DomainObject.decode()`.
   */
  getBytes(key: string): Uint8Array {
    return this._internalReadBytes(DATA_TYPE_STORAGE, key.lengthUTF8 - 1, key.toUTF8());
  }

  hasKey(key: string): bool {
    return storage_has_key(key.lengthUTF8 - 1, key.toUTF8());
  }

  remove(key: string): void {
    storage_remove(key.lengthUTF8 - 1, key.toUTF8());
  }

  /**
   * @deprecated User #remove
   */
  removeItem(key: string): void {
    this.remove(key);
  }

  /**
   * Store 64-bit unsigned int under given key. Key is encoded as UTF-8 strings.
   * Number is encoded as decimal string.
   */
  setU64(key: string, value: u64): void {
    this.setItem(key, value.toString());
  }

  /**
   * Get 64-bit unsigned int stored under given key. Key is encoded as UTF-8 strings.
   * Number is encoded as decimal string.
   *
   * @returns int value or 0 if value is not found
   */
  getU64(key: string): u64 {
    return U64.parseInt(this.getItem(key) || "0");
  }

  /**
   * Stores given generic value under the key. Key is encoded as UTF-8 strings.
   * Supported types: bools, integers, string and data objects defined in model.ts.
   *
   * @param key A key to use for storage.
   * @param value A value to store.
   */
  set<T>(key: string, value: T): void {
    if (isString<T>()) {
      this.setString(key, value);
    } else if (isInteger<T>()) {
      this.setString(key, value.toString());
    } else {
      this.setBytes(key, value.encode());
    }
  }

  /**
   * Gets given generic value stored under the key. Key is encoded as UTF-8 strings.
   * Supported types: bools, integers, string and data objects defined in model.ts.
   * For common/dynamic arrays use {@link #getArray}
   *
   * @param key A key to read from storage.
   * @param defaultValue The default value if the key is not available
   * @returns A value of type T stored under the given key.
   */
  get<T>(key: string, defaultValue: T = null): T {
    if (isString<T>()) { 
      return this.getString(key) || defaultValue;
    } else if (isInteger<T>()) {
      let s = this.getString(key);
      if (s != null) {
        if (isSigned<T>()) {
          return <T>I64.parseInt(s);
        } else {
          return <T>U64.parseInt(s);
        }
      } else {
        return defaultValue;
      }
    } else {
      let bytes = this.getBytes(key);
      if (bytes != null) {
        return instantiate<T>().decode(bytes);
      } else {
        return defaultValue;
      }
    }
  }

  /**
   * @hidden
   * Reads given params into the internal scratch buffer and returns length.
   */
  private _internalBufferRead(dataType: DataTypeIndex, keyLen: usize, key: usize): usize {
    for (let i = 0; i < 2; ++i) {
      let len = data_read(
        dataType,
        keyLen,
        key,
        this._scratchBuf.byteLength,
        this._scratchBuf.buffer.data,
      );
      if (len <= <usize>(this._scratchBuf.byteLength)) {
        return len;
      }
      this._scratchBuf = new Uint8Array(len);
    }
    assert(false, "Internal scratch buffer was resized more than once");
    return 0;
  }

  /**
   * @hidden
   * Reads a string for the given params.
   */
  _internalReadString(dataType: DataTypeIndex, keyLen: usize, key: usize): string {
    let len = this._internalBufferRead(dataType, keyLen, key);
    if (len == 0) {
      return null;
    }
    return String.fromUTF8(this._scratchBuf.buffer.data, len);
  }

  /**
   * @hidden
   * Reads bytes for the given params.
   */
  _internalReadBytes(dataType: DataTypeIndex, keyLen: usize, key: usize): Uint8Array {
    let len = this._internalBufferRead(dataType, keyLen, key);
    if (len == 0) {
      return null;
    }
    let res = new Uint8Array(len);
    memory.copy(res.buffer.data, this._scratchBuf.buffer.data, len);
    return res;
  }
}

/**
 * An instance of a Storage class that is used for working with contract storage on the blockchain.
 */
export let storage: Storage = new Storage();

/**
 * A namespace with classes and functions for persistent collections on the blockchain. 
 */
export namespace collections {
  const _KEY_LENGTH_SUFFIX = ":len";
  const _KEY_FRONT_INDEX_SUFFIX = ":front";
  const _KEY_BACK_INDEX_SUFFIX = ":back";
  const _KEY_ELEMENT_SUFFIX = "::";

  /**
   * A vector class that implements a persistent array.
   */
  export class Vector<T> {
    private _elementPrefix: string;
    private _lengthKey: string;
    private _length: i32;

    /**
     * Creates or restores a persistent vector with a given storage prefix.
     * Always use a unique storage prefix for different collections.
     * @param prefix A prefix to use for every key of this vector.
     */
    constructor(prefix: string) {
      this._elementPrefix = prefix + _KEY_ELEMENT_SUFFIX;
      this._lengthKey = prefix + _KEY_LENGTH_SUFFIX;
      this._length = -1;
    }

    /**
     * @returns An interal key for a given index.
     */
    @inline
    private _key(index: i32): string {
      return this._elementPrefix + index.toString();
    }

    /**
     * Removes the content of the element from storage without changing length of the vector.
     * @param index The index of the element to remove.
     */
    remove(index: i32): void {
      assert(this.containsIndex(index), "Index out of range");
      return storage.remove(this._key(index));
    }

    /**
     * @param index The index to check.
     * @returns True if the given index is within the range of the vector indices.
     */
    containsIndex(index: i32): bool {
      return index >= 0 && index < this.length;
    }

    /**
     * @returns True if the vector is empty.
     */
    get isEmpty(): bool {
      return this.length == 0;
    }

    /**
     * @returns The length of the vector.
     */
    get length(): i32 {
      if (this._length < 0) {
        this._length = storage.get<i32>(this._lengthKey, 0);
      }
      return this._length;
    }

    /**
     * Internally sets the length of the vector
     */
    private set length(value: i32) {
      this._length = value;
      storage.set<i32>(this._lengthKey, value);
    }

    /**
     * Returns the element of the vector for a given index. Asserts the given index is within the
     * range of the vector.
     * @param index The index of the element to return.
     * @returns The element at the given index.
     */
    @operator("[]")
    private __get(index: i32): T {
      assert(this.containsIndex(index), "Index out of range");
      return this.__unchecked_get(index);
    }

    /**
     * Returns the element of the vector for a given index without checks.
     * @param index The index of the element to return.
     * @returns The element at the given index.
     */
    @operator("{}")
    private __unchecked_get(index: i32): T {
      return storage.get<T>(this._key(index));
    }

    /**
     * Sets the value of an element at the given index. Asserts the given index is within the
     * range of the vector.
     * @param index The index of the element.
     * @param value The new value.
     */
    @operator("[]=")
    private __set(index: i32, value: T): void {
      assert(index >= 0 && index < this.length, "Index out of range");
      this.__unchecked_set(index, value);
    }

    /**
     * Sets the value of an element at the given index without checks.
     * @param index The index of the element.
     * @param value The new value.
     */
    @operator("{}=")
    private __unchecked_set(index: i32, value: T): void {
      storage.set<T>(this._key(index), value);
    }

    /**
     * Adds a new element to the end of the vector. Increases the length of the vector.
     * @param element A new element to add.
     * @returns The index of a newly added element
     */
    push(element: T): i32 {
      let index = this.length;
      this.length = index + 1;
      this.__unchecked_set(index, element);
      return index;
    }

    /**
     * Adds a new element to the end of the vector. Increases the length of the vector.
     * @param element A new element to add.
     * @returns The index of a newly added element
     */
    @inline
    pushBack(element: T): i32 {
      return this.push(element);
    }

    /**
     * Removes the last element from the vector and returns it. Asserts that the vector is not empty.
     * Decreases the length of the vector.
     * @returns The removed last element of the vector.
     */
    pop(): T {
      assert(this.length > 0, "Vector is empty");
      let index = this.length - 1;
      this.length = index;
      let result = this.__unchecked_get(index);
      storage.remove(this._key(index));
      return result;
    }

    /**
     * Removes the last element from the vector and returns it. Asserts that the vector is not empty.
     * Decreases the length of the vector.
     * @returns The removed last element of the vector.
     */
    @inline
    popBack(): T {
      return this.pop();
    }

    /**
     * @returns The last element of the vector. Asserts that the vector is not empty.
     */
    get back(): T {
      return this.__get(this.length - 1);
    }

    /**
     * @returns The first element of the vector. Asserts that the vector is not empty.
     */
    get front(): T {
      return this.__get(0);
    }
  }


  /**
   * A deque class that implements a persistent bidirectional queue.
   */
  export class Deque<T> {
    private _elementPrefix: string;
    private _frontIndexKey: string;
    private _backIndexKey: string;
    private _frontIndex: i32;
    private _backIndex: i32;

    /**
     * Creates or restores a persistent deque with a given storage prefix.
     * Always use a unique storage prefix for different collections.
     * @param prefix A prefix to use for every key of this deque.
     */
    constructor(prefix: string) {
      this._elementPrefix = prefix + _KEY_ELEMENT_SUFFIX;
      this._frontIndexKey = prefix + _KEY_FRONT_INDEX_SUFFIX;
      this._backIndexKey = prefix + _KEY_BACK_INDEX_SUFFIX;
      this._frontIndex = i32.MIN_VALUE;
      this._backIndex = i32.MAX_VALUE;
    }

    /**
     * @returns An interal key for a given index.
     */
    @inline
    private _key(index: i32): string {
      return this._elementPrefix + index.toString();
    }

    /**
     * @returns The index of the first/front element of the deque (inclusive).
     */
    private get frontIndex(): i32 {
      if (this._frontIndex == i32.MIN_VALUE) {
        this._frontIndex = storage.get<i32>(this._frontIndexKey, 0);
      }
      return this._frontIndex;
    }

    /**
     * Internal. Sets the index of the first/front element.
     */
    private set frontIndex(value: i32) {
      this._frontIndex = value;
      storage.set<i32>(this._frontIndexKey, value);
    }

    /**
     * @returns The index of the last/back element of the deque (inclusive).
     */
    private get backIndex(): i32 {
      if (this._backIndex == i32.MAX_VALUE) {
        this._backIndex = storage.get<i32>(this._backIndex, -1);
      }
      return this._backIndex;
    }

    /**
     * Internal. Sets the index of the last/back element.
     */
    private set backIndex(value: i32) {
      this._backIndex = value;
      storage.set<i32>(this._backIndex, value);
    }

    /**
     * @param index The index to check.
     * @returns True if the given index is within the range of the deque indices.
     */
    containsIndex(index: i32): bool {
      return index >= 0 && index < this.length;
    }

    /**
     * Removes the content of the element from storage without changing length of the deque.
     * @param index The index of the element to remove.
     */
    remove(index: i32): void {
      index -= this.frontIndex;
      assert(this.containsIndex(index), "Index out of range");
      return storage.remove(this._key(index));
    }

    /**
     * @returns The length of the deque.
     */
    get length() {
      return this.backIndex - this.frontIndex + 1;
    }

    /**
     * @returns True if the deque is empty.
     */
    get isEmpty(): bool {
      return this.length == 0;
    }

    /**
     * Returns the element of the deque for a given index. Asserts the given index is within the
     * range of the vector.
     * @param index The index of the element to return.
     * @returns The element at the given index.
     */
    @operator("[]")
    private __get(index: i32): T {
      assert(this.containsIndex(index - this.frontIndex), "Index out of range");
      return this.__unchecked_get(index);
    }

    /**
     * Returns the element of the deque for a given index without checks.
     * @param index The index of the element to return.
     * @returns The element at the given index.
     */
    @operator("{}")
    private __unchecked_get(index: i32): T {
      return storage.get<T>(this._key(index - this.frontIndex));
    }

    /**
     * Sets the new value of an element at the given index. Asserts the given index is within the
     * range of the deque.
     * @param index The index of the element.
     * @param value The new value.
     */
    @operator("[]=")
    private __set(index: i32, value: T): void {
      assert(this.containsIndex(index - this.frontIndex), "Index out of range");
      this.__unchecked_set(index, value);
    }

    /**
     * Sets the new value of an element at the given index without checks.
     * @param index The index of the element.
     * @param value The new value.
     */
    @operator("{}=")
    private __unchecked_set(index: i32, value: T): void {
      storage.set<T>(this._key(index - this.frontIndex), value);
    }

    /**
     * Adds a new element in front of the deque. Increases the length of the deque.
     * @param element A new element to add.
     * @returns The index of a newly added element
     */
    pushFront(element: T): i32 {
      this.frontIndex -= 1;
      this.__unchecked_set(0, element);
      return 0;
    }

    /**
     * Removes the first/front element from the deque and returns it.
     * Asserts that the deque is not empty. Decreases the length of the deque.
     * @returns The removed first element of the queue.
     */
    popFront(): T {
      assert(this.length > 0, "Deque is empty");
      let result = this.__unchecked_get(0);
      storage.remove(this._key(this.frontIndex));
      this.frontIndex += 1;
      return result;
    }

    /**
     * @returns The first/front element of the deque.
     */
    get front(): T {
      return this.__get(0);
    }

    /**
     * Adds a new element to the end of the deque. Increases the length of the deque.
     * @param element A new element to add.
     * @returns The index of a newly added element
     */
    pushBack(element: T): i32 {
      let index = this.length;
      this.backIndex += 1;
      this.__unchecked_set(index, element);
      return index;
    }

    /**
     * Removes the last/back element from the deque and returns it.
     * Asserts that the deque is not empty. Decreases the length of the deque.
     * @returns The removed first element of the queue.
     */
    popBack(): T {
      let index = this.length;
      assert(index > 0, "Deque is empty");
      let result = this.__unchecked_get(index);
      storage.remove(this._key(this.backIndex));
      this.backIndex -= 1;
      return result;
    }

    /**
     * @returns The last/back element of the deque. 
     */
    get back(): T {
      return this.__get(this.length - 1);
    }
  }


  /**
   * A map class that implements a persistent unordered map.
   */
  export class Map<K, V> {
    private _elementPrefix: string;

    /**
     * Creates or restores a persistent map with a given storage prefix.
     * Always use a unique storage prefix for different collections.
     * @param prefix A prefix to use for every key of this map.
     */
    constructor(prefix: string) {
      this._elementPrefix = prefix + _KEY_ELEMENT_SUFFIX;
    }

    /**
     * @returns An interal string key for a given key of type K.
     */
    @inline
    private _key(key: K): string {
      if (isString<K>()) {
        return this._elementPrefix + key;
      } else {
        return this._elementPrefix + key.toString();
      }
    }

    /**
     * @param key Key to check.
     * @returns True if the given key present in the map.
     */
    containsKey(key: K): bool {
      return storage.hasKey(this._key(key));
    }

    /**
     * Removes value and the key from the map.
     * @param key Key to remove.
     */
    removeKey(key: K): void {
      return storage.remove(this._key(key));
    }

    /**
     * @param key Key of the element.
     * @param defaultValue The default value if the key is not present.
     * @returns Value for the given key or the default value.
     */
    @operator("[]")
    private __get(key: K, defaultValue: V = null): V {
      return storage.get<V>(this._key(key), defaultValue);
    }

    /**
     * Sets the new value for the given key.
     * @param key Key of the element.
     * @param value The new value of the element.
     */
    @operator("[]=")
    private __set(key: K, value: V): void {
      storage.set<V>(this._key(key), value);
    }
  }

  /**
   * Creates or restores a persistent vector with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   * @param prefix A prefix to use for every key of this vector.
   */
  export function vector<T>(prefix: string): Vector<T> {
    return new Vector<T>(prefix);
  }

  /**
   * Creates or restores a persistent deque with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   * @param prefix A prefix to use for every key of this deque.
   */
  export function deque<T>(prefix: string): Deque<T> {
    return new Deque<T>(prefix);
  }

  /**
   * Creates or restores a persistent map with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   * @param prefix A prefix to use for every key of this map.
   */
  export function map<K, V>(prefix: string): Map<K, V> {
    return new Map<K, V>(prefix);
  }
}

/**
 * Provides context for contract execution, including information about transaction sender, etc.
 */
class Context {
  /**
   * Account ID of transaction sender.
   */
  get sender(): string {
    return storage._internalReadString(DATA_TYPE_ORIGINATOR_ACCOUNT_ID, 0, 0);
  }

  /**
   * Account ID of contract.
   */
  get contractName(): string {
    return storage._internalReadString(DATA_TYPE_CURRENT_ACCOUNT_ID, 0, 0);
  }

  /**
   * Current block index.
   */
  get blockIndex(): u64 {
    return block_index();
  }

  /**
   * Current balance of the contract.
   */
  get currentBalance(): u64 {
    return balance();
  }

  /**
   * The amount of tokens received with this execution call.
   */
  get receivedAmount(): u64 {
    return received_amount();
  }

  /**
   * The amount of available gas left for this execution call.
   */
  get gasLeft(): u64 {
    return gas_left();
  }

  /**
   * The amount of available mana left for this execution call.
   */
  get manaLeft(): u32 {
    return mana_left();
  }
}

export let context: Context = new Context();

export namespace near {
  /**
   * Hash given data. Returns hash as 32-byte array.
   * @param data data can be passed as either Uint8Array or anything with .toString (hashed as UTF-8 string).
   */
  export function hash<T>(data: T): Uint8Array {
    let result = new Uint8Array(32);
    if (data instanceof Uint8Array) {
      _near_hash(data.byteLength, data.buffer.data, result.buffer.data);
    } else {
      let str = data.toString();
      _near_hash(str.lengthUTF8 - 1, str.toUTF8(), result.buffer.data);
    }
    return result;
  }

  /**
   * Hash given data. Returns hash as 32-bit integer.
   * @param data data can be passed as either Uint8Array or anything with .toString (hashed as UTF-8 string).
   */
  export function hash32<T>(data: T): u32 {
    let dataToHash : Uint8Array;
    if (data instanceof Uint8Array) {
      return _near_hash32(data.byteLength, data.buffer.data);
    } else {
      let str = data.toString();
      return _near_hash32(str.lengthUTF8 - 1, str.toUTF8());
    }
  }

  /**
   * Returns random byte buffer of given length.
   */
  export function randomBuffer(len: u32): Uint8Array {
    let result = new Uint8Array(len);
    _near_random_buf(len, result.buffer.data);
    return result;
  }

  /**
   * Returns random 32-bit integer.
   */
  export function random32(): u32 {
    return random32();
  }

  export function log(msg: string): void {
    _near_log(<usize>msg);
  }

  export function str<T>(value: T): string {
    let arr: Array<T> = [value];
    return arr.toString();
  }

  export function base58(source: Uint8Array): string {
    // Code converted from:
    // https://github.com/cryptocoinjs/base-x/blob/master/index.js
    const iFACTOR = 2; // TODO: Calculate precise value to avoid overallocating
    const ALPHABET = '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz';
    let BASE = ALPHABET.length;
    let LEADER = ALPHABET.charAt(0);

    // Skip & count leading zeroes.
    let zeroes = 0
    let length = 0
    let pbegin = 0
    let pend = source.length

    while (pbegin !== pend && source[pbegin] === 0) {
      pbegin++
      zeroes++
    }

    // Allocate enough space in big-endian base58 representation.
    let size = ((pend - pbegin) * iFACTOR + 1) >>> 0
    let b58 = new Uint8Array(size)

    // Process the bytes.
    while (pbegin !== pend) {
      let carry = i32(source[pbegin])

      // Apply "b58 = b58 * 256 + ch".
      let i = 0
      for (let it = size - 1; (carry !== 0 || i < length) && (it !== -1); it--, i++) {
        carry += (256 * b58[it]) >>> 0
        b58[it] = (carry % BASE) >>> 0
        carry = (carry / BASE) >>> 0
      }

      assert(carry == 0, 'Non-zero carry');
      length = i
      pbegin++
    }

    // Skip leading zeroes in base58 result.
    let it = size - length
    while (it !== size && b58[it] === 0) {
      it++
    }

    // Translate the result into a string.
    let str = LEADER.repeat(zeroes)
    for (; it < size; ++it) str += ALPHABET.charAt(b58[it])

    return str
  }
}

export class ContractPromise {
  id: i32;

  static create(
      contractName: string,
      methodName: string,
      args: Uint8Array,
      mana: u32,
      amount: u64 = 0
  ): ContractPromise {
    return {
      id: promise_create(
        contractName.lengthUTF8 - 1, contractName.toUTF8(),
        methodName.lengthUTF8 - 1, methodName.toUTF8(),
        args.byteLength, args.buffer.data,
        mana,
        amount)
    };
  }

  then(
      methodName: string,
      args: Uint8Array,
      mana: u32
  ): ContractPromise {
    return {
      id: promise_then(
        this.id,
        methodName.lengthUTF8 - 1, methodName.toUTF8(),
        args.byteLength, args.buffer.data,
        mana)
    };
  }

  returnAsResult(): void {
    return_promise(this.id);
  }

  static all(promises: ContractPromise[]): ContractPromise {
    assert(promises.length > 0);
    let id = promises[0].id;
    for (let i = 1; i < promises.length; i++) {
      id = promise_and(id, promises[i].id);
    }
    return { id };
  }

  static getResults() : ContractPromiseResult[] {
    let count = <i32>result_count();
    let results = new Array<ContractPromiseResult>(count);
    for (let i = 0; i < count; i++) {
      let isOk = result_is_ok(i);
      if (!isOk) {
        results[i] = { success: false }
        continue;
      }
      let buffer = storage._internalReadBytes(DATA_TYPE_RESULT, 0, i);
      results[i] = { success: isOk, buffer: buffer };
    }
    return results;
  }
}

export class ContractPromiseResult {
  success: bool;
  buffer: Uint8Array;
}

// TODO: Other functions exposed by runtime should be defined here

@external("env", "storage_write")
declare function storage_write(key_len: usize, key_ptr: usize, value_len: usize, value_ptr: usize): void;
@external("env", "storage_remove")
declare function storage_remove(key_len: usize, key_ptr: usize): void;
@external("env", "storage_has_key")
declare function storage_has_key(key_len: usize, key_ptr: usize): bool;
@external("env", "storage_iter")
declare function storage_iter(prefix_len: usize, prefix_ptr: usize): u32;
@external("env", "storage_iter_next")
declare function storage_iter_next(id: u32): u32;

@external("env", "result_count")
declare function result_count(): u32;
@external("env", "result_is_ok")
declare function result_is_ok(index: u32): bool;

@external("env", "return_value")
declare function return_value(value_len: usize, value_ptr: usize): void;
@external("env", "return_promise")
declare function return_promise(promise_index: u32): void;

@external("env", "data_read")
declare function data_read(type_index: u32, key_len: usize, key: usize, max_buf_len: usize, buf_ptr: usize): usize;

@external("env", "promise_create")
declare function promise_create(
    account_id_len: usize, account_id_ptr: usize,
    method_name_len: usize, method_name_ptr: usize,
    args_len: usize, args_ptr: usize,
    mana: u32,
    amount: u64): u32;

@external("env", "promise_then")
declare function promise_then(
    promise_index: u32,
    method_name_len: usize, method_name_ptr: usize,
    args_len: usize, args_ptr: usize,
    mana: u32): u32;

@external("env", "promise_and")
declare function promise_and(promise_index1: u32, promise_index2: u32): u32;

/**
 * @hidden
 * Hash buffer is 32 bytes
 */
@external("env", "hash")
declare function _near_hash(value_len: usize, value_ptr: usize, buf_ptr: usize): void;

/**
 * @hidden
 */
@external("env", "hash32")
declare function _near_hash32(value_len: usize, value_ptr: usize): u32;

/**
 * @hidden
 * Fills given buffer with random u8.
 */
@external("env", "random_buf")
declare function _near_random_buf(buf_len: u32, buf_ptr: usize): void

/**
 * @hidden
 */
@external("env", "random32")
declare function random32(): u32;

/**
 * @hidden
 */
@external("env", "log")
declare function _near_log(msg_ptr: usize): void;

/**
 * @hidden
 */
@external("env", "balance")
declare function balance(): u64;

/**
 * @hidden
 */
@external("env", "mana_left")
declare function mana_left(): u32;

/**
 * @hidden
 */
@external("env", "gas_left")
declare function gas_left(): u64;

/**
 * @hidden
 */
@external("env", "received_amount")
declare function received_amount(): u64;

/**
 * @hidden
 */
@external("env", "block_index")
declare function block_index(): u64;

/*
    fn storage_write(key_len: usize, key_ptr: *const u8, value_len: usize, value_ptr: *const u8);
    fn storage_remove(key_len: usize, key_ptr: *const u8);
    fn storage_has_key(key_len: usize, key_ptr: *const u8) -> bool;

    fn result_count() -> u32;
    fn result_is_ok(index: u32) -> bool;

    fn return_value(value_len: usize, value_ptr: *const u8);
    fn return_promise(promise_index: u32);

    fn data_read(data_type_index: u32, key_len: usize, key_ptr: *const u8, max_buf_len: usize, buf_ptr: *mut u8) -> usize;

    // AccountID is just 32 bytes without the prefix length.
    fn promise_create(
        account_id_len: usize, account_id_ptr: *const u8,
        method_name_len: usize, method_name_ptr: *const u8,
        arguments_len: usize, arguments_ptr: *const u8,
        mana: u32,
        amount: u64,
    ) -> u32;

    fn promise_then(
        promise_index: u32,
        method_name_len: usize, method_name_ptr: *const u8,
        arguments_len: usize, arguments_ptr: *const u8,
        mana: u32,
    ) -> u32;

    fn promise_and(promise_index1: u32, promise_index2: u32) -> u32;

    fn balance() -> u64;
    fn mana_left() -> u32;
    fn gas_left() -> u64;
    fn received_amount() -> u64;
    fn assert(expr: bool);

    /// Hash buffer is 32 bytes
    fn hash(value_len: usize, value_ptr: *const u8, buf_ptr: *mut u8);
    fn hash32(value_len: usize, value_ptr: *const u8) -> u32;

    // Fills given buffer with random u8.
    fn random_buf(buf_len: u32, buf_ptr: *mut u8);
    fn random32() -> u32;

    fn block_index() -> u64;

    /// Log using utf-8 string format.
    fn debug(msg_len: usize, msg_ptr: *const u8);
*/
