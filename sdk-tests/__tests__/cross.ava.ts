// import { Runtime, NearAccount, stateSize } from "..";
import { Runner, NearAccount, toYocto } from "near-runner-ava";
import BN from "bn.js";
import { Word } from "../assembly/__tests__/model";

const SENTENCES = "sentences.test.near";
const WORDS = "words.test.near";
const ALICE = "alice.test.near";

const runner = Runner.create(async ({ root }) => {
  const alice = await root.createAccount(ALICE);
  const words = await root.createAndDeploy(
    WORDS,
    __dirname + "/../build/debug/words.wasm"
  );
  const sentences = await root.createAndDeploy(
    SENTENCES,
    __dirname + "/../build/debug/sentences.wasm"
  );
  return { alice, words, sentences };
});

async function addWord(alice: NearAccount, hello: string) {
  return await alice.call(SENTENCES, "SetWord", { word: { text: hello } });
}

runner.test("single promise", async (t, { alice }) => {
  let res = <Word>await alice.call<Word>(SENTENCES, "reverseWordOne", {});
  t.is(res.text, "elpmas");
});

runner.test("promise + then with no arguments", async (t, { alice }) => {
  let res = await alice.call(
    SENTENCES,
    "reverseWordTwo",
    {},
    { gas: new BN(100 * 10 ** 12) }
  );
  t.true(res);
});

runner.test("promise + then with arguments", async (t, { alice }) => {
  let res = await alice.call(
    SENTENCES,
    "reverseWordThree",
    {},
    { gas: new BN(120 * 10 ** 12) }
  );
  t.true(res);
});

runner.test("add to storage", async (t, { alice, sentences }) => {
  const before = (await sentences.accountView()).storage_usage;
  await addWord(alice, "hello");
  t.assert((await sentences.accountView()).storage_usage > before);
});

runner.test("read from storage with default", async (t, { sentences }) => {
  const word: any = await sentences.view("GetWord");
  t.is(word.text, "DEFAULT");
  t.deepEqual((await sentences.viewState()).get("word").data, []);
});

runner.test("read from storage", async (t, { alice, words, sentences }) => {
  await addWord(alice, "hello");
  const word: Word = <Word>await sentences.view("GetWord");
  const state = await sentences.viewState();

  // Get raw value
  const wordFromContract = state.get_raw("word");

  t.is(word.text, "hello");
  t.deepEqual(JSON.parse(wordFromContract.toString("utf-8")), word);
});

runner.test("setting state", async (t, { sentences }) => {
  if (Runner.networkIsSandbox()) {
    let state = { text: "hello" };
    await sentences.patchState("word", JSON.stringify(state));
    const word = <Word>await sentences.view("GetWord");

    t.deepEqual(state, word);
  }
  t.assert(true, "skipping; not on sandbox");
});

runner.test("getting view with arg", async (t, { words }) => {
  const res: Word = <Word>await words.view("reverse", {
    word: { text: "hello" },
  });
  t.is(res.text, "olleh");
});

runner.test("get block_timestanp", async (t, { sentences }) => {
  t.assert(
    parseInt(await sentences.view<string>("getBlock_timestamp", {})) > 0
  );
});

runner.test("contract promise batch", async (t, { alice, sentences }) => {
  t.log(await alice.call(sentences, "contractPromiseBatch", {}));
  t.assert(true);
});

runner.test(
  "contract should throw if attached deposit and non-payable method",
  async (t, { alice }) => {
    await t.throwsAsync(
      alice.call(
        SENTENCES,
        "nonPayableFunction",
        {},
        { attachedDeposit: toYocto("10") }
      ),
      null,
      "Method doesn't accept deposit"
    );
  }
);

runner.test(
  "contract should throw if attached deposit is not 1 yoctoNEAR and one yocto method",
  async (t, { alice }) => {
    await t.throwsAsync(
      alice.call(
        SENTENCES,
        "oneYoctoFunction",
        {},
        { attachedDeposit: toYocto("2") }
      ),
      null,
      "Requires attached deposit of exactly 1 yoctoNEAR"
    );
  }
);

runner.test("exported from submodule", async (t, { words }) => {
  const str = "hello";
  const res = await words.view("capitalize", { s: str });
  t.is(res, str.toUpperCase());
});
