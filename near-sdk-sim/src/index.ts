/// <reference path="./types.ts" />

import * as sim from "../sim-ffi";
import { UserAccount, UserTransaction } from "./user";
import { DEFAULT_RUNTIME_CONFIG } from "./config";

// From v3.2.0 near-sdk-sim crate cache contract storage, and
// for that it uses "CARGO_MANIFEST_DIR" env, which is set by
// cargo when running "cargo run", "cargo test".
// https://github.com/near/near-sdk-rs/blob/5a8f4dcac44598db19532cdbd6c492bd42e1e777/near-sdk-sim/src/cache.rs#L25
process.env["CARGO_MANIFEST_DIR"] = "sim-ffi";

function fixGenesisConfigJSON(config: GenesisConfig): string {
  let json_str = JSON.stringify(config);
  // remove quotes from number string
  // Example:- "100000" => 100000
  return json_str.replace(/"(-{0,1}[0-9]+\.{0,1}[0-9]?)"/g, "$1");
}

function appendRuntimeConfig(json: string): string {
  // trim newlines and whitesaces then remove last char
  // which should always be "}"
  json = json.trim().slice(0, -1);
  // append the "," + runtime_config
  json += `,"runtime_config": ${JSON.stringify(DEFAULT_RUNTIME_CONFIG)}}`;
  return json;
}

export function init_simulator(genesis_config?: GenesisConfig): UserAccount {
  if (genesis_config) {
    // NOTE: since GenesisConfig contain felids of type, u128, u64 (Gas, Balance)
    // so we use "string" for them in our GenesisConfig typescript interface
    // Therefore we need to convert the serialized json where u128, u64 are strings to make them
    // numbers (by removing quotes) so that serde can deserialize them properly as u128.u64
    const config_str = fixGenesisConfigJSON(genesis_config);
    // runtime config has "storage_amount_per_byte" which is a string number,
    // like '"10000000000000000000"', so  appending it after fixing genesis_config
    // json string to prevent it from being converted to number
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
export * as utils from "./utils";
