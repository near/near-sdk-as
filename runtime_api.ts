
export namespace runtime_api {
    // #############
    // # Registers #
    // #############
    @external("env", "read_register")
    declare function read_register(register_id: u64, ptr: u64): void;
    @external("env", "register_len")
    declare function register_len(register_id: u64) : u64;


    @external("env", "storage_write")
    declare function storage_write(key_len: u64, key_ptr: u64, value_len: u64, value_ptr: u64, register_id: u64): u64;
    @external("env", "storage_remove")
    declare function storage_remove(key_len: usize, key_ptr: usize): void;
    @external("env", "storage_has_key")
    declare function storage_has_key(key_len: usize, key_ptr: usize): bool;
    @external("env", "storage_iter")
    declare function storage_iter(prefix_len: usize, prefix_ptr: usize): u32;
    @external("env", "storage_range")
    declare function storage_range(start_len: usize, start_ptr: usize, end_len: usize, end_ptr: usize): u32;
    @external("env", "storage_iter_next")
    declare function storage_iter_next(id: u32): u32;
    @external("env", "storage_read")
    declare function storage_read(key_len: u64, key_ptr: u64, register_id: u64) : u64;

    @external("env", "result_count")
    declare function result_count(): u32;
    @external("env", "result_is_ok")
    declare function result_is_ok(index: u32): bool;

    @external("env", "return_value")
    declare function return_value(value_len: usize, value_ptr: usize): void;
    @external("env", "return_promise")
    declare function return_promise(promise_index: u32): void;

    @external("env", "data_read")
    declare function data_read(type_index: u32, key_len: usize, key: usize, max_buf_len: usize, buf_ptr: usize): usize;

    @external("env", "promise_create")
    declare function promise_create(
        account_id_len: usize, account_id_ptr: usize,
        method_name_len: usize, method_name_ptr: usize,
        args_len: usize, args_ptr: usize,
        amount_ptr: usize): u32;

    @external("env", "promise_then")
    declare function promise_then(
        promise_index: u32,
        method_name_len: usize, method_name_ptr: usize,
        args_len: usize, args_ptr: usize,
        amount_ptr: usize): u32;

    @external("env", "promise_and")
    declare function promise_and(promise_index1: u32, promise_index2: u32): u32;

    @external("env", "check_ethash")
    declare function check_ethash(
        block_number: u64,
        header_hash_ptr: usize, header_hash_len: u32,
        nonce: u64,
        mix_hash_ptr: usize, mix_hash_len: u32,
        difficulty: u64
    ): bool;

    /**
     * @hidden
     * Hash buffer is 32 bytes
     */
    @external("env", "hash")
    declare function _near_hash(value_len: usize, value_ptr: usize, buf_ptr: usize): void;

    /**
     * @hidden
     */
    @external("env", "hash32")
    declare function _near_hash32(value_len: usize, value_ptr: usize): u32;

    /**
     * @hidden
     * Fills given buffer with random u8.
     */
    @external("env", "random_buf")
    declare function _near_random_buf(buf_len: u32, buf_ptr: usize): void

    /**
     * @hidden
     */
    @external("env", "random32")
    declare function random32(): u32;

    /**
     * @hidden
     */
    @external("env", "log")
    declare function _near_log(msg_ptr: usize): void;

    /**
     * @hidden
     */
    @external("env", "frozen_balance")
    declare function frozen_balance(balance_ptr: usize): void;

    /**
     * @hidden
     */
    @external("env", "liquid_balance")
    declare function liquid_balance(balance_ptr: usize): void;

    /**
     * @hidden
     */
    @external("env", "storage_usage")
    declare function storage_usage(): u64;

    /**
     * @hidden
     */
    @external("env", "deposit")
    declare function deposit(min_amount_ptr: usize, max_amount_ptr: usize, balance_ptr: usize): void;

    /**
     * @hidden
     */
    @external("env", "withdraw")
    declare function withdraw(min_amount_ptr: usize, max_amount_ptr: usize, balance_ptr: usize): void;

    /**
     * @hidden
     */
    @external("env", "received_amount")
    declare function received_amount(balance_ptr: usize): void;

    /**
     * @hidden
     */
    @external("env", "block_index")
    declare function block_index(): u64;
 }