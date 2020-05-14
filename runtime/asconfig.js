let _compile = require("../compiler").compile;


function compileContract(input) {
   _compile("../assembly/__tests__/"+input+".ts", // input file
        "out/"+input+".wasm",    // output file
        [
        //   "-O1",            // Optional arguments
        "--debug",
        // "--measure",
        // "-d", "out/" + input + ".d.ts",
        // "--runPasses", "inlining-optimizing,dce" // Inlines to optimize and removes deadcode
        ], {
        //   verbose: true
        });
}

compileContract("words");
compileContract("sentences");
