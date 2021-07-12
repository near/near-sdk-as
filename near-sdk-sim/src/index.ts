import * as sim from "../sim-ffi";
import * as fs from "fs";
import { join } from "path";

export function init_simulator(): User {
  return new User(sim.init());
}

abstract class RustRef {
  constructor(protected ref: any) {}
}

export class User extends RustRef {
  account_id(): string {
    return sim.user_account_id(this.ref);
  }

  amount(): string {
    return sim.user_amount(this.ref);
  }

  deploy(
    wasm_bytes: Uint8Array | string | string[],
    account_id: string,
    deposit: string = "112897800000000000000000000000"
  ): User {
    if (!(wasm_bytes instanceof Uint8Array)) {
      if (typeof wasm_bytes !== "string") {
        wasm_bytes = join(...wasm_bytes);
      }
      wasm_bytes = fs.readFileSync(wasm_bytes);
    }
    return new User(sim.user_deploy(this.ref, wasm_bytes, account_id, deposit));
  }

  view(account_id: string, method: string, args: string | object = "{}"): any {
    if (!(typeof args === "string")) {
      args = JSON.stringify(args);
    }
    return JSON.parse(sim.user_view(this.ref, account_id, method, args));
  }

  call(
    account_id: string,
    method: string,
    args: string | object = "{}",
    gas: string = sim.DEFAULT_GAS,
    deposit: string = "0"
  ): ExecutionResult {
    if (!(typeof args === "string")) {
      args = JSON.stringify(args);
    }
    return new ExecutionResult(
      sim.user_call(this.ref, account_id, method, args, gas, deposit)
    );
  }

  view_self(method: string, args: string | object = "{}"): any {
    return this.view(this.account_id(), method, args);
  }

  create_user(account_id: string, initial_balance: string): User {
    return new User(
      sim.user_create_user(this.ref, account_id, initial_balance)
    );
  }
}

export class ExecutionResult extends RustRef {
  is_ok(): boolean {
    return sim.executionResult_is_ok(this.ref);
  }

  has_value(): boolean {
    return sim.executionResult_has_value(this.ref);
  }

  outcome(): any {
    return JSON.parse(sim.executionResult_outcome(this.ref));
  }
}

export const DEFAULT_GAS = sim.DEFAULT_GAS;
