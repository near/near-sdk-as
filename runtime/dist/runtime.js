"use strict";
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (Object.hasOwnProperty.call(mod, k)) result[k] = mod[k];
    result["default"] = mod;
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
const utils_1 = require("./utils");
const context_1 = require("./context");
const child_process_1 = require("child_process");
const os = __importStar(require("os"));
const fs = __importStar(require("fs"));
const DEFAULT_GAS = 10 ** 15;
/**
 * run binary if it doesn't exist so that it installs itself.
 */
try {
    let binary = require("near-vm/getBinary");
    const binPath = require("path").join(binary.installDirectory, "bin", binary.name);
    if (!fs.existsSync(binPath)) {
        child_process_1.spawnSync("node", [__dirname + "/bin.js"]);
    }
}
catch (e) {
}
class Account {
    constructor(account_id, wasmFile = null, runtime) {
        this.account_id = account_id;
        this.wasmFile = wasmFile;
        this.runtime = runtime;
        this.state = {};
        this.balance = 1000000000000;
        this.lockedBalance = 0;
        this.signerAccountPk = utils_1.encodeBs58(account_id.slice(0, 32).padEnd(32, " "));
        if (wasmFile != null && !fs.existsSync(wasmFile)) {
            throw new Error(`Path ${wasmFile} to contract wasm file doesn't exist`);
        }
    }
    createAccountContext(input = {}, prepaid_gas = DEFAULT_GAS) {
        input = JSON.stringify(input);
        let accountContext = {
            input,
            prepaid_gas,
            signer_account_pk: this.account_id,
        };
        return accountContext;
    }
    call_step_other(account_id, method_name, input = {}, prepaid_gas = DEFAULT_GAS) {
        if (this.runtime == null)
            throw new Error("Runtime is not set");
        let accountContext = this.createAccountContext(input, prepaid_gas);
        return this.runtime.call_step(account_id, method_name, accountContext.input, accountContext);
    }
    call_step(method_name, input, prepaid_gas) {
        return this.call_step_other(this.account_id, method_name, input, prepaid_gas);
    }
    call_other(account_id, method_name, input, prepaid_gas) {
        if (this.runtime == null)
            throw new Error("Runtime is not set");
        let accountContext = this.createAccountContext(input, prepaid_gas);
        return this.runtime.call(account_id, method_name, accountContext.input, accountContext);
    }
    call(method_name, input, prepaid_gas) {
        return this.call_other(this.account_id, method_name, input, prepaid_gas);
    }
    view(method_name, input) {
        if (this.runtime == null)
            throw new Error("Runtime is not set");
        let accountContext = this.createAccountContext(input);
        accountContext.is_view = true;
        const result = this.runtime.call_step(this.account_id, method_name, input, accountContext);
        var return_data = result.outcome && result.outcome.return_data; //('outcome', {}).get('return_data', None)
        if (return_data) {
            return_data = return_data["Value"] || "";
        }
        const err = result["err"];
        // if return_data is not None:
        //     return_data = return_data['Value'] if 'Value' in return_data else ''
        return {
            return_data,
            err,
            result,
        };
    }
    /**
     * Current state of contract.
     */
    getState() {
        return Object.getOwnPropertyNames(this.state).reduce((acc, cur) => {
            let key = utils_1.decodeBs58(cur);
            acc[key] = utils_1.decodeBs58(this.state[cur]);
            return acc;
        }, {});
    }
}
exports.Account = Account;
class Runtime {
    constructor() {
        this.accounts = new Map();
    }
    log(input) {
        if (process.env.DEBUG) {
            console.log(input);
        }
    }
    newAccount(accoundId, wasmFile = null) {
        const account = new Account(accoundId, wasmFile, this);
        account.runtime = this;
        this.accounts.set(accoundId, account);
        return account;
    }
    getOrCreateAccount(account_id) {
        return this.accounts.get(account_id) || this.newAccount(account_id);
    }
    getAccount(account_id) {
        const account = this.accounts.get(account_id);
        if (account == undefined)
            throw new Error(account_id + " has not be added.");
        return account;
    }
    call_step(account_id, method_name, input = "", accountContext = context_1.defaultAccountContext()) {
        accountContext.signer_account_id =
            accountContext.signer_account_id || account_id;
        accountContext.input = input;
        accountContext.predecessor_account_id =
            accountContext.predecessor_account_id || accountContext.signer_account_id;
        const context = utils_1.assign(accountContext, context_1.defaultAccountContext());
        const signer_account = this.getOrCreateAccount(context.signer_account_id);
        const predecessor_account = this.getAccount(context.predecessor_account_id);
        const account = this.getAccount(account_id);
        context.current_account_id = account.account_id;
        context.signer_account_pk = signer_account.signerAccountPk;
        context.account_balance = account.balance.toString();
        context.account_locked_balance = account.lockedBalance.toString();
        context.input = input;
        const vmContext = context_1.createContext(context);
        let args = [
            __dirname + "/bin.js",
            "--context=" + JSON.stringify(vmContext),
            "--input=" + input,
            "--wasm-file=" + account.wasmFile,
            "--method-name=" + method_name,
            "--state=" + JSON.stringify(account.state),
        ];
        for (let data of accountContext.input_data || []) {
            args.push("--promise-results=" + JSON.stringify(data));
        }
        var result = this.spawn(args);
        if (!context.is_view && result["err"] == null) {
            account.balance = result["outcome"]["balance"];
            account.state = result["state"];
        }
        return result;
    }
    call(account_id, method_name, input = "", accountContext) {
        var q = [
            {
                ...accountContext,
                index: 0,
                account_id,
                method_name,
                input,
            },
        ];
        var numReceipts = 1;
        var all_input_data = {};
        var all_output_data = {};
        var num_data = 0;
        var return_index = 0;
        var calls = {};
        var results = {};
        while (q.length > 0) {
            let c = q.shift();
            let index = c["index"];
            let input_data = [];
            if (c.input_data) {
                for (let d of c.input_data) {
                    if (all_input_data[d] != undefined) {
                        input_data.push(all_input_data[d]);
                    }
                    else {
                        break;
                    }
                }
                if (input_data.length < c.input_data.length) {
                    q.push(c);
                    continue;
                }
            }
            let output_data = all_output_data[index] || [];
            calls[index] = c;
            this.log(`Call ${JSON.stringify(c)} Output ${JSON.stringify(output_data)}`);
            let accountContext = {
                ...c,
                output_data_receivers: output_data.map((d) => d["account_id"]),
                input_data,
            };
            let result = this.call_step(c["account_id"], c["method_name"], c["input"], accountContext);
            results[index] = result;
            this.log(`Result:`);
            this.log(result);
            if (result) {
                if (result.outcome) {
                    for (let log of result.outcome.logs) {
                        this.log(`${c["account_id"]}: ${log}`);
                    }
                    if (result.outcome.err) {
                        let result_data = { Failed: null };
                        for (let d of output_data) {
                            all_input_data[d["data_id"]] = result_data;
                        }
                    }
                    else {
                        let ret = result.outcome.return_data;
                        if (ret["ReceiptIndex"] != undefined) {
                            let adj_index = ret["ReceiptIndex"] + numReceipts;
                            if (!all_output_data[adj_index]) {
                                all_output_data[adj_index] = [];
                            }
                            for (let d of output_data) {
                                all_output_data[adj_index].push(d);
                            }
                            if (return_index == index) {
                                return_index = adj_index;
                            }
                        }
                        else {
                            let result_data = {
                                Successful: ret["Value"] || "",
                            };
                            for (let d of output_data) {
                                all_input_data[d["data_id"]] = result_data;
                            }
                        }
                        for (let i in result["receipts"]) {
                            const receipt = result["receipts"][i];
                            if (receipt.actions.length != 1) {
                                throw new Error("reciept actions must have length 1");
                            }
                            const action = receipt.actions[0];
                            const fca = action["FunctionCall"];
                            let new_input_data = [];
                            for (let ind of receipt["receipt_indices"]) {
                                let data_id = num_data++;
                                new_input_data.push(data_id);
                                let adj_index = ind + numReceipts;
                                if (all_output_data[adj_index] == undefined) {
                                    all_output_data[adj_index] = [];
                                }
                                all_output_data[adj_index].push({
                                    account_id: receipt["receiver_id"],
                                    data_id,
                                });
                                // }
                            }
                            let next = {
                                index: parseInt(i) + numReceipts,
                                account_id: receipt["receiver_id"],
                                method_name: fca["method_name"],
                                input: fca["args"],
                                signer_account_id: accountContext.signer_account_id,
                                predecessor_account_id: c["account_id"],
                                input_data: new_input_data,
                                prepaid_gas: fca["gas"],
                                attached_deposit: fca["deposit"],
                            };
                            q.push(next);
                        }
                        this.log(ret);
                        numReceipts += result["receipts"].length;
                    }
                }
            }
            this.log(`Queue:  ${q.map((x) => `${x.predecessor_account_id} -> ${x.account_id}`)}`);
        }
        const result = results[return_index];
        this.log(`Final result:`);
        this.log(result);
        let return_data = (result.outcome && result.outcome.return_data) || undefined;
        if (return_data != undefined) {
            return_data = return_data["Value"]
                ? JSON.parse(return_data["Value"])
                : null;
        }
        if (result["err"] != null) {
            console.error("ERROR: ", result.err);
        }
        return {
            return_data,
            err: result["err"],
            result,
            calls,
            results,
        };
    }
    spawn(args) {
        let execResult = child_process_1.spawnSync("node", args);
        if (execResult.status != 0) {
            if (os.type() === 'Windows_NT') {
                console.error("Windows is not supported.");
                process.exit(0);
            }
            throw new Error("Failed to run successfully: " + execResult.output[2].toString());
        }
        var output = execResult.output[1];
        var result;
        try {
            result = JSON.parse(output);
        }
        catch (e) {
            console.error("Failed to parse: " + output);
            throw e;
        }
        return result;
    }
}
exports.Runtime = Runtime;
//# sourceMappingURL=runtime.js.map