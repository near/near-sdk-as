import { collections } from "../collections";
import { PersistentMap } from "./persistentMap";
import { storage } from "../storage";
import { logging } from "../logging";

/*

This class is not going to compile currently because i32 is a non-nullable type, 
and the Map assumes that the V type can be null (e.g. the default value is null).
So There needs to be a box type for i32 that can be null.

*/


/**
* A TopN class that can return first N keys of a type K sorted by rating. Rating is stored as i32.
* Default sort order is descending (highest rated keys), but can be changed to ascending (lowest rated keys).
*/
export class PersistentTopN<K> {
  // Internally, this prefix is used for storing padded ratings
  private _orderPrefix: string;
  // Whether the order is descending
  private _descending: bool;
  // Number of unique keys.
  private _length: i32;
  // The key to store length.
  private _lengthKey: string;

  // A map to store rating by key
  private _ratings: PersistentMap<K, i32>;

  /**
  * Creates or restores a persistent top N collection with a given storage prefix.
  * Always use a unique storage prefix for different collections.
  * @param prefix A prefix to use for every key of this collection.
  * @param descending Sorting order of keys for rating. Default is descending (the highest rated keys).
  */
  constructor(prefix: string, descending: bool = true) {
    this._ratings = new PersistentMap<K, i32>(prefix + collections._KEY_RATING_SUFFIX);
    this._orderPrefix = prefix + collections._KEY_ELEMENT_SUFFIX;
    this._descending = descending;
    this._lengthKey = prefix + collections._KEY_LENGTH_SUFFIX;
    this._length = -1;
  }

  /**
  * @returns A suffix for an internal key for a given external key of type K.
  */
  private _keySuffix(key: K): string {
    //@ts-ignore: TODO: add interface to ensure K to have toString method.
    return collections._KEY_ELEMENT_SUFFIX + key.toString();
  }

  /**
  * @returns Converted integer rating into a padded string.
  */
  private _ratingKey(rating: i32): string {
    let r: u32 = <u32>((<i64>rating) + collections._RATING_OFFSET);
    if (this._descending) {
      r = u32.MAX_VALUE - r;
    }
    return r.toString().padStart(10, "0");
  }

  /**
  * Creates an internal key from a given rating and a given external key.
  */
  private _orderKey(rating: i32, key: K): string {
    return this._orderPrefix + this._ratingKey(rating) + this._keySuffix(key);
  }

  /**
  * @returns True if the TopN collection is empty.
  */
  get isEmpty(): bool {
    return this.length == 0;
  }

  /**
  * @returns The number of unique elements in the TopN collection.
  */
 //@ts-ignore
  get length(): i32 {
    if (this._length < 0) {
      this._length = storage.getPrimitive<i32>(this._lengthKey, 0);
    }
    return this._length;
  }

  /**
  * Internally sets the length of the collection.
  */
  //Never used 
  //@ts-ignore: Typescript doesn't like property accessors to have different levels of visability.
  private set length(value: i32) {
    this._length = value;
    storage.set<i32>(this._lengthKey, value);
  }

  /**
  * @param key Key to check.
  * @returns True if the given key is present.
  */
  contains(key: K): bool {
    return this._ratings.contains(key);
  }

  /**
  * Removes rating and the key from the collection.
  * @param key Key to remove.
  */
  delete(key: K): void {
    if (this.contains(key)) {
      let rating = this._ratings.getSome(key);
      this._ratings.delete(key);
      storage.delete(this._orderKey(rating, key));
      this.length -= 1;
    }
  }

  /**
  * @param keys The array of keys to lookup rating.
  * @returns an array of key to rating pairs for the given keys.
  */
  keysToRatings(keys: K[]): collections.MapEntry<K, i32>[] {
    let result = Array.create<collections.MapEntry<K, i32>>(keys.length);
    for (let index = 0; index < keys.length; ++index) {
      let key = keys[index];
      result[index] = new collections.MapEntry<K, i32>(key, this._ratings.getSome(key));
    }
    return result;
  }

  /**
  * @param limit The maximum limit of keys to return.
  * @returns The array of top rated keys.
  */
  getTop(limit: i32): K[] {
    let orderKeys = storage.keys(this._orderPrefix, limit);
    return orderKeys.map<K>((orderKey: string) => storage.getSome<K>(orderKey));
  }

  /**
  * Returns a top list starting from the given key (exclusive). It's useful for pagination.
  * @param limit The maximum limit of keys to return.
  * @param fromKey The key from which return top list (exclisive).
  * @returns The array of top rated keys starting from the given key.
  */
  getTopFromKey(limit: i32, fromKey: K): K[] {
    assert(this.contains(fromKey), 'getTopFromKey: key' + fromKey + ' does not exist');

    let rating = this.getRating(fromKey, 0);
    let orderKeys = storage.keyRange(
      this._orderKey(rating, fromKey),
      this._orderPrefix + String.fromCharCode(255),
      limit);
    return orderKeys.slice(1).map<K>((key: string) => storage.getSome<K>(key));
  }

  /**
  * @param limit The maximum limit of keys to return.
  * @returns The array of top rated keys with their corresponding rating.
  */
  getTopWithRating(limit: i32): collections.MapEntry<K, i32>[] {
    return this.keysToRatings(this.getTop(limit));
  }

  /**
  * Returns a top list with rating starting from the given key (exclusive).
  * It's useful for pagination.
  * @param limit The maximum limit of keys to return.
  * @param fromKey The key from which return top list (exclisive).
  * @returns The array of top rated keys with their rating starting from the given key.
  */
  getTopWithRatingFromKey(limit: i32, fromKey: K): collections.MapEntry<K, i32>[] {
    return this.keysToRatings(this.getTopFromKey(limit, fromKey));
  }

  /**
  * @param key Key of the element.
  * @param defaultRating The default rating to return if the key is not present.
  * @returns Value for the given key or the defaultRating.
  */
  getRating(key: K, defaultRating: i32 = 0): i32 {
    return this._ratings.contains(key) ? this._ratings.getSome(key) : defaultRating;
  }

  /**
  * Sets the new rating for the given key.
  * @param key The key to update.
  * @param rating The new rating of the key.
  */
  setRating(key: K, rating: i32): void {
    if (this.contains(key)) {
      let oldRating = this.getRating(key);
      storage.delete(this._orderKey(oldRating, key));
    } else {
      this.length += 1;
    }
    this._ratings.set(key, rating);
    storage.set<K>(this._orderKey(rating, key), key);
  }

  /**
  * Increments rating of the given key by the given increment (1 by default).
  * @param key The key to update.
  * @param increment The increment value for the rating (1 by default).
  */
  incrementRating(key: K, increment: i32 = 1): void {
    let oldRating = 0;
    if (this.contains(key)) {
      oldRating = this.getRating(key);
      storage.delete(this._orderKey(oldRating, key));
    } else {
      this.length += 1;
    }
    let rating = oldRating + increment;
    this._ratings.set(key, rating);
    storage.set<K>(this._orderKey(rating, key), key);
  }
}
