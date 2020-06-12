import { PersistentMap, PersistentVector, collections } from "../collections";
import { MapEntry } from "./util";
import { storage } from "../storage";

class Nullable<T> {
    constructor(public val: T) {
        this.val = val;   
    } 
}

type NodeId = i32;
type ChildParentPair<K> = AVLTreeNode<K>[];

enum Direction {
    Left,
    Right
};

class AVLTreeNode<K> {
    constructor(
        public id: NodeId, 
        public key: K, 
        public left: Nullable<NodeId> | null = null, 
        public right: Nullable<NodeId> | null = null, 
        public height: u32 = 1
    ) {
        this.id = id;
        this.key = key;
        this.left = left;
        this.right = right;
        this.height = height;
    }
} 

@nearBindgen
export class AVLTree<K, V> {
    private _elementPrefix: string;
    private val: PersistentMap<K, V>;
    private tree: PersistentVector<AVLTreeNode<K>>;
    private _rootId: Nullable<NodeId> | null;

    /**
     * A string name is used as a prefix for writing keys to storage.
     */
    constructor(name: string) {
        this._elementPrefix = name + collections._KEY_ELEMENT_SUFFIX;
        this.val = new PersistentMap<K, V>(this._elementPrefix + "val");
        this.tree = new PersistentVector<AVLTreeNode<K>>(this._elementPrefix + "tree");
        this._rootId = null;
    }
  
    /**
     * @returns Number of elements in the tree.
     */
    get size(): u32 {
        return this.tree.length;
    }
    //alias to match rust sdk
    get len(): u32 {
        return this.size;
    }

    /**
     * @returns Root key of the tree.
     */
    get rootKey(): K {
        return this.rootNode!.key;
    }

    set rootId(rootId: Nullable<NodeId> | null) {
        this._rootId = rootId;
        storage.set(this._elementPrefix + "root", this._rootId);
    }

    get rootId(): Nullable<NodeId> | null {
        return this._rootId;
    }
  
    /**
     * @returns Whether the key is present in the tree.
     */
    has(key: K): bool {
        return this.val.contains(key);
    }
    //alias to match rust sdk
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

        this.val.set(key, value);
    }
    //alias to match rust sdk
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
        return this.val.get(key, defaultValue);
    }
  
    /**
     * Retrieves the related value for a given key, or throws error "key not found" 
     * 
     * @param key Key of the element.
     * @param defaultValue The default value if the key is not present.
     * @returns Value for the given key or the default value.
     */
    getSome(key: K): V {
        return this.val.getSome(key);
    }
  
    /**
     * Delete element with key if present, otherwise do nothing.
     * 
     * @param key Key to remove.
     */
    delete(key: K): void {
        if (this.has(key)) {
            this.rootId = new Nullable(this.doRemove(key).id);
            this.val.delete(key);
        }
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
    entries(start: K, end: K): MapEntry<K, V>[] {
        throw new Error("TODO implement range()");
    }
    //alias to match rust sdk
    range(start: K, end: K): MapEntry<K,V>[] {
        return this.entries(start, end);
    }
  
    /**
     * Returns minimum key.
     * Throws if tree is empty.
     * @returns Minimum key.
     */
    min(): K {
        return this.minAt(this.rootNode!)[0].key;
    }
  
    /**
     * Returns maximum key.
     * Throws if tree is empty.
     * @returns Maximum key.
     */
    max(): K {
        return this.maxAt(this.rootNode!)[0].key;
    }
  
    /**
     * Returns the maximum key that is strictly less than the key.
     * Throws if empty or if key is lower than or equal to `this.min()`.
     * @param key Key for lower bound (exclusive).
     * @returns Maximum key that is strictly less than given key.
     */
    lower(key: K): K {
        throw new Error("TODO implement lower()");
    }
  
    /**
     * Returns the minimum key that is strictly greater than the key.
     * Throws if empty or if key is higher than or equal to `this.max()`.
     * @param key Key for upper bound (exclusive).
     * @returns Minimum key that is strictly greater than given key.
     */
    higher(key: K): K {
        throw new Error("TODO implement higher()");
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
        return this.has(key) ? key : this.higher(key);
    }
    //alias to match rust sdk
    ceilKey(key: K): K {
        return this.higherOrEqual(key);
    }

    /**
     * Removes all key-value pairs from the tree
     */
    clear(): void {
        trace("tree.clear()");
        trace("tree.size = ", 1, this.size);
        while(this.size > 0) {
            trace("tree.size = ", 1, this.size);
            this.val.delete(this.tree.popBack().key);
        }
        this.rootId = null;
    }

    /**
     * **********************************
     *      AVL Tree core routines
     * **********************************
     */

    get rootNode(): AVLTreeNode<K> | null {
        return this.node(this.rootId);
    }

    height(id: Nullable<NodeId> | null): u32 {
        return id ? this.tree[id.val].height : 0;
    }

    balance(node: AVLTreeNode<K>): i32 {
        return this.height(node.left) - this.height(node.right);
    }

    updateHeight(node: AVLTreeNode<K>): void {
        node.height = 1 + max(this.height(node.left), this.height(node.right));
        this.tree[node.id] = node;
    }

    node(id: Nullable<NodeId> | null): AVLTreeNode<K> | null {
        return id ? this.tree[id.val] : null;
    }

    insertAt(parentNode: AVLTreeNode<K> | null, key: K): AVLTreeNode<K> {
        if (!parentNode) {
            const node = new AVLTreeNode<K>(this.size, key);
            this.tree.push(node);
            return node;
        } else {
            if (key < parentNode.key) {
                parentNode.left = new Nullable(this.insertAt(this.node(parentNode.left), key).id);
            } else if (key > parentNode.key) {
                parentNode.right = new Nullable(this.insertAt(this.node(parentNode.right), key).id);
            } else {
                throw new Error("Key already exists");
                // return parentNode.id;
            }
    
            this.updateHeight(parentNode);
    
            return this.enforceBalance(parentNode);
        } 
    }

    enforceBalance(node: AVLTreeNode<K>): AVLTreeNode<K> {
        const balance = this.balance(node);
        if (balance > 1) {
            // implies left child must exist, since balance = left.height - right.height
            if (this.balance(this.node(node.left)!) < 0) {
                node.left = new Nullable(this.rotateRight(node).id);
            }
            return this.rotateLeft(node);
        } else if (balance < -1) {
            // implies right child must exist
            if (this.balance(this.node(node.right)!) > 0) {
                node.right = new Nullable(this.rotateLeft(node).id);
            }
            return this.rotateRight(node);
        } else {
            return node;
        }
    }

    rotateRight(node: AVLTreeNode<K>): AVLTreeNode<K> {
        const childNode = this.node(node.right)!;
        node.right = childNode.left;
        childNode.left = new Nullable(node.id);

        this.updateHeight(node);
        this.updateHeight(childNode);

        return childNode;
    }

    rotateLeft(node: AVLTreeNode<K>): AVLTreeNode<K> {
        const childNode = this.node(node.left)!;
        node.left = childNode.right;
        childNode.right = new Nullable(node.id);

        this.updateHeight(node);
        this.updateHeight(childNode);

        return childNode;
    }

    doRemove(key: K): AVLTreeNode<K> {
        const nodes = this.lookupAt(this.rootNode!, key);
        let node = nodes[0];
        let parentNode = nodes[1];

        if (!node.left && !node.right) {
            // node to remove is a leaf node
            if (parentNode.key < node.key) {
                parentNode.right = null;
            } else {
                parentNode.left = null;
            }
        } else if (!node.left) {
            // node to remove has 1 right child
            // replace node to remove with its right child
            if (parentNode.key < node.key) {
                parentNode.right = node.right;
            } else {
                parentNode.left = node.right;
            }
        } else if (!node.right) {
            // node to remove has 1 left child
            // replace node to remove with its left child
            if (parentNode.key < node.key) {
                parentNode.right = node.left;
            } else {
                parentNode.left = node.left;
            }
        } else {
            // node has 2 children, search for successor
            const nodes = this.balance(node) >= 0 ?
                // node to remove is left leaning
                this.maxAt(this.node(node.left)!, node) :
                // node to remove is right leaning
                this.minAt(this.node(node.right)!, node);
            
            const successor = nodes[0];
            // node to remove and parentNode can be the same node on small trees (2 levels, 2-3 nodes)
            // if so, make parentNode point to node
            // TODO debug and validate expected behavior of parentNode pointing to node
            parentNode = nodes[1].id === node.id ? node : nodes[1];

            // remove successor from its parent
            if (parentNode.key < successor.key) {
                parentNode.right = null;
            } else {
                parentNode.left = null;
            }

            // take successor's key, and update the node to remove
            node.key = successor.key;
            this.tree[node.id] = node;
            
            // remove the successor from the tree
            node = successor;
        }

        this.updateHeight(parentNode);
        this.swapRemove(node);

        return this.rebalanceAt(this.rootNode!, parentNode.key);
    }

    swapRemove(node: AVLTreeNode<K>): void {
        if (node.id === this.size - 1) {
            // node is last element in tree, so no swapping needed
            this.tree.pop();
        } else {
            const lastNode = this.tree.swap_remove(node.id);
            const nodes = this.lookupAt(this.rootNode!, lastNode.key);
            const parentNode = nodes[1];

            if (lastNode.id === this.rootId!.val) {
                this.rootId = new Nullable(node.id);
            }
            
            if (parentNode.id !== lastNode.id) {
                if ((parentNode.left && parentNode.left!.val) === lastNode.id) {
                    parentNode.left = new Nullable(node.id);
                } else {
                    parentNode.right = new Nullable(node.id);
                }
                this.tree[parentNode.id] = parentNode;
            }

            lastNode.id = node.id;
            this.tree[lastNode.id] = lastNode;
        }
    }

    minAt(root: AVLTreeNode<K>, parentNode: AVLTreeNode<K> | null = null): ChildParentPair<K> {
        return root.left ? 
            this.minAt(this.node(root.left)!, root) : 
            [root, parentNode ? parentNode : root];
    }

    maxAt(root: AVLTreeNode<K>, parentNode: AVLTreeNode<K> | null = null): ChildParentPair<K> {
        return root.right ? 
            this.maxAt(this.node(root.right)!, root) : 
            [root, parentNode ? parentNode : root];
    }

    lookupAt(root: AVLTreeNode<K>, key: K, parentNode: AVLTreeNode<K> | null = null): ChildParentPair<K> {
        return root.key === key ? 
            [root, parentNode ? parentNode : root] :
            key < root.key ?
                this.lookupAt(this.node(root.left)!, key) :
                this.lookupAt(this.node(root.right)!, key);
    }

    rebalanceAt(root: AVLTreeNode<K>, key: K): AVLTreeNode<K> {
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
}