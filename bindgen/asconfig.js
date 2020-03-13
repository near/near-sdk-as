const compile = require("./compiler").compile;


compile("../assembly/__tests__/bindgen/test.ts", // input file
        "out/test.wasm",    // output file
        [
        //   "-O1",            // Optional arguments
        "--debug",
        "--measure",
        "--runPasses", "inlining-optimizing,dce" // Inlines to optimize and removes deadcode
        ], {verbose: true});


