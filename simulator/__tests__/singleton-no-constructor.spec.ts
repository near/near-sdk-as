import { Account, Runner, toYocto } from "near-runner";

const ALICE = "alice.test.near";
const BOB = "bob.test.near";
const SINGLETON = "singleton.test.near";
let runner: Runner;
jest.setTimeout(150_000);

// function getErrorMsg(res: any) {
//   try {
//     return res.err["FunctionCallError"]["HostError"]["GuestPanic"].panic_msg;
//   } catch (e) {
//     throw new Error(JSON.stringify(res.err, null, 2));
//   }
// }

describe("cross contract calls", () => {
  beforeEach(async () => {
    // runtime = new Runtime();
    // alice = runtime.newAccount("alice");
    // singleton = runtime.newAccount(
    //   "singleton",
    //   __dirname + "/../build/debug/singleton-no-constructor.wasm"
    // );
    runner = await Runner.create(async ({ root }) => {
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
  });

  async function init(alice: Account) {
    return alice.call(SINGLETON, "setOwner", { owner: ALICE });
  }

  it("should only initialize once", async () => {
    // init();
    // let res = init();
    // expect(getErrorMsg(res)).toContain("contract is already initialized");
    await runner.run(async ({ alice, bob, singleton }) => {
      await init(alice);
      let _init = async () => await init(alice);
      await expect(_init()).rejects.toThrowError(
        "contract is already initialized"
      );
    });
  });
  it("shouldn't work if not initialized", async () => {
    // let res = alice.call_other("singleton", "owner", {});
    // expect(getErrorMsg(res)).toContain("contract is not initialized");
    await runner.run(async ({ alice, bob, singleton }) => {
      let res = async () => await alice.call(SINGLETON, "owner", {});
      await expect(res()).rejects.toThrowError("contract is not initialized");
    });
  });

  it("should return owner", async () => {
    // init();
    // let res = singleton.view("owner");
    // expect(res.return_data).toStrictEqual("alice");
    await runner.run(async ({ alice, bob, singleton }) => {
      await init(alice);
      let res = await singleton.view("owner");
      await expect(res).toStrictEqual(ALICE);
    });
  });

  it("should be able to visit", async () => {
    // init();
    // const bob = runtime.newAccount("bob");
    // let res = bob.call_other("singleton", "visit");
    // expect(res.result.outcome.logs).toContainEqual(
    //   "Visited the first time by bob"
    // );
    // expect(singleton.view("hasVisited", { visitor: "bob" }).return_data).toBe(
    //   true
    // );
    // expect(singleton.view("lastVisited", {}).return_data).toBe("bob");

    await runner.run(async ({ alice, bob, singleton }) => {
      await init(alice);
      let res = await bob.call_raw(SINGLETON, "visit", {});
      // console.log(JSON.stringify(res, null, 2));
      expect(res.receipts_outcome[0].outcome.logs).toContainEqual(
        "Visited the first time by bob.test.near"
      );
      expect(await singleton.view("hasVisited", { visitor: BOB })).toBe(true);
      expect(await singleton.view("lastVisited", {})).toBe(BOB);
    });
  });

  it("should be able to visit without decorator", async () => {
    // init();
    // const bob = runtime.newAccount("bob");
    // let res = bob.call_other("singleton", "visit_without_updated_decorator");
    // expect(res.result.outcome.logs).toContainEqual(
    //   "Visited the first time by bob"
    // );
    // expect(singleton.view("hasVisited", { visitor: "bob" }).return_data).toBe(
    //   true
    // );
    // expect(singleton.view("lastVisited", {}).return_data).toBe("bob");

    await runner.run(async ({ alice, bob, singleton }) => {
      await init(alice);
      let res = await bob.call_raw(
        SINGLETON,
        "visit_without_updated_decorator",
        {}
      );
      expect(res.receipts_outcome[0].outcome.logs).toContainEqual(
        "Visited the first time by bob.test.near"
      );
      expect(await singleton.view("hasVisited", { visitor: BOB })).toBe(true);
      expect(await singleton.view("lastVisited", {})).toBe(BOB);
    });
  });

  it("should not update state to visit_without_change decorator", async () => {
    // init();
    // const bob = runtime.newAccount("bob");
    // let res = bob.call_other("singleton", "visit_without_change");
    // expect(res.result.outcome.logs).toContainEqual(
    //   "Visited the first time by bob"
    // );
    // expect(singleton.view("lastVisited", {}).return_data).toBe("NULL");

    await runner.run(async ({ alice, bob, singleton }) => {
      await init(alice);
      let res = await bob.call_raw(SINGLETON, "visit_without_change", {});
      expect(res.receipts_outcome[0].outcome.logs).toContainEqual(
        "Visited the first time by bob.test.near"
      );
      expect(await singleton.view("lastVisited")).toBe("NULL");
    });
  });

  it("should not have private methods", async () => {
    // init();
    // let res = alice.call_other("singleton", "hasNotVisited", {});
    // expect(res.err["FunctionCallError"]["MethodResolveError"]).toContain(
    //   "MethodNotFound"
    // );

    await runner.run(async ({ alice, bob, singleton }) => {
      await init(alice);
      let res = async () => await alice.call(SINGLETON, "hasNotVisited", {});
      await expect(res()).rejects.toThrowError("Contract method is not found");
    });
  });
});
