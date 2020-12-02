import { collections } from ".";
import { storage } from "../storage";

/**
 * This class is one of several convenience collections built on top of the `Storage` class
 * exposed by the NEAR platform.  It implements a vector -- a persistent array.
 *
 * To create a vector
 *
 * ```ts
 * let vec = new PersistentVector<string>("v")  // choose a unique prefix per account
 * ```
 *
 * To use the vector
 *
 * ```ts
 * vec.push(value)
 * vec.pop(value)
 * vec.length
 * ```
 *
 * IMPORTANT NOTE:
 * Since all data stored on the blockchain is kept in a single key-value store under the contract account,
 * you must always use a *unique storage prefix* for different collections to avoid data collision.
 *
 * @typeParam T The generic type parameter `T` can be any [valid AssemblyScript type](https://docs.assemblyscript.org/basics/types).
 */
@nearBindgen
export class PersistentVector<T> {
  private _elementPrefix: string;
  private _lengthKey: string;
  private _length: i32;

  /** @ignore */
  [key: number]: T;

  /**
   * Creates or restores a persistent vector with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   *
   * ```ts
   * let vec = new PersistentVector<string>("v") // note the prefix must be unique (per NEAR account)
   * ```
   *
   * @param prefix A prefix to use for every key of this vector.
   */
  constructor(prefix: string) {
    this._lengthKey = prefix + collections._KEY_LENGTH_SUFFIX;
    this._elementPrefix = prefix + collections._KEY_ELEMENT_SUFFIX;
    this._length = -1;
  }

  /**
   * @param index The index of the element to return
   * @returns An internal key for a given index.
   * @internal
   */
  @inline
  private _key(index: i32): string {
    return this._elementPrefix + index.toString();
  }

  /**
   * Checks whether the index is within the range of the vector indices
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * vec.containsIndex(0) // false
   * vec.push("hello world")
   * vec.containsIndex(0) // true
   * ```
   *
   * @param index The index to check.
   * @returns True if the given index is within the range of the vector indices.
   */
  containsIndex(index: i32): bool {
    return index >= 0 && index < this.length;
  }

  /**
   * Checks if the vector is empty
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * assert(vec.isEmpty)
   * vec.push("hello world")
   * assert(!vec.isEmpty)
   * ```
   *
   * @returns True if the vector is empty.
   */
  get isEmpty(): bool {
    return this.length == 0;
  }

  /**
   * Returns the length of the vector
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * assert(vec.length == 0)
   * vec.push("hello world")
   * assert(vec.length == 1)
   * ```
   *
   * @returns The length of the vector.
   */
  // @ts-ignore TS doesn't like property accessors with different levels of visibility
  get length(): i32 {
    if (this._length < 0) {
      this._length = storage.getPrimitive<i32>(this._lengthKey, 0);
    }
    return this._length;
  }

  /**
   * Internally sets the length of the vector
   * @internal
   */
  // @ts-ignore TS doesn't like property accessors with different levels of visibility
  private set length(value: i32) {
    this._length = value;
    storage.set<i32>(this._lengthKey, value);
  }

  /**
   * Returns the element of the vector for a given index. Asserts the given index is within the
   * range of the vector.
   *
   * ```ts
   * let vec = PersistentVector<string>("v")
   *
   * vec.push("hello world")
   * vec[0] // "hello world"
   *
   * vec[1] // will throw with failed assertion: "Index out of range"
   * ```
   *
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
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * vec.push("hello world")
   * vec{0} // "hello world"
   *
   * vec{1} // will throw with failed assertion from getSome()
   * ```
   *
   * @param index The index of the element to return.
   * @returns The element at the given index.
   */
  @operator("{}")
  private __unchecked_get(index: i32): T {
    return storage.getSome<T>(this._key(index));
  }

  /**
   * Sets the value of an element at the given index. Asserts the given index is within the
   * range of the vector.
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * vec.push("hello world")
   * vec[0] = "hello again"
   *
   * assert(vec[0] == "hello again")
   * ```
   *
   * @param index The index of the element.
   * @param value The new value.
   */
  @operator("[]=")
  private __set(index: i32, value: T): void {
    assert(this.containsIndex(index), "Index out of range");
    this.__unchecked_set(index, value);
  }

  /**
   * Sets the value of an element at the given index without checks.
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * vec{0} = "hello world"
   *
   * assert(vec[0] == "hello world")
   * ```
   *
   * @param index The index of the element.
   * @param value The new value.
   */
  @operator("{}=")
  private __unchecked_set(index: i32, value: T): void {
    storage.set<T>(this._key(index), value);
  }

  /**
   * Adds a new element to the end of the vector. Increases the length of the vector.
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * vec.length // 0
   * vec.push("hello world")
   * vec.length // 1
   * ```
   *
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
   *
   * ```
   * // see alias method: push()
   * ```
   *
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
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * let text = "hello world"
   *
   * vec.push(text)
   * vec.length // 1
   *
   * let element = vec.pop()
   * vec.length // 0
   *
   * assert(element == text, "PersistentVector returned surprising results, time for a break ;)")
   * ```
   *
   * @returns The removed last element of the vector.
   */
  pop(): T {
    assert(this.length > 0, "Vector is empty");
    let index = this.length - 1;
    this.length = index;
    let result = this.__unchecked_get(index);
    storage.delete(this._key(index));
    return result;
  }

  /**
   * Removes the last element from the vector and returns it. Asserts that the vector is not empty.
   * Decreases the length of the vector.
   *
   * ```
   * // see alias method: pop()
   * ```
   *
   * @returns The removed last element of the vector.
   */
  @inline
  popBack(): T {
    return this.pop();
  }

  /**
   * Removes an element from the vector and returns it. The removed element is replaced by the last element of the
   * vector. Does not preserve ordering, but is O(1). Panics if index is out of bounds.
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * // the phrase "the quick brown fox" is well known in English
   *
   * vec.push("the")
   * vec.push("quick")
   * vec.push("red")
   * vec.push("fox")
   * vec.push("brown")
   *
   * let element = vec.swap_remove(2)
   *
   * assert(element == "red", "PersistentVector returned surprising results, time for a break ;)")
   * assert(vec[2] == "brown", "PersistentVector returned surprising results, time for a break ;)")
   * ```
   *
   * @param index
   * @return The element that was removed
   */
  swap_remove(index: i32): T {
    assert(index < this.length, "Index out of bounds");
    if (index + 1 == this.length) {
      return this.pop();
    } else {
      // Swap last element with this one.
      let curr_value = this.__unchecked_get(index);
      let last_value = this.__unchecked_get(this.length - 1);
      storage.delete(this._key(this.length - 1));
      this.__unchecked_set(index, last_value);
      this.length -= 1;
      return curr_value;
    }
  }

  /**
   * Inserts the element at index, returns evicted element. Panics if index is out of bounds.
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * // the phrase "the quick brown fox" is well known in English
   *
   * vec.push("the")
   * vec.push("quick")
   * vec.push("red")
   * vec.push("fox")
   *
   * let element = vec.replace(2, "brown")
   *
   * assert(element == "red", "PersistentVector returned surprising results, time for a break ;)")
   * assert(vec[2] == "brown", "PersistentVector returned surprising results, time for a break ;)")
   * ```
   *
   * @param index The index of the element to replace
   * @param new_element The new value of the element to replace
   * @returns The element that was replaced
   */
  replace(index: i32, new_element: T): T {
    assert(index < this.length, "Index out of bounds");
    let evicted = this.__unchecked_get(index);
    storage.set(this._key(index), new_element);
    return evicted;
  }

  /**
   * Returns the last element of the vector
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * // the phrase "the quick brown fox" is well known in English
   *
   * vec.push("the")
   * vec.push("quick")
   * vec.push("brown")
   * vec.push("fox")
   *
   * assert(vec.back == "fox", "PersistentVector returned surprising results, time for a break ;)")
   * ```
   *
   * @returns The last element of the vector. Asserts that the vector is not empty.
   */
  get back(): T {
    return this.__get(this.length - 1);
  }

  /**
   * Returns the last element of the vector
   *
   * ```
   * // see alias method: back
   * ```
   *
   * @returns The last element of the vector. Asserts that the vector is not empty.
   */
  @inline
  get last(): T {
    return this.back;
  }

  /**
   * Returns the first element of the vector
   *
   * ```ts
   * let vec = new PersistentVector<string>("v")
   *
   * // the phrase "the quick brown fox" is well known in English
   *
   * vec.push("the")
   * vec.push("quick")
   * vec.push("brown")
   * vec.push("fox")
   *
   * assert(vec.front == "the", "PersistentVector returned surprising results, time for a break ;)")
   * ```
   *
   * @returns The first element of the vector. Asserts that the vector is not empty.
   */
  get front(): T {
    return this.__get(0);
  }

  /**
   * Returns the first element of the vector
   *
   * ```
   * // see alias method: front
   * ```
   *
   * @returns The first element of the vector. Asserts that the vector is not empty.
   */
  @inline
  get first(): T {
    return this.front;
  }
}
