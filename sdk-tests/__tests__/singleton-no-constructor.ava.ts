import { NearAccount, Workspace, toYocto } from "near-workspaces-ava";

const ALICE = "alice.test.near";
const BOB = "bob.test.near";
const SINGLETON = "singleton.test.near";

const workspace = Workspace.init(async ({ root }) => {
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

workspace.test(
  "should only initialize once",
  async (t, { alice, bob, singleton }) => {
    await init(alice);
    let _init = async () => await init(alice);
    (await t.throwsAsync(_init(), { message: new RegExp("contract is already initialized") }));
  }
);
workspace.test(
  "shouldn't work if not initialized",
  async (t, { alice, bob, singleton }) => {
    let res = async () => await alice.call(SINGLETON, "owner", {});
    (await t.throwsAsync(res(), { message: new RegExp("contract is not initialized") }));
  }
);

workspace.test("should return owner", async (t, { alice, bob, singleton }) => {
  await init(alice);
  let res = await singleton.view("owner");
  await t.deepEqual(res, ALICE);
});

workspace.test("should be able to visit", async (t, { alice, bob, singleton }) => {
  await init(alice);
  let res = await bob.call_raw(SINGLETON, "visit", {});
  // console.log(JSON.stringify(res, null, 2));
  t.true(res.logs.includes("Visited the first time by bob.test.near"));
  t.true(await singleton.view("hasVisited", { visitor: BOB }));
  t.is(await singleton.view("lastVisited", {}), BOB);
});

workspace.test(
  "should be able to visit without decorator",
  async (t, { alice, bob, singleton }) => {
    await init(alice);
    let res = await bob.call_raw(
      SINGLETON,
      "visit_without_updated_decorator",
      {}
    );
    t.true(res.logs.includes("Visited the first time by bob.test.near"));
    t.true(await singleton.view("hasVisited", { visitor: BOB }));
    t.is(await singleton.view("lastVisited", {}), BOB);
  }
);

workspace.test(
  "should not update state to visit_without_change decorator",
  async (t, { alice, bob, singleton }) => {
    await init(alice);
    let res = await bob.call_raw(SINGLETON, "visit_without_change", {});
    t.true(res.logs.includes("Visited the first time by bob.test.near"));
    t.is(await singleton.view("lastVisited", {}), "NULL");
  }
);

workspace.test(
  "should not have private methods",
  async (t, { alice }) => {
    await init(alice);
    let res = async () => await alice.call(SINGLETON, "hasNotVisited", {});
    (await t.throwsAsync(res(), { message: new RegExp("Contract method is not found") }));

  }
);
