/// <reference path="./types.ts" />

import * as sim from "../sim-ffi";
import { UserAccount } from "./user";
import { DEFAULT_RUNTIME_CONFIG } from "./config";

// From v3.2.0 near-sdk-sim crate cache contract storage, and
// for that it uses "CARGO_MANIFEST_DIR" env, which is set by
// cargo when running "cargo run", "cargo test".
// https://github.com/near/near-sdk-rs/blob/5a8f4dcac44598db19532cdbd6c492bd42e1e777/near-sdk-sim/src/cache.rs#L25
process.env["CARGO_MANIFEST_DIR"] = "sim-ffi";

export function init_simulator(genesis_config?: GenesisConfig): UserAccount {
  if (genesis_config) {
    if (!genesis_config.runtime_config)
      genesis_config.runtime_config = DEFAULT_RUNTIME_CONFIG;
    return new UserAccount(sim.$init_simulator(JSON.stringify(genesis_config)));
  } else {
    return new UserAccount(sim.$init_simulator());
  }
}

// utils
export function to_yocto(value: string): string {
  return sim.$to_yocto(value);
}

// Exports
export const DEFAULT_GAS = sim.$DEFAULT_GAS;
export const STORAGE_AMOUNT = sim.$STORAGE_AMOUNT;
export { UserAccount, UserTransaction } from "./user";
export { ExecutionResult } from "./outcome";
export * as utils from "./utils";
