/// <reference path="./types.ts" />

import * as sim from "../sim-ffi";
import { UserAccount, UserTransaction } from "./user";
import { DEFAULT_RUNTIME_CONFIG } from "./config";

// From v3.2.0 near-sdk-sim crate cache contract storage
// for that it uses "CARGO_MANIFEST_DIR" env, which is set by
// cargo when running "cargo run", "cargo test".
// https://github.com/near/near-sdk-rs/blob/5a8f4dcac44598db19532cdbd6c492bd42e1e777/near-sdk-sim/src/cache.rs#L25
process.env["CARGO_MANIFEST_DIR"] = "sim-ffi";

function fixGenesisConfigToJSON(config: GenesisConfig): string {
  let json_str = JSON.stringify(config);
  return json_str.replace(/"(-{0,1}[0-9]+\.{0,1}[0-9]?)"/g, "$1");
}

function appendRuntimeConfig(json: string): string {
  json = json.trim().slice(0, -1);
  json += `,"runtime_config": ${JSON.stringify(DEFAULT_RUNTIME_CONFIG)}}`;
  return json;
}

export function init_simulator(genesis_config?: GenesisConfig): UserAccount {
  if (genesis_config) {
    const config_str = fixGenesisConfigToJSON(genesis_config);
    const complete_config_str = appendRuntimeConfig(config_str);
    return new UserAccount(sim.$init_simulator(complete_config_str));
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
