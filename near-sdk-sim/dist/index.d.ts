import { UserAccount } from "./user";
/**
 * The simulator takes an optional GenesisConfig, which sets up the fees and other settings.
 * It returns the `master_account` which can then create accounts and deploy contracts.
 * @param genesis_config Optional config to setup the fees and other settings
 */
export declare function init_simulator(genesis_config?: GenesisConfig): UserAccount;
/**
 * Convert to given value to yocto unit (10^24)
 * Helpful in calculating gas and user balance
 * @param value number string to convert
 * @returns number in yocto unit
 */
export declare function to_yocto(value: string): string;
/**
 * Default Gas value
 */
export declare const DEFAULT_GAS: string;
/**
 * Default storage amount
 */
export declare const STORAGE_AMOUNT: string;
/**
 * Default genesis config
 */
export declare const DEFAULT_GENESIS_CONFIG: GenesisConfig;
export { UserAccount, UserTransaction } from "./user";
export { ExecutionResult } from "./outcome";
export * as utils from "./utils";
