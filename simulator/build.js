
let asb = require("asbuild").main

function compile(name, args = []) {
  asb(["assembly/__tests__/"+name, ...args, "--target", "debug"]);
}

compile("avlTreeContract.ts");
compile("sentences.ts");
compile("words.ts");
compile("empty.ts", ["--wat"]);
asb(["-c", "./exportAs.asconfig.json","--wat", "--target", "debug"]);
