import { NearAccount, Runner, toYocto } from "near-runner-ava";

const ALICE = "alice.test.near";
const BOB = "bob.test.near";
const SINGLETON = "singleton.test.near";

const runner = Runner.create(async ({ root }) => {
  const alice = await root.createAccount(ALICE, {
    initialBalance: toYocto("200"),
  });
  const bob = await root.createAccount(BOB, {
    initialBalance: toYocto("200"),
  });
  const singleton = await root.createAndDeploy(
    SINGLETON,
    __dirname + "/../build/debug/singleton-no-constructor.wasm"
  );
  return { alice, bob, singleton };
});

async function init(alice: NearAccount) {
  return alice.call(SINGLETON, "setOwner", { owner: ALICE });
}

runner.test(
  "should only initialize once",
  async (t, { alice, bob, singleton }) => {
    await init(alice);
    let _init = async () => await init(alice);
    await expect(_init()).rejects.toThrowError(
      "contract is already initialized"
    );
  }
);
runner.test(
  "shouldn't work if not initialized",
  async (t, { alice, bob, singleton }) => {
    let res = async () => await alice.call(SINGLETON, "owner", {});
    await expect(res()).rejects.toThrowError("contract is not initialized");
  }
);

runner.test("should return owner", async (t, { alice, bob, singleton }) => {
  await init(alice);
  let res = await singleton.view("owner");
  await expect(res).toStrictEqual(ALICE);
});

runner.test("should be able to visit", async (t, { alice, bob, singleton }) => {
  await init(alice);
  let res = await bob.call_raw(SINGLETON, "visit", {});
  // console.log(JSON.stringify(res, null, 2));
  expect(res.logs).toContainEqual("Visited the first time by bob.test.near");
  expect(await singleton.view("hasVisited", { visitor: BOB })).toBe(true);
  expect(await singleton.view("lastVisited", {})).toBe(BOB);
});

runner.test(
  "should be able to visit without decorator",
  async (t, { alice, bob, singleton }) => {
    await init(alice);
    let res = await bob.call_raw(
      SINGLETON,
      "visit_without_updated_decorator",
      {}
    );
    expect(res.logs).toContainEqual("Visited the first time by bob.test.near");
    expect(await singleton.view("hasVisited", { visitor: BOB })).toBe(true);
    expect(await singleton.view("lastVisited", {})).toBe(BOB);
  }
);

runner.test(
  "should not update state to visit_without_change decorator",
  async (t, { alice, bob, singleton }) => {
    await init(alice);
    let res = await bob.call_raw(SINGLETON, "visit_without_change", {});
    expect(res.logs).toContainEqual("Visited the first time by bob.test.near");
    expect(await singleton.view("lastVisited")).toBe("NULL");
  }
);

runner.test(
  "should not have private methods",
  async (t, { alice }) => {
    await init(alice);
    let res = async () => await alice.call(SINGLETON, "hasNotVisited", {});
    await expect(res()).rejects.toThrowError("Contract method is not found");
  }
);
