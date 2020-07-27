const asb = require("asbuild").main;

module.exports.compile = function (inputFile, outputFile, args, options, cb) {
  if (inputFile == undefined) {
    throw new Error("input file required.");
  }
  if (outputFile == undefined) {
    throw new Error("output file required.");
  }
  if (typeof args === "function") {
    cb = args;
    args = [];
    options = null
  } else if (typeof options === "function") {
    cb = options;
  } else {
    cb = (err) => {
      if (err != null) {
        throw new Error(err);
      }
    };
  }
  if (options == null || typeof options == "function") {
    options = [];
  } else {
    res = [];
    for (let name of Object.getOwnPropertyNames(options)) {
      res.push("--" + name);
      if (typeof options[name] === "string") {
        res.push(options[name]);
      }
    }
    options = res;
  }
  args.unshift("--")
  args.unshift(...options);
  console.error(
    "\x1b[31m",
    `asconfig.js is deprecated use \`asb\`to build files.  NOTE: output now in ./build/release/`,
    "\x1b[0m"
  );
  asb([inputFile, ...args], cb)

}