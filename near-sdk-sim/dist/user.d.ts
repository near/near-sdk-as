/// <reference path="types.d.ts" />
/// <reference types="node" />
import { RustRef } from "./utils";
import { ExecutionResult } from "./outcome";
/**
 * A user that can sign transactions.  It includes a signer and an account id.
 */
export declare class UserAccount extends RustRef {
    /**
     * Returns the `account_id` of the user
     */
    account_id(): AccountId;
    /**
     *  Look up the account information on chain.
     */
    account(): Account | null;
    /**
     * Transfer yoctoNear to another account
     */
    transfer(to: string, deposit: string): ExecutionResult;
    call(account_id: string, method: string, args?: string | object, gas?: string, deposit?: string): ExecutionResult;
    /**
     * Deploy a contract and create its account for `account_id`.
     * @returns
     */
    deploy(wasm_bytes: Uint8Array | string | string[], account_id: string, deposit?: string): UserAccount;
    /**
     * Deploy a contract and in the same transaction call its initialization method.
     */
    deploy_and_init(wasm_bytes: Uint8Array | string | string[], account_id: string, method: string, args?: string | object, deposit?: string, gas?: string): UserAccount;
    /**
     * Create a user transaction to `receiver_id` to be signed the current user
     */
    create_transaction(receiver_id: string): UserTransaction;
    /**
     * Call a view method on a contract.
     */
    view(account_id: string, method: string, args?: string | object): any;
    /**
     * Call a view method on a self
     */
    view_self(method: string, args?: string | object): any;
    /**
     * Creates a user and is signed by the `signer_user`
     */
    create_user_from(signer_user: UserAccount, account_id: string, initial_balance: string): UserAccount;
    /**
     * Create a new user where the signer is this user account
     */
    create_user(account_id: string, initial_balance: string): UserAccount;
}
/**
 * A transaction to be signed by the user which created it.
 * Multiple actions can be chained together and then signed and submitted to be executed.
 */
export declare class UserTransaction extends RustRef {
    /**
     * Sign and execute the transaction
     * @returns
     */
    submit(): ExecutionResult;
    /**
     * Create account for the receiver of the transaction.
     */
    create_account(): UserTransaction;
    /**
     * Deploy WASM binary
     */
    deploy_contract(wasm_bytes: Buffer): UserTransaction;
    /**
     * Execute contract call to receiver
     * @param method methods name to call
     * @param args args that will be passed to method
     * @param gas gas amount for transaction
     * @param deposit deposit amount
     */
    function_call(method: string, args: string, gas: string, deposit: string): UserTransaction;
    /**
     * Transfer deposit to receiver
     */
    transfer(deposit: string): UserTransaction;
    /**
     * Express interest in becoming a validator
     */
    stake(deposit: string, public_key: string): UserTransaction;
    /**
     * Add access key, either FunctionCall or FullAccess
     */
    add_key(public_key: string, access_key: string): UserTransaction;
    /**
     * Delete an access key
     */
    delete_key(public_key: string): UserTransaction;
    /**
     * Delete an account and send remaining balance to `beneficiary_id`
     */
    delete_account(beneficiary_id: string): UserTransaction;
}
