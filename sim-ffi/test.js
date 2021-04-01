let res = require("./sim-ffi");
const fs = require("fs");

console.log(res.hello());

let root = res.create_user();
console.log(res.amount(root));

const data = fs.readFileSync(
  __dirname + "/../../near-examples/counter/out/main.wasm"
);

let contract = res.deploy(root, data, "contract", "10000000000000000000000000");
console.log(res.amount(contract));

res.view(contract, "contract", "getCounter");
res.call(contract, "contract", "incrementCounter");
res.view(contract, "contract", "getCounter");
