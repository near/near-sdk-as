
export namespace runtime_api {
    // #############
    // # Registers #
    // #############
    @external("env", "read_register")
    declare function read_register(register_id: u64, ptr: u64): void;
    @external("env", "register_len")
    declare function register_len(register_id: u64) : u64;
    
    // ###############
    // # Context API #
    // ###############
    @external("env", "current_account_id")
    declare function current_account_id(register_id: u64) : void;
    @external("env", "signer_account_id")
    declare function signer_account_id(register_id: u64) : void;
    @external("env", "signer_account_pk")
    declare function signer_account_pk(register_id: u64) : void;
    @external("env", "predecessor_account_id")
    declare function predecessor_account_id(register_id: u64) : void;
    @external("env", "input")
    declare function input(register_id: u64) : void;
    @external("env", "block_index")
    declare function block_index() : u64;
    @external("env", "storage_usage")
    declare function storage_usage() : u64;

    // #################
    // # Economics API #
    // #################
    @external("env", "account_balance")
    declare function account_balance(balance_ptr: u64) : void;
    @external("env", "attached_deposit")
    declare function attached_deposit(balance_ptr: u64) : void;
    @external("env", "prepaid_gas")
    declare function prepaid_gas() : u64;
    @external("env", "used_gas")
    declare function used_gas() : u64;

    // ############
    // # Math API #
    // ############
    @external("env", "random_buf")
    declare function random_buf(len: u64, register_id: u64) : void;
    @external("env", "random_u64")
    declare function random_u64() : u64;
    @external("env", "sha256")
    declare function sha256(value_len: u64, value_ptr: u64, register_id: u64) : void;

    // #####################
    // # Miscellaneous API #
    // #####################
    @external("env", "value_return")
    declare function value_return(value_len: u64, value_ptr: u64) : void;
    @external("env", "panic")
    declare function panic() : void;
    @external("env", "log_utf8")
    declare function log_utf8(len: u64, ptr: u64) : void;
    @external("env", "log_utf16")
    declare function log_utf16(len: u64, ptr: u64) : void;
    @external("env", "abort")
    declare function abort(msg_ptr: u32, filename_ptr: u32, line: u32, col: u32) : void;

    // ################
    // # Promises API #
    // ################
    @external("env", "promise_create")
    declare function promise_create(account_id_len: u64,account_id_ptr: u64,method_name_len: u64,method_name_ptr: u64,arguments_len: u64, arguments_ptr: u64, amount_ptr: u64, gas: u64) : u64;
    @external("env", "promise_then")
    declare function promise_then( promise_index: u64, account_id_len: u64, account_id_ptr: u64, method_name_len: u64, method_name_ptr: u64, arguments_len: u64, arguments_ptr: u64, amount_ptr: u64, gas: u64 ) : u64;
    @external("env", "promise_and")
    declare function promise_and(promise_idx_ptr: u64, promise_idx_count: u64) : u64;
    @external("env", "promise_results_count")
    declare function promise_results_count() : u64;
    @external("env", "promise_result")
    declare function promise_result(result_idx: u64, register_id: u64) : u64;
    @external("env", "promise_return")
    declare function promise_return(promise_id: u64) : void;

    // ###############
    // # Storage API #
    // ###############
    @external("env", "storage_write")
    declare function storage_write(key_len: u64, key_ptr: u64, value_len: u64, value_ptr: u64, register_id: u64) : u64;
    @external("env", "storage_read")
    declare function storage_read(key_len: u64, key_ptr: u64, register_id: u64) : u64;
    @external("env", "storage_remove")
    declare function storage_remove(key_len: u64, key_ptr: u64, register_id: u64) : u64;
    @external("env", "storage_has_key")
    declare function storage_has_key(key_len: u64, key_ptr: u64) : u64;
    @external("env", "storage_iter_prefix")
    declare function storage_iter_prefix(prefix_len: u64, prefix_ptr: u64) : u64;
    @external("env", "storage_iter_range")
    declare function storage_iter_range(start_len: u64, start_ptr: u64, end_len: u64, end_ptr: u64) : u64;
    @external("env", "storage_iter_next")
    declare function storage_iter_next(iterator_id: u64, key_register_id: u64, value_register_id: u64) : u64;
    // Function for the injected gas counter. Automatically called by the gas meter.
    @external("env", "gas")
    declare function gas(gas_amount: u32) : void;
 }