import { AVLTree } from "near-sdk-core";

const tree = new AVLTree<u32, u32>("tree");

export function insert(key: u32, value: u32): void {
  tree.insert(key, value);
}

export function remove(key: u32): void {
  tree.remove(key);
}

export function has(key: u32): bool {
  return tree.has(key);
}

export function getSome(key: u32): u32 {
  return tree.getSome(key);
}

export function keys(): u32[] {
  return tree.keys(u32.MIN_VALUE, u32.MAX_VALUE);
}

export function values(): u32[] {
  return tree.values(u32.MIN_VALUE, u32.MAX_VALUE);
}

export function isBalanced(): bool {
  // @ts-ignore
  return tree.isBalanced();
}

export function height(): u32 {
  return tree.height;
}

export function size(): u32 {
  return tree.size;
}
