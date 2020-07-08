import { u128 } from "../sdk";

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

export const NONE = new None();
export const ValueID = idof<Value>();
export const ReceiptIndexID = idof<ReceiptIndex>();
export const NoneID = idof<None>();

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
