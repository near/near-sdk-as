import { Runtime, Account, stateSize } from "..";
import { throws } from "assert";

let runtime: Runtime;
let sentences: Account, words: Account, alice: Account;

describe("cross contract calls", () => {
  beforeEach(() => {
    runtime = new Runtime();
    alice = runtime.newAccount("alice");
    sentences = runtime.newAccount(
      "sentences",
      __dirname + "/../build/debug/sentences.wasm"
    );
    words = runtime.newAccount(
      "words.examples",
      __dirname + "/../build/debug/words.wasm"
    );
  });

  function addWord(hello: string) {
    return alice.call_other("sentences", "SetWord", {
      word: { text: "hello" },
    });
  }

  test("single promise", () => {
    let res = alice.call_other("sentences", "reverseWordOne");
    expect(res.return_data.text).toBe("elpmas");
  });

  test("promise + then with no arguments", () => {
    let res = alice.call_other("sentences", "reverseWordTwo");
    expect(res.return_data).toBe(true);
  });
  test("promise + then with arguments", () => {
    let res = alice.call_other("sentences", "reverseWordThree");
    expect(res.return_data).toBe(true);
  });

  test("add to storage", () => {
    addWord("hello");
    expect(sentences.storage_usage).toBeGreaterThan(0);
  });

  test("read from storage with default", () => {
    const word = sentences.view("GetWord").return_data;
    expect(word.text).toBe("DEFAULT");
    expect(sentences.state["word"]).toBe(undefined);
  });
  test("read from storage", () => {
    addWord("hello");
    const word = sentences.view("GetWord").return_data;
    expect(word.text).toBe("hello");
    expect(sentences.state["word"]).toStrictEqual(word);
  });

  test("setting state", () => {
    let state = { word: { text: "hello" } };
    sentences.state = state;
    sentences.reset();
    let { result } = addWord("hello");
    expect(result.state).toStrictEqual(state);
  });

  test("getting view with arg", () => {
    const res = words.view("reverse", { word: { text: "hello" } });
    expect(res.return_data.text).toBe("olleh");
  });

  test("get block_timestanp", () => {
    sentences.call("getBlock_timestamp").result.outcome;
  });

  test("contract promise batch", () => {
    sentences.call("contractPromiseBatch").result.outcome;
  });

  test("contract should throw if attached deposit and non-payable method", () => {
    let res = alice.call_other(
      "sentences",
      "nonPayableFunction",
      {},
      10000000000000,
      "10"
    );
    expect(
      res.err.FunctionCallError.HostError.GuestPanic.panic_msg.startsWith(
        "Method doesn't accept deposit"
      )
    ).toBe(true);
  });

  test("contract should throw if attached deposit is not 1 yoctoNEAR and one yocto method", () => {
    let res = alice.call_other(
      "sentences",
      "oneYoctoFunction",
      {},
      10000000000000,
      "2"
    );
    expect(res.err.FunctionCallError.HostError.GuestPanic.panic_msg).toEqual(
      expect.stringContaining(
        "Requires attached deposit of exactly 1 yoctoNEAR"
      )
    );
  });

  test("exported from submodule", () => {
    const str = "hello";
    const res = words.view("capitalize", { s: str }).result.outcome as any;
    expect(res.return_data.Value.substr(1, str.length)).toStrictEqual(
      str.toUpperCase()
    );
  });
});
