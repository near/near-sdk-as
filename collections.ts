import { near, storage } from "./near";


/**
 * A namespace with classes and functions for persistent collections on the blockchain.
 */
export namespace collections {
    const _KEY_LENGTH_SUFFIX = ":len";
    const _KEY_FRONT_INDEX_SUFFIX = ":front";
    const _KEY_BACK_INDEX_SUFFIX = ":back";
    const _KEY_ELEMENT_SUFFIX = "::";
    const _KEY_RATING_SUFFIX = ":r";
    const _RATING_OFFSET: u64 = 2147483648;
  
    /**
     * A vector class that implements a persistent array.
     */
    export class Vector<T> {
      private _elementPrefix: Uint8Array;
      private _lengthKey: Uint8Array;
      private _registerId: u64;
      private _length: i32;
  
      /**
       * Creates or restores a persistent vector with a given storage prefix.
       * Always use a unique storage prefix for different collections.
       * @param prefix A prefix to use for every key of this vector.
       */
      constructor(prefix: string) {
        this._lengthKey = near.stringToBytes(prefix + _KEY_LENGTH_SUFFIX);
        this._elementPrefix = near.stringToBytes(prefix + _KEY_ELEMENT_SUFFIX);
        this._registerId = 1; //TODO: unhardcode
        this._length = -1;
      }

    //   /**
    //    * @returns An interal key for a given index.
    //    */
    //   @inline
    //   private _key(index: i32): string {
    //     return this._elementPrefix + index.toString();
    //   }
  
    //   /**
    //    * Removes the content of the element from storage without changing length of the vector.
    //    * @param index The index of the element to remove.
    //    */
    //   delete(index: i32): void {
    //     assert(this.containsIndex(index), "Index out of range");
    //     storage.delete(this._key(index));
    //   }
  
    //   /**
    //    * @param index The index to check.
    //    * @returns True if the given index is within the range of the vector indices.
    //    */
    //   containsIndex(index: i32): bool {
    //     return index >= 0 && index < this.length;
    //   }
  
    //   /**
    //    * @returns True if the vector is empty.
    //    */
    //   get isEmpty(): bool {
    //     return this.length == 0;
    //   }
  
      /**
       * @returns The length of the vector.
       */
      get length(): i32 {
        if (this._length < 0) {
            this._length = 0;
            // TODO: unhardcode this._length = storage.get<i32>(this._lengthKey.buffer, this._lengthKey.byteLength, this._registerId);
        }
        return this._length;
      }
  
    //   /**
    //    * Internally sets the length of the vector
    //    */
    //   private set length(value: i32) {
    //     this._length = value;
    //     storage.set<i32>(this._lengthKey, value);
    //   }
  
    //   /**
    //    * Returns the element of the vector for a given index. Asserts the given index is within the
    //    * range of the vector.
    //    * @param index The index of the element to return.
    //    * @returns The element at the given index.
    //    */
    //   @operator("[]")
    //   private __get(index: i32): T {
    //     assert(this.containsIndex(index), "Index out of range");
    //     return this.__unchecked_get(index);
    //   }
  
    //   /**
    //    * Returns the element of the vector for a given index without checks.
    //    * @param index The index of the element to return.
    //    * @returns The element at the given index.
    //    */
    //   @operator("{}")
    //   private __unchecked_get(index: i32): T {
    //     return storage.get<T>(this._key(index));
    //   }
  
    //   /**
    //    * Sets the value of an element at the given index. Asserts the given index is within the
    //    * range of the vector.
    //    * @param index The index of the element.
    //    * @param value The new value.
    //    */
    //   @operator("[]=")
    //   private __set(index: i32, value: T): void {
    //     assert(this.containsIndex(index), "Index out of range");
    //     this.__unchecked_set(index, value);
    //   }
  
    //   /**
    //    * Sets the value of an element at the given index without checks.
    //    * @param index The index of the element.
    //    * @param value The new value.
    //    */
    //   @operator("{}=")
    //   private __unchecked_set(index: i32, value: T): void {
    //     storage.set<T>(this._key(index), value);
    //   }
  
    //   /**
    //    * Adds a new element to the end of the vector. Increases the length of the vector.
    //    * @param element A new element to add.
    //    * @returns The index of a newly added element
    //    */
    //   push(element: T): i32 {
    //     let index = this.length;
    //     this.length = index + 1;
    //     this.__unchecked_set(index, element);
    //     return index;
    //   }
  
    //   /**
    //    * Adds a new element to the end of the vector. Increases the length of the vector.
    //    * @param element A new element to add.
    //    * @returns The index of a newly added element
    //    */
    //   @inline
    //   pushBack(element: T): i32 {
    //     return this.push(element);
    //   }
  
    //   /**
    //    * Removes the last element from the vector and returns it. Asserts that the vector is not empty.
    //    * Decreases the length of the vector.
    //    * @returns The removed last element of the vector.
    //    */
    //   pop(): T {
    //     assert(this.length > 0, "Vector is empty");
    //     let index = this.length - 1;
    //     this.length = index;
    //     let result = this.__unchecked_get(index);
    //     storage.delete(this._key(index));
    //     return result;
    //   }
  
    //   /**
    //    * Removes the last element from the vector and returns it. Asserts that the vector is not empty.
    //    * Decreases the length of the vector.
    //    * @returns The removed last element of the vector.
    //    */
    //   @inline
    //   popBack(): T {
    //     return this.pop();
    //   }
  
    //   /**
    //    * @returns The last element of the vector. Asserts that the vector is not empty.
    //    */
    //   get back(): T {
    //     return this.__get(this.length - 1);
    //   }
  
    //   /**
    //    * @returns The last element of the vector. Asserts that the vector is not empty.
    //    */
    //   @inline
    //   get last(): T {
    //     return this.back;
    //   }
  
    //   /**
    //    * @returns The first element of the vector. Asserts that the vector is not empty.
    //    */
    //   get front(): T {
    //     return this.__get(0);
    //   }
  
    //   /**
    //    * @returns The first element of the vector. Asserts that the vector is not empty.
    //    */
    //   @inline
    //   get first(): T {
    //     return this.front;
    //   }
    }
  
  
    // /**
    //  * A deque class that implements a persistent bidirectional queue.
    //  */
    // export class Deque<T> {
    //   private _elementPrefix: string;
    //   private _frontIndexKey: string;
    //   private _backIndexKey: string;
    //   private _frontIndex: i32;
    //   private _backIndex: i32;
  
    //   /**
    //    * Creates or restores a persistent deque with a given storage prefix.
    //    * Always use a unique storage prefix for different collections.
    //    * @param prefix A prefix to use for every key of this deque.
    //    */
    //   constructor(prefix: string) {
    //     this._elementPrefix = prefix + _KEY_ELEMENT_SUFFIX;
    //     this._frontIndexKey = prefix + _KEY_FRONT_INDEX_SUFFIX;
    //     this._backIndexKey = prefix + _KEY_BACK_INDEX_SUFFIX;
    //     this._frontIndex = i32.MIN_VALUE;
    //     this._backIndex = i32.MAX_VALUE;
    //   }
  
    //   /**
    //    * @returns An interal key for a given index.
    //    */
    //   @inline
    //   private _key(index: i32): string {
    //     return this._elementPrefix + index.toString();
    //   }
  
    //   /**
    //    * @returns The index of the first/front element of the deque (inclusive).
    //    */
    //   private get frontIndex(): i32 {
    //     if (this._frontIndex == i32.MIN_VALUE) {
    //       this._frontIndex = storage.get<i32>(this._frontIndexKey, 0);
    //     }
    //     return this._frontIndex;
    //   }
  
    //   /**
    //    * Internal. Sets the index of the first/front element.
    //    */
    //   private set frontIndex(value: i32) {
    //     this._frontIndex = value;
    //     storage.set<i32>(this._frontIndexKey, value);
    //   }
  
    //   /**
    //    * @returns The index of the last/back element of the deque (inclusive).
    //    */
    //   private get backIndex(): i32 {
    //     if (this._backIndex == i32.MAX_VALUE) {
    //       this._backIndex = storage.get<i32>(this._backIndexKey, -1);
    //     }
    //     return this._backIndex;
    //   }
  
    //   /**
    //    * Internal. Sets the index of the last/back element.
    //    */
    //   private set backIndex(value: i32) {
    //     this._backIndex = value;
    //     storage.set<i32>(this._backIndexKey, value);
    //   }
  
    //   /**
    //    * @param index The index to check.
    //    * @returns True if the given index is within the range of the deque indices.
    //    */
    //   containsIndex(index: i32): bool {
    //     return index >= 0 && index < this.length;
    //   }
  
    //   /**
    //    * Removes the content of the element from storage without changing length of the deque.
    //    * @param index The index of the element to remove.
    //    */
    //   delete(index: i32): void {
    //     assert(this.containsIndex(index), "Index out of range");
    //     storage.delete(this._key(index + this.frontIndex));
    //   }
  
    //   /**
    //    * @returns The length of the deque.
    //    */
    //   get length(): i32 {
    //     return this.backIndex - this.frontIndex + 1;
    //   }
  
    //   /**
    //    * @returns True if the deque is empty.
    //    */
    //   get isEmpty(): bool {
    //     return this.length == 0;
    //   }
  
    //   /**
    //    * Returns the element of the deque for a given index. Asserts the given index is within the
    //    * range of the vector.
    //    * @param index The index of the element to return.
    //    * @returns The element at the given index.
    //    */
    //   @operator("[]")
    //   private __get(index: i32): T {
    //     assert(this.containsIndex(index), "Index out of range");
    //     return this.__unchecked_get(index);
    //   }
  
    //   /**
    //    * Returns the element of the deque for a given index without checks.
    //    * @param index The index of the element to return.
    //    * @returns The element at the given index.
    //    */
    //   @operator("{}")
    //   private __unchecked_get(index: i32): T {
    //     return storage.get<T>(this._key(index + this.frontIndex));
    //   }
  
    //   /**
    //    * Sets the new value of an element at the given index. Asserts the given index is within the
    //    * range of the deque.
    //    * @param index The index of the element.
    //    * @param value The new value.
    //    */
    //   @operator("[]=")
    //   private __set(index: i32, value: T): void {
    //     assert(this.containsIndex(index), "Index out of range");
    //     this.__unchecked_set(index, value);
    //   }
  
    //   /**
    //    * Sets the new value of an element at the given index without checks.
    //    * @param index The index of the element.
    //    * @param value The new value.
    //    */
    //   @operator("{}=")
    //   private __unchecked_set(index: i32, value: T): void {
    //     storage.set<T>(this._key(index + this.frontIndex), value);
    //   }
  
    //   /**
    //    * Adds a new element in front of the deque. Increases the length of the deque.
    //    * @param element A new element to add.
    //    * @returns The index of a newly added element
    //    */
    //   pushFront(element: T): i32 {
    //     this.frontIndex -= 1;
    //     this.__unchecked_set(0, element);
    //     return 0;
    //   }
  
    //   /**
    //    * Removes the first/front element from the deque and returns it.
    //    * Asserts that the deque is not empty. Decreases the length of the deque.
    //    * @returns The removed first element of the queue.
    //    */
    //   popFront(): T {
    //     assert(this.length > 0, "Deque is empty");
    //     let result = this.__unchecked_get(0);
    //     storage.delete(this._key(this.frontIndex));
    //     this.frontIndex += 1;
    //     return result;
    //   }
  
    //   /**
    //    * @returns The first/front element of the deque.
    //    */
    //   get front(): T {
    //     return this.__get(0);
    //   }
  
    //   /**
    //    * @returns The first/front element of the deque.
    //    */
    //   @inline
    //   get first(): T {
    //     return this.front;
    //   }
  
    //   /**
    //    * Adds a new element to the end of the deque. Increases the length of the deque.
    //    * @param element A new element to add.
    //    * @returns The index of a newly added element
    //    */
    //   pushBack(element: T): i32 {
    //     let index = this.length;
    //     this.backIndex += 1;
    //     this.__unchecked_set(index, element);
    //     return index;
    //   }
  
    //   /**
    //    * Removes the last/back element from the deque and returns it.
    //    * Asserts that the deque is not empty. Decreases the length of the deque.
    //    * @returns The removed first element of the queue.
    //    */
    //   popBack(): T {
    //     let index = this.length - 1;
    //     assert(index >= 0, "Deque is empty");
    //     let result = this.__unchecked_get(index);
    //     storage.delete(this._key(this.backIndex));
    //     this.backIndex -= 1;
    //     return result;
    //   }
  
    //   /**
    //    * @returns The last/back element of the deque.
    //    */
    //   get back(): T {
    //     return this.__get(this.length - 1);
    //   }
  
    //   /**
    //    * @returns The last/back element of the deque.
    //    */
    //   @inline
    //   get last(): T {
    //     return this.back;
    //   }
    // }
  
  
    // /**
    //  * A TopN class that can return first N keys of a type K sorted by rating. Rating is stored as i32.
    //  * Default sort order is descending (highest rated keys), but can be changed to ascending (lowest rated keys).
    //  */
    // export class TopN<K> {
    //   // Internally, this prefix is used for storing padded ratings
    //   private _orderPrefix: string;
    //   // Whether the order is descending
    //   private _descending: bool;
    //   // Number of unique keys.
    //   private _length: i32;
    //   // The key to store length.
    //   private _lengthKey: string;
  
    //   // A map to store rating by key
    //   private _ratings: Map<K, i32>;
  
    //   /**
    //    * Creates or restores a persistent top N collection with a given storage prefix.
    //    * Always use a unique storage prefix for different collections.
    //    * @param prefix A prefix to use for every key of this collection.
    //    * @param descending Sorting order of keys for rating. Default is descending (the highest rated keys).
    //    */
    //   constructor(prefix: string, descending: bool = true) {
    //     this._ratings = new Map<K, i32>(prefix + _KEY_RATING_SUFFIX);
    //     this._orderPrefix = prefix + _KEY_ELEMENT_SUFFIX;
    //     this._descending = descending;
    //     this._lengthKey = prefix + _KEY_LENGTH_SUFFIX;
    //     this._length = -1;
    //   }
  
    //   /**
    //    * @returns A suffix for an internal key for a given external key of type K.
    //    */
    //   private _keySuffix(key: K): string {
    //     return _KEY_ELEMENT_SUFFIX + key.toString();
    //   }
  
    //   /**
    //    * @returns Converted integer rating into a padded string.
    //    */
    //   private _ratingKey(rating: i32): string {
    //     let r: u32 = <u32>((<i64>rating) + _RATING_OFFSET);
    //     if (this._descending) {
    //       r = u32.MAX_VALUE - r;
    //     }
    //     return r.toString().padStart(10, "0");
    //   }
  
    //   /**
    //    * Creates an internal key from a given rating and a given external key.
    //    */
    //   private _orderKey(rating: i32, key: K): string {
    //     return this._orderPrefix + this._ratingKey(rating) + this._keySuffix(key);
    //   }
  
    //   /**
    //    * @returns True if the TopN collection is empty.
    //    */
    //   get isEmpty(): bool {
    //     return this.length == 0;
    //   }
  
    //   /**
    //    * @returns The number of unique elements in the TopN collection.
    //    */
    //   get length(): i32 {
    //     if (this._length < 0) {
    //       this._length = storage.get<i32>(this._lengthKey, 0);
    //     }
    //     return this._length;
    //   }
  
    //   /**
    //    * Internally sets the length of the collection.
    //    */
    //   private set length(value: i32) {
    //     this._length = value;
    //     storage.set<i32>(this._lengthKey, value);
    //   }
  
  
    //   /**
    //    * @param key Key to check.
    //    * @returns True if the given key is present.
    //    */
    //   contains(key: K): bool {
    //     return this._ratings.contains(key);
    //   }
  
    //   /**
    //    * Removes rating and the key from the collection.
    //    * @param key Key to remove.
    //    */
    //   delete(key: K): void {
    //     if (this.contains(key)) {
    //       let rating = this._ratings.get(key);
    //       this._ratings.delete(key);
    //       storage.delete(this._orderKey(rating, key));
    //       this.length -= 1;
    //     }
    //   }
  
    //   /**
    //    * @param keys The array of keys to lookup rating.
    //    * @returns an array of key to rating pairs for the given keys.
    //    */
    //   keysToRatings(keys: K[]): near.MapEntry<K, i32>[] {
    //     let result = Array.create<near.MapEntry<K, i32>>(keys.length);
    //     for (let index = 0; index < keys.length; ++index) {
    //       let key = keys[index];
    //       result[index] = new near.MapEntry<K, i32>(key, this._ratings.get(key));
    //     }
    //     return result;
    //   }
  
    //   /**
    //    * @param limit The maximum limit of keys to return.
    //    * @returns The array of top rated keys.
    //    */
    //   getTop(limit: i32): K[] {
    //     let orderKeys = storage.keys(this._orderPrefix, limit);
    //     return orderKeys.map<K>((orderKey: string) => storage.get<K>(orderKey));
    //   }
  
    //   /**
    //    * Returns a top list starting from the given key (exclusive). It's useful for pagination.
    //    * @param limit The maximum limit of keys to return.
    //    * @param fromKey The key from which return top list (exclisive).
    //    * @returns The array of top rated keys starting from the given key.
    //    */
    //   getTopFromKey(limit: i32, fromKey: K): K[] {
    //     let rating = this.getRating(fromKey, 0);
    //     let orderKeys = storage.keyRange(
    //       this._orderKey(rating, fromKey) + String.fromCharCode(0),
    //       this._orderPrefix + String.fromCharCode(255),
    //       limit);
    //     return orderKeys.map<K>((orderKey: string) => storage.get<K>(orderKey));
    //   }
  
    //   /**
    //    * @param limit The maximum limit of keys to return.
    //    * @returns The array of top rated keys with their corresponding rating.
    //    */
    //   getTopWithRating(limit: i32): near.MapEntry<K, i32>[] {
    //     return this.keysToRatings(this.getTop(limit));
    //   }
  
    //   /**
    //    * Returns a top list with rating starting from the given key (exclusive).
    //    * It's useful for pagination.
    //    * @param limit The maximum limit of keys to return.
    //    * @param fromKey The key from which return top list (exclisive).
    //    * @returns The array of top rated keys with their rating starting from the given key.
    //    */
    //   getTopWithRatingFromKey(limit: i32, fromKey: K): near.MapEntry<K, i32>[] {
    //     return this.keysToRatings(this.getTopFromKey(limit, fromKey));
    //   }
  
    //   /**
    //    * @param key Key of the element.
    //    * @param defaultRating The default rating to return if the key is not present.
    //    * @returns Value for the given key or the defaultRating.
    //    */
    //   getRating(key: K, defaultRating: i32 = 0): i32 {
    //     return this._ratings.get(key, defaultRating);
    //   }
  
    //   /**
    //    * Sets the new rating for the given key.
    //    * @param key The key to update.
    //    * @param rating The new rating of the key.
    //    */
    //   setRating(key: K, rating: i32): void {
    //     if (this.contains(key)) {
    //       let oldRating = this.getRating(key);
    //       storage.delete(this._orderKey(oldRating, key));
    //     } else {
    //       this.length += 1;
    //     }
    //     this._ratings.set(key, rating);
    //     storage.set<K>(this._orderKey(rating, key), key);
    //   }
  
    //   /**
    //    * Increments rating of the given key by the given increment (1 by default).
    //    * @param key The key to update.
    //    * @param increment The increment value for the rating (1 by default).
    //    */
    //   incrementRating(key: K, increment: i32 = 1): void {
    //     let oldRating = 0;
    //     if (this.contains(key)) {
    //       oldRating = this.getRating(key);
    //       storage.delete(this._orderKey(oldRating, key));
    //     } else {
    //       this.length += 1;
    //     }
    //     let rating = oldRating + increment;
    //     this._ratings.set(key, rating);
    //     storage.set<K>(this._orderKey(rating, key), key);
    //   }
    // }
  
    // /**
    //  * Creates or restores a persistent vector with a given storage prefix.
    //  * Always use a unique storage prefix for different collections.
    //  * @param prefix A prefix to use for every key of this vector.
    //  */
    // export function vector<T>(prefix: string): Vector<T> {
    //   return new Vector<T>(prefix);
    // }
  
    // /**
    //  * Creates or restores a persistent deque with a given storage prefix.
    //  * Always use a unique storage prefix for different collections.
    //  * @param prefix A prefix to use for every key of this deque.
    //  */
    // export function deque<T>(prefix: string): Deque<T> {
    //   return new Deque<T>(prefix);
    // }
  
    // /**
    //  * Creates or restores a persistent map with a given storage prefix.
    //  * Always use a unique storage prefix for different collections.
    //  * @param prefix A prefix to use for every key of this map.
    //  */
    // export function map<K, V>(prefix: string): Map<K, V> {
    //   return new Map<K, V>(prefix);
    // }
  
    // /**
    //  * Creates or restores a persistent TopN with a given storage prefix.
    //  * Always use a unique storage prefix for different collections.
    //  * @param prefix A prefix to use for every key of this collection.
    //  * @param descending Sorting order of keys for rating. Default is descending (the highest rated keys).
    //  */
    // export function topN<K>(prefix: string, descending: bool = true): TopN<K> {
    //   return new TopN<K>(prefix, descending);
    // }
}