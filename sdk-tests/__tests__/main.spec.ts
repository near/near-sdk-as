import {
  createSandbox,
  SandboxRunner,
  SandboxRuntime,
} from "near-runner";

let sandboxRunner: SandboxRunner;
const MAIN = "main.test.near";

jest.setTimeout(100_000);

describe("cross contract calls", () => {
  beforeAll(async () => {
    sandboxRunner = await createSandbox(async (sandbox: SandboxRuntime) => {
      await sandbox.createAndDeploy(
        MAIN,
        __dirname + "/../build/debug/main.wasm"
      );
    });
  });

  test("getDefaultValue", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "getDefaultValue", {}, "5000000000000");
    });
  });

  test("mapTestsWithArray", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "mapTestsWithArray", {}, "5000000000000");
    });
  });

  test("base58Test", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "base58Test", {}, "5000000000000");
    });
  });

  test("base64Test", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "base64Test", {}, "5000000000000");
    });
  });

  test("logTest", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "logTest", {}, "5000000000000");
    });
  });

  test("storageStringRoundtripTest", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "storageStringRoundtripTest", {}, "5000000000000");
    });
  });

  test("storageBytesRoundtripTest", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "storageBytesRoundtripTest", {}, "5000000000000");
    });
  });

  test("storageGenericGetSetRoundtripTest", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "storageGenericGetSetRoundtripTest", {}, "5000000000000");
    });
  });

  test("mapTests", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "mapTests", {}, "5000000000000");
    });
  });

  test("mapTestsWithPrimitices", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "mapTestsWithPrimitices", {}, "5000000000000");
    });
  });

  test("vectorTests", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "vectorTests", {}, "10000000000000");
    });
  });

  test("dequeTests", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "dequeTests", {}, "10000000000000");
    });
  });

  test("promiseTests", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "promiseTests", {}, "30000000000000");
    });
  });

  test("mathTests", async () => {
    await sandboxRunner(async (sandbox: SandboxRuntime) => {
      let res = await sandbox
        .getRoot()
        .call(MAIN, "mathTests", {}, "30000000000000");
    });
  });
});
