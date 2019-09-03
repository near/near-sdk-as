// TODO
/* Some of the API is already imported by the injection done in the compiler: https://github.com/nearprotocol/assemblyscript/compare/master...nearprotocol:runtime-rework?expand=1#diff-aa4c926de515a12e288da77300083aacR687 Do not re-import or remove it from compiler injection (if latter then compiler would not work without near.ts) */

export declare namespace runtime_api {
  // #############
  // # Registers #
  // #############
  //@ts-ignore
  @external("env", "read_register")
  export function read_register(register_id: u64, ptr: u64): void;
  //@ts-ignore
  @external("env", "register_len")
  export function register_len(register_id: u64) : u64;
  
  // ###############
  // # Context API #
  // ###############
  //@ts-ignore
  @external("env", "current_account_id")
  export function current_account_id(register_id: u64) : void;
  //@ts-ignore
  @external("env", "signer_account_id")
  export function signer_account_id(register_id: u64) : void;
  //@ts-ignore
  @external("env", "signer_account_pk")
  export function signer_account_pk(register_id: u64) : void;
  //@ts-ignore
  @external("env", "predecessor_account_id")
  export function predecessor_account_id(register_id: u64) : void;
  //@ts-ignore
  @external("env", "input")
  export function input(register_id: u64) : void;
  //@ts-ignore
  @external("env", "block_index")
  export function block_index() : u64;
  //@ts-ignore
  @external("env", "storage_usage")
  export function storage_usage() : u64;

  // #################
  // # Economics API #
  // #################
  //@ts-ignore
  @external("env", "account_balance")
  export function account_balance(balance_ptr: u64) : void;
  //@ts-ignore
  @external("env", "attached_deposit")
  export function attached_deposit(balance_ptr: u64) : void;
  //@ts-ignore
  @external("env", "prepaid_gas")
  export function prepaid_gas() : u64;
  //@ts-ignore
  @external("env", "used_gas")
  export function used_gas() : u64;

  // ############
  // # Math API #
  // ############
  //@ts-ignore
  @external("env", "random_seed")
  export function random_seed(register_id: u64): void;
  //@ts-ignore
  @external("env", "sha256")
  export function sha256(value_len: u64, value_ptr: u64, register_id: u64) : void;

  // #####################
  // # Miscellaneous API #
  // #####################
  //@ts-ignore
  @external("env", "value_return")
  export function value_return(value_len: u64, value_ptr: u64) : void;
  //@ts-ignore
  @external("env", "panic")
  export function panic() : void;
  //@ts-ignore
  @external("env", "log_utf8")
  export function log_utf8(len: u64, ptr: u64) : void;
  //@ts-ignore
  @external("env", "log_utf16")
  export function log_utf16(len: u64, ptr: u64) : void;
  //@ts-ignore
  @external("env", "abort")
  export function abort(msg_ptr: u32, filename_ptr: u32, line: u32, col: u32) : void;

  // ################
  // # Promises API #
  // ################
  //@ts-ignore
  @external("env", "promise_create")
  export function promise_create(account_id_len: u64,account_id_ptr: u64,method_name_len: u64,method_name_ptr: u64,arguments_len: u64, arguments_ptr: u64, amount_ptr: u64, gas: u64) : u64;
  //@ts-ignore
  @external("env", "promise_then")
  export function promise_then( promise_index: u64, account_id_len: u64, account_id_ptr: u64, method_name_len: u64, method_name_ptr: u64, arguments_len: u64, arguments_ptr: u64, amount_ptr: u64, gas: u64 ) : u64;
  //@ts-ignore
  @external("env", "promise_and")
  export function promise_and(promise_idx_ptr: u64, promise_idx_count: u64) : u64;
  //@ts-ignore
  @external("env", "promise_results_count")
  export function promise_results_count() : u64;
  //@ts-ignore
  @external("env", "promise_result")
  export function promise_result(result_idx: u64, register_id: u64) : u64;
  //@ts-ignore
  @external("env", "promise_return")
  export function promise_return(promise_id: u64) : void;

  // ###############
  // # Storage API #
  // ###############
  //@ts-ignore
  @external("env", "storage_write")
  export function storage_write(key_len: u64, key_ptr: u64, value_len: u64, value_ptr: u64, register_id: u64) : u64;
  //@ts-ignore
  @external("env", "storage_read")
  export function storage_read(key_len: u64, key_ptr: u64, register_id: u64) : u64;
  //@ts-ignore
  @external("env", "storage_remove")
  export function storage_remove(key_len: u64, key_ptr: u64, register_id: u64) : u64;
  //@ts-ignore
  @external("env", "storage_has_key")
  export function storage_has_key(key_len: u64, key_ptr: u64) : u64;
  //@ts-ignore
  @external("env", "storage_iter_prefix")
  export function storage_iter_prefix(prefix_len: u64, prefix_ptr: u64) : u64;
  //@ts-ignore
  @external("env", "storage_iter_range")
  export function storage_iter_range(start_len: u64, start_ptr: u64, end_len: u64, end_ptr: u64) : u64;
  //@ts-ignore
  @external("env", "storage_iter_next")
  export function storage_iter_next(iterator_id: u64, key_register_id: u64, value_register_id: u64) : u64;
  //@ts-ignore
  // Function for the injected gas counter. Automatically called by the gas meter.
  @external("env", "gas")
  export function gas(gas_amount: u32) : void;
}
