const compile = require("./compiler").compile;


compile("../assembly/__tests__/bindgen/test.ts", // input file
        "out/test.wasm",    // output file
        [
          // "-O3z",            // Optional arguments
        // "--debug",
        // "--measure",
        // "--runPasses", "inlining-optimizing,dce" // Inlines to optimize and removes deadcode
        ]);


function buildFail(msg, input, output, args, options) {
        var failed = false;
        try {
                compile(input, output, args, options)
        } catch (err) {
                failed = true
        } finally {
                if (!failed) {
                        throw new Error(msg);
                }
        }
}
buildFail("Missing input file should fail")
buildFail("Missing output file should fail.", "../assembly/__tests__/bindgen/bad.ts")
buildFail("Failing to compiling should fail.", "../assembly/__tests__/bindgen/bad.ts", "out/bad.wasm", [], { verbose:true })
console.log("PASSED");

