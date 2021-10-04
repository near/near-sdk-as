import { Account, Runner, toYocto } from "near-runner-ava";

let runner: Runner;
const MAIN = "main.test.near";
const ALICE = "alice.test.near";

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

  runner.test("getDefaultValue", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "getDefaultValue", {});
    });
  });

  runner.test("mapTestsWithArray", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTestsWithArray", {});
    });
  });

  runner.test("base58Test", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "base58Test", {});
    });
  });

  runner.test("base64Test", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "base64Test", {});
    });
  });

  runner.test("logTest", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "logTest", {});
    });
  });

  runner.test("storageStringRoundtripTest", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageStringRoundtripTest", {});
    });
  });

  runner.test("storageBytesRoundtripTest", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageBytesRoundtripTest", {});
    });
  });

  runner.test("storageGenericGetSetRoundtripTest", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageGenericGetSetRoundtripTest", {});
    });
  });

  runner.test("mapTests", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTests", {});
    });
  });

  runner.test("mapTestsWithPrimitices", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTestsWithPrimitices", {});
    });
  });

  runner.test("vectorTests", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "vectorTests", {});
    });
  });

  runner.test("dequeTests", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "dequeTests", {});
    });
  });

  runner.test("promiseTests", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "promiseTests", {});
    });
  });

  runner.test("mathTests", (async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mathTests", {});
    });
  });
});
