import { u128 } from "..";

export namespace env {
  // #############
  // # Registers #
  // #############
  //@ts-ignore
  @inline
  export function read_register(register_id: u64, ptr: u64): void {
    _read_register(register_id, ptr);
  }
  //@ts-ignore
  @inline
  export function register_len(register_id: u64): u64 {
    return _register_len(register_id);
  }

  // ###############
  // # Context API #
  // ###############
  //@ts-ignore
  @inline
  export function current_account_id(register_id: u64): void {
    _current_account_id(register_id);
  }
  //@ts-ignore
  @inline
  export function signer_account_id(register_id: u64): void {
    _signer_account_id(register_id);
  }
  //@ts-ignore
  @inline
  export function signer_account_pk(register_id: u64): void {
    _signer_account_pk(register_id);
  }
  //@ts-ignore
  @inline
  export function predecessor_account_id(register_id: u64): void {
    _predecessor_account_id(register_id);
  }
  //@ts-ignore
  @inline
  export function input(register_id: u64): void {
    _input(register_id);
  }
  //@ts-ignore
  @inline
  export function block_index(): u64 {
    return _block_index();
  }
  //@ts-ignore
  @inline
  export function block_timestamp(): u64 {
    return _block_timestamp();
  }
  //@ts-ignore
  @inline
  export function epoch_height(): u64 {
    return _epoch_height();
  }
  //@ts-ignore
  @inline
  export function storage_usage(): u64 {
    return _storage_usage();
  }

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
        return false; //only 0..9 a..z and separators are valid chars
      if (current_char_is_separator && last_char_is_separator) {
        return false; //do not allow 2 separs together
      }
      last_char_is_separator = current_char_is_separator;
    }
    // The account can't end as separator.
    return !last_char_is_separator;
  }

  // #################
  // # Economics API #
  // #################
  //@ts-ignore
  @inline
  export function account_balance(balance_ptr: u64): void {
    _account_balance(balance_ptr);
  }
  //@ts-ignore
  @inline
  export function account_locked_balance(balance_ptr: u64): void {
    _account_locked_balance(balance_ptr);
  }
  //@ts-ignore
  @inline
  export function attached_deposit(balance_ptr: u64): void {
    _attached_deposit(balance_ptr);
  }
  //@ts-ignore
  @inline
  export function prepaid_gas(): u64 {
    return _prepaid_gas();
  }
  //@ts-ignore
  @inline
  export function used_gas(): u64 {
    return _used_gas();
  }

  // ############
  // # Math API #
  // ############
  //@ts-ignore
  @inline
  export function random_seed(register_id: u64): void {
    _random_seed(register_id);
  }
  //@ts-ignore
  @inline
  export function sha256(
    value_len: u64,
    value_ptr: u64,
    register_id: u64
  ): void {
    _sha256(value_len, value_ptr, register_id);
  }
  //@ts-ignore
  @inline
  export function keccak256(
    value_len: u64,
    value_ptr: u64,
    register_id: u64
  ): void {
    _keccak256(value_len, value_ptr, register_id);
  }
  //@ts-ignore
  @inline
  export function keccak512(
    value_len: u64,
    value_ptr: u64,
    register_id: u64
  ): void {
    _keccak512(value_len, value_ptr, register_id);
  }

  // #####################
  // # Miscellaneous API #
  // #####################
  //@ts-ignore
  @inline
  export function value_return(value_len: u64, value_ptr: u64): void {
    _value_return(value_len, value_ptr);
  }
  //@ts-ignore
  @inline
  export function panic(): void {
    _panic();
  }
  //@ts-ignore
  @inline
  export function panic_utf8(len: u64, ptr: u64): void {
    _panic_utf8(len, ptr);
  }
  //@ts-ignore
  @inline
  export function log_utf8(len: u64, ptr: u64): void {
    _log_utf8(len, ptr);
  }
  //@ts-ignore
  @inline
  export function log_utf16(len: u64, ptr: u64): void {
    _log_utf16(len, ptr);
  }

  // ################
  // # Promises API #
  // ################
  //@ts-ignore
  @inline
  export function promise_create(
    account_id_len: u64,
    account_id_ptr: u64,
    method_name_len: u64,
    method_name_ptr: u64,
    arguments_len: u64,
    arguments_ptr: u64,
    amount_ptr: u64,
    gas: u64
  ): u64 {
    return _promise_create(
      account_id_len,
      account_id_ptr,
      method_name_len,
      method_name_ptr,
      arguments_len,
      arguments_ptr,
      amount_ptr,
      gas
    );
  }
  //@ts-ignore
  @inline
  export function promise_then(
    promise_index: u64,
    account_id_len: u64,
    account_id_ptr: u64,
    method_name_len: u64,
    method_name_ptr: u64,
    arguments_len: u64,
    arguments_ptr: u64,
    amount_ptr: u64,
    gas: u64
  ): u64 {
    return _promise_then(
      promise_index,
      account_id_len,
      account_id_ptr,
      method_name_len,
      method_name_ptr,
      arguments_len,
      arguments_ptr,
      amount_ptr,
      gas
    );
  }
  //@ts-ignore
  @inline
  export function promise_and(
    promise_idx_ptr: u64,
    promise_idx_count: u64
  ): u64 {
    return _promise_and(promise_idx_ptr, promise_idx_count);
  }
  //@ts-ignore
  @inline
  export function promise_batch_create(
    account_id_len: u64,
    account_id_ptr: u64
  ): u64 {
    return _promise_batch_create(account_id_len, account_id_ptr);
  }
  //@ts-ignore
  @inline
  export function promise_batch_then(
    promise_index: u64,
    account_id_len: u64,
    account_id_ptr: u64
  ): u64 {
    return _promise_batch_then(promise_index, account_id_len, account_id_ptr);
  }

  // #######################
  // # Promise API actions #
  // #######################
  //@ts-ignore
  @inline
  export function promise_batch_action_create_account(
    promise_index: u64
  ): void {
    _promise_batch_action_create_account(promise_index);
  }
  //@ts-ignore
  @inline
  export function promise_batch_action_deploy_contract(
    promise_index: u64,
    code_len: u64,
    code_ptr: u64
  ): void {
    _promise_batch_action_deploy_contract(promise_index, code_len, code_ptr);
  }
  //@ts-ignore
  @inline
  export function promise_batch_action_function_call(
    promise_index: u64,
    method_name_len: u64,
    method_name_ptr: u64,
    arguments_len: u64,
    arguments_ptr: u64,
    amount_ptr: u64,
    gas: u64
  ): void {
    _promise_batch_action_function_call(
      promise_index,
      method_name_len,
      method_name_ptr,
      arguments_len,
      arguments_ptr,
      amount_ptr,
      gas
    );
  }
  //@ts-ignore
  @inline
  export function promise_batch_action_transfer(
    promise_index: u64,
    amount_ptr: u64
  ): void {
    _promise_batch_action_transfer(promise_index, amount_ptr);
  }
  //@ts-ignore
  @inline
  export function promise_batch_action_stake(
    promise_index: u64,
    amount_ptr: u64,
    public_key_len: u64,
    public_key_ptr: u64
  ): void {
    _promise_batch_action_stake(
      promise_index,
      amount_ptr,
      public_key_len,
      public_key_ptr
    );
  }
  //@ts-ignore
  @inline
  export function promise_batch_action_add_key_with_full_access(
    promise_index: u64,
    public_key_len: u64,
    public_key_ptr: u64,
    nonce: u64
  ): void {
    _promise_batch_action_add_key_with_full_access(
      promise_index,
      public_key_len,
      public_key_ptr,
      nonce
    );
  }
  //@ts-ignore
  @inline
  export function promise_batch_action_add_key_with_function_call(
    promise_index: u64,
    public_key_len: u64,
    public_key_ptr: u64,
    nonce: u64,
    allowance_ptr: u64,
    receiver_id_len: u64,
    receiver_id_ptr: u64,
    method_names_len: u64,
    method_names_ptr: u64
  ): void {
    _promise_batch_action_add_key_with_function_call(
      promise_index,
      public_key_len,
      public_key_ptr,
      nonce,
      allowance_ptr,
      receiver_id_len,
      receiver_id_ptr,
      method_names_len,
      method_names_ptr
    );
  }
  //@ts-ignore
  @inline
  export function promise_batch_action_delete_key(
    promise_index: u64,
    public_key_len: u64,
    public_key_ptr: u64
  ): void {
    _promise_batch_action_delete_key(
      promise_index,
      public_key_len,
      public_key_ptr
    );
  }
  //@ts-ignore
  @inline
  export function promise_batch_action_delete_account(
    promise_index: u64,
    beneficiary_id_len: u64,
    beneficiary_id_ptr: u64
  ): void {
    _promise_batch_action_delete_account(
      promise_index,
      beneficiary_id_len,
      beneficiary_id_ptr
    );
  }

  // #######################
  // # Promise API results #
  // #######################
  //@ts-ignore
  @inline
  export function promise_results_count(): u64 {
    return _promise_results_count();
  }
  //@ts-ignore
  @inline
  export function promise_result(result_idx: u64, register_id: u64): u64 {
    return _promise_result(result_idx, register_id);
  }
  //@ts-ignore
  @inline
  export function promise_return(promise_id: u64): void {
    _promise_return(promise_id);
  }

  // ###############
  // # Storage API #
  // ###############
  //@ts-ignore
  @inline
  export function storage_write(
    key_len: u64,
    key_ptr: u64,
    value_len: u64,
    value_ptr: u64,
    register_id: u64
  ): u64 {
    return _storage_write(key_len, key_ptr, value_len, value_ptr, register_id);
  }
  //@ts-ignore
  @inline
  export function storage_read(
    key_len: u64,
    key_ptr: u64,
    register_id: u64
  ): u64 {
    return _storage_read(key_len, key_ptr, register_id);
  }
  //@ts-ignore
  @inline
  export function storage_remove(
    key_len: u64,
    key_ptr: u64,
    register_id: u64
  ): u64 {
    return _storage_remove(key_len, key_ptr, register_id);
  }
  //@ts-ignore
  @inline
  export function storage_has_key(key_len: u64, key_ptr: u64): u64 {
    return _storage_has_key(key_len, key_ptr);
  }

  export function validator_stake(account_id: string): u128 {
    let data = new Uint8Array(sizeof<u128>());
    let id = String.UTF8.encode(account_id);
    let id_ptr = changetype<u64>(id);
    _validator_stake(id.byteLength, id_ptr, data.dataStart);
    return u128.from(data);
  }

  // /// Returns the total stake of validators in the current epoch.
  export function validator_total_stake(): u128 {
    let data = new Uint8Array(sizeof<u128>());
    _validator_total_stake(data.dataStart);
    return u128.from(data);
  }
}
