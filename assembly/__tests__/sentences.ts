import { context, logging, ContractPromise, u128 } from "..";
import { Word } from "./model";

// export function reverseWordsInSentence(text: string): string {
//   logging.log("[" + context.sender + "] invoked function reverseSentence(" + text + ")")

//   const word = new Word(text.split(" ")[0], "en-us")

//   logging.log("reversing word [" + word.text + "]")

//   _reverseWord(word)

//   // logging.log("results: [" + results + "]")

//   return word.text

//   // const reversedSentence = text.split(" ").map<Word>((word) => {
//   //   logging.log("reversing word [" + word + "]")
//   //   let results = _reverseWord(word)
//   //   logging.log("results: [" + results + "]")
//   //   return results
//   // })
// }
export function sample(): string {
  return "hello world";
}

export function reverseWordThree(): void {
  const word = new Word("sample")
  const contract = "words.examples"
  const method = "reverse"

  // setup args object for cross-contract call as key-value of contract method parameters
  // note: the method signature in the words contract is reverse(word: Word)
  let reverseArgs = new ReverseArgs(word)

  let promise = ContractPromise.create(
    contract,                             // contract account name
    method,                               // contract method name
    reverseArgs.encode(),                 // serialized contract method arguments encoded as Uint8Array
    10000000,                                    // gas attached to the call
    u128.Zero                             // attached deposit to be sent with the call
  )

  // Setting up args for the callback
  let responseArgs = new ReverseArgs(new Word("elpmas"));
  logging.log(responseArgs);

  logging.log(context.contractName)

  let callbackPromise = promise.then(
    context.contractName,
    "_onReverseCalledTwo",
    responseArgs.encode(),
    2
  );

  callbackPromise.returnAsResult();
}

export function _onReverseCalledTwo(word: Word): bool {
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
    return word.text == drow.text
  }

  return false
}

export function reverseWordTwo(): void {
  const word = new Word("sample")
  const contract = "words.examples"
  const method = "reverse"

  // setup args object for cross-contract call as key-value of contract method parameters
  // note: the method signature in the words contract is reverse(word: Word)
  let reverseArgs = new ReverseArgs(word)

  let promise = ContractPromise.create(
    contract,                             // contract account name
    method,                               // contract method name
    reverseArgs.encode(),                 // serialized contract method arguments encoded as Uint8Array
    10000000,                                    // gas attached to the call
    u128.Zero                             // attached deposit to be sent with the call
  )

  // Setting up args for the callback
  // let responseArgs = new ReverseArgs(new Word("elpmas"))

  logging.log(context.contractName)

  let callbackPromise = promise.then(
    context.contractName,
    "_onReverseCalled",
    new Uint8Array(0),
    2
  );

  callbackPromise.returnAsResult();
}

export function _onReverseCalled(): bool {
  const drow = new Word("elpmas");
  let results = ContractPromise.getResults();
  assert(results.length > 0, "should be contract promise result");
  let reverseResult = results[0];
  // Verifying the remote contract call succeeded.
  if (reverseResult.status == 1) {
    // Decoding data from the bytes buffer into the local object.
    let word = decode<Word>(reverseResult.buffer);
    logging.log(word);
    return word.text == drow.text
  }

  return false
}


export function reverseWordOne(): void {
  const word = new Word("sample")
  const contract = "words.examples"
  const method = "reverse"

  // setup args object for cross-contract call as key-value of contract method parameters
  // note: the method signature in the words contract is reverse(word: Word)
  let reverseArgs = new ReverseArgs(word)

  let promise = ContractPromise.create(
    contract,                             // contract account name
    method,                               // contract method name
    reverseArgs.encode(),                 // serialized contract method arguments encoded as Uint8Array
    0,                                    // gas attached to the call
    u128.Zero                             // attached deposit to be sent with the call
  )

  promise.returnAsResult();
}


// ------------------------------
// ContractPromise Helpers
// ------------------------------

// @nearBindgen
// class AddItemArgs {
//   constructor(
//     public accountId: string,
//     public itemId: string
//   ) { }
// }

@nearBindgen
class ReverseArgs {
  constructor(
    public word: Word
  ) { }
}


// ------------------------------------------------------------------------------
// everything below is from sample code in near-sdk-as contract code comments
// ------------------------------------------------------------------------------

// export function callMetaNear(): void {

//   let itemArgs = new AddItemArgs("alice.near", "Sword +9000")

//   let promise = ContractPromise.create(
//     "metanear",
//     "addItem",
//     itemArgs.encode(),
//     0,
//     u128.Zero
//   );

//   promise.returnAsResult();
// }

// export function callMetaNear(): void {
//   let itemArgs: AddItemArgs = {
//     accountId: "alice.near",
//     itemId: "Sword +9000",
//   };
// 
//   let promise = ContractPromise.create(
//     "metanear",
//     "addItem",
//     itemArgs.encode(),
//     0,
//     0,
//   );
// 
//   promise.returnAsResult();
// }

// // Setting up args for the callback
// let requestArgs: OnItemAddedArgs = {
//   "itemAddedRequestId": "UNIQUE_REQUEST_ID",
// };


// let callbackPromise = promise.then(
//   "_onItemAdded",
//   requestArgs.encode(),
//   2,  // Attaching 2 additional requests, in case we need to do another call
// );
// callbackPromise.returnAsResult();
// }

// export function _onItemAdded(itemAddedRequestId: string): bool {
//   // Get all results
//   let results = ContractPromise.getResults();
//   let addItemResult = results[0];
//   // Verifying the remote contract call succeeded.
//   if (addItemResult.success) {
//     // Decoding data from the bytes buffer into the local object.
//     let data = AddItemResult.decode(addItemResult.buffer);
//     if (data.itemPower > 9000) {
//       return true;
//     }
//   }
//   return false;
// }
