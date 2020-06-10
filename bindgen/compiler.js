let semver = require("semver");
let path = require("path");
let relPathToBindgen = path.relative(process.cwd(), path.join(__dirname, '../assembly/bindgen.ts'));


const DEFAULT_ARGS = [
  "--baseDir", process.cwd(),
  "--runtime", "none",
  // On CLI this file is in the same directory as the transformer.
  "--transform", __dirname,
  relPathToBindgen
]

const requiredRange = require(path.join(__dirname, "package.json")).peerDependencies["assemblyscript"];

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
  if (semver.ltr(asc.version, requiredRange) ) {
    throw Error("The current version of AssemblyScript is " + asc.version + 
                " which must be " + semver.validRange(requiredRange));
  }
  
  // Wrap the main function to automatically inject options.
  asc.main = (main => (args, options, fn) => {
    if (typeof options === "function") {
      fn = options;
      options = undefined;
    }

    const cliArgs = [...DEFAULT_ARGS, ...args];

    if (config && config.verbose){
      console.log("Cli arguments passed to asc:\n" + cliArgs.join(" "))
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

Object.defineProperty(module.exports, "asc", { get: () => getAsc() });

/** Convience function for scripts such as gulp to use. 
 * Adding {verbose: true}, to the options will print out the cli arguments passed to asc.
*/
module.exports.compile  = function (inputFile, outputFile, args, options, callback) {
  if (inputFile == undefined) {
    throw new Error("input file required.");
  }
  if (outputFile == undefined) {
    throw new Error("output file required.");
  }
  if (typeof args === "function") {
    callback = args;
    args = [];
    options = null
  } else if (typeof options === "function") {
    callback = options;
  } else {
    callback = (err) => {
      if (err != null) {
        throw new Error(err);
      }
    };
  }
  if (options == null || typeof options == "function") {
    options = {};
  }
  let argv = process.argv.slice(2);
  let nearArgs = argv;
  let ascArgs = args;
  /**
   * Args before "--" are used as options for near
   */
  if (argv.indexOf("--") >= 0) {
    ascArgs = ascArgs.concat(argv.slice(argv.indexOf("--") + 1)); 
    nearArgs = argv.slice(0, argv.indexOf("--"));
  }
  for (let arg of nearArgs) {
    options[arg.replace("--", "")] = true
  }
  if (options.help) {
    console.log(
`Near AssemblyScript Complier frontend.  Any cli args after "--" are passed to asc.
Options:
        --verbose    Prints out cli arguments passed to asc
        --wat        Writes out the corresponding wat file, e.g. outputFile.wat
        --help       Prints this`
    );
    process.exit(0);
  }
  let textFile = options && options.wat ? 
                [
                  "--textFile", 
                  outputFile.substring(0, outputFile.lastIndexOf(".")) + ".wat"
                ] :
                [];
  const asc = getAsc(options);
  asc.main(
    [
      inputFile,
      // TODO: Optimiziation is very slow, enable it only conditionally for "prod" builds?
      "--binaryFile", outputFile,
      ...textFile,
      ...ascArgs,
    ],
    options || {}, callback);
}
