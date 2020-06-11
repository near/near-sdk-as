import { collections } from "../collections";
// import { storage } from "../storage";

@nearBindgen
export class AVLTree<K, V> {
    private _elementPrefix: string;

    /**
     * A string name is used as a prefix for writing keys to storage.
     */
    constructor(name: string) {
        this._elementPrefix = name + collections._KEY_ELEMENT_SUFFIX;
    }
  
    /**
     * @returns Number of elements in the tree.
     */
    get size(): u32 {
        // TODO implement size()
        throw new Error("TODO implement size()")
    }

    /**
     * @returns Root key of the tree.
     */
    get root(): K {
        // TODO make private
        // TODO implement root()
        throw new Error("TODO implement root()")
    }
  
    /**
     * @returns Whether the key is present in the tree.
     */
    has(key: K): boolean {
        // TODO implement has()
        throw new Error("TODO implement has()")
    }
    //alias to match rust sdk
    containsKey(key: K): boolean {
        return this.has(key);
    }
  
    /**
     * If key is not present in the tree, a new node is added with the value.
     * Otherwise update the node with the new value.
     * 
     * @param key Key of the element.
     * @param value The new value of the element. 
     */
    set(key: K, value: V): void {
        // TODO implement set()
        throw new Error("TODO implement set()")
    }
    //alias to match rust sdk
    insert(key: K, value: V): void {
        this.set(key, value);
    }
  
    /**
     * Retrieves a related value for a given key or throws error "key not found"
     * 
     * @param key Key of the element.
     * @returns Value for the given key or the default value.
     */
    get(key: K): V {
        // TODO implement get()
        throw new Error("TODO implement get()")
    }
  
    /**
     * Retrieves the related value for a given key, or uses the `defaultValue` if not key is found
     * 
     * @param key Key of the element.
     * @param defaultValue The default value if the key is not present.
     * @returns Value for the given key or the default value.
     */
    getSome(key: K, defaultValue: V): V {
        try {
            return this.get(key);
        } catch(err) { // TODO check that this is key not found error
            return defaultValue;
        }
    }
  
    /**
     * Delete element with key if present, otherwise do nothing.
     * 
     * @param key Key to remove.
     */
    delete(key: K): void {
        // TODO implement delete()
        throw new Error("TODO implement delete()")
    }
    //alias to match rust sdk
    remove(key: K): void {
        this.delete(key);
    }
  
  
    /**
     * Get a range of values from a start key to an end key exclusive.
     * If end is greater than max key, include start to max inclusive.
     * 
     * @param start Key for lower bound (inclusive).
     * @param end Key for upper bound (exclusive).
     * @returns Range of values corresponding to keys within start and end bounds.
     */
    values(start: K, end: K): V[] {
        // TODO implement range()
        throw new Error("TODO implement values()");
    }

    /**
     * Get a range of keys from a start key to an end key exclusive.
     * If end is greater than max key, include start to max inclusive.
     * 
     * @param start Key for lower bound (inclusive).
     * @param end Key for upper bound (exclusive).
     * @returns Range of keys within start and end bounds.
     */
    keys(start: K, end: K): K[] {
        // TODO implement range()
        throw new Error("TODO implement range()");
    }

    /**
     * Get a range of entries from a start key to an end key exclusive.
     * If end is greater than max key, include start to max inclusive.
     * 
     * @param start Key for lower bound (inclusive).
     * @param end Key for upper bound (exclusive).
     * @returns Range of entries corresponding to keys within start and end bounds.
     */
    entries(start: K, end: K): collections.MapEntry<K, V>[] {
        // TODO implement range()
        throw new Error("TODO implement range()");
    }
  
    /**
     * Returns minimum key.
     * Throws if tree is empty.
     * @returns Minimum key.
     */
    min(): K {
        // TODO implement min()
        throw new Error("TODO implement min()");
    }
  
    /**
     * Returns maximum key.
     * Throws if tree is empty.
     * @returns Maximum key.
     */
    max(): K {
        // TODO implement max()
        throw new Error("TODO implement max()");
    }
  
    /**
     * Returns the maximum key that is strictly less than the key.
     * Throws if empty or if key is lower than or equal to `this.min()`.
     * @param key Key for lower bound (exclusive).
     * @returns Maximum key that is strictly less than given key.
     */
    lower(key: K): K {
        // TODO implement lower()
        throw new Error("TODO implement lower()");
    }
  
    /**
     * Returns the minimum key that is strictly greater than the key.
     * Throws if empty or if key is higher than or equal to `this.max()`.
     * @param key Key for upper bound (exclusive).
     * @returns Minimum key that is strictly greater than given key.
     */
    higher(key: K): K {
        // TODO implement higher()
        throw new Error("TODO implement higher()");
    }
  
    /**
     * Returns the maximum key that is less or equal than the key.
     * Throws if empty or if key is lower than `this.min()`.
     * @param key Key for lower bound (inclusive).
     * @returns Maximum key that is less than or equal to given key.
     */
    lowerOrEqual(key: K): K {
        // TODO implement lowerOrEqual()
        throw new Error("TODO implement lowerOrEqual()");
    }
    //alias to match rust sdk
    floorKey(key: K): K {
        return this.lowerOrEqual(key);
    }
  
    /**
     * Returns the minimum key that is greater or equal than the key.
     * Throws if empty or if key is higher than `this.max()`.
     * @param key Key for upper bound (inclusive).
     * @returns Minimum key that is greater or equal to given key.
     */
    higherOrEqual(key: K): K {
        // TODO implement higherOrEqual()
        throw new Error("TODO implement lowerOrEqual()");
    }
    //alias to match rust sdk
    ceilKey(key: K): K {
        return this.higherOrEqual(key);
    }

    /**
     * Removes all key-value pairs from the tree
     */
    clear(): void {
        // TODO implement clear()
        throw new Error("TODO implement clear()")
    }
}