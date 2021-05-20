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
exports.UserTransaction = exports.UserAccount = void 0;
const utils_1 = require("./utils");
const sim = __importStar(require("../sim-ffi"));
const fs = __importStar(require("fs"));
const path_1 = require("path");
const outcome_1 = require("./outcome");
class UserAccount extends utils_1.RustRef {
    account_id() {
        return sim.$ua$account_id(this.ref);
    }
    account() {
        return JSON.parse(sim.$ua$account(this.ref));
    }
    transfer(to, deposit) {
        return new outcome_1.ExecutionResult(sim.$ua$transfer(this.ref, to, deposit));
    }
    call(account_id, method, args = "{}", gas = sim.$DEFAULT_GAS, deposit = "0") {
        if (!(typeof args === "string")) {
            args = JSON.stringify(args);
        }
        return new outcome_1.ExecutionResult(sim.$ua$call(this.ref, account_id, method, args, gas, deposit));
    }
    deploy(wasm_bytes, account_id, deposit = "112897800000000000000000000000") {
        if (!(wasm_bytes instanceof Uint8Array)) {
            if (typeof wasm_bytes !== "string") {
                wasm_bytes = path_1.join(...wasm_bytes);
            }
            wasm_bytes = fs.readFileSync(wasm_bytes);
        }
        return new UserAccount(sim.$ua$deploy(this.ref, wasm_bytes, account_id, deposit));
    }
    deploy_and_init(wasm_bytes, account_id, method, args = "{}", gas = sim.$DEFAULT_GAS, deposit = "112897800000000000000000000000") {
        if (!(wasm_bytes instanceof Uint8Array)) {
            if (typeof wasm_bytes !== "string") {
                wasm_bytes = path_1.join(...wasm_bytes);
            }
            wasm_bytes = fs.readFileSync(wasm_bytes);
        }
        if (!(typeof args === "string")) {
            args = JSON.stringify(args);
        }
        return new UserAccount(sim.$ua$deploy_and_init(this.ref, wasm_bytes, account_id, method, args, gas, deposit));
    }
    create_transaction(receiver_id) {
        return new UserTransaction(sim.$ua$create_transaction(this.ref, receiver_id));
    }
    view(account_id, method, args = "{}") {
        if (!(typeof args === "string")) {
            args = JSON.stringify(args);
        }
        return JSON.parse(sim.$ua$view(this.ref, account_id, method, args));
    }
    view_self(method, args = "{}") {
        return this.view(this.account_id(), method, args);
    }
    create_user_from(signer_user, account_id, initial_balance) {
        return new UserAccount(sim.$ua$create_user_from(this.ref, signer_user, account_id, initial_balance));
    }
    create_user(account_id, initial_balance) {
        return new UserAccount(sim.$ua$create_user(this.ref, account_id, initial_balance));
    }
}
exports.UserAccount = UserAccount;
class UserTransaction extends utils_1.RustRef {
    /**
     * Sign and execute the transaction
     * @returns
     */
    submit() {
        return new outcome_1.ExecutionResult(sim.$ut$submit(this.ref));
    }
    create_account() {
        this.ref = sim.$ut$create_account(this.ref);
        return this;
    }
    deploy_contract(wasm_bytes) {
        this.ref = sim.$ut$deploy_contract(this.ref, wasm_bytes);
        return this;
    }
    function_call(method, args, gas, deposit) {
        this.ref = sim.$ut$function_call(this.ref, method, args, gas, deposit);
        return this;
    }
    transfer(deposit) {
        this.ref = sim.$ut$transfer(this.ref, deposit);
        return this;
    }
    stake(deposit, public_key) {
        this.ref = sim.$ut$stake(this.ref, deposit, public_key);
        return this;
    }
    add_key(public_key, access_key) {
        this.ref = sim.$ut$add_key(this.ref, public_key, access_key);
        return this;
    }
    delete_key(public_key) {
        this.ref = sim.$ut$delete_key(this.ref, public_key);
        return this;
    }
    delete_account(beneficiary_id) {
        this.ref = sim.$ut$delete_account(this.ref, beneficiary_id);
        return this;
    }
}
exports.UserTransaction = UserTransaction;
//# sourceMappingURL=user.js.map