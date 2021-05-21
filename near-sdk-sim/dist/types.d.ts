declare type AccountId = string;
declare type PublicKey = string;
declare type AccessKey = string;
declare type CryptoHash = string;
/**
 * u128
 */
declare type Gas = string;
/**
 * u128
 */
declare type Balance = string;
/**
 * u64
 */
declare type StorageUsage = string;
/**
 * u64
 */
declare type Duration = string;
declare type StateRecord = {
    account_id: AccountId;
    account: Account;
} | {
    account_id: AccountId;
    data_key: string;
    value: string;
} | {
    account_id: AccountId;
    code: string;
} | {
    account_id: AccountId;
    public_key: PublicKey;
    access_key: AccessKey;
} | {
    account_id: AccountId;
    data_id: CryptoHash;
    data: string | null;
};
interface Account {
    amount: Balance;
    locked: Balance;
    code_hash: CryptoHash;
    storage_usage: StorageUsage;
}
interface AccountInfo {
    account_id: AccountId;
    public_key: PublicKey;
    amount: Balance;
}
interface GenesisConfig {
    genesis_time: string;
    gas_price: Balance;
    gas_limit: Gas;
    genesis_height: string;
    epoch_length: string;
    block_prod_time: Duration;
    state_records: Array<StateRecord>;
    validators: Array<AccountInfo>;
    runtime_config?: any;
}
declare type TxExecutionError = {
    ActionError: any;
} | {
    InvalidTxError: any;
};
declare type ExecutionStatus = {
    SuccessValue: Array<any>;
} | {
    SuccessReceiptId: CryptoHash;
} | {
    Failure: TxExecutionError;
};
interface ExecutionOutcome {
    logs: string[];
    receipt_ids: CryptoHash[];
    gas_burnt: Gas;
    tokens_burnt: Balance;
    executor_id: AccountId;
    status: ExecutionStatus;
}
