/// <reference path="types.d.ts" />
import { RustRef } from "./utils";
export declare class ExecutionResult extends RustRef {
    unwrap_json_value(): string;
    is_ok(): boolean;
    has_value(): boolean;
    lookup_hash(hash: string): ExecutionResult | null;
    outcome(): ExecutionOutcome;
    get_receipt_results(): Array<ExecutionResult>;
    promise_results(): Array<ExecutionResult>;
    promise_errors(): Array<ExecutionResult>;
    status(): ExecutionStatus;
    gas_burnt(): Gas;
    tokens_burnt(): Balance;
    logs(): string[];
    executor_id(): AccountId;
    receipt_ids(): CryptoHash[];
}
