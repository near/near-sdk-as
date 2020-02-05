const DEFAULT_ARGS = [
  "--baseDir", process.cwd(),
  "--runtime", "none",
  // On CLI this file is in the same directory as the transformer.
  "--transform", "near-bindgen-as"
]

// reference to asc cli api
var asc;

/** Wraps asc with default arguments. 
 * Importantly it will force the transformer to use the same compiler module as the front end asc.
 * It also sets the transformer's path to be this directory since it is index.js. */
function getAsc(config) {
  if (asc) {
    return asc;
  }

  if (process.browser) {
    asc = require("assemblyscript/dist/asc");
  } else {
    asc = require("assemblyscript/cli/asc");
  } 

  // Check asc version
  const mainVersion = parseInt(asc.version.replace(/(\d+)\.\d+\.\d+/, "$1"));
  if (mainVersion == 0) {
    const version = parseInt(asc.version.replace(/\d+\.(\d+)\.\d+/, "$1"));
    if (version < 8) {
      throw Error("Requires a version of AssemblyScript greater than 0.8.0");
    }
  }
  // Wrap the main function to automatically inject options.
  asc.main = (main => (args, options, fn) => {
    if (typeof options === "function") {
      fn = options;
      options = undefined;
    }

    const cliArgs = [...DEFAULT_ARGS, ...args];

    if (config && config.verbose){
      console.log("Cli arguments passed to asc:\n"+ cliArgs.join(" "))
    }
    const logLn = process.browser ? window.logLn : console.log;
    
    // Browser specific setup for Near Studio
    if (process.browser) {
      const pathModule = require('path');
      let fs = require("fs");
      options = Object.assign(options, {
          stdout: process.stdout || asc.createMemoryStream(logLn),
          stderr: process.stderr || asc.createMemoryStream(logLn),
        readFile: (filename, baseDir) => {
          baseDir = pathModule.relative(process.cwd(), baseDir);
          let path = pathModule.join(baseDir, filename);
          if (!fs.existsSync(path)) {
            return null;
          }
          return fs.readFileSync(path).toString('utf8');
        },
        writeFile: (filename, contents) => {
            const name = filename.startsWith('../') ? filename.substring(3) : filename;
            fs.writeFileSync(name, contents);
        },
        listFiles: (dirname, baseDir) => {
          baseDir = pathModule.relative(process.cwd(), baseDir);
          let path = pathModule.join(baseDir, dirname);
          return listDirSync(path)}
      });
    }

    return main(cliArgs, options , fn);
  })(asc.main);
  return asc;
}

Object.defineProperty(module.exports, "asc", {get: () => getAsc()});

/** Convience function for scripts such as gulp to use. 
 * Adding {verbose: true}, to the options will print out the cli arguments passed to asc.
*/
module.exports.compile  = function (inputFile, outputFile, args, options, callback){
  const asc = getAsc(options)
  if (args == undefined) {
    callback = () => {};
  } 
  if (typeof args === "function") {
    callback = args;
    args = [];
    options = null
  } else if (typeof options === "function") {
    callback = options;
  }
  asc.main(
    [inputFile,
    // TODO: Optimiziation is very slow, enable it only conditionally for "prod" builds?
    "--binaryFile", outputFile,
    "--textFile", outputFile.substring(0, outputFile.lastIndexOf(".")) + ".wat",
    ...args,
    ],
    options || {}, callback);
}
