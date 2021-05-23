import { UserAccount, init_simulator, utils } from "../..";
import * as path from "path";
import { getGuestPanicMsg } from "../common";

let root: UserAccount;
let sentences: UserAccount, words: UserAccount, alice: UserAccount;

describe("cross contract calls", () => {
  beforeEach(() => {
    root = init_simulator();
    alice = root;
    sentences = root.deploy(
      path.join(__dirname, "..", "..", "build", "debug", "sentences.wasm"),
      "sentences"
    );
    words = root.deploy(
      path.join(__dirname, "..", "..", "build", "debug", "words.wasm"),
      "words"
    );
  });

  function addWord(hello: string = "hello") {
    return alice.call(sentences.account_id(), "SetWord", {
      word: { text: hello },
    });
  }

  it("single promise", () => {
    let res = alice.call("sentences", "reverseWordOne");
    expect((res.status() as SuccessValue).value).toBe('{"text":"elpmas"}');
  });

  it("promise + then with no arguments", () => {
    let res = alice.call("sentences", "reverseWordTwo");
    expect((res.status() as SuccessValue).value).toBe("true");
  });

  it("promise + then with arguments", () => {
    let res = alice.call("sentences", "reverseWordThree");
    expect((res.status() as SuccessValue).value).toBe("true");
  });

  it("add to storage", () => {
    addWord("hello");
    expect(BigInt(sentences.account()?.storage_usage)).toBeGreaterThan(0);
  });

  it("read from storage with default", () => {
    const word = sentences.view_self("GetWord");
    expect(word.text).toBe("DEFAULT");
    // expect(sentences.state["word"]).toBe(undefined);
  });

  it("read from storage", () => {
    addWord("hello");
    const word = sentences.view_self("GetWord");
    expect(word.text).toBe("hello");
    // expect(sentences.state["word"]).toStrictEqual(word);
  });

  it("getting view with arg", () => {
    const res = words.view_self("reverse", { word: { text: "hello" } });
    expect(res.text).toBe("olleh");
  });

  it("get block_timestanp", () => {
    sentences
      .call(sentences.account_id(), "getBlock_timestamp")
      .assert_success();
  });

  it("contract promise batch", () => {
    sentences
      .call(sentences.account_id(), "contractPromiseBatch")
      .assert_success();
  });

  it("contract should throw if attached deposit and non-payable method", () => {
    let res = alice.call(
      "sentences",
      "nonPayableFunction",
      {},
      "10000000000000",
      "10"
    );
    expect(getGuestPanicMsg(res.outcome())).toContain(
      "Method doesn't accept deposit"
    );
  });
});
