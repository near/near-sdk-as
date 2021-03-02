import { collections } from ".";
import { PersistentVector } from "./persistentVector";

@nearBindgen
export class MaxHeap<T> {
  private _elementPrefix: string;
  private _heap: PersistentVector<T>;

  constructor(prefix: string) {
    this._elementPrefix = prefix + collections._KEY_ELEMENT_SUFFIX;
    this._heap = new PersistentVector<T>(this._elementPrefix);
  }

  @inline
  private _left(i: i32): i32 {
    return (i << 1) + 1;
  }

  @inline
  private _right(i: i32): i32 {
    return (i << 1) + 2;
  }

  @inline
  private _parent(i: i32): i32 {
    return (i - 1) >> 1;
  }

  @inline
  private _isLeaf(i: i32): bool {
    return i >= (this._heap.length >> 1) && i < this._heap.length;
  }

  private _swap(i: i32, j: i32): void {
    this._heap.replace(j, this._heap.replace(i, this._heap[j]));
  }

  private _maxHeapify(current: i32): void {
    if (this._isLeaf(current)) {
      return;
    }

    const currentValue = this._heap[current];
    const left = this._left(current);
    const leftValue = this._heap[left];

    let largest = current, largestValue = currentValue;

    if (left < this._heap.length && leftValue > currentValue) {
      largest = left;
      largestValue = leftValue;
    }

    const right = this._right(current);
    if (right < this._heap.length && this._heap[right] > largestValue) {
      largest = right;
    }

    if (largest != current) {
      this._swap(current, largest);
      this._maxHeapify(largest);
    }
  }

  public get top(): T {
    return this._heap.first;
  }

  public get length(): i32 {
    return this._heap.length;
  }

  public get isEmpty(): bool {
    return this._heap.isEmpty;
  }

  public push(item: T): void {
    let currentIndex = this._heap.length, parentIndex: i32;
    this._heap.push(item);

    while (this._heap[currentIndex] > this._heap[parentIndex = this._parent(currentIndex)]) {
      this._swap(currentIndex, parentIndex);
      currentIndex = parentIndex;
    }
  }

  public pop(): T {
    const popped = this._heap.swap_remove(0);

    this._maxHeapify(0);

    return popped;
  }

  public replace(item: T): T {
    const replaced = this._heap.replace(0, item);

    this._maxHeapify(0);

    return replaced;
  }
}
