import { NearAccount, Runner, toYocto } from "near-runner";

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

const AVL = "avl.test.near";
const ALICE = "alice.test.near";

async function has(acct: NearAccount, key: number): Promise<boolean> {
  return <boolean>await acct.view("has", { key });
}

async function insert(
  acct: NearAccount,
  key: number,
  value: number
): Promise<void> {
  await acct.call(AVL, "insert", { key, value });
}

async function remove(acct: NearAccount, key: number): Promise<void> {
  await acct.call(AVL, "remove", { key });
}

async function getSome(acct: NearAccount, key: number): Promise<number> {
  return <number>await acct.view("getSome", { key });
}

async function size(acct: NearAccount): Promise<number> {
  return <number>await acct.view("size");
}

async function isBalanced(acct: NearAccount): Promise<boolean> {
  return <boolean>await acct.view("isBalanced");
}

async function height(acct: NearAccount): Promise<number> {
  return <number>await acct.view("height");
}

async function keys(acct: NearAccount): Promise<number[]> {
  return <number[]>await acct.view("keys");
}

async function values(acct: NearAccount): Promise<number[]> {
  return <number[]>await acct.view("values");
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

async function insertKeys(
  root: NearAccount,
  avl: NearAccount,
  keysToInsert: number[],
  map: Map<number, number>
): Promise<void> {
  for (let i = 0; i < keysToInsert.length; ++i) {
    const key = keysToInsert[i];
    expect(await has(avl, key)).toBeFalsy();

    await insert(root, key, i);
    expect(await getSome(avl, key)).toStrictEqual(i);

    if (map) {
      map.set(key, i);
      expect(await getSome(avl, key)).toStrictEqual(map.get(key)!);
    }
  }
}

async function removeKeys(
  root: NearAccount,
  avl: NearAccount,
  keysToRemove: number[],
  map: Map<number, number>
): Promise<void> {
  for (let i = 0; i < keysToRemove.length; ++i) {
    const key = keysToRemove[i];

    if (map && map.has(key)) {
      expect(await getSome(avl, key)).toStrictEqual(map.get(key)!);
      map.delete(key);
    }

    await remove(root, key);
    expect(await has(avl, key)).toBeFalsy();
  }
}

async function generateRandomTree(
  root: NearAccount,
  avl: NearAccount,
  n: number
): Promise<Map<number, number>> {
  const map = new Map<number, number>();
  const keysToInsert = random(2 * n);
  const keysToRemove = keysToInsert.slice(0, n);

  await insertKeys(root, avl, keysToInsert, map);
  await removeKeys(root, avl, keysToRemove, map);

  return map;
}

describe("avl tree contract calls", () => {
  jest.setTimeout(100_000);
  const runner = Runner.create(async ({ root }) => {
    const alice = await root.createAccount(ALICE, {
      initialBalance: toYocto("200"),
    });
    const avl = await root.createAndDeploy(
      AVL,
      __dirname + "/../build/debug/avlTreeContract.wasm"
    );
    return { alice, avl };
  });

  it("remains balanced and sorted after 2n insertions and n deletions when called in a contract", async () => {
    console.log("starting actual test");
    await runner.run(async ({ alice, avl }) => {
      console.log("in main test func");
      const root = alice;
      const n = 10;
      const map = await generateRandomTree(root, avl, n);
      // console.log("generated Tree", map);
      const sortedKeys = Array.from(map.keys()).sort((a, b) => a - b);
      const sortedValues = [];
      for (let i = 0; i < sortedKeys.length; ++i) {
        sortedValues.push(map.get(sortedKeys[i])!);
      }

      expect(await size(avl)).toStrictEqual(n);
      expect(await isBalanced(avl)).toBeTruthy();
      expect(await height(avl)).toBeLessThanOrEqual(maxTreeHeight(n));
      expect(await keys(avl)).toStrictEqual(sortedKeys);
      expect(await values(avl)).toStrictEqual(sortedValues);
    });
  });
});
