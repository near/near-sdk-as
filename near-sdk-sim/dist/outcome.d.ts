import { RustRef } from "./utils";
export declare class ExecutionResult extends RustRef {
    unwrap_json_value(): string;
    is_ok(): boolean;
    has_value(): boolean;
    lookup_hash(hash: string): ExecutionResult | null;
    outcome(): any;
    get_receipt_results(): Array<ExecutionResult>;
    promise_results(): Array<ExecutionResult>;
    promise_errors(): Array<ExecutionResult>;
    status(): string;
    gas_burnt(): string;
    tokens_burnt(): string;
    logs(): string[];
    executor_id(): string;
    receipt_ids(): string[];
}
