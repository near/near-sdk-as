import { Account, Runner, toYocto } from "near-runner";

let runner: Runner;
const MAIN = "main.test.near";
const ALICE = "alice.test.near";

describe("cross contract calls", () => {
  jest.setTimeout(100_000);

  const runner = Runner.create(async ({ root }) => {
    const alice = await root.createAccount(ALICE, {
      initialBalance: toYocto("200"),
    });
    const main = await root.createAndDeploy(
      MAIN,
      __dirname + "/../build/debug/main.wasm"
    );
    return { alice, main };
  });

  test.concurrent("getDefaultValue", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "getDefaultValue", {});
    });
  });

  test.concurrent("mapTestsWithArray", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTestsWithArray", {});
    });
  });

  test.concurrent("base58Test", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "base58Test", {});
    });
  });

  test.concurrent("base64Test", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "base64Test", {});
    });
  });

  test.concurrent("logTest", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "logTest", {});
    });
  });

  test.concurrent("storageStringRoundtripTest", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageStringRoundtripTest", {});
    });
  });

  test.concurrent("storageBytesRoundtripTest", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageBytesRoundtripTest", {});
    });
  });

  test.concurrent("storageGenericGetSetRoundtripTest", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageGenericGetSetRoundtripTest", {});
    });
  });

  test.concurrent("mapTests", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTests", {});
    });
  });

  test.concurrent("mapTestsWithPrimitices", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTestsWithPrimitices", {});
    });
  });

  test.concurrent("vectorTests", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "vectorTests", {});
    });
  });

  test.concurrent("dequeTests", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "dequeTests", {});
    });
  });

  test.concurrent("promiseTests", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "promiseTests", {});
    });
  });

  test.concurrent("mathTests", async () => {
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mathTests", {});
    });
  });
});
