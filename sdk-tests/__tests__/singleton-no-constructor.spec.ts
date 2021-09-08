import { NearAccount, Runner, toYocto } from "near-runner";

const ALICE = "alice.test.near";
const BOB = "bob.test.near";
const SINGLETON = "singleton.test.near";

describe("singleton no constructor", () => {
  jest.setTimeout(150_000);

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

  test.concurrent("should only initialize once", async () => {
    await runner.run(async ({ alice, bob, singleton }) => {
      await init(alice);
      let _init = async () => await init(alice);
      await expect(_init()).rejects.toThrowError(
        "contract is already initialized"
      );
    });
  });
  test.concurrent("shouldn't work if not initialized", async () => {
    await runner.run(async ({ alice, bob, singleton }) => {
      let res = async () => await alice.call(SINGLETON, "owner", {});
      await expect(res()).rejects.toThrowError("contract is not initialized");
    });
  });

  test.concurrent("should return owner", async () => {
    await runner.run(async ({ alice, bob, singleton }) => {
      await init(alice);
      let res = await singleton.view("owner");
      await expect(res).toStrictEqual(ALICE);
    });
  });

  test.concurrent("should be able to visit", async () => {
    await runner.run(async ({ alice, bob, singleton }) => {
      await init(alice);
      let res = await bob.call_raw(SINGLETON, "visit", {});
      // console.log(JSON.stringify(res, null, 2));
      expect(res.logs).toContainEqual(
        "Visited the first time by bob.test.near"
      );
      expect(await singleton.view("hasVisited", { visitor: BOB })).toBe(true);
      expect(await singleton.view("lastVisited", {})).toBe(BOB);
    });
  });

  test.concurrent("should be able to visit without decorator", async () => {
    await runner.run(async ({ alice, bob, singleton }) => {
      await init(alice);
      let res = await bob.call_raw(
        SINGLETON,
        "visit_without_updated_decorator",
        {}
      );
      expect(res.logs).toContainEqual(
        "Visited the first time by bob.test.near"
      );
      expect(await singleton.view("hasVisited", { visitor: BOB })).toBe(true);
      expect(await singleton.view("lastVisited", {})).toBe(BOB);
    });
  });

  test.concurrent(
    "should not update state to visit_without_change decorator",
    async () => {
      await runner.run(async ({ alice, bob, singleton }) => {
        await init(alice);
        let res = await bob.call_raw(SINGLETON, "visit_without_change", {});
        expect(res.logs).toContainEqual(
          "Visited the first time by bob.test.near"
        );
        expect(await singleton.view("lastVisited")).toBe("NULL");
      });
    }
  );

  test.concurrent("should not have private methods", async () => {
    await runner.run(async ({ alice, bob, singleton }) => {
      await init(alice);
      let res = async () => await alice.call(SINGLETON, "hasNotVisited", {});
      await expect(res()).rejects.toThrowError("Contract method is not found");
    });
  });
});
