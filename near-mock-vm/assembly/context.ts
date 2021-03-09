import { u128 } from "near-sdk-core";

/** @internal */
// @ts-ignore
@external("vm", "setCurrent_account_id")
declare function _setCurrent_account_id(id: usize): void;

/** @internal */
// @ts-ignore
@external("vm", "setInput")
declare function _setInput(input: usize): void;

/** @internal */
// @ts-ignore
@external("vm", "setSigner_account_id")
declare function _setSigner_account_id(s: usize): void;
/// The public key that was used to sign the original transaction that led to
/// this execution.
/** @internal */
// @ts-ignore
@external("vm", "setSigner_account_pk")
declare function _setSigner_account_pk(s: usize): void;
/** @internal */
// @ts-ignore
@external("vm", "setPredecessor_account_id")
declare function _setPredecessor_account_id(s: usize): void;
/** @internal */
// @ts-ignore
@external("vm", "setRandom_seed")
declare function _setRandom_seed(s: string): void;

/** @internal */
// @ts-ignore
@external("vm", "setAttached_deposit")
declare function _setAttached_deposit(_u128: usize): void;

/** @internal */
// @ts-ignore
@external("vm", "setAccount_balance")
declare function _setAccount_balance(_u128: usize): void;

/** @internal */
// @ts-ignore
@external("vm", "setAccount_locked_balance")
declare function _setAccount_locked_balance(_u128: usize): void;

/** @internal */
// @ts-ignore
@external("vm", "saveContext")
declare function _saveContext(): void;

/** @internal */
// @ts-ignore
@external("vm", "restoreContext")
declare function _restoreContext(): void;

/** @internal */
// @ts-ignore
@external("vm", "setBlock_index")
declare function _setBlock_index(block_height: u64): void;
/** @internal */
// @ts-ignore
@external("vm", "setBlock_timestamp")
declare function _setBlock_timestamp(stmp: u64): void;

/** @internal */
// @ts-ignore
@external("vm", "setPrepaid_gas")
declare function _setPrepaid_gas(_u64: u64): void;

/** @internal */
// @ts-ignore
@external("vm", "setIs_view")
declare function _setIs_view(b: bool): void;
/** @internal */
// @ts-ignore
@external("vm", "setOutput_data_receivers")
declare function _setOutput_data_receivers(arrA: Array<string>): void;
/** @internal */
// @ts-ignore
@external("vm", "setStorage_usage")
declare function _setStorage_usage(amt: u64): void;

/** @internal */
// @ts-ignore
@external("vm", "setValidator")
declare function _setValidator(account_id: usize, u128: u64): void;

function toUTF8(str: string): usize {
  return changetype<usize>(String.UTF8.encode(str));
}
/**
 * Functions to edit the current VM's context
 */
export namespace VMContext {
  export function saveContext(): void {
    _saveContext();
  }

  export function restoreContext(): void {
    _restoreContext();
  }

  export function setCurrent_account_id(id: string): void {
    _setCurrent_account_id(toUTF8(id));
  }

  export function setInput(input: string): void {
    _setInput(changetype<usize>(String.UTF8.encode(input)));
  }

  export function setSigner_account_id(s: string): void {
    _setSigner_account_id(toUTF8(s));
  }
  /// The public key that was used to sign the original transaction that led to
  /// this execution.
  export function setSigner_account_pk(s: string): void {
    _setSigner_account_pk(toUTF8(s));
  }
  export function setPredecessor_account_id(s: string): void {
    _setPredecessor_account_id(toUTF8(s));
  }

  export function setBlock_index(block_height: u64): void {
    _setBlock_index(block_height);
  }

  export function setBlock_timestamp(stmp: u64): void {
    _setBlock_timestamp(stmp);
  }

  export function setAccount_balance(_u128: u128): void {
    _setAccount_balance(toUTF8(_u128.toString()));
  }

  export function setAccount_locked_balance(_u128: u128): void {
    _setAccount_locked_balance(toUTF8(_u128.toString()));
  }

  export function setStorage_usage(amt: u64): void {
    _setStorage_usage(amt);
  }

  export function setAttached_deposit(_u128: u128): void {
    _setAttached_deposit(toUTF8(_u128.toString()));
  }

  export function setPrepaid_gas(_u64: u64): void {
    _setPrepaid_gas(_u64);
  }

  export function setRandom_seed(s: string): void {
    _setRandom_seed(s);
  }

  export function setIs_view(b: bool): void {
    _setIs_view(b);
  }

  export function setOutput_data_receivers(arrA: Array<string>): void {
    _setOutput_data_receivers(arrA);
  }

  export function setValidator(account_id: string, stake_balance: u128): void {
    _setValidator(toUTF8(account_id), toUTF8(stake_balance.toString()));
  }
}
