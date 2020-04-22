import { AccountContext } from './context';
export declare class Account {
    accountId: string;
    wasmFile: string | null;
    runtime: Runtime;
    state: {
        [key: string]: string;
    };
    balance: number;
    lockedBalance: number;
    signerAccountPk: string;
    constructor(accountId: string, wasmFile: string | null, runtime: Runtime);
    call_step_other(account_id: string, methodName: string, input?: any, prepaid_gas?: number): any;
    view(methodName: string, input?: string): void;
}
export declare class Runtime {
    log: (message?: any, ...optionalParams: any[]) => void;
    accounts: Map<string, Account>;
    newAccount(accoundId: string, wasmFile?: string | null): Account;
    getOrCreateAccount(accountId: string): Account;
    call_step(accountId: string, methodName: string, input?: string, accountContext?: Partial<AccountContext>): any;
}
