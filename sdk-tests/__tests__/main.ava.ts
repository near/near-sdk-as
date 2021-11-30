import { Workspace, toYocto } from "near-workspaces-ava";

const MAIN = "main.test.near";
const ALICE = "alice.test.near";

const workspace = Workspace.init(async ({ root }) => {
  const alice = await root.createAccount(ALICE, {
    initialBalance: toYocto("200"),
  });
  const main = await root.createAndDeploy(
    MAIN,
    __dirname + "/../build/debug/main.wasm"
  );
  return { alice, main };
});



workspace.test("getDefaultValue", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "getDefaultValue", {});
});

workspace.test("mapTestsWithArray", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "mapTestsWithArray", {});
});

workspace.test("base58Test", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "base58Test", {});
});

workspace.test("base64Test", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "base64Test", {});
});

workspace.test("logTest", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "logTest", {});
});

workspace.test("storageStringRoundtripTest", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "storageStringRoundtripTest", {});
});

workspace.test("storageBytesRoundtripTest", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "storageBytesRoundtripTest", {});
});

workspace.test("storageGenericGetSetRoundtripTest", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "storageGenericGetSetRoundtripTest", {});
});

workspace.test("mapTests", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "mapTests", {});
});

workspace.test("mapTestsWithPrimitices", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "mapTestsWithPrimitices", {});
});

workspace.test("vectorTests", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "vectorTests", {});
});

workspace.test("dequeTests", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "dequeTests", {});
});

workspace.test("promiseTests", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "promiseTests", {});
});

workspace.test("mathTests", async (t, { alice, avl }) => {
  let res = await alice.call(MAIN, "mathTests", {});
});

