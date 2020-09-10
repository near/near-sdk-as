export const DEFAULT_GAS = 10 ** 15;
/**
 * Base64 encoded string key/value pair used internally by the VM Runner
 */
export type InternalState = { [key: string]: string };
/**
 * Decoded string key and JSON paresd value
 */
export type ExternalState = { [key: string]: any };

export type ResultsObject = { [key: number]: StandaloneOutput };

/**
 * Return value should be what is returned by a future contract call
 * identified through the receipt index.
 */
export interface ReceiptIndex {
  ReceiptIndex: number;
  Value: undefined;
}
/**
 * Contract call returns nothing, e.i. `void`.
 */
export type None = "None";

/**
 * Value returned by contract call, encoded as json encoded string.
 */
export interface Value {
  Value: string;
  ReceiptIndex: undefined;
}
/**
 * Data returned by a single contract execution step.
 */
export type ReturnData = Value | ReceiptIndex | None;

/**
 * Output from executing a single contract method.
 */
export interface VMOutcome {
  /**
   * Balance remaining after the transaction.
   */
  balance: string;
  /**
   * Total amount of storage used by contract.
   */
  storage_usage: number;
  /**
   * Data returned from contract method.
   */
  return_data: ReturnData;
  /**
   * Amount of gased burnt through executing the contract.
   */
  burnt_gas: number;
  /**
   * Total amount gas used in the transaction.
   */
  used_gas: number;
  /**
   * Array of logs made by the contract method.
   */
  logs: string[];
}

/**
 * Output returned from a single step of the standalone contract runner.
 */
export interface StandaloneOutput {
  /**
   * Outcome returned by the VM.
   */
  outcome: VMOutcome;
  /**
   * Errors while executing the contract.
   */
  err: any | null; // TODO: enumerate all errors.
  /**
   *
   */
  receipts: any[];
  /**
   * Current state of the contract. key and values encoded as Base64 strings.
   */
  state: ExternalState;
}
