"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    Object.defineProperty(o, k2, { enumerable: true, get: function() { return m[k]; } });
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
const yargs_1 = require("yargs");
const runner_1 = require("./runner");
const fs = __importStar(require("fs"));
const v8 = require("v8");
v8.setFlagsFromString("--experimental-wasm-bigint");
function serve(port) {
    console.info(`Serve on port ${port}.`);
}
yargs_1.scriptName("near-vm")
    .command({
    command: "run <wasmPath> <method> [input]",
    describe: "execute smart contract",
    builder: (yargs) => yargs.option("context", {
        describe: "path to VM context json file.",
    }),
    handler: (argv) => {
        const wasmBinary = fs.readFileSync(argv["wasmPath"]);
        const method = argv["method"];
        const input = argv["input"];
        runner_1.VMRunner.run(wasmBinary, method, input, argv["context"]);
    },
})
    .demandCommand(2)
    .help()
    .showHelpOnFail(true).argv;
//# sourceMappingURL=cli.js.map