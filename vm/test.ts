import { Runtime } from "./dist";

let r = new Runtime();

let alice = r.newAccount("alice");
let counter = r.newAccount("counter", "./main.wasm")

let result = alice.call_step_other("counter", "incrementCounter", {"value": 1});
result = alice.call_step_other("counter", "incrementCounter", { "value": 1 } );
