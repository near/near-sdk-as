#!/usr/bin/env ts-node

// import { Runtime } from "./dist";
// import assert from "assert";

// let r = new Runtime();

// let alice = r.newAccount("alice");
// // let counter = r.newAccount("counter", "./main.wasm")

// // let result = alice.call_step_other("counter", "incrementCounter", {"value": 1});
// // result = alice.call_step_other("counter", "incrementCounter", { "value": 1 } );

// let words = r.newAccount("words.examples", "./out/words.wasm");
// let sentences = r.newAccount("sentences", "./out/sentences.wasm")

// assert(alice.call_other("sentences", "reverseWordOne").return_data.text == "elpmas", "text should be reversed");
// // console.log("\n");
// assert(alice.call_other("sentences", "reverseWordTwo"));
// // console.log(sentences.view("sample"))
// assert(alice.call_other("sentences", "reverseWordThree"));

const Runtime = require("./dist").Runtime;
const assert = require("assert");

let runtime = new Runtime();

let alice = runtime.newAccount("amgando.testnet");
// runtime.newAccount("rust", "rust/res/rust_example.wasm");
runtime.newAccount("sentences", "out/sentences.wasm")
runtime.newAccount("words.examples", "out/words.wasm");

// let res = (alice.call_other("rust", "reverse", { word: { text: "hello world" } }))
let res = alice.call_other("sentences", "reverseWordOne")
res  = alice.call_other("sentences", "reverseWordTwo")
// console.log(JSON.stringify(res, null, 2));
res = alice.call_other("sentences", "reverseWordThree")
console.log(JSON.stringify(res, null, 2));

// assert(alice.call_other("sentences", "reverseWordOne").return_data.text == "elpmas")

//        "text should be reversed");

// assert(alice.call_other("sentences", "reverseWordTwo"))

// TODO: this still breaks, so for now no passing to call back method.
// alice.call_other("sentences", "reverseWordThree");}