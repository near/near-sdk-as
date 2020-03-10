const compile = require("near-bindgen-as/compiler").compile;


compile("assembly/main.ts", // input file
        "out/main.wasm",    // output file
        [
        //   "-O1",            // Optional arguments
        "--debug",
        "--measure",
        "--runPasses", "inlining-optimizing,dce",
        ],
        {verbose: true});


compile("assembly/hello/main.ts", // input file
        "out/hello/main.wasm",    // output file
        [
        //   "-O1",            // Optional arguments
        "--debug",
        "--measure",
        "--runPasses", "inlining,dce",
        ],
        {verbose: true});


