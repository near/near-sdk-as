import { u128 } from "near-sdk-core";

export abstract class ReturnData {}

export class Value extends ReturnData {
  constructor(public data: string) {
    super();
  }
}

export class ReceiptIndex extends ReturnData {
  constructor(public index: u64) {
    super();
  }
}

/// Method hasn't returned any data or promise.
export class None extends ReturnData {}

// @ts-ignore
@lazy
export const NONE = new None();
// @ts-ignore
@lazy
export const ValueID = idof<Value>();
// @ts-ignore
@lazy
export const ReceiptIndexID = idof<ReceiptIndex>();
// @ts-ignore
@lazy
export const NoneID = idof<None>();

/**
 * Object returned by VM.outcome().
 * Gas and storage returned are not necessarly accurate.
 */
export class Outcome {
  balance: u128;
  constructor(
    balanceStr: string,
    public burnt_gas: u64,
    public used_gas: u64,
    public logs: string[],
    public storage_usage: u64,
    public return_data: ReturnData
  ) {
    this.balance = u128.fromString(balanceStr);
  }
}
