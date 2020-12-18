const asb = require("asbuild").main;

function compile_file(f) {
  asb(["assembly/__tests__/" + f, ...process.argv.slice(2)]);
}

let tests = [
  "sentences.ts",
  "words.ts",
  "avlTreeContract.ts",
  "empty.ts",
  "exportAs.ts",
  "singleton.ts",
  "singleton-no-constructor.ts",
];

tests.map(compile_file);