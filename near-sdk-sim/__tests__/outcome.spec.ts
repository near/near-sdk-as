import {
  init_simulator,
  to_yocto,
  UserAccount,
  ExecutionResult,
  DEFAULT_GENESIS_CONFIG,
} from "..";
import * as path from "path";

let root: UserAccount;
let sentences: UserAccount, words: UserAccount, alice: UserAccount;

const sentences_path = path.resolve("build/debug/sentences.wasm");
const words_path = path.resolve("build/debug/words.wasm");

describe("execution_result", () => {
  beforeEach(() => {
    const config = DEFAULT_GENESIS_CONFIG;
    config.gas_price = "0";
    // u64::MAX
    config.gas_limit = "18446744073709551615";
    root = init_simulator(config);
    alice = root;
    sentences = root.deploy(sentences_path, "sentences");
    words = root.deploy(words_path, "words");
  });

  it("result.unwrap_json_value() when success", () => {
    let txRes = alice.call(sentences.account_id(), "reverseWordOne");
    expect(txRes.unwrap_json_value()).toBe('{"text":"elpmas"}');
  });

  it("result.unwrap_json_value() when failure", () => {
    let txRes = alice.call(sentences.account_id(), "abcd");
    expect(() => txRes.unwrap_json_value()).toThrowError(/Failure/g);
  });

  it("result.lookup_hash()", () => {
    let txRes = alice.call(sentences.account_id(), "reverseWordThree");
    let hash = (txRes.promise_results()[0].status() as SuccessReceiptId)
      .receipt;
    expect(txRes.lookup_hash(hash)?.is_ok()).toBe(true);
    // check for empty lookup (using random hash)
    expect(
      txRes.lookup_hash("9mUqbCz9eFNYpUMpJbbEe2FE4HjZV5QBcF4wpT1ALDF1")
    ).toBeNull();
  });

  it("result.outcome()", () => {
    let txRes = alice.call(sentences.account_id(), "reverseWordThree");
    let outcome = txRes.outcome();
    expect(outcome.logs).toContain('{"text":"elpmas"}');
    expect(outcome.executor_id).toContain(sentences.account_id());
    expect(outcome.tokens_burnt).toBe("0");
    expect(outcome.receipt_ids).toHaveLength(0);
    expect(outcome.status.type).toBe("SuccessValue");
  });

  it("result.assert_success()", () => {
    let txRes = alice.call(sentences.account_id(), "reverseWordThree");
    txRes.assert_success();

    txRes = alice.call(sentences.account_id(), "abc");
    expect(() => txRes.assert_success()).toThrow();
  });
});
