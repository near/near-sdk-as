import { NearAccount, Workspace, ava, toYocto } from "near-workspaces-ava";
import { main } from "asbuild";
import { join } from "path";

const ALICE = "alice.test.near";
const BOB = "bob.test.near";
const SINGLETON = "singleton.test.near";

async function compile(contract: string): Promise<void> {
  function asb(succ: any, fail: any) {
    main(
      [
        join(__dirname, "../assembly/__tests__", contract + ".ts"),
        "--target",
        "debug",
        "--wat",
      ],
      {},
      (err) => {
        if (err) {
          throw err;
          return -1;
        } else {
          succ();
          return 1;
        }
      }
    );
  }
  return new Promise(asb);
}

ava("shouldn't allow methods with the same name as init function", async (t) => {
  try {
    await compile("singleton-fail");
    t.is(true, false);
  } catch (e: any) {
    t.regex(e.message,
      new RegExp(`Method "new" already used; cannot export constructor using the same name`)
    );
  }
});


const workspace = Workspace.init(async ({ root }) => {
  const alice = await root.createAccount(ALICE, {
    initialBalance: toYocto("200"),
  });
  const bob = await root.createAccount(BOB, {
    initialBalance: toYocto("200"),
  });
  const singleton = await root.createAndDeploy(
    SINGLETON,
    __dirname + "/../build/debug/singleton.wasm"
  );
  return { alice, bob, singleton };
});

async function init(alice: NearAccount) {
  return await alice.call(SINGLETON, "new", { owner: ALICE });
}

workspace.test("should only initialize once", (async (t, { alice, bob, singleton }) => {
  await init(alice);
  let _init = async () => await init(alice);
  (await t.throwsAsync(_init(), { message: new RegExp("contract is already initialized") }));

}));

workspace.test("shouldn't work if not initialized", (async (t, { alice, bob, singleton }) => {
  let res = async () => await alice.call(SINGLETON, "owner", {});
  (await t.throwsAsync(res(), { message: new RegExp("contract is not initialized") }));
}));

workspace.test("should return owner", async (t, { alice, bob, singleton }) => {
  await init(alice);
  let res = await singleton.view("owner");
  await t.deepEqual(res, ALICE);
});

workspace.test("should be able to visit", async (t, { alice, bob, singleton }) => {
  await init(alice);
  let res = await bob.call_raw(SINGLETON, "visit", {});
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

workspace.test("should not allow contract private methods", (async (t, { alice, bob, singleton }) => {
  await init(alice);
  let res = async () => await alice.call(SINGLETON, "privateMethod", {});
  (await t.throwsAsync(res(), { message: new RegExp("Only singleton.test.near can call this method") }));

}));

workspace.test(
  "should allow contract private methods if called by contract",
  async (t, { alice, bob, singleton }) => {
    await init(alice);
    const res = await alice.call(SINGLETON, "callPrivate", {});
    t.is(res, "in private method");
  }
);

workspace.test("works with static members", (async (t, { alice, bob, singleton }) => {
  await init(alice);
  let res = await singleton.view("get_storage_key");
  t.is(res, "key");
}));

