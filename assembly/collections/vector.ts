import { collections } from "../collections";
import { storage } from "../storage";

/**
* A vector class that implements a persistent array.
*/
export class Vector<T> {
  private _elementPrefix: string;
  private _lengthKey: string;
  private _length: i32;
  
  /**
  * Creates or restores a persistent vector with a given storage prefix.
  * Always use a unique storage prefix for different collections.
  * @param prefix A prefix to use for every key of this vector.
  */
  constructor(prefix: string) {
    this._lengthKey = prefix + collections._KEY_LENGTH_SUFFIX;
    this._elementPrefix = prefix + collections._KEY_ELEMENT_SUFFIX;
    this._length = -1;
  }

  /**
  * @returns An interal key for a given index.
  */
  @inline
  private _key(index: i32): string {
    //@ts-ignore
    return this._elementPrefix + index.toString();
  }

  /**
  * Removes the content of the element from storage without changing length of the vector.
  * @param index The index of the element to remove.
  */
  delete(index: i32): void {
    assert(this.containsIndex(index), "Index out of range");
    storage.delete(this._key(index));
  }

  /**
  * @param index The index to check.
  * @returns True if the given index is within the range of the vector indices.
  */
  containsIndex(index: i32): bool {
    return index >= 0 && index < this.length;
  }

  /**
  * @returns True if the vector is empty.
  */
  get isEmpty(): bool {
    return this.length == 0;
  }

  /**
  * @returns The length of the vector.
  */
 //@ts-ignore
  get length(): i32 {
    if (this._length < 0) {
      this._length = 0;
      // TODO: unhardcode this._length = storage.get<i32>(this._lengthKey.buffer, this._lengthKey.byteLength, this._registerId);
    }
    return this._length;
  }

  /**
  * Internally sets the length of the vector
  */
 //@ts-ignore TS doesn't like property accessors with different levels of visability
  private set length(value: i32) {
    this._length = value;
    storage.set<i32>(this._lengthKey, value);
  }

  /**
  * Returns the element of the vector for a given index. Asserts the given index is within the
  * range of the vector.
  * @param index The index of the element to return.
  * @returns The element at the given index.
  */
  @operator("[]")
  private __get(index: i32): T | null {
    assert(this.containsIndex(index), "Index out of range");
    return this.__unchecked_get(index);
  }

  /**
  * Returns the element of the vector for a given index without checks.
  * @param index The index of the element to return.
  * @returns The element at the given index.
  */
  @operator("{}")
  private __unchecked_get(index: i32): T | null {
    //TODO: Should this potentially return null?
    return storage.get<T>(this._key(index));
  }

  /**
  * Sets the value of an element at the given index. Asserts the given index is within the
  * range of the vector.
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
  * @param index The index of the element.
  * @param value The new value.
  */
  @operator("{}=")
  private __unchecked_set(index: i32, value: T): void {
    storage.set<T>(this._key(index), value);
  }

  /**
  * Adds a new element to the end of the vector. Increases the length of the vector.
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
  * @returns The removed last element of the vector.
  */
  pop(): T | null {
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
  * @returns The removed last element of the vector.
  */
  @inline
  popBack(): T | null {
    return this.pop();
  }

  /**
  * @returns The last element of the vector. Asserts that the vector is not empty.
  */
  get back(): T | null {
    return this.__get(this.length - 1);
  }

  /**
  * @returns The last element of the vector. Asserts that the vector is not empty.
  */
  @inline
  get last(): T | null {
    return this.back;
  }

  /**
  * @returns The first element of the vector. Asserts that the vector is not empty.
  */
  get front(): T | null {
    return this.__get(0);
  }

  /**
  * @returns The first element of the vector. Asserts that the vector is not empty.
  */
  @inline
  get first(): T | null {
    return this.front;
  }
}
