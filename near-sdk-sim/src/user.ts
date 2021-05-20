import { Ref, RustRef } from "./utils";
import * as sim from "../sim-ffi";
import * as fs from "fs";
import { join } from "path";
import { ExecutionResult } from "./outcome";

export class UserAccount extends RustRef {
  account_id(): string {
    return sim.$ua$account_id(this.ref);
  }

  account(): Account | null {
    return JSON.parse(sim.$ua$account(this.ref));
  }

  transfer(to: string, deposit: string): ExecutionResult {
    return new ExecutionResult(sim.$ua$transfer(this.ref, to, deposit));
  }

  call(
    account_id: string,
    method: string,
    args: string | object = "{}",
    gas: string = sim.$DEFAULT_GAS,
    deposit: string = "0"
  ): ExecutionResult {
    if (!(typeof args === "string")) {
      args = JSON.stringify(args);
    }
    return new ExecutionResult(
      sim.$ua$call(this.ref, account_id, method, args, gas, deposit)
    );
  }

  deploy(
    wasm_bytes: Uint8Array | string | string[],
    account_id: string,
    deposit: string = "112897800000000000000000000000"
  ): UserAccount {
    if (!(wasm_bytes instanceof Uint8Array)) {
      if (typeof wasm_bytes !== "string") {
        wasm_bytes = join(...wasm_bytes);
      }
      wasm_bytes = fs.readFileSync(wasm_bytes);
    }
    return new UserAccount(
      sim.$ua$deploy(this.ref, wasm_bytes, account_id, deposit)
    );
  }

  deploy_and_init(
    wasm_bytes: Uint8Array | string | string[],
    account_id: string,
    method: string,
    args: string | object = "{}",
    gas: string = sim.$DEFAULT_GAS,
    deposit: string = "112897800000000000000000000000"
  ): UserAccount {
    if (!(wasm_bytes instanceof Uint8Array)) {
      if (typeof wasm_bytes !== "string") {
        wasm_bytes = join(...wasm_bytes);
      }
      wasm_bytes = fs.readFileSync(wasm_bytes);
    }
    if (!(typeof args === "string")) {
      args = JSON.stringify(args);
    }
    return new UserAccount(
      sim.$ua$deploy_and_init(
        this.ref,
        wasm_bytes,
        account_id,
        method,
        args,
        gas,
        deposit
      )
    );
  }

  create_transaction(receiver_id: string): UserTransaction {
    return new UserTransaction(
      sim.$ua$create_transaction(this.ref, receiver_id)
    );
  }

  view(account_id: string, method: string, args: string | object = "{}"): any {
    if (!(typeof args === "string")) {
      args = JSON.stringify(args);
    }
    return JSON.parse(sim.$ua$view(this.ref, account_id, method, args));
  }

  view_self(method: string, args: string | object = "{}"): any {
    return this.view(this.account_id(), method, args);
  }

  create_user_from(
    signer_user: UserAccount,
    account_id: string,
    initial_balance: string
  ): UserAccount {
    return new UserAccount(
      sim.$ua$create_user_from(
        this.ref,
        signer_user,
        account_id,
        initial_balance
      )
    );
  }

  create_user(account_id: string, initial_balance: string): UserAccount {
    return new UserAccount(
      sim.$ua$create_user(this.ref, account_id, initial_balance)
    );
  }
}

export class UserTransaction extends RustRef {
  /**
   * Sign and execute the transaction
   * @returns
   */
  submit(): ExecutionResult {
    return new ExecutionResult(sim.$ut$submit(this.ref));
  }

  create_account(): UserTransaction {
    this.ref = sim.$ut$create_account(this.ref);
    return this;
  }

  deploy_contract(wasm_bytes: Buffer): UserTransaction {
    this.ref = sim.$ut$deploy_contract(this.ref, wasm_bytes);
    return this;
  }

  function_call(
    method: string,
    args: string,
    gas: string,
    deposit: string
  ): UserTransaction {
    this.ref = sim.$ut$function_call(this.ref, method, args, gas, deposit);
    return this;
  }

  transfer(deposit: string): UserTransaction {
    this.ref = sim.$ut$transfer(this.ref, deposit);
    return this;
  }

  stake(deposit: string, public_key: string): UserTransaction {
    this.ref = sim.$ut$stake(this.ref, deposit, public_key);
    return this;
  }

  add_key(public_key: string, access_key: string): UserTransaction {
    this.ref = sim.$ut$add_key(this.ref, public_key, access_key);
    return this;
  }

  delete_key(public_key: string): UserTransaction {
    this.ref = sim.$ut$delete_key(this.ref, public_key);
    return this;
  }

  delete_account(beneficiary_id: string): UserTransaction {
    this.ref = sim.$ut$delete_account(this.ref, beneficiary_id);
    return this;
  }
}
