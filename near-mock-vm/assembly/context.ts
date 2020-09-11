import { u128 } from "near-sdk-core";

/**
 * Functions to edit the current VM's context
 */
export namespace VMContext {
  //@ts-ignore
  @external("vm", "saveContext")
  export declare function saveContext(): void;

  //@ts-ignore
  @external("vm", "restoreContext")
  export declare function restoreContext(): void;

  //@ts-ignore
  @external("vm", "setCurrent_account_id")
  export declare function setCurrent_account_id(id: string): void;

  //@ts-ignore
  @external("vm", "setInput")
  export declare function setInput(input: string): void;

  //@ts-ignore
  @external("vm", "setSigner_account_id")
  export declare function setSigner_account_id(s: string): void;
  /// The public key that was used to sign the original transaction that led to
  /// this execution.
  //@ts-ignore
  @external("vm", "setSigner_account_pk")
  export declare function setSigner_account_pk(s: string): void;
  //@ts-ignore
  @external("vm", "setPredecessor_account_id")
  export declare function setPredecessor_account_id(s: string): void;

  //@ts-ignore
  @external("vm", "setBlock_index")
  export declare function setBlock_index(block_height: u64): void;

  //@ts-ignore
  @external("vm", "setBlock_timestamp")
  export declare function setBlock_timestamp(stmp: u64): void;

  //@ts-ignore
  @external("vm", "setAccount_balance")
  export declare function setAccount_balance(_u128: u128): void;

  //@ts-ignore
  @external("vm", "setAccount_locked_balance")
  export declare function setAccount_locked_balance(_u128: u128): void;

  //@ts-ignore
  @external("vm", "setStorage_usage")
  export declare function setStorage_usage(amt: u64): void;

  //@ts-ignore
  @external("vm", "setAttached_deposit")
  export declare function setAttached_deposit(_u128: u128): void;

  //@ts-ignore
  @external("vm", "setPrepaid_gas")
  export declare function setPrepaid_gas(_u64: u64): void;

  //@ts-ignore
  @external("vm", "setRandom_seed")
  export declare function setRandom_seed(s: string): void;

  //@ts-ignore
  @external("vm", "setIs_view")
  export declare function setIs_view(b: bool): void;

  //@ts-ignore
  @external("vm", "setOutput_data_receivers")
  export declare function setOutput_data_receivers(arrA: Array<string>): void;
}
