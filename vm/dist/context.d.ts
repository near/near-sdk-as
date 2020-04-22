export interface VMContext {
    current_account_id: string;
    signer_account_id: string;
    signer_account_pk: string;
    predecessor_account_id: string;
    input: string;
    block_index: number;
    block_timestamp: number;
    epoch_height: number;
    account_balance: string;
    account_locked_balance: string;
    storage_usage: number;
    attached_deposit: string;
    prepaid_gas: number;
    random_seed: string;
    is_view: boolean;
    output_data_receivers: Uint8Array;
}
export interface AccountContext {
    current_account_id: string;
    signer_account_id: string;
    predecessor_account_id: string;
    signer_account_pk: string;
    input: string;
    input_data: any[];
    account_balance: string;
    account_locked_balance: string;
    output_data_receivers: Uint8Array;
    prepaid_gas: number;
    attached_deposit: string;
    is_view: boolean;
}
export declare function defaultAccountContext(): Partial<AccountContext>;
export declare function prepareContext(vmcontext: VMContext): VMContext;
export declare function createContext(accountContext: AccountContext): VMContext;
