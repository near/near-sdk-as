/* tslint:disable */
/* eslint-disable */
export const memory: WebAssembly.Memory;
export function main(): void;
export function inject_contract(a: number): number;
export function __wbg_vm_free(a: number): void;
export function vm_new(a: number, b: number): number;
export function vm_reset(a: number): void;
export function vm_set_context(a: number, b: number): void;
export function vm_set_current_account_id(a: number, b: number): void;
export function vm_set_input(a: number, b: number): void;
export function vm_set_signer_account_id(a: number, b: number): void;
export function vm_set_signer_account_pk(a: number, b: number): void;
export function vm_set_predecessor_account_id(a: number, b: number): void;
export function vm_set_block_index(a: number, b: number, c: number): void;
export function vm_set_block_timestamp(a: number, b: number, c: number): void;
export function vm_set_account_balance(a: number, b: number): void;
export function vm_set_account_locked_balance(a: number, b: number): void;
export function vm_set_storage_usage(a: number, b: number, c: number): void;
export function vm_set_attached_deposit(a: number, b: number): void;
export function vm_set_prepaid_gas(a: number, b: number, c: number): void;
export function vm_set_random_seed(a: number, b: number): void;
export function vm_set_is_view(a: number, b: number): void;
export function vm_set_output_data_receivers(a: number, b: number): void;
export function vm_set_epoch_height(a: number, b: number, c: number): void;
export function vm_set_validator(a: number, b: number, c: number): void;
export function vm_read_register(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number
): void;
export function vm_register_len(
  a: number,
  b: number,
  c: number,
  d: number
): void;
export function vm_current_account_id(a: number, b: number, c: number): void;
export function vm_signer_account_id(a: number, b: number, c: number): void;
export function vm_signer_account_pk(a: number, b: number, c: number): void;
export function vm_predecessor_account_id(
  a: number,
  b: number,
  c: number
): void;
export function vm_input(a: number, b: number, c: number): void;
export function vm_block_index(a: number, b: number): void;
export function vm_block_timestamp(a: number, b: number): void;
export function vm_epoch_height(a: number, b: number): void;
export function vm_storage_usage(a: number, b: number): void;
export function vm_account_balance(a: number, b: number, c: number): void;
export function vm_account_locked_balance(
  a: number,
  b: number,
  c: number
): void;
export function vm_attached_deposit(a: number, b: number, c: number): void;
export function vm_prepaid_gas(a: number, b: number): void;
export function vm_used_gas(a: number, b: number): void;
export function vm_random_seed(a: number, b: number, c: number): void;
export function vm_sha256(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number
): void;
export function vm_keccak256(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number
): void;
export function vm_keccak512(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number
): void;
export function vm_gas(a: number, b: number): void;
export function vm_promise_create(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number,
  h: number,
  i: number,
  j: number,
  k: number,
  l: number,
  m: number,
  n: number,
  o: number,
  p: number,
  q: number,
  r: number
): void;
export function vm_promise_then(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number,
  h: number,
  i: number,
  j: number,
  k: number,
  l: number,
  m: number,
  n: number,
  o: number,
  p: number,
  q: number,
  r: number,
  s: number,
  t: number
): void;
export function vm_promise_and(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number
): void;
export function vm_promise_batch_create(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number
): void;
export function vm_promise_batch_then(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number,
  h: number
): void;
export function vm_promise_batch_action_create_account(
  a: number,
  b: number,
  c: number
): void;
export function vm_promise_batch_action_deploy_contract(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number
): void;
export function vm_promise_batch_action_function_call(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number,
  h: number,
  i: number,
  j: number,
  k: number,
  l: number,
  m: number,
  n: number,
  o: number
): void;
export function vm_promise_batch_action_transfer(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number
): void;
export function vm_promise_batch_action_stake(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number,
  h: number,
  i: number
): void;
export function vm_promise_batch_action_add_key_with_full_access(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number,
  h: number,
  i: number
): void;
export function vm_promise_batch_action_add_key_with_function_call(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number,
  h: number,
  i: number,
  j: number,
  k: number,
  l: number,
  m: number,
  n: number,
  o: number,
  p: number,
  q: number,
  r: number,
  s: number
): void;
export function vm_promise_batch_action_delete_key(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number
): void;
export function vm_promise_batch_action_delete_account(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number
): void;
export function vm_promise_results_count(a: number, b: number): void;
export function vm_promise_result(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number
): void;
export function vm_promise_return(a: number, b: number, c: number): void;
export function vm_value_return(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number
): void;
export function vm_panic(a: number): void;
export function vm_panic_utf8(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number
): void;
export function vm_log_utf8(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number
): void;
export function vm_log_utf16(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number
): void;
export function vm_abort(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number
): void;
export function vm_storage_write(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number,
  h: number,
  i: number,
  j: number,
  k: number,
  l: number
): void;
export function vm_storage_read(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number,
  h: number
): void;
export function vm_storage_remove(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number,
  h: number
): void;
export function vm_storage_has_key(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number
): void;
export function vm_validator_stake(
  a: number,
  b: number,
  c: number,
  d: number,
  e: number,
  f: number,
  g: number
): void;
export function vm_validator_total_stake(a: number, b: number, c: number): void;
export function vm_outcome(a: number): number;
export function vm_created_receipts(a: number): number;
export function test_memory(a: number): void;
export function __wbindgen_malloc(a: number): number;
export function __wbindgen_realloc(a: number, b: number, c: number): number;
export function __wbindgen_free(a: number, b: number): void;
export function __wbindgen_exn_store(a: number): void;
export function __wbindgen_start(): void;
