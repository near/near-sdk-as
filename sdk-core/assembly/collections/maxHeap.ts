import { PersistentVector } from "./persistentVector";

/**
 * A max heap. Maintains a tree structure on an underlying vector. Storage cost Θ(n)
 * @typeParam T must implement `@operator(">")`
 */
@nearBindgen
export class MaxHeap<T> {
  /**
   * Underlying vector
   */
  private _heap: PersistentVector<T>;

  /**
   * Creates or restores a persistent max heap with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   *
   * @example
   * ```ts
   * const maxHeap = new MaxHeap<number>('h');
   * ```
   *
   * @param prefix A unique prefix (per NEAR account) identifying this MaxHeap
   */
  constructor(prefix: string) {
    this._heap = new PersistentVector<T>(prefix);
  }

  /**
   * Calculates the index of the left child of a parent index
   * @param i Parent index
   * @returns Child index
   */
  @inline
  private _left(i: i32): i32 {
    return (i << 1) + 1;
  }

  /**
   * Calculates the index of the right child of a parent index
   * @param i Parent index
   * @returns Child index
   */
  @inline
  private _right(i: i32): i32 {
    return (i << 1) + 2;
  }

  /**
   * Calculates the index of the parent of a child index
   * @param i Child index
   * @returns Parent index
   */
  @inline
  private _parent(i: i32): i32 {
    return (i - 1) >> 1;
  }

  /**
   * Calculates whether an index is an index of a leaf node
   * @param i Index to test
   * @returns Whether `i` is a leaf node
   */
  @inline
  private _isLeaf(i: i32): bool {
    return i >= (this._heap.length >> 1);
  }

  /**
   * Swaps the locations of two nodes in the heap
   * @param i Index of first node
   * @param j Index of second node
   */
  private _swap(i: i32, j: i32): void {
    this._heap.replace(j, this._heap.replace(i, this._heap[j]));
  }

  /**
   * Recursively fixes max-heap violations
   * @param current Current node index
   */
  private _maxHeapify(current: i32): void {
    if (this._isLeaf(current)) {
      return;
    }

    const currentValue = this._heap[current];
    const left = this._left(current);
    const leftValue = this._heap[left];

    // Find the index with the largest value among the current nodes and its children
    let largest = current, largestValue = currentValue;

    if (left < this._heap.length && leftValue > currentValue) {
      largest = left;
      largestValue = leftValue;
    }

    const right = this._right(current);
    if (right < this._heap.length && this._heap[right] > largestValue) {
      largest = right;
    }

    // If the current index does not hold the largest value among the current
    // node and its children, swap the current node with its largest child and
    // recurse on that child
    if (largest != current) {
      this._swap(current, largest);
      this._maxHeapify(largest);
    }
  }

  /**
   * The first (maximum) item on the heap
   */
  public get top(): T {
    return this._heap.first;
  }

  /**
   * The total number of items in the heap
   */
  public get length(): i32 {
    return this._heap.length;
  }

  /**
   * Is the heap empty?
   */
  public get isEmpty(): bool {
    return this._heap.isEmpty;
  }

  /**
   * Adds an item to the heap. O(1) if new item is the smallest value in the
   * heap, O(log n) otherwise.
   * 
   * @example
   * ```ts
   * const maxHeap = new MaxHeap<number>('h');
   * maxHeap.length == 0;
   * maxHeap.push(4);
   * maxHeap.top == 4;
   * maxHeap.length == 1;
   * ```
   * 
   * @param item New item
   * @returns The new length of the heap
   */
  public push(item: T): i32 {
    let currentIndex = this._heap.length, parentIndex: i32;
    this._heap.push(item);

    while (currentIndex != 0 && this._heap[currentIndex] > this._heap[parentIndex = this._parent(currentIndex)]) {
      this._swap(currentIndex, parentIndex);
      currentIndex = parentIndex;
    }

    return this._heap.length;
  }

  /**
   * Removes the top of the heap and returns it. Runtime is O(log n).
   * 
   * @example
   * ```ts
   * const maxHeap = new MaxHeap<number>('h');
   * maxHeap.push(4);
   * maxHeap.length == 1;
   * maxHeap.pop() == 4;
   * maxHeap.length == 0;
   * ```
   * 
   * @returns The maximum item on the heap
   */
  public pop(): T {
    const popped = this._heap.swap_remove(0);

    this._maxHeapify(0);

    return popped;
  }

  /**
   * Swaps out the top item on the heap. O(1) if new item is the largest on the
   * heap, O(log n) otherwise.
   * 
   * @example
   * ```ts
   * const maxHeap = new MaxHeap<number>('h');
   * maxHeap.push(4);
   * maxHeap.length == 1;
   * maxHeap.replace(5) == 4;
   * maxHeap.length == 1;
   * maxHeap.top == 5;
   * ```
   * 
   * @param item New item
   * @returns Replaced item
   */
  public replace(item: T): T {
    const replaced = this._heap.replace(0, item);

    this._maxHeapify(0);

    return replaced;
  }
}
