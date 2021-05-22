export declare function $init_simulator(genesis_config?: string): any;

// utils
export declare function $to_yocto(value: string): string;

// UserAccount
export declare function $ua$account(user: any): string;

export declare function $ua$account_id(user: any): string;

export declare function $ua$call(
  user: any,
  account_id: string,
  method: string,
  args: string,
  gas: string,
  deposit: string
): any;

export declare function $ua$create_transaction(
  user: any,
  receiver_id: string
): any;

export declare function $ua$create_user(
  user: any,
  account_id: string,
  initial_balance: string
): any;

export declare function $ua$create_user_from(
  user: any,
  signer_user: any,
  account_id: string,
  initial_balance: string
): any;

export declare function $ua$deploy(
  user: any,
  wasm_bytes: Uint8Array,
  account_id: string,
  deposit: string
): any;

export declare function $ua$deploy_and_init(
  user: any,
  wasm_bytes: Uint8Array,
  account_id: string,
  method: string,
  args: string,
  deposit: string,
  gas: string
): any;

export declare function $ua$transfer(
  user: any,
  to: string,
  deposit: string
): any;

export declare function $ua$view(
  user: any,
  account_id: string,
  method: string,
  args: string
): string;

// UserTranscation
export declare function $ut$add_key(
  user: any,
  public_key: string,
  access_key: string
): any;

export declare function $ut$submit(user: any): any;

export declare function $ut$create_account(user: any): any;

export declare function $ut$deploy_contract(
  user: any,
  wasm_bytes: Uint8Array
): any;

export declare function $ut$function_call(
  user: any,
  method: string,
  args: string,
  gas: string,
  deposit: string
): any;

export declare function $ut$transfer(user: any, deposit: string): any;

export declare function $ut$stake(
  user: any,
  stake: string,
  public_key: string
): any;

export declare function $ut$add_key(
  user: any,
  public_key: string,
  access_key: string
): any;

export declare function $ut$delete_key(user: any, public_key: string): any;

export declare function $ut$delete_account(
  user: any,
  beneficiary_id: string
): any;

// ExecutionResult
export declare function $er$unwrap_json_value(er: any): string;

export declare function $er$is_ok(er: any): boolean;

export declare function $er$has_value(er: any): boolean;

export declare function $er$lookup_hash(er: any, hash: string): Array<any>;

export declare function $er$outcome(er: any): string;

export declare function $er$get_receipt_results(er: any): Array<any>;

export declare function $er$promise_results(er: any): Array<any>;

export declare function $er$promise_errors(er: any): Array<any>;

export declare function $er$status(er: any): string;

export declare function $er$gas_burnt(er: any): string;

export declare function $er$tokens_burnt(er: any): string;

export declare function $er$logs(er: any): Array<string>;

export declare function $er$executor_id(er: any): string;

export declare function $er$receipt_ids(er: any): Array<string>;

// Constants
export declare const $DEFAULT_GAS: string;
export declare const $DEFAULT_GENESIS_CONFIG: string;
export declare const $STORAGE_AMOUNT: string;
