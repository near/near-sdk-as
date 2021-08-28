import { Account, Runner, toYocto } from "near-runner";

let runner: Runner;
const MAIN = "main.test.near";
const ALICE = "alice.test.near";

jest.setTimeout(100_000);

describe("cross contract calls", () => {
  beforeAll(async () => {
    runner = await Runner.create(async ({ root }) => {
      const alice = await root.createAccount(ALICE, {
        initialBalance: toYocto("200"),
      });
      const main = await root.createAndDeploy(
        MAIN,
        __dirname + "/../build/debug/main.wasm"
      );
      return { alice, main };
    });
  });

  test("getDefaultValue", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "getDefaultValue", {});
    });
  });

  test("mapTestsWithArray", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTestsWithArray", {});
    });
  });

  test("base58Test", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "base58Test", {});
    });
  });

  test("base64Test", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "base64Test", {});
    });
  });

  test("logTest", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "logTest", {});
    });
  });

  test("storageStringRoundtripTest", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageStringRoundtripTest", {});
    });
  });

  test("storageBytesRoundtripTest", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageBytesRoundtripTest", {});
    });
  });

  test("storageGenericGetSetRoundtripTest", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageGenericGetSetRoundtripTest", {});
    });
  });

  test("mapTests", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTests", {});
    });
  });

  test("mapTestsWithPrimitices", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTestsWithPrimitices", {});
    });
  });

  test("vectorTests", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "vectorTests", {});
    });
  });

  test("dequeTests", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "dequeTests", {});
    });
  });

  test("promiseTests", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "promiseTests", {});
    });
  });

  test("mathTests", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mathTests", {});
    });
  });
});
