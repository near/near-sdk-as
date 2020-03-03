const compile = require("near-bindgen-as/compiler").compile;


compile("assembly/test.ts", // input file
        "out/test.wasm",    // output file
        [
        //   "-O1",            // Optional arguments
        "--debug",
        "--measure"
        ], {verbose: true});


