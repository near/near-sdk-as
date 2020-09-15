import { AccountContext, VMContext } from "./context";
import { InternalState, StandaloneOutput, ResultsObject, ExternalState } from "./types";
/**
 * Account object of client and contracts.
 */
export declare class Account {
    account_id: string;
    wasmFile: string | null;
    runtime: Runtime;
    internalState: InternalState;
    balance: number;
    lockedBalance: number;
    signerAccountPk: string;
    storage_usage: number;
    /**
     * Sholud only be constructed by a runtime instance.
     * @param account_id
     * @param wasmFile
     * @param runtime
     */
    constructor(account_id: string, wasmFile: string | null, runtime: Runtime);
    private createAccountContext;
    /**
     * Single execution of contract method.
     * @param account_id contractId to call
     * @param method_name method to call
     * @param input object of arguments of method
     * @param prepaid_gas How much gas to use.
     */
    call_step_other(account_id: string, method_name: string, input?: any, prepaid_gas?: number): StandaloneOutput;
    /**
     * Single execution of contract method to the same contract.
     * @param method_name method to call
     * @param input object of arguments of method
     * @param prepaid_gas How much gas to use.
     */
    call_step(method_name: string, input?: any, prepaid_gas?: number): StandaloneOutput;
    /**
     * Execute contract and any promises generated until no more promises are generated or gas runs out.
     * @param account_id Initial Contract to call.
     * @param method_name Method to call.
     * @param input object of input to method.
     * @param prepaid_gas How much gas to use.
     * @param attached_deposit How many tokens to send to the contract
     */
    call_other(account_id: string, method_name: string, input?: any, prepaid_gas?: number, attached_deposit?: string): {
        return_data: any;
        err: any;
        result: StandaloneOutput;
        calls: any;
        results: ResultsObject;
    };
    /**
     * Execute this contract and any promises generated until no more promises are generated or gas runs out.
     * @param method_name Method to call.
     * @param input object of input to method.
     * @param prepaid_gas How much gas to use.
     */
    call(method_name: string, input?: any, prepaid_gas?: number): {
        return_data: any;
        err: any;
        result: StandaloneOutput;
        calls: any;
        results: ResultsObject;
    };
    /**
     * View contract call to this contract.
     * @param method_name view method.
     * @param input object of input to method.
     */
    view(method_name: string, input?: any): {
        return_data: any;
        err: any;
        result: StandaloneOutput;
    };
    /**
     * Current state of contract.
     */
    get state(): ExternalState;
    set state(state: ExternalState);
    reset(): void;
}
export declare class Runtime {
    accounts: Map<string, Account>;
    context?: VMContext;
    constructor();
    log(input: any): void;
    newAccount(accoundId: string, wasmFile?: string | null): Account;
    getOrCreateAccount(account_id: string): Account;
    getAccount(account_id: string): Account;
    setContext(context: Partial<VMContext>): void;
    call_step(account_id: string, method_name: string, input?: string, accountContext?: Partial<AccountContext>): StandaloneOutput;
    call(account_id: string, method_name: string, input: string | undefined, accountContext: Partial<AccountContext>): {
        return_data: any;
        err: any;
        result: StandaloneOutput;
        calls: any;
        results: ResultsObject;
    };
    reset(): void;
    private spawn;
}
