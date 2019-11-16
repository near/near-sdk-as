# Near Bindings Generator 
Transforms the Assembyscript AST to serialize exported functions and add `encode` and `decode` functions for generating and parsing JSON strings.

## Using via CLI

After installling, `npm install nearprotocol/near-bindgen-as`, it can be added to the cli arguments of the assemblyscript compiler you must add the following:

```bash
asc <file> --transform near-bindgen-as ...
```

This module also adds a binary `near-asc` which adds the default arguments required to build near contracts as well as the transformer.

```bash
near-asc <input file> <output file>
```

## Using a script to compile

Another way is to add a file such as `asconfig.js` such as:

```js
const compile = require("near-bindgen-as/compiler").compile;


compile("assembly/index.ts", // input file
        "out/index.wasm",    // output file
        [
        //   "-O1",            // Optional arguments
        "--debug",
        "--measure"
        ],
        // Prints out the final cli arguments passed to compiler.
        {verbose: true}
        );
```

It can then be built with `node asconfig.js`.  There is an example of this in the test directory.
