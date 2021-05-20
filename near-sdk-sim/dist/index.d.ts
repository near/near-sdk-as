/// <reference path="types.d.ts" />
import { UserAccount } from "./user";
export declare function init_simulator(genesis_config?: GenesisConfig): UserAccount;
export declare function to_yocto(value: string): string;
export declare const DEFAULT_GAS: string;
export declare const STORAGE_AMOUNT: string;
export { UserAccount, UserTransaction } from "./user";
export { ExecutionResult } from "./outcome";
