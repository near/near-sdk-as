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
exports.DEFAULT_GAS = exports.ExecutionResult = exports.User = exports.init_simulator = void 0;
const sim = __importStar(require("../sim-ffi"));
const fs = __importStar(require("fs"));
const path_1 = require("path");
function init_simulator() {
    return new User(sim.init());
}
exports.init_simulator = init_simulator;
class RustRef {
    constructor(ref) {
        this.ref = ref;
    }
}
class User extends RustRef {
    account_id() { return sim.user_account_id(this.ref); }
    amount() {
        return sim.user_amount(this.ref);
    }
    deploy(wasm_bytes, account_id, deposit = "112897800000000000000000000000") {
        if (!(wasm_bytes instanceof Uint8Array)) {
            if (typeof wasm_bytes !== "string") {
                wasm_bytes = path_1.join(...wasm_bytes);
            }
            wasm_bytes = fs.readFileSync(wasm_bytes);
        }
        return new User(sim.user_deploy(this.ref, wasm_bytes, account_id, deposit));
    }
    view(account_id, method, args = "{}") {
        if (!(typeof args === "string")) {
            args = JSON.stringify(args);
        }
        return JSON.parse(sim.user_view(this.ref, account_id, method, args));
    }
    call(account_id, method, args = "{}", gas = sim.DEFAULT_GAS, deposit = "0") {
        if (!(typeof args === "string")) {
            args = JSON.stringify(args);
        }
        return new ExecutionResult(sim.user_call(this.ref, account_id, method, args, gas, deposit));
    }
    view_self(method, args = "{}") {
        return this.view(this.account_id(), method, args);
    }
    create_user(account_id, initial_balance) {
        return new User(sim.user_create_user(this.ref, account_id, initial_balance));
    }
}
exports.User = User;
class ExecutionResult extends RustRef {
    is_ok() { return sim.executionResult_is_ok(this.ref); }
    has_value() { return sim.executionResult_has_value(this.ref); }
    outcome() { return JSON.parse(sim.executionResult_outcome(this.ref)); }
}
exports.ExecutionResult = ExecutionResult;
exports.DEFAULT_GAS = sim.DEFAULT_GAS;
//# sourceMappingURL=index.js.map