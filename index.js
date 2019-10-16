const path = require("path");

const DEFAULT_ARGS = [
  "--baseDir", process.cwd(),
  "--runtime", "stub",
  "--transform", path.relative(process.cwd(), path.join(__dirname, "dist", "nearBindings.js"))
]
let asc;
function getAsc() {
  if (asc) {
    return asc;
  }
  try {
    asc = require("assemblyscript/cli/asc");
  } catch (e) {
    asc= require("assemblyscript/dist/asc");
    
  }
  asc.main = (main => (args, options, fn) => {
    if (typeof options === "function") {
      fn = options;
      options = undefined;
    }
    return main([...DEFAULT_ARGS, ...args], options, fn);
  })(asc.main);
  return asc;
}

module.exports.asc = getAsc()

module.exports.compile  = function (inputFile, outputFile, args, options, callback){
  const asc = getAsc()
  if (typeof args === "function") {
    option = args;
    args = [];
  } else if (typeof options === "function") {
    callback = options;
  }
  asc.main([inputFile,
  // TODO: Optimiziation is very slow, enable it only conditionally for "prod" builds?
  "--binaryFile", outputFile,
  "--textFile",outputFile.substring(0,outputFile.lastIndexOf("."))+ ".wat",
  ...args
  ], options || {}, callback);
}
