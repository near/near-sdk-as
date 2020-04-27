#!/usr/bin/env ts-node

import { Runtime } from "./dist";
import assert from "assert";

let r = new Runtime();

let alice = r.newAccount("alice");
// let counter = r.newAccount("counter", "./main.wasm")

// let result = alice.call_step_other("counter", "incrementCounter", {"value": 1});
// result = alice.call_step_other("counter", "incrementCounter", { "value": 1 } );

let words = r.newAccount("words.examples", "./out/words.wasm");
let sentences = r.newAccount("sentences", "./out/sentences.wasm")

assert(alice.call_other("sentences", "reverseWordOne").return_data.text == "elpmas", "text should be reversed");
console.log("\n");
assert(alice.call_other("sentences", "reverseWordTwo"));
console.log(sentences.view("sample"))
console.log(alice.call_other("sentences", "reverseWordThree"));
