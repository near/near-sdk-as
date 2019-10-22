const compile = require("near-bindgen-as").compile;


compile("assembly/main.ts", // input file
        "out/main.wasm",    // output file
        [
        //   "-O1",            // Optional arguments
        "--debug",
        "--measure"
        ]);


