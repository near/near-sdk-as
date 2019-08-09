import { near } from "./near";
import { runtime_api } from './runtime_api';
import { u128 } from "./bignum/integer/u128";
import { logging } from "./logging";

export let context: Context = new Context();

/**
 * Provides context for contract execution, including information about transaction sender, etc.
 */
class Context {
    /**
     * Account ID of transaction sender.
     */
    get sender(): string {
        runtime_api.signer_account_id(0);
        return this._readRegisterContentsAsString(0);
    }
  
    /**
     * Account ID of contract.
     */
    get contractName(): string {
        runtime_api.current_account_id(0);
        return this._readRegisterContentsAsString(0);
    }
  
    /**
     * Current block index.
     */
    get blockIndex(): u64 {
      return runtime_api.block_index();
    }
  
    /**
     * The amount of tokens received with this execution call.
     * @deprecated use attachedDeposit.
     */
    get receivedAmount(): u128 {
        return this.receivedAmount();
    }

    /**
     * The amount of tokens received with this execution call.
     * @deprecated use attachedDeposit.
     */
    get attachedDeposit(): u128 {
        let buffer = new Uint8Array(16);
        runtime_api.attached_deposit(buffer.dataStart);
        return u128.fromBytes(buffer);
    }

    /**
     * The amount of tokens received with this execution call.
     * @deprecated use attachedDeposit.
     */
    get accountBalance(): u128 {
        let buffer = new Uint8Array(16);
        runtime_api.account_balance(buffer.dataStart);
        return u128.fromBytes(buffer);
    }

    /**
     * Get the amount of prepaid gas attached to the call (in units of gas).
     */
    get prepaidGas(): u64 {
        return runtime_api.prepaid_gas();
    }

    /**
     * Get the amount of gas (in units of gas) that was already burnt during the contract execution and attached to promises (cannot exceed prepaid gas).
     */
    get usedGas(): u64 {
        return runtime_api.used_gas();
    }
  
    /**
     * The current storage usage in bytes.
     */
    get storageUsage(): u64 {
      return runtime_api.storage_usage();
    }
  
    private _readRegisterContentsAsString(registerId: u64): string {
        const registerContents = new Uint8Array((i32)(runtime_api.register_len(registerId)));
        runtime_api.read_register(registerId, registerContents.buffer as u64);
        return near.bytesToString(registerContents);
    }   
}