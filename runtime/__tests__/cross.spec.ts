import { Runtime, Account } from "..";

let runtime: Runtime;
let sentences: Account, words: Account, alice: Account;
describe("cross contract calls", () => {
  beforeEach(() => {
    runtime = new Runtime();
    alice = runtime.newAccount("alice");
    sentences = runtime.newAccount("sentences", __dirname + "/../out/sentences.wasm");
    words = runtime.newAccount("words.examples", __dirname + "/../out/words.wasm");
  });
  
  test("single promise", () => {
    let res = alice.call_other("sentences", "reverseWordOne");
    expect(res.return_data.text).toBe("elpmas")
  });

  test("promise + then with no arguments", () => {
    let res  = alice.call_other("sentences", "reverseWordTwo");
    expect(res.return_data).toBe(true)
  }); 
  test("promise + then with arguments", () => {
    let res  = alice.call_other("sentences", "reverseWordThree");
    expect(res.return_data).toBe(true)
  }); 

  test("add to storage", () => {
    alice.call_other("sentences", "SetWord", {word: {text: "hello"}});
    expect(sentences.storage_usage).toBeGreaterThan(0);
  });

  test("read from storage with default", () => {
    const word =sentences.view("GetWord").return_data;
    expect(word.text).toBe("DEFAULT");
    expect(sentences.state["word"]).toBe(undefined);
  });
  test("read from storage", () => {
    alice.call_other("sentences", "SetWord", {word: {text: "hello"}});
    const word =sentences.view("GetWord").return_data;
    expect(word.text).toBe("hello");
    expect(sentences.state["word"]).toStrictEqual(word)
  });
})