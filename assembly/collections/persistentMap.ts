import { collections } from "../collections";
import { storage } from "../storage";

/**
* A map class that implements a persistent unordered map.
* NOTE: The Map doesn't store keys, so if you need to retrive them, include keys in the values.
*/
export class PersistentMap<K, V> {
  private _elementPrefix: string;

  /**
  * Creates or restores a persistent map with a given storage prefix.
  * Always use a unique storage prefix for different collections.
  * @param prefix A prefix to use for every key of this map.
  */
  constructor(prefix: string) {
    this._elementPrefix = prefix + collections._KEY_ELEMENT_SUFFIX;
  }

  /**
  * @returns An interal string key for a given key of type K.
  */
  private _key(key: K): string {
    //@ts-ignore: TODO: Add interface that forces all K types to have toString
    return this._elementPrefix + key.toString();
  }

  /**
  * Returns values of the map between the given start key and the end key.
  * @param start Starting from which key to include values. Default is `null`, means from the beginning.
  * @param end Up to which key include values (inclusive). Default is `null`, means to the end.
  * @param limit The maximum number of values to return. Default is `-1`, means no limit.
  * @param startInclusive Whether the start key is inclusive. Default is `true`, means include start key.
  *     It's useful to set it to false for pagination.
  */
  values(start: K, end: K, limit: i32 = -1, startInclusive: bool = true): V[] {
    let startKey =  this._key(start);
    let endKey = this._key(end);
    let keys = storage.keyRange(startKey, endKey, limit);
    let startKeyIndex = keys.length > 0 && !startInclusive && keys[0] == startKey ? 1 : 0;
    return keys.slice(startKeyIndex).map<V>((key: string) => storage.get<V>(key));
  }

  /**
  * @param key Key to check.
  * @returns True if the given key present in the map.
  */
  contains(key: K): bool {
    return storage.contains(this._key(key));
  }

  /**
  * Removes value and the key from the map.
  * @param key Key to remove.
  */
  delete(key: K): void {
    storage.delete(this._key(key));
  }

  /**
  * @param key Key of the element.
  * @param defaultValue The default value if the key is not present.
  * @returns Value for the given key or the default value.
  */
  get(key: K, defaultValue: V | null = null): V | null {
    return storage.get<V>(this._key(key), defaultValue);
  }

  /**
  * @param key Key of the element.
  * @returns Value for the given key or the default value.
  */
  getSome(key: K): V {
    return storage.getSome<V>(this._key(key));
  }

  /**
  * Sets the new value for the given key.
  * @param key Key of the element.
  * @param value The new value of the element.
  */
  set(key: K, value: V): void {
    storage.set<V>(this._key(key), value);
  }
}
