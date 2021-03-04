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
   * const maxHeap = new MaxHeap<u64>('h');
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
   * Calculates whether an index is the root node
   * @param i Index to test
   * @returns Whether `i` is the root node
   */
  @inline
  private _isRoot(i: i32): bool {
    return i == 0;
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
   * Iteratively fixes max-heap violations, moving upwards
   * @param i Current node index
   * @param value Value of the heap at `i`, used to avoid unnecessary reads from storage
   */
  private _siftUp(i: i32, value: T): void {
    let currentIndex = i;

    while (!this._isRoot(currentIndex)) {
      const parentIndex = this._parent(currentIndex);
      const parentValue = this._heap[parentIndex];
      if (value > parentValue) {
        this._swap(currentIndex, parentIndex);
        currentIndex = parentIndex;
      } else {
        break;
      }
    }
  }

  /**
   * Recursively fixes max-heap violations, moving downwards
   * @param current Current node index
   * @param currentValue Value of the heap at `current`, used to avoid unnecessary reads from storage
   */
  private _siftDown(current: i32, currentValue: T): void {
    if (this._isLeaf(current)) {
      return;
    }

    // Find the index with the largest value among the current nodes and its children
    let largest = current, largestValue = currentValue;

    const left = this._left(current);
    let leftValue: T;

    if (left < this._heap.length && (leftValue = this._heap[left]) > currentValue) {
      largest = left;
      largestValue = leftValue;
    }

    const right = this._right(current);
    let rightValue: T;

    if (right < this._heap.length && (rightValue = this._heap[right]) > largestValue) {
      largest = right;
      largestValue = rightValue;
    }

    // If the current index does not hold the largest value among the current
    // node and its children, swap the current node with its largest child and
    // recurse on that child
    if (largest != current) {
      this._swap(current, largest);
      this._siftDown(largest, currentValue);
    }
  }

  /**
   * The first (maximum) item on the heap
   */
  @inline
  public get top(): T {
    return this._heap.first;
  }

  /**
   * The total number of items in the heap
   */
  @inline
  public get length(): i32 {
    return this._heap.length;
  }

  /**
   * Is the heap empty?
   */
  @inline
  public get isEmpty(): bool {
    return this._heap.isEmpty;
  }

  /**
   * Retreives all of the items in the heap from storage, in max-heap order
   * @returns An array of all of the items in the heap
   */
  public values(): T[] {
    const values: T[] = [];
    for (let i = 0; i < this._heap.length; i++) {
      values.push(this._heap[i]);
    }

    return values;
  }

  /**
   * Adds an item to the heap. O(1) if new item is the smallest value in the
   * heap, O(log n) otherwise.
   * 
   * @example
   * ```ts
   * const maxHeap = new MaxHeap<u64>('h');
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
    this._heap.push(item);

    if (this._heap.length == 1) {
      return 1;
    }

    this._siftUp(this._heap.length - 1, item);

    return this._heap.length;
  }

  /**
   * Removes the top of the heap and returns it. Runtime is O(log n).
   * 
   * @example
   * ```ts
   * const maxHeap = new MaxHeap<u64>('h');
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

    if (this._heap.length > 0) {
      this._siftDown(0, this._heap.first);
    }

    return popped;
  }

  /**
   * Swaps out the top item on the heap. O(1) if new item is the largest on the
   * heap, O(log n) otherwise.
   * 
   * @example
   * ```ts
   * const maxHeap = new MaxHeap<u64>('h');
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

    this._siftDown(0, item);

    return replaced;
  }

  /**
   * Deletes an item from the heap once
   * 
   * @example
   * ```ts
   * const maxHeap = new MaxHeap<u64>('h');
   * maxHeap.push(4);
   * maxHeap.push(5);
   * maxHeap.length == 2;
   * maxHeap.delete(4);
   * maxHeap.length == 1;
   * ```
   * 
   * @param item Item to delete from the heap
   */
  public delete(item: T): void {
    const index = this.indexOf(item);
    if (index != -1) {
      this.deleteAt(index);
    }
  }

  /**
   * Deletes an item from the heap given its index
   * 
   * @example
   * ```ts
   * const maxHeap = new MaxHeap<u64>('h');
   * maxHeap.push(4);
   * maxHeap.push(5);
   * maxHeap.length == 2;
   * maxHeap.deleteAt(1);
   * maxHeap.length == 1;
   * maxHeap.deleteAt(1); // -> Index out of bounds
   * ```
   * 
   * @param index Index of item to remove from heap
   */
  public deleteAt(index: i32): void {
    assert(index >= 0 && index < this._heap.length, 'Index out of bounds');

    if (index == this._heap.length - 1) {
      this._heap.pop();
    } else {
      const value = this._heap.pop();
      this._heap[index] = value;
      if (!this._isRoot(index) && value > this._heap[this._parent(index)]) {
        this._siftUp(index, value);
      } else {
        this._siftDown(index, value);
      }
    }
  }

  /**
   * Determines whether a certain item exists in the heap
   * 
   * @example
   * ```ts
   * const maxHeap = new MaxHeap<u64>('h');
   * maxHeap.push(4);
   * maxHeap.contains(4) == true;
   * maxHeap.contains(5) == false;
   * ```
   * 
   * @param target Item to search for
   * @returns `true` if the item is in the heap, `false` otherwise
   */
  @inline
  public contains(target: T): bool {
    return this.indexOf(target) != -1;
  }

  /**
   * Finds the index of an item in the heap
   * 
   * @example
   * ```ts
   * const maxHeap = new MaxHeap<u64>('h');
   * maxHeap.push(4);
   * maxHeap.indexOf(4) == 0;
   * maxHeap.push(5);
   * maxHeap.indexOf(4) == 1;
   * maxHeap.indexOf(5) == 0;
   * ```
   * 
   * @param target Item to search for
   * @returns The index of the item in the heap, -1 otherwise
   */
  public indexOf(target: T): i32 {
    if (this._heap.length == 0) {
      return -1;
    }

    // Recursive DFS LIFO stack
    // DFS seems to perform only about 66%-80% of the reads that BFS performs
    const parents: i32[] = [0];
    while (parents.length > 0) {
      const currentIndex = parents.pop();
      const currentValue = this._heap[currentIndex];

      if (target === currentValue) {
        return currentIndex;
      } else if (currentValue > target) {
        const leftIndex = this._left(currentIndex);

        if (leftIndex < this._heap.length) {
          parents.push(this._left(currentIndex));

          const rightIndex = this._right(currentIndex);

          if (rightIndex < this._heap.length) {
            parents.push(this._right(currentIndex));
          }
        }
      }
    }

    return -1;
  }
}
