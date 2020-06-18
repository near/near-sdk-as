import { AVLTree } from "../runtime";

export function insert(key: u32, value: u32): void {
    const tree = new AVLTree<u32, u32>("tree");
    tree.insert(key, value);
}

export function remove(key: u32): void {
    const tree = new AVLTree<u32, u32>("tree");
    tree.remove(key);
}

export function has(key: u32): bool {
    const tree = new AVLTree<u32, u32>("tree");
    return tree.has(key);
}

export function getSome(key: u32): u32 {
    const tree = new AVLTree<u32, u32>("tree");
    return tree.getSome(key);
}

export function keys(): u32[] {
    const tree = new AVLTree<u32, u32>("tree");
    return tree.keys(u32.MIN_VALUE, u32.MAX_VALUE);
}

export function values(): u32[] {
    const tree = new AVLTree<u32, u32>("tree");
    return tree.values(u32.MIN_VALUE, u32.MAX_VALUE);
}

export function isBalanced(): bool {
    const tree = new AVLTree<u32, u32>("tree");
    return tree.isBalanced();
}

export function height(): u32 {
    const tree = new AVLTree<u32, u32>("tree");
    return tree.height(tree.rootId);
}

export function size(): u32 {
    const tree = new AVLTree<u32, u32>("tree");
    return tree.size;
}