import { u128, util } from "..";

export namespace env {
  // #############
  // # Registers #
  // #############
  // @ts-ignore
  @external("env", "read_register")
  export declare function read_register(register_id: u64, ptr: u64): void;
  // @ts-ignore
  @external("env", "register_len")
  export declare function register_len(register_id: u64): u64;

  // ###############
  // # Context API #
  // ###############
  // @ts-ignore
  @external("env", "current_account_id")
  export declare function current_account_id(register_id: u64): void;
  // @ts-ignore
  @external("env", "signer_account_id")
  export declare function signer_account_id(register_id: u64): void;
  // @ts-ignore
  @external("env", "signer_account_pk")
  export declare function signer_account_pk(register_id: u64): void;
  // @ts-ignore
  @external("env", "predecessor_account_id")
  export declare function predecessor_account_id(register_id: u64): void;
  // @ts-ignore
  @external("env", "input")
  export declare function input(register_id: u64): void;
  // @ts-ignore
  @external("env", "block_index")
  export declare function block_index(): u64;
  // @ts-ignore
  @external("env", "block_timestamp")
  export declare function block_timestamp(): u64;
  // @ts-ignore
  @external("env", "epoch_height")
  export declare function epoch_height(): u64;
  // @ts-ignore
  @external("env", "storage_usage")
  export declare function storage_usage(): u64;

  // #################
  // # Economics API #
  // #################
  // @ts-ignore
  @external("env", "account_balance")
  export declare function account_balance(balance_ptr: u64): void;
  // @ts-ignore
  @external("env", "account_locked_balance")
  export declare function account_locked_balance(balance_ptr: u64): void;
  // @ts-ignore
  @external("env", "attached_deposit")
  export declare function attached_deposit(balance_ptr: u64): void;
  // @ts-ignore
  @external("env", "prepaid_gas")
  export declare function prepaid_gas(): u64;
  // @ts-ignore
  @external("env", "used_gas")
  export declare function used_gas(): u64;

  // ############
  // # Math API #
  // ############
  // @ts-ignore
  @external("env", "random_seed")
  export declare function random_seed(register_id: u64): void;
  // @ts-ignore
  @external("env", "sha256")
  export declare function sha256(
    value_len: u64,
    value_ptr: u64,
    register_id: u64
  ): void;
  // @ts-ignore
  @external("env", "keccak256")
  export declare function keccak256(
    value_len: u64,
    value_ptr: u64,
    register_id: u64
  ): void;
  // @ts-ignore
  @external("env", "keccak512")
  export declare function keccak512(
    value_len: u64,
    value_ptr: u64,
    register_id: u64
  ): void;

  // #####################
  // # Miscellaneous API #
  // #####################
  // @ts-ignore
  @external("env", "value_return")
  export declare function value_return(value_len: u64, value_ptr: u64): void;
  // @ts-ignore
  @external("env", "panic")
  export declare function panic(): void;
  // @ts-ignore
  @external("env", "panic_utf8")
  export declare function panic_utf8(len: u64, ptr: u64): void;
  // @ts-ignore
  @external("env", "log_utf8")
  export declare function log_utf8(len: u64, ptr: u64): void;
  // @ts-ignore
  @external("env", "log_utf16")
  export declare function log_utf16(len: u64, ptr: u64): void;

  // ################
  // # Promises API #
  // ################
  // @ts-ignore
  @external("env", "promise_create")
  export declare function promise_create(
    account_id_len: u64,
    account_id_ptr: u64,
    method_name_len: u64,
    method_name_ptr: u64,
    arguments_len: u64,
    arguments_ptr: u64,
    amount_ptr: u64,
    gas: u64
  ): u64;
  // @ts-ignore
  @external("env", "promise_then")
  export declare function promise_then(
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
  // @ts-ignore
  @external("env", "promise_and")
  export declare function promise_and(
    promise_idx_ptr: u64,
    promise_idx_count: u64
  ): u64;
  // @ts-ignore
  @external("env", "promise_batch_create")
  export declare function promise_batch_create(
    account_id_len: u64,
    account_id_ptr: u64
  ): u64;
  // @ts-ignore
  @external("env", "promise_batch_then")
  export declare function promise_batch_then(
    promise_index: u64,
    account_id_len: u64,
    account_id_ptr: u64
  ): u64;

  // #######################
  // # Promise API actions #
  // #######################
  // @ts-ignore
  @external("env", "promise_batch_action_create_account")
  export declare function promise_batch_action_create_account(
    promise_index: u64
  ): void;
  // @ts-ignore
  @external("env", "promise_batch_action_deploy_contract")
  export declare function promise_batch_action_deploy_contract(
    promise_index: u64,
    code_len: u64,
    code_ptr: u64
  ): void;
  // @ts-ignore
  @external("env", "promise_batch_action_function_call")
  export declare function promise_batch_action_function_call(
    promise_index: u64,
    method_name_len: u64,
    method_name_ptr: u64,
    arguments_len: u64,
    arguments_ptr: u64,
    amount_ptr: u64,
    gas: u64
  ): void;
  // @ts-ignore
  @external("env", "promise_batch_action_transfer")
  export declare function promise_batch_action_transfer(
    promise_index: u64,
    amount_ptr: u64
  ): void;
  // @ts-ignore
  @external("env", "promise_batch_action_stake")
  export declare function promise_batch_action_stake(
    promise_index: u64,
    amount_ptr: u64,
    public_key_len: u64,
    public_key_ptr: u64
  ): void;
  // @ts-ignore
  @external("env", "promise_batch_action_add_key_with_full_access")
  export declare function promise_batch_action_add_key_with_full_access(
    promise_index: u64,
    public_key_len: u64,
    public_key_ptr: u64,
    nonce: u64
  ): void;
  // @ts-ignore
  @external("env", "promise_batch_action_add_key_with_function_call")
  export declare function promise_batch_action_add_key_with_function_call(
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
  // @ts-ignore
  @external("env", "promise_batch_action_delete_key")
  export declare function promise_batch_action_delete_key(
    promise_index: u64,
    public_key_len: u64,
    public_key_ptr: u64
  ): void;
  // @ts-ignore
  @external("env", "promise_batch_action_delete_account")
  export declare function promise_batch_action_delete_account(
    promise_index: u64,
    beneficiary_id_len: u64,
    beneficiary_id_ptr: u64
  ): void;

  // #######################
  // # Promise API results #
  // #######################
  // @ts-ignore
  @external("env", "promise_results_count")
  export declare function promise_results_count(): u64;
  // @ts-ignore
  @external("env", "promise_result")
  export declare function promise_result(
    result_idx: u64,
    register_id: u64
  ): u64;
  // @ts-ignore
  @external("env", "promise_return")
  export declare function promise_return(promise_id: u64): void;

  // ###############
  // # Storage API #
  // ###############
  // @ts-ignore
  @external("env", "storage_write")
  export declare function storage_write(
    key_len: u64,
    key_ptr: u64,
    value_len: u64,
    value_ptr: u64,
    register_id: u64
  ): u64;
  // @ts-ignore
  @external("env", "storage_read")
  export declare function storage_read(
    key_len: u64,
    key_ptr: u64,
    register_id: u64
  ): u64;
  // @ts-ignore
  @external("env", "storage_remove")
  export declare function storage_remove(
    key_len: u64,
    key_ptr: u64,
    register_id: u64
  ): u64;
  // @ts-ignore
  @external("env", "storage_has_key")
  export declare function storage_has_key(key_len: u64, key_ptr: u64): u64;

  // ###############
  // # Validator API #
  // ###############

  /// For a given account sets data_ptr to its current stake.
  // If the account is not a validator, sets data_ptr to 0
  // @ts-ignore
  @external("env", "validator_stake")
  export declare function _validator_stake(
    id_len: u64,
    id_ptr: u64,
    data_ptr: u64
  ): void;

  /// Sets data_ptr to the total stake of validators in the current epoch.
  // @ts-ignore
  @external("env", "validator_total_stake")
  export declare function _validator_total_stake(data_ptr: u64): void;

  // ############
  // # Accounts #
  // ############
  export function isValidAccountID(accountId: string): boolean {
    const MIN_ACCOUNT_ID_LEN = 2;
    const MAX_ACCOUNT_ID_LEN = 64;
    if (
      accountId.length < MIN_ACCOUNT_ID_LEN ||
      accountId.length > MAX_ACCOUNT_ID_LEN
    ) {
      return false;
    }

    // The valid account ID regex is /^(([a-z\d]+[-_])*[a-z\d]+\.)*([a-z\d]+[-_])*[a-z\d]+$/

    // We can safely assume that last char was a separator.
    var last_char_is_separator = true;

    for (let n = 0; n < accountId.length; n++) {
      let c = accountId.charAt(n);
      let current_char_is_separator = c == "-" || c == "_" || c == ".";
      if (
        !current_char_is_separator &&
        !((c >= "a" && c <= "z") || (c >= "0" && c <= "9"))
      )
        return false; // only 0..9 a..z and separators are valid chars
      if (current_char_is_separator && last_char_is_separator) {
        return false; // do not allow 2 separs together
      }
      last_char_is_separator = current_char_is_separator;
    }
    // The account can't end as separator.
    return !last_char_is_separator;
  }

  export function validator_stake(account_id: string): u128 {
    let data = new Uint8Array(offsetof<u128>());
    let id = util.stringToBytes(account_id);
    let id_ptr = id.dataStart as u64;
    let id_len: u64 = id.byteLength;
    _validator_stake(id_len, id_ptr, data.dataStart);
    return u128.from(data);
  }

  // /// Returns the total stake of validators in the current epoch.
  export function validator_total_stake(): u128 {
    let data = new Uint8Array(offsetof<u128>());
    _validator_total_stake(data.dataStart);
    return u128.from(data);
  }
}
