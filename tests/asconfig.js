const compile = require("..").compile;


compile("assembly/test.ts", // input file
        "out/test.wasm",    // output file
        [
        //   "-O1",            // Optional arguments
        "--debug",
        "--measure"
        ]);


