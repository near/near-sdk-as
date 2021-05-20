/// <reference types="node" />
import { RustRef } from "./utils";
import { ExecutionResult } from "./outcome";
export declare class UserAccount extends RustRef {
    account_id(): string;
    account(): Account | null;
    transfer(to: string, deposit: string): ExecutionResult;
    call(account_id: string, method: string, args?: string | object, gas?: string, deposit?: string): ExecutionResult;
    deploy(wasm_bytes: Uint8Array | string | string[], account_id: string, deposit?: string): UserAccount;
    deploy_and_init(wasm_bytes: Uint8Array | string | string[], account_id: string, method: string, args?: string | object, gas?: string, deposit?: string): UserAccount;
    create_transaction(receiver_id: string): UserTransaction;
    view(account_id: string, method: string, args?: string | object): any;
    view_self(method: string, args?: string | object): any;
    create_user_from(signer_user: UserAccount, account_id: string, initial_balance: string): UserAccount;
    create_user(account_id: string, initial_balance: string): UserAccount;
}
export declare class UserTransaction extends RustRef {
    /**
     * Sign and execute the transaction
     * @returns
     */
    submit(): ExecutionResult;
    create_account(): UserTransaction;
    deploy_contract(wasm_bytes: Buffer): UserTransaction;
    function_call(method: string, args: string, gas: string, deposit: string): UserTransaction;
    transfer(deposit: string): UserTransaction;
    stake(deposit: string, public_key: string): UserTransaction;
    add_key(public_key: string, access_key: string): UserTransaction;
    delete_key(public_key: string): UserTransaction;
    delete_account(beneficiary_id: string): UserTransaction;
}
