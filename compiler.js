const DEFAULT_ARGS = [
  "--baseDir", process.cwd(),
  "--runtime", "stub",
  "--transform", __dirname
]

let asc;

/** Wraps asc with default arguments. 
 * Importantly it will force the transformer to use the same compiler module as the front end asc.
 * It also sets the transformer's path to be this directory since it is index.js. */
function getAsc(config) {
  if (asc) {
    return asc;
  }
  try {
    asc = require("assemblyscript/cli/asc");
  } catch (e) {
    console.log(e)
    asc = require("assemblyscript/dist/asc");
    
  }
  const mainVersion = parseInt(asc.version.replace(/(\d+)\.\d+\.\d+/, "$1"));
  if (mainVersion == 0) {
    const version = parseInt(asc.version.replace(/\d+\.(\d+)\.\d+/, "$1"));
    if (version < 8) {
      throw Error("Requires a version of AssemblyScript greater than 0.8.0")
    }
  }
  asc.main = (main => (args, options, fn) => {
    if (typeof options === "function") {
      fn = options;
      options = undefined;
    }
    const cliArgs = [...DEFAULT_ARGS, ...args];
    if (config && config.verbose){
      console.log("Cli arguments passed to asc:\n"+ cliArgs.join(" "))
    }
    return main(cliArgs, options, fn);
  })(asc.main);
  return asc;
}

Object.defineProperty(module.exports, "asc", {get: () => getAsc()});

/** Convience function for scripts such as gulp to use. 
 * Adding {verbose: true}, to the options will print out the cli arguments passed to asc.
*/
module.exports.compile  = function (inputFile, outputFile, args, options, callback){
  const asc = getAsc(options)
  if (typeof args === "function") {
    callback = args;
    args = [];
    options = null
  } else if (typeof options === "function") {
    callback = options;
  }
  asc.main([inputFile,
  // TODO: Optimiziation is very slow, enable it only conditionally for "prod" builds?
  "--binaryFile", outputFile,
  "--textFile",outputFile.substring(0,outputFile.lastIndexOf("."))+ ".wat",
  ...args,
  ], options || {}, callback);
}
