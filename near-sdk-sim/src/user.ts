/// <reference path="./types.ts" />

import { Ref, RustRef } from "./utils";
import * as sim from "../sim-ffi";
import * as fs from "fs";
import { join } from "path";
import { ExecutionResult } from "./outcome";

/**
 * A user that can sign transactions.  It includes a signer and an account id.
 */
export class UserAccount extends RustRef {
  /**
   * Returns the `account_id` of the user
   */
  account_id(): AccountId {
    return sim.$ua$account_id(this.ref);
  }

  /**
   *  Look up the account information on chain.
   */
  account(): Account | null {
    return JSON.parse(sim.$ua$account(this.ref));
  }

  /**
   * Transfer yoctoNear to another account
   */
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

  /**
   * Deploy a contract and create its account for `account_id`.
   * @returns
   */
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

  /**
   * Deploy a contract and in the same transaction call its initialization method.
   */
  deploy_and_init(
    wasm_bytes: Uint8Array | string | string[],
    account_id: string,
    method: string,
    args: string | object = "{}",
    deposit: string = "112897800000000000000000000000",
    gas: string = sim.$DEFAULT_GAS
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
        deposit,
        gas
      )
    );
  }

  /**
   * Create a user transaction to `receiver_id` to be signed the current user
   */
  create_transaction(receiver_id: string): UserTransaction {
    return new UserTransaction(
      sim.$ua$create_transaction(this.ref, receiver_id)
    );
  }

  /**
   * Call a view method on a contract.
   */
  view(account_id: string, method: string, args: string | object = "{}"): any {
    if (!(typeof args === "string")) {
      args = JSON.stringify(args);
    }
    return JSON.parse(sim.$ua$view(this.ref, account_id, method, args));
  }

  /**
   * Call a view method on a self
   */
  view_self(method: string, args: string | object = "{}"): any {
    return this.view(this.account_id(), method, args);
  }

  /**
   * Creates a user and is signed by the `signer_user`
   */
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

  /**
   * Create a new user where the signer is this user account
   */
  create_user(account_id: string, initial_balance: string): UserAccount {
    return new UserAccount(
      sim.$ua$create_user(this.ref, account_id, initial_balance)
    );
  }
}

/**
 * A transaction to be signed by the user which created it.
 * Multiple actions can be chained together and then signed and submitted to be executed.
 */
export class UserTransaction extends RustRef {
  /**
   * Sign and execute the transaction
   * @returns
   */
  submit(): ExecutionResult {
    return new ExecutionResult(sim.$ut$submit(this.ref));
  }

  /**
   * Create account for the receiver of the transaction.
   */
  create_account(): UserTransaction {
    this.ref = sim.$ut$create_account(this.ref);
    return this;
  }

  /**
   * Deploy WASM binary
   */
  deploy_contract(wasm_bytes: Buffer): UserTransaction {
    this.ref = sim.$ut$deploy_contract(this.ref, wasm_bytes);
    return this;
  }

  /**
   * Execute contract call to receiver
   * @param method methods name to call
   * @param args args that will be passed to method
   * @param gas gas amount for transaction
   * @param deposit deposit amount
   */
  function_call(
    method: string,
    args: string,
    gas: string,
    deposit: string
  ): UserTransaction {
    this.ref = sim.$ut$function_call(this.ref, method, args, gas, deposit);
    return this;
  }

  /**
   * Transfer deposit to receiver
   */
  transfer(deposit: string): UserTransaction {
    this.ref = sim.$ut$transfer(this.ref, deposit);
    return this;
  }

  /**
   * Express interest in becoming a validator
   */
  stake(deposit: string, public_key: string): UserTransaction {
    this.ref = sim.$ut$stake(this.ref, deposit, public_key);
    return this;
  }

  /**
   * Add access key, either FunctionCall or FullAccess
   */
  add_key(public_key: string, access_key: string): UserTransaction {
    this.ref = sim.$ut$add_key(this.ref, public_key, access_key);
    return this;
  }

  /**
   * Delete an access key
   */
  delete_key(public_key: string): UserTransaction {
    this.ref = sim.$ut$delete_key(this.ref, public_key);
    return this;
  }

  /**
   * Delete an account and send remaining balance to `beneficiary_id`
   */
  delete_account(beneficiary_id: string): UserTransaction {
    this.ref = sim.$ut$delete_account(this.ref, beneficiary_id);
    return this;
  }
}
