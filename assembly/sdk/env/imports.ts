// #############
// # Registers #
// #############
//@ts-ignore
@external("env", "read_register")
@global
declare function _read_register(register_id: u64, ptr: u64): void;
//@ts-ignore
@external("env", "register_len")
@global
declare function _register_len(register_id: u64): u64;

// ###############
// # Context API #
// ###############
//@ts-ignore
@external("env", "current_account_id")
@global
declare function _current_account_id(register_id: u64): void;
//@ts-ignore
@external("env", "signer_account_id")
@global
declare function _signer_account_id(register_id: u64): void;
//@ts-ignore
@external("env", "signer_account_pk")
@global
declare function _signer_account_pk(register_id: u64): void;
//@ts-ignore
@external("env", "predecessor_account_id")
@global
declare function _predecessor_account_id(register_id: u64): void;
//@ts-ignore
@external("env", "input")
@global
declare function _input(register_id: u64): void;
//@ts-ignore
@external("env", "block_index")
@global
declare function _block_index(): u64;
//@ts-ignore
@external("env", "block_timestamp")
@global
declare function _block_timestamp(): u64;
//@ts-ignore
@external("env", "epoch_height")
@global
declare function _epoch_height(): u64;
//@ts-ignore
@external("env", "storage_usage")
@global
declare function _storage_usage(): u64;

// #################
// # Economics API #
// #################
//@ts-ignore
@external("env", "account_balance")
@global
declare function _account_balance(balance_ptr: u64): void;
//@ts-ignore
@external("env", "account_locked_balance")
@global
declare function _account_locked_balance(balance_ptr: u64): void;
//@ts-ignore
@external("env", "attached_deposit")
@global
declare function _attached_deposit(balance_ptr: u64): void;
//@ts-ignore
@external("env", "prepaid_gas")
@global
declare function _prepaid_gas(): u64;
//@ts-ignore
@external("env", "used_gas")
@global
declare function _used_gas(): u64;

// ############
// # Math API #
// ############
//@ts-ignore
@external("env", "random_seed")
@global
declare function _random_seed(register_id: u64): void;
//@ts-ignore
@external("env", "sha256")
@global
declare function _sha256(
  value_len: u64,
  value_ptr: u64,
  register_id: u64
): void;
//@ts-ignore
@external("env", "keccak256")
@global
declare function _keccak256(
  value_len: u64,
  value_ptr: u64,
  register_id: u64
): void;
//@ts-ignore
@external("env", "keccak512")
@global
declare function _keccak512(
  value_len: u64,
  value_ptr: u64,
  register_id: u64
): void;

// #####################
// # Miscellaneous API #
// #####################
//@ts-ignore
@external("env", "value_return")
@global
declare function _value_return(value_len: u64, value_ptr: u64): void;
//@ts-ignore
@external("env", "panic")
@global
declare function _panic(): void;
//@ts-ignore
@external("env", "panic_utf8")
@global
declare function _panic_utf8(len: u64, ptr: u64): void;
//@ts-ignore
@external("env", "log_utf8")
@global
declare function _log_utf8(len: u64, ptr: u64): void;
//@ts-ignore
@external("env", "log_utf16")
@global
declare function _log_utf16(len: u64, ptr: u64): void;

// ################
// # Promises API #
// ################
//@ts-ignore
@external("env", "promise_create")
@global
declare function _promise_create(
  account_id_len: u64,
  account_id_ptr: u64,
  method_name_len: u64,
  method_name_ptr: u64,
  arguments_len: u64,
  arguments_ptr: u64,
  amount_ptr: u64,
  gas: u64
): u64;
//@ts-ignore
@external("env", "promise_then")
@global
declare function _promise_then(
  promise_index: u64,
  account_id_len: u64,
  account_id_ptr: u64,
  method_name_len: u64,
  method_name_ptr: u64,
  arguments_len: u64,
  arguments_ptr: u64,
  amount_ptr: u64,
  gas: u64
): u64;
//@ts-ignore
@external("env", "promise_and")
@global
declare function _promise_and(
  promise_idx_ptr: u64,
  promise_idx_count: u64
): u64;
//@ts-ignore
@external("env", "promise_batch_create")
@global
declare function _promise_batch_create(
  account_id_len: u64,
  account_id_ptr: u64
): u64;
//@ts-ignore
@external("env", "promise_batch_then")
@global
declare function _promise_batch_then(
  promise_index: u64,
  account_id_len: u64,
  account_id_ptr: u64
): u64;

// #######################
// # Promise API actions #
// #######################
//@ts-ignore
@external("env", "promise_batch_action_create_account")
@global
declare function _promise_batch_action_create_account(promise_index: u64): void;
//@ts-ignore
@external("env", "promise_batch_action_deploy_contract")
@global
declare function _promise_batch_action_deploy_contract(
  promise_index: u64,
  code_len: u64,
  code_ptr: u64
): void;
//@ts-ignore
@external("env", "promise_batch_action_function_call")
@global
declare function _promise_batch_action_function_call(
  promise_index: u64,
  method_name_len: u64,
  method_name_ptr: u64,
  arguments_len: u64,
  arguments_ptr: u64,
  amount_ptr: u64,
  gas: u64
): void;
//@ts-ignore
@external("env", "promise_batch_action_transfer")
@global
declare function _promise_batch_action_transfer(
  promise_index: u64,
  amount_ptr: u64
): void;
//@ts-ignore
@external("env", "promise_batch_action_stake")
@global
declare function _promise_batch_action_stake(
  promise_index: u64,
  amount_ptr: u64,
  public_key_len: u64,
  public_key_ptr: u64
): void;
//@ts-ignore
@external("env", "promise_batch_action_add_key_with_full_access")
@global
declare function _promise_batch_action_add_key_with_full_access(
  promise_index: u64,
  public_key_len: u64,
  public_key_ptr: u64,
  nonce: u64
): void;
//@ts-ignore
@external("env", "promise_batch_action_add_key_with_function_call")
@global
declare function _promise_batch_action_add_key_with_function_call(
  promise_index: u64,
  public_key_len: u64,
  public_key_ptr: u64,
  nonce: u64,
  allowance_ptr: u64,
  receiver_id_len: u64,
  receiver_id_ptr: u64,
  method_names_len: u64,
  method_names_ptr: u64
): void;
//@ts-ignore
@external("env", "promise_batch_action_delete_key")
@global
declare function _promise_batch_action_delete_key(
  promise_index: u64,
  public_key_len: u64,
  public_key_ptr: u64
): void;
//@ts-ignore
@external("env", "promise_batch_action_delete_account")
@global
declare function _promise_batch_action_delete_account(
  promise_index: u64,
  beneficiary_id_len: u64,
  beneficiary_id_ptr: u64
): void;

// #######################
// # Promise API results #
// #######################
//@ts-ignore
@external("env", "promise_results_count")
@global
declare function _promise_results_count(): u64;
//@ts-ignore
@external("env", "promise_result")
@global
declare function _promise_result(result_idx: u64, register_id: u64): u64;
//@ts-ignore
@external("env", "promise_return")
@global
declare function _promise_return(promise_id: u64): void;

// ###############
// # Storage API #
// ###############
//@ts-ignore
@external("env", "storage_write")
@global
declare function _storage_write(
  key_len: u64,
  key_ptr: u64,
  value_len: u64,
  value_ptr: u64,
  register_id: u64
): u64;
//@ts-ignore
@external("env", "storage_read")
@global
declare function _storage_read(
  key_len: u64,
  key_ptr: u64,
  register_id: u64
): u64;
//@ts-ignore
@external("env", "storage_remove")
@global
declare function _storage_remove(
  key_len: u64,
  key_ptr: u64,
  register_id: u64
): u64;
//@ts-ignore
@external("env", "storage_has_key")
@global
declare function _storage_has_key(key_len: u64, key_ptr: u64): u64;

// ###############
// # Validator API #
// ###############

/// For a given account return its current stake. If the account is not a validator, returns 0.
//@ts-ignore
@external("env", "validator_stake")
@global
declare function _validator_stake(id_len: u64, id_ptr: u64, data_ptr: u64): u64;

/// Returns the total stake of validators in the current epoch.
//@ts-ignore
@external("env", "validator_total_stake")
@global
declare function _validator_total_stake(data_ptr: u64): u64;
