type AccountId = string;
type PublicKey = string;
type AccessKey = string;
type CryptoHash = string;

/**
 * u128
 */
type Gas = string;

/**
 * u128
 */
type Balance = string;

/**
 * u64
 */
type StorageUsage = string;

/**
 * u64
 */
type Duration = string;

type StateRecord =
  // Account
  | { account_id: AccountId; account: Account }
  // Data
  | { account_id: AccountId; data_key: string; value: string }
  // Contract
  | { account_id: AccountId; code: string }
  // AccessKey
  | { account_id: AccountId; public_key: PublicKey; access_key: AccessKey }
  // // PostponedReceipt
  // PostponedReceipt(Box<Receipt>)
  // ReceivedData
  // // DelayedReceipt
  // DelayedReceipt(Box<Receipt>)
  | { account_id: AccountId; data_id: CryptoHash; data: string | null };

// interfaces

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
  genesis_height: string; //u64
  epoch_length: string; //u64
  block_prod_time: Duration;
  state_records: Array<StateRecord>;
  validators: Array<AccountInfo>;
  runtime_config?: any; // RuntimeConfig
}

type TxExecutionError = { ActionError: any } | { InvalidTxError: any };

// type ExecutionStatus =
//   | { SuccessValue: Array<any> }
//   | { SuccessReceiptId: CryptoHash }
//   | { Failure: TxExecutionError };

interface SuccessValue {
  type: "SuccessValue";
  value: any[];
}

interface SuccessReceiptId {
  type: "SuccessReceiptId";
  receipt: CryptoHash;
}

interface Failure {
  type: "Failure";
  error: TxExecutionError;
}

type ExecutionStatus = SuccessValue | SuccessReceiptId | Failure;

interface ExecutionOutcome {
  logs: string[];
  receipt_ids: CryptoHash[];
  gas_burnt: Gas;
  tokens_burnt: Balance;
  executor_id: AccountId;
  status: ExecutionStatus;
}
