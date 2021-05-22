/// <reference path="./types.ts" />

import * as sim from "../sim-ffi";
import { UserAccount } from "./user";

// From v3.2.0 near-sdk-sim crate cache contract storage, and
// for that it uses "CARGO_MANIFEST_DIR" env, which is set by
// cargo when running "cargo run", "cargo test".
// https://github.com/near/near-sdk-rs/blob/5a8f4dcac44598db19532cdbd6c492bd42e1e777/near-sdk-sim/src/cache.rs#L25
process.env["CARGO_MANIFEST_DIR"] = "sim-ffi";

/**
 * The simulator takes an optional GenesisConfig, which sets up the fees and other settings.
 * It returns the `master_account` which can then create accounts and deploy contracts.
 * @param genesis_config Optional config to setup the fees and other settings
 */
export function init_simulator(genesis_config?: GenesisConfig): UserAccount {
  if (genesis_config) {
    if (!genesis_config.runtime_config)
      genesis_config.runtime_config = DEFAULT_GENESIS_CONFIG.runtime_config;
    return new UserAccount(sim.$init_simulator(JSON.stringify(genesis_config)));
  } else {
    return new UserAccount(sim.$init_simulator());
  }
}

// utils

/**
 * Convert to given value to yocto unit (10^24)
 * Helpful in calculating gas and user balance
 * @param value number string to convert
 * @returns number in yocto unit
 */
export function to_yocto(value: string): string {
  return sim.$to_yocto(value);
}

// Exports

/**
 * Default Gas value
 */
export const DEFAULT_GAS = sim.$DEFAULT_GAS;

/**
 * Default storage amount
 */
export const STORAGE_AMOUNT = sim.$STORAGE_AMOUNT;

/**
 * Default genesis config
 */
export const DEFAULT_GENESIS_CONFIG: GenesisConfig = JSON.parse(
  sim.$DEFAULT_GENESIS_CONFIG
);

export { UserAccount, UserTransaction } from "./user";
export { ExecutionResult } from "./outcome";
export * as utils from "./utils";
