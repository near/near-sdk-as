import {
  Context,
  logging,
  ContractPromise,
  ContractPromiseBatch,
  u128,
  storage,
  env,
} from "near-sdk-core";
import { Word } from "./model";

export function SetWord(word: Word): void {
  storage.set("word", word);
}

export function GetWord(): Word {
  return <Word>storage.get<Word>("word", new Word("DEFAULT"));
}

export function sample(): string {
  return "hello world";
}
export const DEFAULT_GAS: u64 = 10_000_000_000_000;

export function reverseWordThree(): void {
  const word = new Word("sample");
  const contract = "words.examples";
  const method = "reverse";

  // setup args object for cross-contract call as key-value of contract method parameters
  // note: the method signature in the words contract is reverse(word: Word)
  let reverseArgs = new ReverseArgs(word);

  let promise = ContractPromise.create(
    contract, // contract account name
    method, // contract method name
    reverseArgs, // serialized contract method arguments encoded as Uint8Array
    DEFAULT_GAS, // gas attached to the call
    u128.Zero // attached deposit to be sent with the call
  );

  // Setting up args for the callback
  let responseArgs = new ReverseArgs(new Word("elpmas"));
  logging.log(responseArgs);
  let args = responseArgs;

  logging.log(Context.contractName);
  let methodName = "_onReverseCalledThree";

  let callbackPromise = promise.then(
    Context.contractName,
    methodName,
    args,
    DEFAULT_GAS
  );

  callbackPromise.returnAsResult();
}

export function _onReverseCalledThree(word: Word): bool {
  const drow = word;
  let results = ContractPromise.getResults();
  assert(results.length > 0, "should be contract promise result");
  let reverseResult = results[0];
  // logging.log(results[0]);
  // Verifying the remote contract call succeeded.
  if (reverseResult.status == 1) {
    // Decoding data from the bytes buffer into the local object.
    let word = decode<Word>(reverseResult.buffer);
    logging.log(word);
    return word.text == drow.text;
  }

  return false;
}

export function reverseWordTwo(): void {
  const word = new Word("sample");
  const contract = "words.examples";
  const method = "reverse";

  // setup args object for cross-contract call as key-value of contract method parameters
  // note: the method signature in the words contract is reverse(word: Word)
  let reverseArgs = new ReverseArgs(word);

  let promise = ContractPromise.create(
    contract, // contract account name
    method, // contract method name
    reverseArgs.encode(), // serialized contract method arguments encoded as Uint8Array
    DEFAULT_GAS, // gas attached to the call
    u128.Zero // attached deposit to be sent with the call
  );

  // Setting up args for the callback
  // let responseArgs = new ReverseArgs(new Word("elpmas"))

  logging.log(Context.contractName);

  let callbackPromise = promise.then(
    Context.contractName,
    "_onReverseCalledTwo",
    new Uint8Array(0),
    DEFAULT_GAS
  );

  callbackPromise.returnAsResult();
}

export function _onReverseCalledTwo(): bool {
  const drow = new Word("elpmas");
  let results = ContractPromise.getResults();
  assert(results.length > 0, "should be contract promise result");
  let reverseResult = results[0];
  // Verifying the remote contract call succeeded.
  if (reverseResult.status == 1) {
    // Decoding data from the bytes buffer into the local object.
    let word = decode<Word>(reverseResult.buffer);
    logging.log(word);
    return word.text == drow.text;
  }

  return false;
}

export function reverseWordOne(): void {
  const word = new Word("sample");
  const contract = "words.examples";
  const method = "reverse";

  // setup args object for cross-contract call as key-value of contract method parameters
  // note: the method signature in the words contract is reverse(word: Word)
  let reverseArgs = new ReverseArgs(word);

  let promise = ContractPromise.create(
    contract, // contract account name
    method, // contract method name
    reverseArgs, // serialized contract method arguments encoded as Uint8Array
    DEFAULT_GAS, // gas attached to the call
    u128.Zero // attached deposit to be sent with the call
  );

  promise.returnAsResult();
}

@nearBindgen
class ReverseArgs {
  constructor(public word: Word) {}
}

export function getBlock_timestamp(): u64 {
  return env.block_timestamp();
}

export function contractPromiseBatch(): ContractPromiseBatch {
  const word = new Word("sample");
  const contract = "words.examples";
  const method = "reverse";

  let reverseArgs = new ReverseArgs(word);

  return ContractPromiseBatch.create(contract).function_call(
    method,
    reverseArgs.encode(),
    u128.Zero,
    DEFAULT_GAS
  );
}
/* eslint-disable @typescript-eslint/no-empty-function */
export function payableFunction(): void {}

export function nonPayableFunction(): void {
  notPayable();
  throw new Error("shouldn't see this " + Context.attachedDeposit.toString());
}
