import { PersistentMap } from "./persistentMap";
import { PersistentVector } from "./persistentVector";
import { math } from "../math";

/**
 * A vector class that implements a persistent array.
 *
 * map each element to its index in another vector
 *
 * ```ts
 * {
 *   hash_of_value1: index_of_value1,
 *   hash_of_value2: index_of_value2,
 *   hash_of_value3: index_of_value3,
 * }
 *
 * [
 *  value1,
 *  value2,
 *  value3
 * ]
 * ```
 *
 */
@nearBindgen
export class PersistentSet<T> {
  private _map: PersistentMap<Uint8Array, i32>;
  private _vector: PersistentVector<T>;

  /**
   * Creates or restores a persistent set with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   * @param prefix A prefix to use for every key of this set.
   */
  constructor(prefix: string) {
    this._map = new PersistentMap<Uint8Array, i32>("_map" + prefix);
    this._vector = new PersistentVector<T>("_vector" + prefix);
  }

  /**
   * @returns
   */
  get size(): i32 {
    return this._vector.length;
  }

  /**
   * @param item
   */
  add(item: T): void {
    if (this.has(item)) {
      return;
    }

    this._map.set(this._hashedItem(item), this._vector.length);
    this._vector.push(item);
  }

  /**
   * Deletes all items.
   */
  clear(): void {
    while (this._vector.length > 0) {
      let item = this._vector.popBack();
      this._map.delete(this._hashedItem(item));
    }
  }

  /**
   * Remove the given item from the set
   * @param item The item to remove
   */
  delete(item: T): void {
    // make sure the item is in the set
    const key = this._hashedItem(item);
    assert(this._map.contains(key), "The item was not found in the set");

    // swap_remove requires at least 2 elements to work so a single element
    // is the same as clearing
    if (this._vector.length == 1) {
      this.clear();
      return;
    }

    // remove the item from the set
    const swapItem = this._vector.last;
    const index = this._map.getSome(key);
    this._vector.swap_remove(index);

    // update our accounting of items in the set
    const swapKey = this._hashedItem(swapItem);
    this._map.set(swapKey, index);
  }

  /**
   * Helper function to hash items in the Set as Uint8Arrays
   *
   * @param item The item to hash
   * @internal
   */
  private _hashedItem(item: T): Uint8Array {
    let encodedItem = encode<T, Uint8Array>(item); // prep for hash
    let hashedItem = math.keccak256(encodedItem); // produce the key
    return hashedItem;
  }

  /**
   * Returns whether the set contains the item
   *
   * @returns Boolean indicating whether the set contains the item
   */
  has(item: T): bool {
    return this._map.contains(this._hashedItem(item));
  }

  /**
   *
   * @returns
   */
  values(): T[] {
    let values: T[] = new Array<T>();

    for (let i = 0; i < this._vector.length; i++) {
      const item = this._vector[i];
      values.push(item);
    }

    return values;
  }
}
