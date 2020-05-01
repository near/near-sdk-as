#!/usr/bin/env ts-node

import { Runtime } from "./dist";
import assert from "assert";


let runtime = new Runtime();

let alice = runtime.newAccount("amgando.testnet");

runtime.newAccount("sentences", "out/sentences.wasm");
runtime.newAccount("words.examples", "out/words.wasm");

let res = alice.call_other("sentences", "reverseWordOne");
assert(res.return_data.text == "elpmas", "Failed reverseWordOne");

res  = alice.call_other("sentences", "reverseWordTwo");
assert(res, "Failed reverseWordTwo");
res = alice.call_other("sentences", "reverseWordThree");
assert(res.return_data, "Failed reverseWordThree");

console.log("Runtime Test Passed");
