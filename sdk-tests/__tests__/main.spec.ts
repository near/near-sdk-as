import { Account, Runner, toYocto } from "near-runner";

let runner: Runner;
const MAIN = "main.test.near";
const ALICE = "alice.test.near";

jest.setTimeout(100_000);

describe("cross contract calls", () => {
  beforeAll(async () => {
    // sandboxRunner = await createSandbox(async (sandbox: SandboxRuntime) => {
    //   await sandbox.createAndDeploy(
    //     MAIN,
    //     __dirname + "/../build/debug/main.wasm"
    //   );
    // });
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
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "getDefaultValue", {}, "5000000000000");
    // });

    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "getDefaultValue", {});
    });
  });

  test("mapTestsWithArray", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "mapTestsWithArray", {}, "5000000000000");
    // });

    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTestsWithArray", {});
    });
  });

  test("base58Test", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "base58Test", {}, "5000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "base58Test", {});
    });
  });

  test("base64Test", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "base64Test", {}, "5000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "base64Test", {});
    });
  });

  test("logTest", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "logTest", {}, "5000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "logTest", {});
    });
  });

  test("storageStringRoundtripTest", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "storageStringRoundtripTest", {}, "5000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageStringRoundtripTest", {});
    });
  });

  test("storageBytesRoundtripTest", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "storageBytesRoundtripTest", {}, "5000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageBytesRoundtripTest", {});
    });
  });

  test("storageGenericGetSetRoundtripTest", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "storageGenericGetSetRoundtripTest", {}, "5000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "storageGenericGetSetRoundtripTest", {});
    });
  });

  test("mapTests", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "mapTests", {}, "5000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTests", {});
    });
  });

  test("mapTestsWithPrimitices", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "mapTestsWithPrimitices", {}, "5000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mapTestsWithPrimitices", {});
    });
  });

  test("vectorTests", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "vectorTests", {}, "10000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "vectorTests", {});
    });
  });

  test("dequeTests", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "dequeTests", {}, "10000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "dequeTests", {});
    });
  });

  test("promiseTests", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "promiseTests", {}, "30000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "promiseTests", {});
    });
  });

  test("mathTests", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   let res = await sandbox
    //     .getRoot()
    //     .call(MAIN, "mathTests", {}, "30000000000000");
    // });
    await runner.run(async ({ alice, avl }) => {
      let res = await alice.call(MAIN, "mathTests", {});
    });
  });
});
