import { AVLTree } from "../../runtime";
import { Chance } from "chance"

const rngSeed = 12345;
const rng = new Chance(rngSeed);
// const rng = {
//     integer: (_: any) => 5
// };
let tree: AVLTree<u32, u32>;

// Return height of the tree - number of nodes on the longest path starting from the root node.
function height<K, V>(tree: AVLTree<K, V>): u32 {
    throw new Error("TODO implement height()");
}

function random(n: i32): Array<u32> {
    const a = new Array<u32>(n);
    return a.map(_ => rng.integer({ min: 0 }));
}

function range<T>(start: T, end: T): Array<T> {
    const a = new Array<T>();
    let x = start;
    while (x < end) {
        a.push(x);
    }
    return a;
}

function maxTreeHeight(n: f64): u64 {
    // From near-sdk-rs TreeMap:
    // h <= C * log2(n + D) + B
    // where:
    // C =~ 1.440, D =~ 1.065, B =~ 0.328
    // (source: https://en.wikipedia.org/wiki/AVL_tree)
    const B: f64 = -0.328;
    const C: f64 = 1.440;
    const D: f64 = 1.065;

    const h = C * Math.log2(n + D) + B;
    return Math.ceil(h) as u64;
}

function isBalanced(tree: AVLTree<u32, u32>): bool {
    throw new Error("TODO implement isBalanced()");
}

describe("AVLTrees should handle", () => {

    beforeAll(() => {
        tree = new AVLTree<u32, u32>("tree1");
    });

    beforeEach(() => {
        tree.clear();
    });

    // Convenience method for tests that insert then remove some values
    const insertThenRemove = (t: AVLTree<u32, u32>, keysToInsert: u32[], keysToRemove: u32[]): void => {
        const map = new Map<u32, u32>();

        keysToInsert.forEach((key, i) => {
            expect(t.get(key)).toThrow("tree should throw if getting removed key");
            t.insert(key, i);
            map.set(key, i);
            expect(t.get(x)).toStrictEqual(1);
        });
        
        keysToRemove.forEach(key => {
            expect(t.get(x)).toStrictEqual(map.get(key));
            t.remove(key);
            expect(t.get(key)).toThrow("tree should throw if getting removed key");
        });
    };

    it("adds key-value pairs", () => {
        const key = 1;
        const value = 2;

        tree.set(key, value);

        expect(tree.has(key)).toBeTruthy("The tree should have the key");
        expect(tree.containsKey(key)).toBeTruthy("The tree should contain the key");
        expect(tree.get(key)).toStrictEqual(value);
    });

    it("checks for non-existent keys", () => {
        const key = 1;

        expect(tree.has(key)).toBeFalsy("tree should not have the key");
        expect(tree.containsKey(key)).toBeFalsy("tree should not contain the key");
    });

    throws("if attempting to get a non-existent key", () => {
        const key = 1;

        tree.get(key);
    });

    it("is empty", () => {
        const key = 42;
        expect(tree.size).toStrictEqual(0);
        expect(height(tree)).toStrictEqual(0);
        expect(tree.get(key)).toThrow("get() should throw for empty tree");
        expect(tree.has(key)).toBeFalsy("empty tree should not have the key");
        expect(tree.containsKey(key)).toBeFalsy("empty tree should not have the key");
        expect(tree.min()).toThrow("min() should throw for empty tree");
        expect(tree.max()).toThrow("max() should throw for empty tree");
        expect(tree.lower(key)).toThrow("min() should throw for empty tree");
        expect(tree.higher(key)).toThrow("min() should throw for empty tree");
    });

    it("rotates left twice when inserting 3 keys in decreasing order", () => {
        expect(height(tree)).toStrictEqual(0);

        tree.insert(3, 3);
        expect(height(tree)).toStrictEqual(1);

        tree.insert(2, 2);
        expect(height(tree)).toStrictEqual(2);

        tree.insert(1, 1);
        expect(height(tree)).toStrictEqual(2);

        const root = tree.root;
        expect(root).toStrictEqual(1);
        // expect(tree.node(root).map(n => n.key)).toStrictEqual(2); FIXME
    });

    it("rotates right twice when inserting 3 keys in increasing order", () => {
        expect(height(tree)).toStrictEqual(0);

        tree.insert(1, 1);
        expect(height(tree)).toStrictEqual(1);

        tree.insert(2, 2);
        expect(height(tree)).toStrictEqual(2);

        tree.insert(3, 3);
        expect(height(tree)).toStrictEqual(2);

        const root = tree.root;
        expect(root).toStrictEqual(1);
        // expect(tree.node(root).map(n => n.key)).toStrictEqual(2); FIXME
    });

    it("sets and gets n key-value pairs in ascending order", () => {
        const n: u32 = 30;
        const cases: u32[] = range(0, n*2);

        let counter = 0;
        cases.forEach(k => {
            if (k % 2 === 0) {
                counter += 1;
                tree.insert(k, counter);
            }
        });

        counter = 0;
        cases.forEach(k => {
            if (k % 2 === 0) {
                counter += 1;
                expect(tree.get(k)).toStrictEqual(counter);
            } else {
                expect(tree.get(k)).toThrow(`tree should not contain key ${k}`);
            }
        });

        expect(height(tree)).toBeLessThanOrEqual(maxTreeHeight(n));
    });

    it("sets and gets n key-value pairs in descending order", () => {
        const n: u32 = 30;
        const cases: u32[] = range(0, n*2).reverse();

        let counter = 0;
        cases.forEach(k => {
            if (k % 2 === 0) {
                counter += 1;
                tree.insert(k, counter);
            }
        });

        counter = 0;
        cases.forEach(k => {
            if (k % 2 === 0) {
                counter += 1;
                expect(tree.get(k)).toStrictEqual(counter);
            } else {
                expect(tree.get(k)).toThrow(`tree should not contain key ${k}`);
            }
        });

        expect(height(tree)).toBeLessThanOrEqual(maxTreeHeight(n));
    });

    it("sets and gets n random key-value pairs", () => {
        range(1, 10).forEach(k => { // tree size is 2^k
            const n = 1 << k;
            const input: u32[] = random(n);

            input.forEach(x => {
                tree.insert(x, 42);
            });

            input.forEach(x => {
                expect(tree.get(x)).toStrictEqual(42);
            });

            expect(height(tree)).toBeLessThanOrEqual(maxTreeHeight(n));
            
            tree.clear();
        });
    });

    it("gets the minimum key", () => {
        const n: u32 = 30;
        const keys = random(n);

        keys.forEach(x => {
            tree.insert(x, 1);
        });

        const min = (keys.sort(), keys[0]);
        expect(tree.min()).toStrictEqual(min);
    });

    it("gets the maximum key", () => {
        const n: u32 = 30;
        const keys = random(n);

        keys.forEach(x => {
            tree.insert(x, 1);
        });

        const max = (keys.sort(), keys[keys.length-1]);
        expect(tree.max()).toStrictEqual(max);
    });

    it("gets the key lower than the given key", () => {
        const keys: u32[] = [10, 20, 30, 40, 50];

        keys.forEach(x => {
            tree.insert(x, 1);
        });

        expect(tree.lower(5)).toThrow("5 is lower than tree.min(), which is 10");
        expect(tree.lower(10)).toThrow("10 is equal to tree.min(), which is 10");
        expect(tree.lower(11)).toStrictEqual(10);
        expect(tree.lower(20)).toStrictEqual(10);
        expect(tree.lower(49)).toStrictEqual(40);
        expect(tree.lower(50)).toStrictEqual(40);
        expect(tree.lower(51)).toStrictEqual(50);
    });

    it("gets the key higher than the given key", () => {
        const keys: u32[] = [10, 20, 30, 40, 50];

        keys.forEach(x => {
            tree.insert(x, 1);
        });

        expect(tree.higher(5)).toStrictEqual(10);
        expect(tree.higher(10)).toStrictEqual(20);
        expect(tree.higher(11)).toStrictEqual(20);
        expect(tree.higher(20)).toStrictEqual(30);
        expect(tree.higher(49)).toStrictEqual(50);
        expect(tree.higher(50)).toThrow("50 is equal to tree.max(), which is 50");
        expect(tree.higher(51)).toThrow("51 is greater than tree.max(), which is 50");
    });

    it("gets the key lower than or equal to the given key", () => {
        const keys: u32[] = [10, 20, 30, 40, 50];

        keys.forEach(x => {
            tree.insert(x, 1);
        });

        expect(tree.floorKey(5)).toThrow("5 is lower than tree.min(), which is 10");
        expect(tree.floorKey(10)).toStrictEqual(10);
        expect(tree.floorKey(11)).toStrictEqual(10);
        expect(tree.floorKey(20)).toStrictEqual(20);
        expect(tree.floorKey(49)).toStrictEqual(40);
        expect(tree.floorKey(50)).toStrictEqual(50);
        expect(tree.floorKey(51)).toStrictEqual(50);
    });

    it("gets the key greater than or equal to the given key", () => {
        const keys: u32[] = [10, 20, 30, 40, 50];

        keys.forEach(x => {
            tree.insert(x, 1);
        });

        expect(tree.ceilKey(5)).toStrictEqual(10);
        expect(tree.ceilKey(10)).toStrictEqual(10);
        expect(tree.ceilKey(11)).toStrictEqual(20);
        expect(tree.ceilKey(20)).toStrictEqual(20);
        expect(tree.ceilKey(49)).toStrictEqual(50);
        expect(tree.ceilKey(50)).toStrictEqual(50);
        expect(tree.ceilKey(51)).toThrow("51 is greater than tree.max(), which is 50");
    });

    it("removes 1 key", () => {
        const key = 1;
        const value = 2;

        tree.insert(key, value);
        expect(tree.get(key)).toStrictEqual(value);
        expect(tree.size).toStrictEqual(1);
        
        tree.remove(key);
        expect(tree.get(key)).toThrow("tree should throw if getting removed key");
        expect(tree.size).toStrictEqual(0);
    });

    it("removes non-existent key", () => {
        const key = 1;
        const value = 2;

        tree.insert(key, value);
        expect(tree.get(key)).toStrictEqual(value);
        expect(tree.size).toStrictEqual(1);
        
        tree.remove(value);
        expect(tree.get(key)).toStrictEqual(value);
        expect(tree.size).toStrictEqual(1);
    });

    it("removes 3 keys in descending order", () => {
        const keys: u32[] = [3, 2, 1];
        insertThenRemove(tree, keys, keys);
        expect(tree.size).toStrictEqual(0);
    });

    it("removes 3 keys in ascending order", () => {
        const keys: u32[] = [1, 2, 3];
        insertThenRemove(tree, keys, keys);
        expect(tree.size).toStrictEqual(0);
    });

    it("removes 7 random keys", () => {
        const keys: u32[] = [
            2104297040,
            552624607,
            4269683389,
            3382615941,
            155419892,
            4102023417,
            1795725075
        ];
        insertThenRemove(tree, keys, keys);
        expect(tree.size).toStrictEqual(0);
    });

    // test_remove_7_regression_2()

    it("removes 9 random keys", () => {
        const keys: u32[] = [
            1186903464,
            506371929,
            1738679820,
            1883936615,
            1815331350,
            1512669683,
            3581743264,
            1396738166,
            1902061760
        ];
        insertThenRemove(tree, keys, keys);
        expect(tree.size).toStrictEqual(0);
    });

    it("removes 20 random keys", () => {
        const keys: u32[] = [
            552517392, 3638992158, 1015727752, 2500937532, 638716734,
            586360620, 2476692174, 1425948996, 3608478547, 757735878,
            2709959928, 2092169539, 3620770200, 783020918, 1986928932,
            200210441, 1972255302, 533239929, 497054557, 2137924638
        ];
        insertThenRemove(tree, keys, keys);
        expect(tree.size).toStrictEqual(0);
    });

    // test_remove_7_regression()

    it("inserts 8 keys then removes 4 keys", () => {
        const keysToInsert: u32[] = [882, 398, 161, 76];
        const keysToRemove: u32[] = [242, 687, 860, 811];

        insertThenRemove(tree, keysToInsert.concat(keysToRemove), keysToRemove);

        expect(tree.size).toStrictEqual(keysToInsert.length);
        
        keysToInsert.forEach((key, i) => {
            expect(tree.get(key)).toStrictEqual(i);
        });
    });

    it("removes n random keys", () => {
        const n: u32 = 20;
        const keys = random(n);

        const set = new Set<u32>();

        keys.forEach((key, i) => {
            tree.insert(key, i);
            set.add(key);
        });

        expect(tree.size).toStrictEqual(set.size);
        
        keys.forEach((key, i) => {
            expect(tree.get(key)).toStrictEqual(i);
            tree.remove(key);
            expect(tree.get(x)).toThrow("tree should throw if getting removed key");
        });

        expect(tree.size).toStrictEqual(0);
    });

    it("removes the root of the tree", () => {
        tree.insert(2, 1);
        tree.insert(3, 1);
        tree.insert(1, 1);
        tree.insert(4, 1);

        expect(tree.root).toStrictEqual(2);
        tree.remove(2);
        expect(tree.root).toStrictEqual(3);

        expect(tree.get(1)).toStrictEqual(1);
        expect(tree.get(2)).toThrow("tree should throw when getting removed key (root of the tree)");
        expect(tree.get(3)).toStrictEqual(1);
        expect(tree.get(4)).toStrictEqual(1);
    });

    it("inserts 2 keys then removes 2 keys", () => {
        const keysToInsert = [11760225, 611327897];
        const keysToRemove = [2982517385, 1833990072];

        insertThenRemove(tree, keysToInsert, keysToRemove);
        
        expect(height(tree)).toBeLessThanOrEqual(maxTreeHeight(tree.size));
    });

    it("inserts n duplicate keys", () => {
        range(0, 30).forEach((key, i) => {
            tree.insert(key, i);
            tree.insert(42, i);
        });

        expect(tree.get(42)).toStrictEqual(29); // most recent value inserted for key 42
        expect(tree.size).toStrictEqual(31);
    });

    it("inserts 2n keys then removes n random keys", () => {
        range(1, 4).forEach(k => {
            const set = new Set<u32>();

            const n = 1 << k;
            const keysToInsert = random(n);
            const keysToRemove = random(n);
            const allKeys = keysToInsert.concat(keysToRemove);

            insertThenRemove(tree, allKeys, keysToRemove);
            allKeys.forEach(key => set.add(key));
            keysToRemove.forEach(key => set.delete(key));

            expect(tree.size).toStrictEqual(set.size);
            expect(height(tree)).toBeLessThanOrEqual(maxTreeHeight(n));

            tree.clear();
            expect(tree.size).toStrictEqual(0);
        });
    });

    it("does nothing when removing while empty", () => {
        expect(tree.size).toStrictEqual(0);
        tree.remove(1);
        expect(tree.size).toStrictEqual(0);
    });

    it("returns an equivalent array", () => {
        tree.insert(1, 41);
        tree.insert(2, 42);
        tree.insert(3, 43);

        throw new Error("TODO implement toVec() for AVLTree");
        // const a = [];
        // expect(tree.toVec()).toStrictEqual(a);
    });

    it("returns an empty array when empty", () => {
        throw new Error("TODO implement toVec() for AVLTree");
        // expect(tree.toVec()).toStrictEqual([]);
    });

    it("returns a range of values for a given start key and end key", () => {
        const keys =    [10, 20, 30, 40, 50, 45, 35, 25, 15,  5];
        const values =  [ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10];

        keys.forEach((key, i) => tree.insert(key, values[i]));

        expect(tree.values(20, 30)).toStrictEqual([2, 8]);
        expect(tree.values(11, 41)).toStrictEqual([9, 2, 8, 3, 7, 4]);
        expect(tree.values(20, 41)).toStrictEqual([2, 8, 3, 7, 4]);
        expect(tree.values(21, 45)).toStrictEqual([8, 3, 7, 4]);
        expect(tree.values(26, 30)).toStrictEqual([]);
        expect(tree.values(25, 25)).toStrictEqual([8]);
        expect(tree.values(26, 25)).toStrictEqual([]);
        expect(tree.values(40, 50)).toStrictEqual([4, 6]);
        expect(tree.values(40, 51)).toStrictEqual([4, 6, 5]);
        expect(tree.values(4, 5)).toStrictEqual([]);
        expect(tree.values(5, 51)).toStrictEqual([10, 1, 9, 2, 8, 3, 7, 4, 6, 5]);
    });

    it("remains balanced after insertions and deletions", () => {
        const keysToInsert = [2, 3, 4];
        const keysToRemove = [0, 0, 0, 1];

        insertThenRemove(tree, keysToInsert, keysToRemove);
        expect(isBalanced(tree)).toBeTruthy();
    });

    it("remains balanced after more insertions and deletions", () => {
        const keysToInsert = [1, 2, 0, 3, 5, 6];
        const keysToRemove = [0, 0, 0, 3, 5, 6, 7, 4];

        insertThenRemove(tree, keysToInsert, keysToRemove);
        expect(isBalanced(tree)).toBeTruthy();
    });
})
