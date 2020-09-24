import { collections } from ".";
import { storage } from "../storage";

/**
 * This class is one of several convenience collections built on top of the `Storage` class
 * exposed by the NEAR platform.  It implements a map -- a persistent unordered map.
 *
 * To create a map
 *
 * ```ts
 * let map = new PersistentMap<string, string>("m")  // choose a unique prefix per account
 * ```
 *
 * To use the map
 *
 * ```ts
 * map.set(key, value)
 * map.get(key)
 * ```
 *
 * IMPORTANT NOTES:
 *
 * (1) The Map doesn't store keys, so if you need to retrieve them, include keys in the values.
 *
 * (2) Since all data stored on the blockchain is kept in a single key-value store under the contract account,
 * you must always use a *unique storage prefix* for different collections to avoid data collision.
 *
 * @typeParam K The generic type parameter `K` can be any [valid AssemblyScript type](https://docs.assemblyscript.org/basics/types).
 * @typeParam V The generic type parameter `V` can be any [valid AssemblyScript type](https://docs.assemblyscript.org/basics/types).
 */
@nearBindgen
export class PersistentMap<K, V> {
  private _elementPrefix: string;

  /**
   * Creates or restores a persistent map with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   *
   * Example
   *
   * ```ts
   * let map = new PersistentMap<string, string>("m") // note the prefix must be unique (per NEAR account)
   * ```
   *
   * @param prefix A prefix to use for every key of this map.
   */
  constructor(prefix: string) {
    this._elementPrefix = prefix + collections._KEY_ELEMENT_SUFFIX;
  }

  /**
   * @returns An internal string key for a given key of type K.
   */
  private _key(key: K): string {
    // @ts-ignore: TODO: Add interface that forces all K types to have toString
    return this._elementPrefix + key.toString();
  }

  /**
   * Checks whether the map contains a given key
   *
   * ```ts
   * let map = new PersistentMap<string, string>("m")
   *
   * map.contains("hello")      // false
   * map.set("hello", "world")
   * map.contains("hello")      // true
   * ```
   *
   * @param key Key to check.
   * @returns True if the given key present in the map.
   */
  contains(key: K): bool {
    return storage.contains(this._key(key));
  }

  /**
   * Removes the given key and related value from the map
   *
   * ```ts
   * let map = new PersistentMap<string, string>("m")
   *
   * map.set("hello", "world")
   * map.delete("hello")
   * ```
   *
   * Removes value and the key from the map.
   * @param key Key to remove.
   */
  delete(key: K): void {
    storage.delete(this._key(key));
  }

  /**
   * Retrieves the related value for a given key, or uses the `defaultValue` if not key is found
   *
   * ```ts
   * let map = new PersistentMap<string, string>("m")
   *
   * map.set("hello", "world")
   * let found = map.get("hello")
   * let notFound = map.get("goodbye", "cruel world")
   *
   * assert(found == "world")
   * assert(notFound == "cruel world")
   * ```
   *
   * @param key Key of the element.
   * @param defaultValue The default value if the key is not present.
   * @returns Value for the given key or the default value.
   */
  get(key: K, defaultValue: V | null = null): V | null {
    return storage.get<V>(this._key(key), defaultValue);
  }

  /**
   * Retrieves a related value for a given key or fails assertion with "key not found"
   *
   * ```ts
   * let map = new PersistentMap<string, string>("m")
   *
   * map.set("hello", "world")
   * let result = map.getSome("hello")
   * // map.getSome("goodbye")  // will throw with failed assertion
   *
   * assert(result == "world")
   * ```
   *
   * @param key Key of the element.
   * @returns Value for the given key or the default value.
   */
  getSome(key: K): V {
    return storage.getSome<V>(this._key(key));
  }

  /**
   * ```ts
   * let map = new PersistentMap<string, string>("m")
   *
   * map.set("hello", "world")
   * ```
   *
   * Sets the new value for the given key.
   * @param key Key of the element.
   * @param value The new value of the element.
   */
  set(key: K, value: V): void {
    storage.set<V>(this._key(key), value);
  }

  /**
   * Retrieves a related value for a given key and puts it in the specified register.
   * Defaults to putting the value to register 0.
   * Fails assertion with "key not found" if key is not found in the map.
   *
   * @param key Key of the element.
   * @param register_id The ID of the register to store the value of the key to, defaults to 0.
   * @returns The ID of the register used.
   */
  get_raw(key: K, register_id: u64 = 0): u64 {
    if (!this.contains(key)) {
      assert(
        false,
        "Key '" + this._key(key) + "' is not present in the storage"
      );
    }
    storage.read_raw(this._key(key), register_id);
    return register_id;
  }

  /**
   * Write contents of register to corresponding key.
   *
   * @param key Key of the element.
   * @param register_id The ID of the register from which the value is obtained.
   * @returns An errorcode. A value of `1` means success.
   */
  set_raw(key: K, register_id: u64): u64 {
    return storage.write_raw(this._key(key), register_id);
  }
}
