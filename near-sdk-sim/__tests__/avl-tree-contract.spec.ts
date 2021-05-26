import { ExecutionResult, init_simulator, to_yocto, UserAccount } from "..";

import * as path from "path";

const avlTreeContract_path = path.resolve("build/debug/avlTreeContract.wasm");
// copied and modified from https://gist.github.com/lsenta/15d7f6fcfc2987176b54
class LittleRNG {
  private seed: number;

  constructor(seed: number) {
    this.seed = seed;
  }

  next(): number {
    this.seed = (this.seed * 9301 + 49297) % 233280;
    return Math.floor((this.seed / 233281) * 4294967295);
  }
}

let root: UserAccount;
let avlTreeContract: UserAccount, alice: UserAccount;
const CONTRACT_NAME = "avlcontract";

function call(method: string, args?: any): ExecutionResult {
  return alice.call(CONTRACT_NAME, method, args);
}

function callWithValue<T>(method: string, args?: any): T {
  return call(method, args).unwrap_json_value<T>();
}

function view<T>(method: string, args?: any): T {
  return avlTreeContract.view_self(method, args).value as T;
}

function has(key: number): boolean {
  return view("has", { key })
}

function insert(key: number, value: number): void {
  call("insert", { key, value });
}

function getSome(key: number): number {
  return view("getSome", { key })
}

function remove(key: number): void {
  call("remove", { key });
}

function size(): number {
  return view("size")
}

function isBalanced(): boolean {
  return view("isBalanced")
}

function height(): number {
  return view("height")
}

function keys(): number[] {
  return view("keys")
}

function values(): number[] {
  return view("values");
}

function random(n: number): number[] {
  const rng = new LittleRNG(12345);
  const keys = [];

  for (let i = 0; i < n; ++i) {
    keys.push(rng.next());
  }

  return keys;
}

function maxTreeHeight(n: number): number {
  // From near-sdk-rs TreeMap:
  // h <= C * log2(n + D) + B
  // where:
  // C =~ 1.440, D =~ 1.065, B =~ 0.328
  // (source: https://en.wikipedia.org/wiki/AVL_tree)
  const B = -0.328;
  const C = 1.44;
  const D = 1.065;

  const h = C * Math.log2(n + D) + B;
  return Math.ceil(h);
}

function insertKeys(keysToInsert: number[], map: Map<number, number>): void {
  for (let i = 0; i < keysToInsert.length; ++i) {
    const key = keysToInsert[i];
    expect(has(key)).toBeFalsy();

    insert(key, i);
    expect(getSome(key)).toStrictEqual(i);

    if (map) {
      map.set(key, i);
      expect(getSome(key)).toStrictEqual(map.get(key)!);
    }
  }
}

function removeKeys(keysToRemove: number[], map: Map<number, number>): void {
  for (let i = 0; i < keysToRemove.length; ++i) {
    const key = keysToRemove[i];

    if (map && map.has(key)) {
      expect(getSome(key)).toStrictEqual(map.get(key)!);
      map.delete(key);
    }

    remove(key);
    expect(has(key)).toBeFalsy();
  }
}

function generateRandomTree(n: number): Map<number, number> {
  const map = new Map<number, number>();
  const keysToInsert = random(2 * n);
  const keysToRemove = [];
  for (let i = 0; i < n; ++i) {
    keysToRemove.push(keysToInsert[i]);
  }

  insertKeys(keysToInsert, map);
  removeKeys(keysToRemove, map);

  return map;
}

describe("avl tree contract calls", () => {
  beforeEach(() => {
    root = init_simulator();
    alice = root.create_user("alice", "17200000000000000000000000");
    avlTreeContract = root.deploy(
      avlTreeContract_path,
      CONTRACT_NAME,
    );
  });

  it("remains balanced and sorted after 2n insertions and n deletions when called in a contract", () => {
    const n = 10;
    const map = generateRandomTree(n);
    const sortedKeys = Array.from(map.keys()).sort((a, b) => a - b);
    const sortedValues = [];
    for (let i = 0; i < sortedKeys.length; ++i) {
      sortedValues.push(map.get(sortedKeys[i])!);
    }

    expect(size()).toStrictEqual(n);
    expect(isBalanced()).toBeTruthy();
    expect(height()).toBeLessThanOrEqual(maxTreeHeight(n));
    expect(keys()).toStrictEqual(sortedKeys);
    expect(values()).toStrictEqual(sortedValues);
  });
});
