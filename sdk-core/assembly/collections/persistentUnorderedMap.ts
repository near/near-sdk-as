import { PersistentMap } from "./persistentMap";
import { PersistentVector } from "./persistentVector";
import { MapEntry } from "./util";

export class PersistentUnorderedMap<K, V> {
  private _map: PersistentMap<K, i32>;
  private _entries: PersistentVector<MapEntry<K, V>>;

  /**
   * Creates or restores a persistent unordered map with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   *
   * Example
   *
   * ```ts
   * let map = new PersistentUnorderedMap<string, string>("m") // note the prefix must be unique (per NEAR account)
   * ```
   *
   * @param prefix A prefix to use for every key of this map.
   */
  constructor(prefix: string) {
    this._map = new PersistentMap<K, i32>(prefix + ":map"); // stores key=>index
    this._entries = new PersistentVector<MapEntry<K, V>>(prefix + ":entries"); // stores vec[index]=<key,value>
  }

  /**
   * Retrieves the related value for a given key, or uses the `defaultValue` if not key is found
   *
   * ```ts
   * let map = new PersistentUnorderedMap<string, string>("m")
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
    if (!this.contains(key)) {
      return defaultValue;
    }
    return this.getSome(key);
  }

  /**
   * Retrieves a related value for a given key or fails assertion with "key not found"
   *
   * ```ts
   * let map = new PersistentUnorderedMap<string, string>("m")
   *
   * map.set("hello", "world")
   * let result = map.getSome("hello")
   * // map.getSome("goodbye")  // will throw with failed assertion
   *
   * assert(result == "world")
   * ```
   *
   * @param key Key of the element.
   * @returns Value for the given key or throws
   */
  getSome(key: K): V {
    let index = this._map.getSome(key);
    return this._entries[index].value;
  }

  /**
   * returns a MapEntry array of number of last entries.
   * @param count
   */
  last(count: i32): MapEntry<K, V>[] {
    const n = min(count, this.length);
    const startIndex = this.length - n;
    const result = new Array<MapEntry<K, V>>();
    for (let i = startIndex; i < this.length; i++) {
      const entry = this._entries[i];
      result.push(entry);
    }
    return result;
  }

  /**
   * Checks whether the map contains a given key
   *
   * ```ts
   * let map = new PersistentUnorderedMap<string, string>("m")
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
    return this._map.contains(key);
  }

  /**
   * Returns range of keys from start index to end exclusive
   * @param start index of starting keys
   * @param end index of end keys
   */
  keys(start: i32 = 0, end: i32 = this.length): K[] {
    let result = new Array<K>();
    const n = min(end, this.length);
    for (let i = start; i < n; i++) {
      result.push(this._entries[i].key);
    }
    return result;
  }

  /**
   * Returns range of values from start index to end exclusive
   * @param start index of starting values
   * @param end index of end values
   */
  values(start: i32 = 0, end: i32 = this.length): V[] {
    let result = new Array<V>();
    const n = min(end, this.length);
    for (let i = start; i < n; i++) {
      result.push(this._entries[i].value);
    }
    return result;
  }

  /**
   * Returns range of entries from start index to end exclusive
   * @param start index of starting entries
   * @param end index of end entries
   */
  entries(start: i32 = 0, end: i32 = this.length): MapEntry<K, V>[] {
    let result = new Array<MapEntry<K, V>>();
    const n = min(end, this.length);
    for (let i = start; i < n; i++) {
      result.push(this._entries[i]);
    }
    return result;
  }

  get length(): i32 {
    return this._entries.length;
  }

  /**
   * Pops the last entry added to the map.
   *
   */
  pop(): MapEntry<K, V> {
    let entry = this._entries.last;
    this.delete(entry.key);
    return entry;
  }

  /**
   * ```ts
   * let map = new PersistentUnorderedMap<string, string>("m")
   *
   * map.set("hello", "world")
   * ```
   *
   * Sets the new value for the given key.
   * @param key Key of the element.
   * @param value The new value of the element.
   */
  set(key: K, value: V): void {
    let entry = new MapEntry<K, V>(key, value);
    if (this._map.contains(key)) {
      // key already exists
      const index = this._map.getSome(key); // get index
      this._entries[index] = entry; // replace entry
    } else {
      // new key
      this._map.set(key, this._entries.length);
      this._entries.push(entry);
    }
  }

  /**
   * Removes the given key and related value from the map
   *
   * ```ts
   * let map = new PersistentUnorderedMap<string, string>("m")
   *
   * map.set("hello", "world")
   * map.delete("hello")
   * ```
   *
   * Removes value and the key from the map.
   * @param key Key to remove.
   */
  delete(key: K): void {
    // get index and also make sure the item is in the set
    const index = this._map.getSome(key);

    if (index == this._entries.length - 1) {
      // deleting the last entry (or the only element left)
      // we avoid using swap_remove in order to use fewer operations to remove the entry
      let entry = this._entries.popBack(); // remove the last entry
      this._map.delete(entry.key); // remove the key=>index map
      return; // early exit
    }

    // Here we're removing a key in the middle [0..length-2]
    // we'll use swap_remove, which removes the item from the vec
    // by placing the last item in its position (O(1))

    // get the key of the last item in the vec
    const lastKey = this._entries.last.key;
    // remove the entry from the vec by placing the last item in its position (swap_remove)
    this._entries.swap_remove(index);
    // update the new position of the now moved lastKey
    this._map.set(lastKey, index);
    // delete the key from the key=>index map
    this._map.delete(key);
  }

  /**
   * Deletes all entries.
   */
  clear(): void {
    while (this._entries.length > 0) {
      let entry = this._entries.popBack();
      this._map.delete(entry.key);
    }
  }
}
