import { PersistentMap, PersistentVector, collections } from ".";
import { MapEntry } from "./util";
import { storage } from "../storage";

@nearBindgen
class Nullable<T> {
  constructor(public val: T) {}
}

type NodeId = i32;

@nearBindgen
class ChildParentPair<K> {
  constructor(public child: AVLTreeNode<K>, public parent: AVLTreeNode<K>) {
  }
}

@nearBindgen
class AVLTreeNode<K> {
  constructor(
    public id: NodeId,
    public key: K,
    public left: Nullable<NodeId> | null = null,
    public right: Nullable<NodeId> | null = null,
    public height: u32 = 1
  ) {}
}

@nearBindgen
export class AVLTree<K, V> {
  private _elementPrefix: string;
  private _val: PersistentMap<K, V>;
  private _tree: PersistentVector<AVLTreeNode<K>>;
  private _rootId: Nullable<NodeId> | null;

  /**
   * A string name is used as a prefix for writing keys to storage.
   */
  constructor(name: string) {
    this._elementPrefix = name + collections._KEY_ELEMENT_SUFFIX;
    this._val = new PersistentMap<K, V>(this._elementPrefix + "val");
    this._tree = new PersistentVector<AVLTreeNode<K>>(
      this._elementPrefix + "tree"
    );
    this._rootId = storage.get<Nullable<NodeId>>(this._elementPrefix + "root");
  }

  /**
   * @returns Number of elements in the tree.
   */
  get size(): u32 {
    return this._tree.length;
  }
  // alias to match rust sdk
  get len(): u32 {
    return this.size;
  }

  /**
   * @returns Height of the tree.
   */
  get height(): u32 {
    return this.nodeHeight(this.rootId);
  }

  /**
   * @returns Whether the key is present in the tree.
   */
  has(key: K): bool {
    return this._val.contains(key);
  }
  // alias to match rust sdk
  containsKey(key: K): bool {
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
    if (!this.has(key)) {
      this.rootId = new Nullable(this.insertAt(this.rootNode, key).id);
    }

    this._val.set(key, value);
  }
  // alias to match rust sdk
  insert(key: K, value: V): void {
    this.set(key, value);
  }

  /**
   * Retrieves a related value for a given key or uses the `defaultValue` if not key is found
   *
   * @param key Key of the element.
   * @returns Value for the given key or the default value.
   */
  get(key: K, defaultValue: V | null = null): V | null {
    return this._val.get(key, defaultValue);
  }

  /**
   * Retrieves the related value for a given key, or throws error "key not found"
   *
   * @param key Key of the element.
   * @param defaultValue The default value if the key is not present.
   * @returns Value for the given key or the default value.
   */
  getSome(key: K): V {
    return this._val.getSome(key);
  }

  /**
   * Delete element with key if present, otherwise do nothing.
   *
   * @param key Key to remove.
   */
  delete(key: K): void {
    if (this.has(key)) {
      this.rootId = this.doRemove(key);
      this._val.delete(key);
    }
  }
  // alias to match rust sdk
  remove(key: K): void {
    this.delete(key);
  }

  /**
   * Get a range of values from a start key (inclusive) to an end key (exclusive by default).
   * If end is greater than max key, include start to max inclusive.
   *
   * @param start Key for lower bound (inclusive).
   * @param end Key for upper bound (exclusive by default).
   * @param inclusive Set to false if upper bound should be exclusive, true if upper bound should be inclusive
   * @returns Range of values corresponding to keys within start and end bounds.
   */
  values(start: K, end: K, inclusive: boolean = false): V[] {
    const keys = this.keys(start, end, inclusive);
    const values: V[] = [];
    for (let i = 0; i < keys.length; ++i) {
      const key = keys[i];
      values.push(this._val.getSome(key));
    }
    return values;
  }

  /**
   * Get a range of keys from a start key (inclusive) to an end key (exclusive by default).
   * If end is greater than max key, include start to max inclusive.
   *
   * @param start Key for lower bound (inclusive).
   * @param end Key for upper bound (exclusive by default).
   * @param inclusive Set to false if upper bound should be exclusive, true if upper bound should be inclusive
   * @returns Range of keys within start and end bounds.
   */
  keys(start: K, end: K, inclusive: boolean = false): K[] {
    const rootNode = this.rootNode;
    const sorted: K[] = [];
    if (rootNode) {
      const visited: AVLTreeNode<K>[] = [];

      this.traverseLeft(start, rootNode, visited);

      while (visited.length) {
        const node = visited.pop();

        if (
          // key must always be gte start bound
          node.key >= start &&
          // if start and end bound are equal,
          // end bound becomes lte instead of strictly less than
          (start === end || inclusive ? node.key <= end : node.key < end)
        ) {
          sorted.push(node.key);
        }

        if (node.key < end && node.right) {
          this.traverseLeft(start, this.node(node.right)!, visited);
        }
      }
    }

    return sorted;
  }

  private traverseLeft(
    start: K,
    node: AVLTreeNode<K>,
    visited: AVLTreeNode<K>[]
  ): void {
    while (node.key >= start && node.left) {
      visited.push(node);
      node = this.node(node.left)!;
    }
    visited.push(node);
  }

  /**
   * Get a range of entries from a start key (inclusive) to an end key (exclusive by default).
   * If end is greater than max key, include start to max inclusive.
   *
   * @param start Key for lower bound (inclusive).
   * @param end Key for upper bound (exclusive by default).
   * @param inclusive Set to false if upper bound should be exclusive, true if upper bound should be inclusive
   * @returns Range of entries corresponding to keys within start and end bounds.
   */
  entries(start: K, end: K, inclusive: boolean = false): MapEntry<K, V>[] {
    const keys = this.keys(start, end, inclusive);
    const entries: MapEntry<K, V>[] = [];
    for (let i = 0; i < keys.length; ++i) {
      const key = keys[i];
      entries.push(new MapEntry(key, this._val.getSome(key)));
    }
    return entries;
  }
  // alias to match rust sdk
  range(start: K, end: K, inclusive: boolean = false): MapEntry<K, V>[] {
    return this.entries(start, end, inclusive);
  }

  /**
   * Returns minimum key.
   * Throws if tree is empty.
   * @returns Minimum key.
   */
  min(): K {
    return this.minAt(this.rootNode!).child.key;
  }

  /**
   * Returns maximum key.
   * Throws if tree is empty.
   * @returns Maximum key.
   */
  max(): K {
    return this.maxAt(this.rootNode!).child.key;
  }

  /**
   * Returns the maximum key that is strictly less than the key.
   * Throws if empty or if key is lower than or equal to `this.min()`.
   * @param key Key for lower bound (exclusive).
   * @returns Maximum key that is strictly less than given key.
   */
  lower(key: K): K {
    let root = this.rootNode!;

    while (root.left || root.right) {
      if (root.key >= key && root.left) {
        root = this.node(root.left)!;
      } else if (root.right) {
        const rightNode = this.node(root.right)!;
        if (rightNode.key < key) {
          root = rightNode;
        } else {
          break;
        }
      }
    }

    if (root.key >= key)
      throw new Error("key is less than mininum key in tree");
    else return root.key;
  }

  /**
   * Returns the minimum key that is strictly greater than the key.
   * Throws if empty or if key is higher than or equal to `this.max()`.
   * @param key Key for upper bound (exclusive).
   * @returns Minimum key that is strictly greater than given key.
   */
  higher(key: K): K {
    let root = this.rootNode!;

    while (root.left || root.right) {
      if (root.key <= key && root.right) {
        root = this.node(root.right)!;
      } else if (root.right) {
        const leftNode = this.node(root.left)!;
        if (leftNode.key > key) {
          root = leftNode;
        } else {
          break;
        }
      }
    }

    if (root.key <= key)
      throw new Error("key is greater than maximum key in tree");
    else return root.key;
  }

  /**
   * Returns the maximum key that is less or equal than the key.
   * Throws if empty or if key is lower than `this.min()`.
   * @param key Key for lower bound (inclusive).
   * @returns Maximum key that is less than or equal to given key.
   */
  lowerOrEqual(key: K): K {
    return this.has(key) ? key : this.lower(key);
  }
  // alias to match rust sdk
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
    return this.has(key) ? key : this.higher(key);
  }
  // alias to match rust sdk
  ceilKey(key: K): K {
    return this.higherOrEqual(key);
  }

  /**
   * Removes all key-value pairs from the tree
   */
  clear(): void {
    while (this.size > 0) {
      this._val.delete(this._tree.popBack().key);
    }
    this.rootId = null;
  }

  // useful for debugging
  private toString(): string {
    const a: string[] = ["\n"];
    for (let i: i32 = 0; i < i32(this.size); ++i) {
      const node = this._tree[i];
      const key = u32(node.key).toString();
      const index = node.id.toString();
      const leftKey = node.left
        ? u32(this.node(node.left)!.key).toString()
        : "null";
      const rightKey = node.right
        ? u32(this.node(node.right)!.key).toString()
        : "null";
      const isRoot = node.id === this.rootId!.val ? "true" : "false";
      const childrenProperties: string[] = [leftKey, rightKey, isRoot];
      const nodeProperties: string[] = [
        key,
        ",",
        index,
        ":",
        childrenProperties.join(),
      ];
      a.push(nodeProperties.join(" "));
    }
    return a.join("\n");
  }

  /**
   * **********************************
   *      AVL Tree core routines
   * **********************************
   */

  // returns root key of the tree.
  get rootKey(): K {
    assert(!isNull(this.rootNode), "rootNode must be defined");
    return this.rootNode!.key;
  }

  private set rootId(rootId: Nullable<NodeId> | null) {
    this._rootId = rootId;
    storage.set(this._elementPrefix + "root", this._rootId);
  }

  private get rootId(): Nullable<NodeId> | null {
    return this._rootId;
  }

  // returns the root node of the tree, if it exists.
  // returns null otherwise
  private get rootNode(): AVLTreeNode<K> | null {
    return this.node(this.rootId);
  }

  // returns the height for a given node
  private nodeHeight(id: Nullable<NodeId> | null): u32 {
    return id ? this._tree[id.val].height : 0;
  }

  // returns the difference in heights between a node's left and right subtrees
  private balance(node: AVLTreeNode<K>): i32 {
    return this.nodeHeight(node.left) - this.nodeHeight(node.right);
  }

  // updates the height for a given node based on the heights of its subtrees
  private updateHeight(node: AVLTreeNode<K>): void {
    node.height =
      1 + max(this.nodeHeight(node.left), this.nodeHeight(node.right));
    this._tree[node.id] = node;
  }

  // returns the node for the given id (index into underlying array this._tree)
  private node(id: Nullable<NodeId> | null): AVLTreeNode<K> | null {
    return id ? this._tree[id.val] : null;
  }

  // inserts a new key into the tree and
  // recursively updates the height of each node in the tree,
  // performing rotations as needed from bottom to top
  // to maintain the AVL tree balance invariant
  private insertAt(parentNode: AVLTreeNode<K> | null, key: K): AVLTreeNode<K> {
    if (!parentNode) {
      const node = new AVLTreeNode<K>(this.size, key);
      this._tree.push(node);
      return node;
    } else {
      if (key < parentNode.key) {
        parentNode.left = new Nullable(
          this.insertAt(this.node(parentNode.left), key).id
        );
      } else if (key > parentNode.key) {
        parentNode.right = new Nullable(
          this.insertAt(this.node(parentNode.right), key).id
        );
      } else {
        throw new Error(
          "Key already exists, but does not have an associated value"
        );
      }

      this.updateHeight(parentNode);

      return this.enforceBalance(parentNode);
    }
  }

  // given a node
  // performs a single set left and right rotations to maintain AVL tree balance invariant
  private enforceBalance(node: AVLTreeNode<K>): AVLTreeNode<K> {
    const balance = this.balance(node);
    if (balance > 1) {
      // implies left child must exist, since balance = left.height - right.height
      const leftChildNode = this.node(node.left)!;
      if (this.balance(leftChildNode) < 0) {
        node.left = new Nullable(this.rotateRight(leftChildNode).id);
      }
      return this.rotateLeft(node);
    } else if (balance < -1) {
      // implies right child must exist
      const rightChildNode = this.node(node.right)!;
      if (this.balance(rightChildNode) > 0) {
        node.right = new Nullable(this.rotateLeft(rightChildNode).id);
      }
      return this.rotateRight(node);
    } else {
      // node is already balanced
      return node;
    }
  }

  // given a node
  // performs a righthand rotation
  //        node                        child
  //           \                        /
  //           child       ->       node
  //           /                       \
  //  child.left                       child.right
  private rotateRight(node: AVLTreeNode<K>): AVLTreeNode<K> {
    const childNode = this.node(node.right)!;
    node.right = childNode.left;
    childNode.left = new Nullable(node.id);

    this.updateHeight(node);
    this.updateHeight(childNode);

    return childNode;
  }

  // given a node
  // performs a lefthand rotation
  //        node                  child
  //        /                         \
  //    child           ->            node
  //        \                         /
  //        child.right     child.right
  private rotateLeft(node: AVLTreeNode<K>): AVLTreeNode<K> {
    const childNode = this.node(node.left)!;
    node.left = childNode.right;
    childNode.right = new Nullable(node.id);

    this.updateHeight(node);
    this.updateHeight(childNode);

    return childNode;
  }

  // removes the given key from the tree, maintaining the AVL balance invariant
  private doRemove(key: K): Nullable<NodeId> | null {
    const nodeAndParent = this.lookupAt(this.rootNode!, key);
    let node = nodeAndParent.child;
    let parentNode = nodeAndParent.parent;
    let successorId: Nullable<NodeId> | null;

    if (!node.left && !node.right) {
      // node to remove is a leaf node
      if (parentNode.key < node.key) {
        parentNode.right = null;
      } else {
        parentNode.left = null;
      }
      successorId = null;
    } else if (!node.left) {
      // node to remove has 1 right child
      // replace node to remove with its right child
      if (parentNode.key < node.key) {
        parentNode.right = node.right;
      } else {
        parentNode.left = node.right;
      }
      successorId = node.right;
    } else if (!node.right) {
      // node to remove has 1 left child
      // replace node to remove with its left child
      if (parentNode.key < node.key) {
        parentNode.right = node.left;
      } else {
        parentNode.left = node.left;
      }
      successorId = node.left;
    } else {
      // node has 2 children, search for successor
      const isLeftLeaning = this.balance(node) >= 0;
      const nodes = isLeftLeaning
        ? // node to remove is left leaning, so search left subtree
          this.maxAt(this.node(node.left)!, node)
        : // node to remove is right leaning, so search right subtree
          this.minAt(this.node(node.right)!, node);

      const successor = nodes.child;

      // node to remove and parentNode can be the same node on small trees (2 levels, 2-3 nodes)
      // if so, make parentNode point to node
      parentNode = nodes.parent.id === node.id ? node : nodes.parent;

      const successorIsLeftChild = parentNode.left
        ? parentNode.left!.val === successor.id
        : false;

      // remove successor from its parent, and link the successor's child to its grandparent
      if (successorIsLeftChild) {
        parentNode.left = isLeftLeaning ? successor.left : successor.right;
      } else {
        parentNode.right = isLeftLeaning ? successor.left : successor.right;
      }

      // take successor's key, and update the node to remove
      node.key = successor.key;
      this._tree[node.id] = node;
      successorId = new Nullable(node.id);

      // set node to point to successor, so it is removed from the tree
      node = successor;
    }

    this.updateHeight(parentNode);
    this.swapRemove(node);

    return this.size > 0 && this.rootNode
      ? new Nullable(this.rebalanceAt(this.rootNode!, parentNode.key).id)
      : successorId;
  }

  // removes the given node from the tree,
  // and replaces it with the last node in the underlying array (this._tree)
  private swapRemove(node: AVLTreeNode<K>): void {
    if (node.id === this.size - 1) {
      // node is last element in tree, so no swapping needed
      if (node.id === this.rootId!.val) {
        this.rootId = null;
      }
    } else {
      const lastNode = this._tree[this.size - 1];
      const parentNode = this.lookupAt(this.rootNode!, lastNode.key).parent;

      if (lastNode.id === this.rootId!.val) {
        this.rootId = new Nullable(node.id);
      }

      // check to make sure that parentNode and lastNode do not overlap
      if (parentNode.id !== lastNode.id) {
        // make lastNode's parent point to new index (index of node that lastNode is replacing)
        if (parentNode.left ? parentNode.left!.val === lastNode.id : false) {
          parentNode.left = new Nullable(node.id);
        } else {
          parentNode.right = new Nullable(node.id);
        }

        // update the parentNode
        this._tree[parentNode.id] = parentNode;
      }

      // update index of lastNode
      lastNode.id = node.id;
      this._tree[lastNode.id] = lastNode;
    }

    this._tree.pop();
  }

  // given a starting node
  // returns the leftmost (min) descendant node, and its parent
  private minAt(
    root: AVLTreeNode<K>,
    parentNode: AVLTreeNode<K> | null = null
  ): ChildParentPair<K> {
    return root.left
      ? this.minAt(this.node(root.left)!, root)
      : new ChildParentPair(root, parentNode ? parentNode : root);
  }

  // given a starting node
  // returns the rightmost (max) descendant node, and its parent
  private maxAt(
    root: AVLTreeNode<K>,
    parentNode: AVLTreeNode<K> | null = null
  ): ChildParentPair<K> {
    return root.right
      ? this.maxAt(this.node(root.right)!, root)
      : new ChildParentPair(root, parentNode ? parentNode : root);
  }

  // given a key and a starting node
  // returns the node with the associated key, as well as its parent (if it exists)
  // caution: this method assumes the key exists in the tree, and will throw otherwise
  private lookupAt(
    root: AVLTreeNode<K>,
    key: K,
    parentNode: AVLTreeNode<K> | null = null
  ): ChildParentPair<K> {
    return root.key === key
      ? new ChildParentPair(root, parentNode ? parentNode : root)
      : key < root.key
      ? this.lookupAt(this.node(root.left)!, key, root)
      : this.lookupAt(this.node(root.right)!, key, root);
  }

  // recursively updates the height of each node in the tree,
  // and performs rotations as needed from bottom to top
  // to maintain the AVL tree balance invariant
  private rebalanceAt(root: AVLTreeNode<K>, key: K): AVLTreeNode<K> {
    if (root.key > key) {
      const leftChild = this.node(root.left);
      if (leftChild) {
        root.left = new Nullable(this.rebalanceAt(leftChild, key).id);
      }
    } else if (root.key < key) {
      const rightChild = this.node(root.right);
      if (rightChild) {
        root.right = new Nullable(this.rebalanceAt(rightChild, key).id);
      }
    }

    this.updateHeight(root);

    return this.enforceBalance(root);
  }

  // recursively checks that each node in the tree is balanced by checking that
  // the AVL tree invariant holds:
  // any node's left and right subtrees must have a difference in height <= 1
  private isBalanced(root: AVLTreeNode<K> | null = this.rootNode): bool {
    const b = root ? this.balance(root) : 0;
    return b >= -1 && b <= 1 && root
      ? this.isBalanced(this.node(root.left)) &&
          this.isBalanced(this.node(root.right))
      : true;
  }
}
