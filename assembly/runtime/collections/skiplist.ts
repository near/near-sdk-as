
import { collections } from ".";
import { math, util } from "..";

const enum Compare {
  less = -1,
  equal = 0,
  greater = 1
}

@nearBindgen
class Node<K,V> {
  key: K;
  value: V;
  ptrs: Array<Node<K,V>>;
  widths: Array<u32>;

  constructor(key: K, value: V, level: u32) {
    this.key = key;
    this.value = value;
    this.ptrs = new Array<Node<K,V>>(level);
    this.widths = new Array<u32>(level);
    this.widths.fill(0);
  }

  equals(other: Node<K,V>): boolean {
    return encode(this) == encode(other);
  }

  forward(i: u32): Node<K,V> {
    return this.ptrs[i];
  }

  peek(i: u32): K {
    return this.ptrs[i].key;
  }

  set(i: u32, node: Node<K,V>): void {
    this.ptrs[i] = node;
  }

  compare(other: Node<K,V>): Compare {
    if (this.key < other.key) return Compare.less;
    if (this.key == other.key) return Compare.equal;
    return Compare.greater;
  }
}



	
const FACTOR: u64 = 10_000;
const ETimes10e10: u64 = 27183;


export function lessThanE(rng: math.RNG<u64>): bool {
  let low = rng.next();
  let high = (FACTOR * FACTOR) / ETimes10e10;
  return low < high;
}

export class SkipList<K,V> {
  /** Empty Node */
  level: u32 = 1;
  private rng: math.RNG<u64> = new math.RNG<u64>(100, <u32>FACTOR);
  tail: Node<K,V>;
  head: Node<K,V>;
  private _update: Array<Node<K,V>>;
  private _indexes: Array<u32>;
  private readonly maxLevel: u32;
  private _size: u32;

  constructor(maxSize: u32 = 65535) {
    this.tail = util.allocate<Node<K, V>>();
    this.head = util.allocate<Node<K, V>>();
    const key = this.tail.key;
    const NILPtr = changetype<usize>(this.tail);
    this.maxLevel = math.binaryLog(maxSize);
    this._update = new Array<Node<K,V>>(this.maxLevel);
    this._indexes = new Array<u32>(this.maxLevel)
    if (isString<K>()) {
      store<string>(NILPtr, 0xFFFF);
      //@ts-ignore
      this.tail.key = <K>String.fromCodePoint(0xFFFF);
      log(this.tail.key)
    } else if (isReference<K>()){
      store<usize>(NILPtr, Usize.MAX_VALUE())
    } else if (key instanceof u64) {
      store<u64>(NILPtr, U64.MAX_VALUE);
    } else if (key instanceof i64) {
      store<i64>(NILPtr, I64.MAX_VALUE);
    } else if (key instanceof u32) {
      store<u32>(NILPtr, U32.MAX_VALUE);
    } else if (key instanceof i32) {
      store<i32>(NILPtr, I32.MAX_VALUE);
    } else if (key instanceof u16) {
      store<u16>(NILPtr, U16.MAX_VALUE);
    } else if (key instanceof i16) {
      store<i16>(NILPtr, I16.MAX_VALUE);
    } else if (key instanceof u8) {
      store<u8>(NILPtr, U8.MAX_VALUE);
    } else if (key instanceof i8) {
      store<i8>(NILPtr, I8.MAX_VALUE);
    }
    this._update.fill(this.head);
    this.head.ptrs = new Array<Node<K,V>>(this.maxLevel);
    this.head.ptrs.fill(<Node<K,V>>this.tail);
    this.head.widths = new Array<u32>(this.maxLevel);
    this.head.widths.fill(0);
  }

  get size(): u32 {
    return this._size;
  }

  getNodeIndex(index: u32): Node<K,V> | null {
    if (index > this._size) {
      return null;
    }
    let actualIndex = index + 1;
    let width: u32 = 0;
    let node = this.head;
    for (let i: i32 = this.level - 1; i >= 0; i--) {
      while (node.widths[i] + width <= actualIndex) {
        width += node.widths[i];
        node = node.forward(i);
      }
    }
    if (width == actualIndex) return  node;
    return null;
  }

  getIndex(index: u32): V {
    let node = this.getNodeIndex(index);
    if (node == null) throw new Error("Element at index " + index.toString() + " doesn't exist");
    return node.value;
  }

  /**
   * Get range of values from startIndex to endIndex exclusive.
   * @param startIndex 
   * @param endIndex 
   */
  getRange(startIndex: u32, endIndex: u32): V[] {
    let node = this.getNodeIndex(startIndex);
    if (node == null) {
      return [];
    } else {
      let res = new Array<V>();
      let index = startIndex;
      while (index < endIndex && node.key != this.tail.key) {
        res.push(node.value);
        node = node.forward(0);
        index++;
      } 
      return res;
    }
  }

  deleteIndex(index: u32): void {
    if (index > this._size ) {
      return;
    }
    let actualIndex = index + 1;
    let width: u32 = 0;
    let node = this.head;
    for (let i: i32 = this.level - 1; i >= 0; i--) {
      while (node.widths[i] + width <= actualIndex) {
        node = node.forward(i);
        width += node.widths[i];
      }
      this._update[i] = node;
    }
    for (let i: i32 = 0; i < <i32>this.level; i++) {
      if (this._update[i].peek(i) != node.key) {
        break;
      }
      this._update[i].set(i, node.forward(i));
    }
    this.deleteNode(node);
    while (this.level > 1 && this.head.peek(this.level) == this.tail.key){
      this.level--;
    }
  }

  set(key: K, value: V): void {
    let node = this.head;
    // let _indexes = new Array<u32>(this.maxLevel);
    let width: u32 = 0;
    for (let i: i32 = this.level - 1; i >= 0; i--) {
      while (node.peek(i) < key) {
        // log(node)
        width += node.widths[i];
        node = node.forward(i);
      }
      this._update[i] = node;
      this._indexes[i] = width;
    }
    let newIndex = width + 1;
    if (node.key == key) {
      node.value = value;
    } else {
      this._size++;
      let newLevel: u32 = this.randomLvl();
      if (newLevel > this.level) {
        this._update.fill(this.head, this.level);
        this.level = newLevel;
      }
      for (let level = this.level; level >= newLevel; level--) {
        this._update[level].widths[level]++;
      }
      node = new Node<K, V>(key, value, newLevel);
      for (let i: u32 = 0; i < newLevel; i++) {
        node.set(i, this._update[i].forward(i));
        this._update[i].set(i, node);
        let updateNewWidth = newIndex - this._indexes[i];
        node.widths[i] = this._update[i].widths[i] + 1  - updateNewWidth;
        this._update[i].widths[i] = updateNewWidth;
      }
    }
  }

  getNode(key: K): Node<K,V> | null {
    let node = this.head;
    for (let i: i32 = this.level - 1; i >= 0; i--) {
      while (node.forward(i).key < key) {
        node = node.forward(i);
      }
    }
    return node.forward(0);
  }

  get(key: K, _default: V): V {
    let node = this.getNode(key);
    if (node != null && node.key == key) return node.value;
    return _default;
  }

  private randomLvl(): u32 {
    let lvl: u32 = 1;
    while (lessThanE(this.rng) && lvl < this.maxLevel) {
      lvl++;
    }
    return lvl;
  }

  deleteNode(node: Node<K,V>): void {
    this._size--;
  }

  delete(key: K): void {
    let node = this.head;
    for (let i: i32 = <i32>this.level - 1; i >= 0; i--) {
      while (node.forward(i).key < key) {
        node = node.forward(i);
      }
      this._update[i] = node;
    }
    node = node.ptrs[0];
    if (node.key == key) {
      for (let i: i32 = 0; i < <i32>this.level; i++) {
        if (this._update[i].peek(i) != node.key) {
          break;
        }
        this._update[i].set(i, node.forward(i));
      }
      this.deleteNode(node);
      while (this.level > 1 && this.head.peek(this.level) == this.tail.key){
        this.level--;
      }
    }

  }
}
