import { env } from "./env";
import { isNumber, util } from "./util";
import { Serializer, JSONSerial,
  BorshSerial,
} from "./serializer";

/**
 * This class represents contract storage.
 *
 * It is a key-value store that is persisted on the NEAR blockchain.
 */
export class Storage {
  constructor(protected serializer: Serializer = new JSONSerial()){}

  protected encodeVal<T>(value: T): Uint8Array {
    return this.serializer.ser<T>(value);
  }

  protected decodeVal<T>(value: Uint8Array): T {
    return this.serializer.deser<T>(value);
  }

  /**
   * Store string value under given key. Both key and value are encoded as UTF-8 strings.
   *
   * ```ts
   * storage.setString("myKey", "myValue")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @param value The value stored at a particular key in a key-value store
   */
  setString(key: string, value: string): u64 {
    return this.set<string>(key, value);
    // TODO: handle return value?
  }

  /**
   * Get string value stored under given key. Both key and value are encoded as UTF-8 strings.
   *
   * ```ts
   * let value = storage.getString("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @returns String value stored under given key
   */
  getString(key: string): string | null {
    return this.get<string>(key);
  }

  /**
   * Store byte array under given key. Key is encoded as UTF-8 strings.
   * Byte array stored as is.
   *
   * It's convenient to use this together with `domainObject.encode()`.
   *
   * ```ts
   * let data = new Uint8Array([1,2,3])
   * storage.setBytes("myKey", data)
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @param value The value stored at a particular key in a key-value store
   */
  setBytes(key: string, value: Uint8Array): u64 {
    let key_encoded = util.stringToBytes(key);
    return env.storage_write(
      key_encoded.byteLength,
      key_encoded.dataStart,
      value.byteLength,
      value.dataStart,
      0
    );
  }

  /**
   * Get byte array stored under given key. Key is encoded as UTF-8 strings.
   * Byte array stored as is.
   *
   * It's convenient to use this together with `DomainObject.decode()`.
   *
   * ```ts
   * storage.getBytes("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @returns Byte array stored under given key
   */
  getBytes(key: string): Uint8Array | null {
    return this._internalReadBytes(key);
  }

  /**
   * Returns true if the given key is present in the storage.
   *
   * ```ts
   * storage.contains("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @returns True if the given key is present in the storage.
   */
  contains(key: string): bool {
    let key_encoded = util.stringToBytes(key);
    return bool(
      env.storage_has_key(key_encoded.byteLength, key_encoded.dataStart)
    );
  }

  /**
   * Returns true if the given key is present in the storage.
   *
   * ```ts
   * // alias for method contains()
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @returns True if the given key is present in the storage.
   */
  hasKey(key: string): bool {
    return this.contains(key);
  }

  /**
   * Deletes a given key from the storage.
   *
   * ```ts
   * storage.delete("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value Store
   * @returns True if the given key was present in storage
   */
  delete(key: string): bool {
    let key_encoded = util.stringToBytes(key);
    let status = env.storage_remove(key_encoded.byteLength, key_encoded.dataStart, 0);
    return <bool>status;
  }

  /**
   * Stores given generic value under the key. Key is encoded as UTF-8 strings.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * ```ts
   * storage.set<string>("myKey", "myValue")
   * storage.set<u16>("myKey", 123)
   * storage.set<MyCustomObject>("myKey", new MyCustomObject())
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @param value The value stored at a particular key in a key-value store
   */
  set<T>(key: string, value: T): u64 {
    return this.setBytes(key, this.serializer.ser<T>(value));
  }

  /**
   * Gets given generic value stored under the key. Key is encoded as UTF-8 strings.
   * Supported types: string and data objects defined in model.ts.
   * Please use getPrimitive<T> for getting primitives with a default value, and
   * getSome<T> for primitives and non-primitives in case it's known that a particular key exists.
   *
   * ```ts
   * storage.get<string>("myKey")
   * storage.get<u16>("myKey")
   * storage.get<MyCustomObject>("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @param defaultValue The default value if the key is not available
   * @returns A value of type T stored under the given key.
   */
  get<T>(key: string, defaultValue: T | null = null): T | null {
    if (isNumber<T>()) {
      ERROR(
        "Operation not supported. Please use storage.getPrimitive<T> for non-primitives"
      );
    }
    const byteValue = this.getBytes(key);
    return byteValue == null
      ? defaultValue
      : this.serializer.deser<T>(byteValue);
  }

  /**
   * Gets given generic value stored under the key. Key is encoded as UTF-8 strings.
   * Supported types: bool, integer.
   *
   * This function will throw if type T can not be cast as integer
   *
   * ```ts
   * storage.getPrimitive<string>("myKey", "default value")
   * storage.getPrimitive<u16>("myKey", 123)
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @param defaultValue The default value if the key is not available
   * @returns A value of type T stored under the given key.
   */
  getPrimitive<T>(key: string, defaultValue: T): T {
    if (!isNumber<T>()) {
      ERROR(
        "Operation not supported. Please use storage.get<T> for non-primitives"
      );
    }
    if (!this.contains(key)) {
      return defaultValue;
    }
    return this.getSome<T>(key);
  }

  /**
   * Gets given generic value stored under the key. Key is encoded as UTF-8 strings.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * This function will throw if the key does not exist in the storage.
   *
   * ```ts
   * storage.getSome<string>("myKey")
   * storage.getSome<u16>("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @returns A value of type T stored under the given key.
   */
  getSome<T>(key: string): T {
    if (!this.hasKey(key)) {
      assert(false, "Key '" + key + "' is not present in the storage");
    }
    return this.serializer.deser<T>(<NonNullable<Uint8Array>>this.getBytes(key));
  }

  private _internalReadBytes(key: string): Uint8Array | null {
    let key_encoded = util.stringToBytes(key);
    let res = env.storage_read(
      key_encoded.byteLength,
      key_encoded.dataStart,
      0
    );
    if (res == 1) {
      return util.read_register(0);
    } else {
      return null;
    }
  }
}


function ptrAs<T>(value: u64): T {
  if (isNumber<T>()) {
    // @ts-ignore
    return <T>value;
  }
  return changetype<T>(<usize>value);
}

/**
 * This class represents contract storage.
 *
 * It is a key-value store that is persisted on the NEAR blockchain.
 */
export class CachingStorage extends Storage {

  private cache: Map<string, u64> = new Map();

  private cacheGet<T>(s: string): T {
    return ptrAs<T>(this.cache.get(s));
  }

  private cacheSet<T>(key: string, value: T): T {
    if (isInteger<T>() || isFloat<T>()) {
      // @ts-ignore
      this.cache.set(key, <u64>(value));
    } else {
      this.cache.set(key, <u64>changetype<usize>(value));
    }
    return value;
  }

  /**
   * Store string value under given key. Both key and value are encoded as UTF-8 strings.
   *
   * ```ts
   * storage.setString("myKey", "myValue")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @param value The value stored at a particular key in a key-value store
   */
  setString(key: string, value: string): u64 {
    this.cacheSet(key, value);
    return super.setString(key, value);
    // TODO: handle return value?
  }

  /**
   * Get string value stored under given key. Both key and value are encoded as UTF-8 strings.
   *
   * ```ts
   * let value = storage.getString("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @returns String value stored under given key
   */
  getString(key: string): string | null {
    if (this.cache.has(key)) {
      return changetype<string>(<usize>this.cache.get(key));
    }
    return this.cacheSet(key, super.getString(key));
  }

  /**
   * Store byte array under given key. Key is encoded as UTF-8 strings.
   * Byte array stored as is.
   *
   * It's convenient to use this together with `domainObject.encode()`.
   *
   * ```ts
   * let data = new Uint8Array([1,2,3])
   * storage.setBytes("myKey", data)
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @param value The value stored at a particular key in a key-value store
   */
  setBytes(key: string, value: Uint8Array): u64 {
    return super.setBytes(key, this.cacheSet(key, value));
    // TODO: handle return value?
  }

  /**
   * Get byte array stored under given key. Key is encoded as UTF-8 strings.
   * Byte array stored as is.
   *
   * It's convenient to use this together with `DomainObject.decode()`.
   *
   * ```ts
   * storage.getBytes("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @returns Byte array stored under given key
   */
  getBytes(key: string): Uint8Array | null {
    if (this.cache.has(key)) {
      return this.cacheGet<Uint8Array>(key);
    }
    return this.cacheSet(key, super.getBytes(key));
  }

  /**
   * Returns true if the given key is present in the storage.
   *
   * ```ts
   * storage.contains("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @returns True if the given key is present in the storage.
   */
  contains(key: string): bool {
    if (this.cache.has(key)) {
      return true;
    }
    let key_encoded = util.stringToBytes(key);
    return bool(
      env.storage_has_key(key_encoded.byteLength, key_encoded.dataStart)
    );
  }

  /**
   * Returns true if the given key is present in the storage.
   *
   * ```ts
   * // alias for method contains()
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @returns True if the given key is present in the storage.
   */
  hasKey(key: string): bool {
    return this.contains(key);
  }

  /**
   * Deletes a given key from the storage.
   *
   * ```ts
   * storage.delete("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value Store
   * @returns True if the given key was present in storage
   */
  delete(key: string): bool {
    this.cache.delete(key);
    return super.delete(key);
  }

  /**
   * Stores given generic value under the key. Key is encoded as UTF-8 strings.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * ```ts
   * storage.set<string>("myKey", "myValue")
   * storage.set<u16>("myKey", 123)
   * storage.set<MyCustomObject>("myKey", new MyCustomObject())
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @param value The value stored at a particular key in a key-value store
   */
  set<T>(key: string, value: T): u64 {
    this.cacheSet(key, value);
    return super.set(key, value);
  }

  /**
   * Gets given generic value stored under the key. Key is encoded as UTF-8 strings.
   * Supported types: string and data objects defined in model.ts.
   * Please use getPrimitive<T> for getting primitives with a default value, and
   * getSome<T> for primitives and non-primitives in case it's known that a particular key exists.
   *
   * ```ts
   * storage.get<string>("myKey")
   * storage.get<u16>("myKey")
   * storage.get<MyCustomObject>("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @param defaultValue The default value if the key is not available
   * @returns A value of type T stored under the given key.
   */
  get<T>(key: string, defaultValue: T | null = null): T | null {
    if (this.cache.has(key)) {
      return this.cacheGet<NonNullable<T>>(key);
    }
    return this.cacheSet(key, super.get<T>(key, defaultValue));
  }

  /**
   * Gets given generic value stored under the key. Key is encoded as UTF-8 strings.
   * Supported types: bool, integer.
   *
   * This function will throw if type T can not be cast as integer
   *
   * ```ts
   * storage.getPrimitive<string>("myKey", "default value")
   * storage.getPrimitive<u16>("myKey", 123)
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @param defaultValue The default value if the key is not available
   * @returns A value of type T stored under the given key.
   */
  getPrimitive<T>(key: string, defaultValue: T): T {
    if (this.cache.has(key)) {
      return this.cacheGet<T>(key);
    }
    let val = super.getPrimitive<T>(key, defaultValue);
    if (val == defaultValue) { return defaultValue; }
    return this.cacheSet<T>(key, val);
  }

  /**
   * Gets given generic value stored under the key. Key is encoded as UTF-8 strings.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * This function will throw if the key does not exist in the storage.
   *
   * ```ts
   * storage.getSome<string>("myKey")
   * storage.getSome<u16>("myKey")
   * ```
   *
   * @param key The unique identifier associated with a value in a key-value store
   * @returns A value of type T stored under the given key.
   */
  getSome<T>(key: string): T {
    if (this.cache.has(key)) {
      return this.cacheGet<T>(key);
    }
    return this.cacheSet(key, super.getSome<T>(key));
  }
}

// @ts-ignore will exist when initialized
@lazy export const jsonStorage: Storage = new Storage();

// @ts-ignore
@lazy export const borshStorage: Storage = new Storage(new BorshSerial());