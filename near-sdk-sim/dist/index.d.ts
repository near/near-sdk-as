export declare function init_simulator(): User;
declare abstract class RustRef {
    protected ref: any;
    constructor(ref: any);
}
export declare class User extends RustRef {
    account_id(): string;
    amount(): string;
    deploy(wasm_bytes: Uint8Array | string | string[], account_id: string, deposit?: string): User;
    view(account_id: string, method: string, args?: string | object): any;
    call(account_id: string, method: string, args?: string | object, gas?: string, deposit?: string): ExecutionResult;
    view_self(method: string, args?: string | object): any;
    create_user(account_id: string, initial_balance: string): User;
}
export declare class ExecutionResult extends RustRef {
    is_ok(): boolean;
    has_value(): boolean;
    outcome(): any;
}
export declare const DEFAULT_GAS: string;
export {};
