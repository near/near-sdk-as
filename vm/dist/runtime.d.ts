import { AccountContext } from "./context";
export declare class Account {
    account_id: string;
    wasmFile: string | null;
    runtime: Runtime;
    state: {
        [key: string]: string;
    };
    balance: number;
    lockedBalance: number;
    signerAccountPk: string;
    constructor(account_id: string, wasmFile: string | null, runtime: Runtime);
    createAccountContext(input?: any, prepaid_gas?: number): Partial<AccountContext>;
    call_step_other(account_id: string, method_name: string, input?: any, prepaid_gas?: number): any;
    call_step(method_name: string, input?: any, prepaid_gas?: number): any;
    call_other(account_id: string, method_name: string, input?: any, prepaid_gas?: number): {
        return_data: any;
        err: any;
        result: any;
        calls: any;
        results: any;
    };
    call(method_name: string, input?: any, prepaid_gas?: number): {
        return_data: any;
        err: any;
        result: any;
        calls: any;
        results: any;
    };
    view(method_name: string, input?: any): {
        return_data: any;
        err: any;
        result: any;
    };
}
export declare class Runtime {
    accounts: Map<string, Account>;
    log(input: any): void;
    newAccount(accoundId: string, wasmFile?: string | null): Account;
    getOrCreateAccount(account_id: string): Account;
    call_step(account_id: string, method_name: string, input?: string, accountContext?: Partial<AccountContext>): any;
    call(account_id: string, method_name: string, input: string | undefined, accountContext: Partial<AccountContext>): {
        return_data: any;
        err: any;
        result: any;
        calls: any;
        results: any;
    };
}
