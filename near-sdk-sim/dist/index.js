"use strict";
/// <reference path="./types.ts" />
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
exports.utils = exports.ExecutionResult = exports.UserTransaction = exports.UserAccount = exports.DEFAULT_GENESIS_CONFIG = exports.STORAGE_AMOUNT = exports.DEFAULT_GAS = exports.to_yocto = exports.init_simulator = void 0;
const sim = __importStar(require("../sim-ffi"));
const user_1 = require("./user");
// From v3.2.0 near-sdk-sim crate cache contract storage, and
// for that it uses "CARGO_MANIFEST_DIR" env, which is set by
// cargo when running "cargo run", "cargo test".
// https://github.com/near/near-sdk-rs/blob/5a8f4dcac44598db19532cdbd6c492bd42e1e777/near-sdk-sim/src/cache.rs#L25
process.env["CARGO_MANIFEST_DIR"] = "sim-ffi";
/**
 * The simulator takes an optional GenesisConfig, which sets up the fees and other settings.
 * It returns the `master_account` which can then create accounts and deploy contracts.
 * @param genesis_config Optional config to setup the fees and other settings
 */
function init_simulator(genesis_config) {
    if (genesis_config) {
        if (!genesis_config.runtime_config)
            genesis_config.runtime_config = exports.DEFAULT_GENESIS_CONFIG.runtime_config;
        return new user_1.UserAccount(sim.$init_simulator(JSON.stringify(genesis_config)));
    }
    else {
        return new user_1.UserAccount(sim.$init_simulator());
    }
}
exports.init_simulator = init_simulator;
// utils
/**
 * Convert to given value to yocto unit (10^24)
 * Helpful in calculating gas and user balance
 * @param value number string to convert
 * @returns number in yocto unit
 */
function to_yocto(value) {
    return sim.$to_yocto(value);
}
exports.to_yocto = to_yocto;
// Exports
/**
 * Default Gas value
 */
exports.DEFAULT_GAS = sim.$DEFAULT_GAS;
/**
 * Default storage amount
 */
exports.STORAGE_AMOUNT = sim.$STORAGE_AMOUNT;
/**
 * Default genesis config
 */
exports.DEFAULT_GENESIS_CONFIG = JSON.parse(sim.$DEFAULT_GENESIS_CONFIG);
var user_2 = require("./user");
Object.defineProperty(exports, "UserAccount", { enumerable: true, get: function () { return user_2.UserAccount; } });
Object.defineProperty(exports, "UserTransaction", { enumerable: true, get: function () { return user_2.UserTransaction; } });
var outcome_1 = require("./outcome");
Object.defineProperty(exports, "ExecutionResult", { enumerable: true, get: function () { return outcome_1.ExecutionResult; } });
exports.utils = __importStar(require("./utils"));
//# sourceMappingURL=index.js.map