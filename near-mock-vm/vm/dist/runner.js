"use strict";
/// <reference lib="dom" />
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
exports.VMRunner = void 0;
const near_mock_vm_1 = require("../../pkg/near_mock_vm");
const context_1 = require("./context");
const memory_1 = require("./memory");
const js_base64_1 = require("js-base64");
const loader = __importStar(require("assemblyscript/lib/loader"));
const utils = __importStar(require("./utils"));
class VMRunner {
    constructor(memory, contextPath) {
        this.wasm = null;
        this.gas = 0;
        const context = context_1.createContext(contextPath);
        this.vm = new near_mock_vm_1.VM(context, memory);
        this.memory = memory;
        this.savedMemory = new Uint8Array(memory.memory.buffer);
    }
    static create(memory, contextPath) {
        let mem = new memory_1.Memory(memory);
        return new VMRunner(mem, contextPath);
    }
    static instrumentBinary(binary) {
        return Buffer.from(near_mock_vm_1.inject_contract(binary));
    }
    readUTF8Str(ptr) {
        let arr = [];
        let mem = this.memory.memory;
        while (mem[ptr] != 0) {
            arr.push(mem[ptr]);
            ptr++;
        }
        return utils.UTF8toStr(arr);
        // return this.memory.readUTF8Str(s);
    }
    createImports() {
        let vm = this.vm;
        let self = this;
        let memory = this.memory.Memory;
        let _imports = {
            vm: {
                saveMem() {
                    self.savedMemory = new Uint8Array(memory.buffer.slice(0, memory.buffer.byteLength));
                },
                restoreMem() {
                    new Uint8Array(memory.buffer).set(self.savedMemory);
                    if (memory.buffer.byteLength > self.savedMemory.byteLength) {
                        new Uint8Array(memory.buffer).fill(0, self.savedMemory.byteLength);
                        self.savedMemory = new Uint8Array(memory.buffer.slice(0, memory.buffer.byteLength));
                    }
                },
                restoreState() {
                    vm.reset();
                },
                outcome() {
                    let outcome = vm.outcome();
                    let strArrPtr = self.wasm.newStringArray();
                    for (let str of outcome.logs) {
                        strArrPtr = self.wasm.pushString(strArrPtr, self.wasm.__newString(str));
                    }
                    let return_data_ptr;
                    if (outcome.return_data === "None") {
                        return_data_ptr = self.wasm.None;
                    }
                    const balancePtr = self.wasm.__newString(outcome.balance);
                    let outcomePtr = new self.wasm.Outcome(balancePtr, BigInt(outcome.burnt_gas), BigInt(outcome.used_gas), strArrPtr, BigInt(outcome.storage_usage), return_data_ptr);
                    return outcomePtr.valueOf();
                },
                setCurrent_account_id(s) {
                    vm.set_current_account_id(self.readUTF8Str(s));
                },
                setInput(s) {
                    vm.set_input(js_base64_1.Base64.encode(self.readUTF8Str(s)));
                },
                setSigner_account_id(s) {
                    vm.set_signer_account_id(self.readUTF8Str(s));
                },
                /// The public key that was used to sign the original transaction that led to
                /// this execution.
                setSigner_account_pk(s) {
                    vm.set_signer_account_pk(self.readUTF8Str(s));
                },
                setPredecessor_account_id(s) {
                    vm.set_predecessor_account_id(self.readUTF8Str(s));
                },
                setBlock_index(block_height) {
                    vm.set_block_index(block_height);
                },
                setBlock_timestamp(stmp) {
                    vm.set_block_timestamp(stmp);
                },
                setAccount_balance(s) {
                    vm.set_account_balance(self.readUTF8Str(s));
                },
                setAccount_locked_balance(s) {
                    vm.set_account_locked_balance(self.readUTF8Str(s));
                },
                setStorage_usage(amt) {
                    vm.set_storage_usage(amt);
                },
                setAttached_deposit(s) {
                    vm.set_attached_deposit(self.readUTF8Str(s));
                },
                setPrepaid_gas(_u64) {
                    vm.set_prepaid_gas(_u64);
                },
                setRandom_seed(s) {
                    vm.set_random_seed(self.readUTF8Str(s));
                },
                setIs_view(b) {
                    vm.set_is_view(b == 1);
                },
                setEpoch_height(_u64) {
                    vm.set_epoch_height(_u64);
                },
                // setOutput_data_receivers(arr) {
                //   vm.set_output_data_receivers(arr);
                // },
                setValidator(s, b) {
                    vm.set_validator(self.readUTF8Str(s), self.readUTF8Str(b));
                },
            },
            env: {
                memory,
                /// #################
                /// # Registers API #
                /// #################
                // write_register(data_len, data_ptr, register_id: BigInt) {
                //   return vm.write_register(data_len, data_ptr, register_id);
                // },
                read_register(register_id, ptr) {
                    return vm.read_register(register_id, ptr);
                },
                register_len(register_id) {
                    return vm.register_len(register_id);
                },
                // ###############
                // # Context API #
                // ###############
                current_account_id(register_id) {
                    return vm.current_account_id(register_id);
                },
                signer_account_id(register_id) {
                    return vm.signer_account_id(register_id);
                },
                signer_account_pk(register_id) {
                    return vm.signer_account_pk(register_id);
                },
                predecessor_account_id(register_id) {
                    return vm.predecessor_account_id(register_id);
                },
                input(register_id) {
                    return vm.input(register_id);
                },
                block_index() {
                    return vm.block_index();
                },
                block_timestamp() {
                    return vm.block_timestamp();
                },
                epoch_height() {
                    return vm.epoch_height();
                },
                storage_usage() {
                    return vm.storage_usage();
                },
                // #################
                // # Economics API #
                // #################
                account_balance(balance_ptr) {
                    return vm.account_balance(balance_ptr);
                },
                account_locked_balance(ptr) {
                    vm.account_locked_balance(ptr);
                },
                attached_deposit(balance_ptr) {
                    return vm.attached_deposit(balance_ptr);
                },
                prepaid_gas() {
                    return vm.prepaid_gas();
                },
                used_gas() {
                    return vm.used_gas();
                },
                // ############
                // # Math API #
                // ############
                random_seed(register_id) {
                    return vm.random_seed(register_id);
                },
                sha256(value_len, value_ptr, register_id) {
                    return vm.sha256(value_len, value_ptr, register_id);
                },
                keccak256(value_len, value_ptr, register_id) {
                    return vm.keccak256(value_len, value_ptr, register_id);
                },
                keccak512(value_len, value_ptr, register_id) {
                    return vm.keccak512(value_len, value_ptr, register_id);
                },
                // #####################
                // # Miscellaneous API #
                // #####################
                value_return(value_len, value_ptr) {
                    return vm.value_return(value_len, value_ptr);
                },
                panic() {
                    return vm.panic();
                },
                log_utf8(len, ptr) {
                    return vm.log_utf8(len, ptr);
                },
                log_utf16(len, ptr) {
                    return vm.log_utf16(len, ptr);
                },
                // ################
                // # Promises API #
                // ################
                promise_create(account_id_len, account_id_ptr, method_name_len, method_name_ptr, arguments_len, arguments_ptr, amount_ptr, gas) {
                    return vm.promise_create(account_id_len, account_id_ptr, method_name_len, method_name_ptr, arguments_len, arguments_ptr, amount_ptr, gas);
                },
                promise_then(promise_index, account_id_len, account_id_ptr, method_name_len, method_name_ptr, arguments_len, arguments_ptr, amount_ptr, gas) {
                    return vm.promise_then(promise_index, account_id_len, account_id_ptr, method_name_len, method_name_ptr, arguments_len, arguments_ptr, amount_ptr, gas);
                },
                promise_and(promise_idx_ptr, promise_idx_count) {
                    return vm.promise_and(promise_idx_ptr, promise_idx_count);
                },
                promise_results_count() {
                    return vm.promise_results_count();
                },
                promise_result(result_idx, register_id) {
                    return vm.promise_result(result_idx, register_id);
                },
                promise_return(promise_id) {
                    return vm.promise_return(promise_id);
                },
                promise_batch_create(account_id_len, account_id_ptr) {
                    return vm.promise_batch_create(account_id_len, account_id_ptr);
                },
                promise_batch_then(promise_index, account_id_len, account_id_ptr) {
                    return vm.promise_batch_then(promise_index, account_id_len, account_id_ptr);
                },
                // #######################
                // # Promise API actions #
                // #######################
                promise_batch_action_create_account(promise_index) {
                    return vm.promise_batch_action_create_account(promise_index);
                },
                promise_batch_action_deploy_contract(promise_index, code_len, code_ptr) {
                    return vm.promise_batch_action_deploy_contract(promise_index, code_len, code_ptr);
                },
                promise_batch_action_function_call(promise_index, method_name_len, method_name_ptr, arguments_len, arguments_ptr, amount_ptr, gas) {
                    return vm.promise_batch_action_function_call(promise_index, method_name_len, method_name_ptr, arguments_len, arguments_ptr, amount_ptr, gas);
                },
                promise_batch_action_transfer(promise_index, amount_ptr) {
                    return vm.promise_batch_action_transfer(promise_index, amount_ptr);
                },
                promise_batch_action_stake(promise_index, amount_ptr, public_key_len, public_key_ptr) {
                    return vm.promise_batch_action_stake(promise_index, amount_ptr, public_key_len, public_key_ptr);
                },
                promise_batch_action_add_key_with_full_access(promise_index, public_key_len, public_key_ptr, nonce) {
                    return vm.promise_batch_action_add_key_with_full_access(promise_index, public_key_len, public_key_ptr, nonce);
                },
                promise_batch_action_add_key_with_function_call(promise_index, public_key_len, public_key_ptr, nonce, allowance_ptr, receiver_id_len, receiver_id_ptr, method_names_len, method_names_ptr) {
                    return vm.promise_batch_action_add_key_with_function_call(promise_index, public_key_len, public_key_ptr, nonce, allowance_ptr, receiver_id_len, receiver_id_ptr, method_names_len, method_names_ptr);
                },
                promise_batch_action_delete_key(promise_index, public_key_len, public_key_ptr) {
                    return vm.promise_batch_action_delete_key(promise_index, public_key_len, public_key_ptr);
                },
                promise_batch_action_delete_account(promise_index, beneficiary_id_len, beneficiary_id_ptr) {
                    return vm.promise_batch_action_delete_account(promise_index, beneficiary_id_len, beneficiary_id_ptr);
                },
                // ###############
                // # Storage API #
                // ###############
                storage_write(key_len, key_ptr, value_len, value_ptr, register_id) {
                    return vm.storage_write(key_len, key_ptr, value_len, value_ptr, register_id);
                },
                storage_read(key_len, key_ptr, register_id) {
                    return vm.storage_read(key_len, key_ptr, register_id);
                },
                storage_remove(key_len, key_ptr, register_id) {
                    return vm.storage_remove(key_len, key_ptr, register_id);
                },
                storage_has_key(key_len, key_ptr) {
                    return vm.storage_has_key(key_len, key_ptr);
                },
                // // Function for the injected gas counter. Automatically called by the gas meter.
                gas(gas_amount) {
                    self.gas += gas_amount;
                    return vm.gas(gas_amount);
                },
                // Validator API
                validator_stake(id_len, id_ptr, data_ptr) {
                    return vm.validator_stake(id_len, id_ptr, data_ptr);
                },
                validator_total_stake(data_ptr) {
                    return vm.validator_total_stake(data_ptr);
                },
            },
        };
        return _imports;
    }
    run(method, input) {
        this.vm.set_input(js_base64_1.Base64.encode(input));
        this.wasm.exports[method]();
    }
    static setup(binary, contextPath, memory) {
        const vm = VMRunner.create(memory, contextPath);
        const instrumented_bin = VMRunner.instrumentBinary(binary);
        const wasm = loader.instantiateSync(instrumented_bin, vm.createImports());
        vm.wasm = wasm;
        vm.memory = new memory_1.Memory(wasm.exports.memory);
        return vm;
    }
    outcome() {
        return this.vm.outcome();
    }
    created_receipts() {
        return this.vm.created_receipts();
    }
    static run(binary, method, input, contextPath) {
        const runner = VMRunner.setup(binary, contextPath);
        runner.run(method, input);
        let after = runner.outcome();
        // console.log(after);
        console.log("calls to injected gas: " + runner.gas);
        console.log("Gas used after startup: " + after.used_gas / 10 ** 12);
        console.log("Outcome:");
        console.log(after);
        const receipts = runner.created_receipts();
        if (receipts.length > 0) {
            console.log("Receipts: ");
            console.log(receipts);
        }
    }
}
exports.VMRunner = VMRunner;
//# sourceMappingURL=runner.js.map