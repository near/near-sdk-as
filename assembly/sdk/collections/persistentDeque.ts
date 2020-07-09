import { collections } from ".";
import { storage } from "../storage";

/**
 * This class is one of several convenience collections built on top of the `Storage` class
 * exposed by the NEAR platform.  It implements queue -- a persistent bidirectional queue
 * (aka double-ended queue or deque)
 *
 * To create a deque
 *
 * ```ts
 * let dq = new PersistentDeque<string>("q")  // choose a unique prefix per account
 * ```
 *
 * To use the deque
 *
 * ```ts
 * dq.pushFront(value)
 * dq.popBack()
 * ```
 *
 * IMPORTANT NOTE:
 * Since all data stored on the blockchain is kept in a single key-value store under the contract account,
 * you must always use a *unique storage prefix* for different collections to avoid data collision.
 *
 * @typeParam T The generic type parameter `T` can be any [valid AssemblyScript type](https://docs.assemblyscript.org/basics/types).
 */
@nearBindgen
export class PersistentDeque<T> {
  private _elementPrefix: string;
  private _frontIndexKey: string;
  private _backIndexKey: string;
  private _frontIndex: i32;
  private _backIndex: i32;

  /** @ignore */
  [key: number]: T;

  /**
   * Creates or restores a persistent deque with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   *
   * Example
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q") // note the prefix must be unique (per NEAR account)
   * ```
   *
   * @param prefix A prefix to use for every key of this deque.
   */
  constructor(prefix: string) {
    this._elementPrefix = prefix + collections._KEY_ELEMENT_SUFFIX;
    this._frontIndexKey = prefix + collections._KEY_FRONT_INDEX_SUFFIX;
    this._backIndexKey = prefix + collections._KEY_BACK_INDEX_SUFFIX;
    this._frontIndex = i32.MIN_VALUE;
    this._backIndex = i32.MAX_VALUE;
  }

  /**
   * @returns An internal key for a given index.
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
      this._frontIndex = storage.getPrimitive<i32>(this._frontIndexKey, 0);
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
      this._backIndex = storage.getPrimitive<i32>(this._backIndexKey, -1);
    }
    return this._backIndex;
  }

  /**
   * Internal. Sets the index of the last/back element.
   */
  private set backIndex(value: i32) {
    this._backIndex = value;
    storage.set<i32>(this._backIndexKey, value);
  }

  /**
   * Checks whether the index is within the range of the deque indices
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq.containsIndex(0) // false
   * dq.pushFront("hello world")
   * dq.containsIndex(0) // true
   * ```
   *
   * @param index The index to check.
   * @returns True if the given index is within the range of the deque indices.
   */
  containsIndex(index: i32): bool {
    return index >= 0 && index < this.length;
  }

  /**
   * Returns the length of the deque
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq.length // 0
   * dq.pushFront("hello world")
   * dq.length // 1
   * ```
   *
   * @returns The length of the deque.
   */
  get length(): i32 {
    return this.backIndex - this.frontIndex + 1;
  }

  /**
   * Returns a boolean indicating whether the deque is empty
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq.isEmpty // true
   * dq.pushFront("hello world")
   * dq.isEmpty // false
   * ```
   *
   * @returns True if the deque is empty.
   */
  get isEmpty(): bool {
    return this.length == 0;
  }

  /**
   * Returns the element of the deque for a given index. Asserts the given index is within the
   * range of the vector.
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq.pushFront("hello world")
   * dq[0] // "hello world"
   *
   * dq[1] // will throw with failed assertion
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
   * Returns the element of the deque for a given index without checks.
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq.pushFront("hello world")
   * dq{0} // "hello world"
   *
   * dq{1} // will throw with failed assertion  "Key is not present in the storage"
   * ```
   *
   * @param index The index of the element to return.
   * @returns The element at the given index.
   */
  @operator("{}")
  private __unchecked_get(index: i32): T {
    return storage.getSome<T>(this._key(index + this.frontIndex));
  }

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

  /**
   * Sets the new value of an element at the given index without checks.
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq{0} = "hello world"
   * dq{0} // "hello world"
   * ```
   *
   * @param index The index of the element.
   * @param value The new value.
   */
  @operator("{}=")
  private __unchecked_set(index: i32, value: T): void {
    storage.set<T>(this._key(index + this.frontIndex), value);
  }

  /**
   * Adds a new element in front of the deque. Increases the length of the deque.
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq.pushFront("world")
   * dq.pushFront("hello")
   * dq[0] // "hello"
   * ```
   *
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
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq.pushFront("world")
   * dq.pushFront("hello")
   * let element = dq.popFront()
   *
   * assert(element == "hello")
   * assert(dq.length == 1)
   * ```
   *
   * @returns The removed first element of the queue.
   */
  popFront(): T {
    assert(this.length > 0, "Deque is empty");
    let result = this.__unchecked_get(0);
    storage.delete(this._key(this.frontIndex));
    this.frontIndex += 1;
    return result;
  }

  /**
   * Returns the first element in the deque without changing the queue
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq.pushFront("world")
   * dq.pushFront("hello")
   *
   * assert(dq.front == "hello")
   * assert(dq.length == 2)
   * ```
   *
   * @returns The first/front element of the deque.
   */
  get front(): T {
    return this.__get(0);
  }

  /**
   * Returns the first element in the deque without changing the queue
   *
   * ```ts
   * dq.first // alias of front
   * ```
   *
   * @returns The first/front element of the deque.
   */
  @inline
  get first(): T {
    return this.front;
  }

  /**
   * Adds a new element to the end of the deque. Increases the length of the deque.
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq.pushBack("hello")
   * dq.pushBack("world")
   * dq[0] // hello
   * ```
   *
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
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq.pushFront("world")
   * dq.pushFront("hello")
   * let element = dq.popBack()
   *
   * assert(element == "world")
   * assert(dq.length == 1)
   * ```
   *
   * @returns The removed first element of the queue.
   */
  popBack(): T {
    let index = this.length - 1;
    assert(index >= 0, "Deque is empty");
    let result = this.__unchecked_get(index);
    storage.delete(this._key(this.backIndex));
    this.backIndex -= 1;
    return result;
  }

  /**
   * Returns the last element in the deque without changing the queue
   *
   * ```ts
   * let dq = new PersistentDeque<string>("q")
   *
   * dq.pushFront("world")
   * dq.pushFront("hello")
   *
   * assert(dq.back == "world")
   * assert(dq.length == 2)
   * ```
   *
   * @returns The last/back element of the deque.
   */
  get back(): T {
    return this.__get(this.length - 1);
  }

  /**
   * Returns the last element in the deque without changing the queue
   *
   * ```ts
   * dq.last // alias of method back
   * ```
   *
   * @returns The last/back element of the deque.
   */
  @inline
  get last(): T {
    return this.back;
  }
}
