import { near, storage } from "./near";
import { runtime_api } from './runtime_api';
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
  
    // /**
    //  * Current block index.
    //  */
    // get blockIndex(): u64 {
    //   return block_index();
    // }
  
    // /**
    //  * The amount of tokens received with this execution call.
    //  */
    // get receivedAmount(): u128 {
    //   let buffer = new Uint8Array(16);
    //   received_amount(buffer.dataStart);
    //   return u128.fromBytes(<Uint8Array>buffer);
    // }
  
    // /**
    //  * The amount of tokens that are locked in the account. Storage usage fee is deducted from this balance.
    //  */
    // get frozenBalance(): u128 {
    //   let buffer = new Uint8Array(16);
    //   frozen_balance(buffer.dataStart);
    //   return u128.fromBytes(<Uint8Array>buffer);
    // }
  
    // /**
    //  * The amount of tokens that can be used for running wasm, creating transactions, and sending to other contracts
    //  * through cross-contract calls.
    //  */
    // get liquidBalance(): u128 {
    //   let buffer = new Uint8Array(16);
    //   liquid_balance(buffer.dataStart);
    //   return u128.fromBytes(<Uint8Array>buffer);
    // }
  
    // /**
    //  * The current storage usage in bytes.
    //  */
    // get storageUsage(): u64 {
    //   return storage_usage();
    // }
  
    // /**
    //  * Moves assets from liquid balance to frozen balance.
    //  * If there is enough liquid balance will deposit the maximum amount. Otherwise will deposit as much as possible.
    //  * Will fail if there is less than minimum amount on the liquid balance. Returns the deposited amount.
    //  */
    // deposit(minAmount: u128, maxAmount: u128): u128 {
    //   let minAmountBuffer = minAmount.toUint8Array();
    //   let maxAmountBuffer = maxAmount.toUint8Array();
    //   let balanceBuffer = new Uint8Array(16);
    //   deposit(minAmountBuffer.dataStart, maxAmountBuffer.dataStart, balanceBuffer.dataStart);
    //   return u128.fromBytes(<Uint8Array>balanceBuffer);
    // }
  
    //  /**
    //  * Moves assets from frozen balance to liquid balance.
    //  * If there is enough frozen balance will withdraw the maximum amount. Otherwise will withdraw as much as possible.
    //  * Will fail if there is less than minimum amount on the frozen balance. Returns the withdrawn amount.
    //  */
    // withdraw(minAmount: u128, maxAmount: u128): u128 {
    //    let minAmountBuffer = minAmount.toUint8Array();
    //    let maxAmountBuffer = maxAmount.toUint8Array();
    //    let balanceBuffer = new Uint8Array(16);
    //    withdraw(minAmountBuffer.dataStart, maxAmountBuffer.dataStart, balanceBuffer.dataStart);
    //    return u128.fromBytes(<Uint8Array>balanceBuffer);
    // }
    private _readRegisterContentsAsString(registerId: u64): string {
        const registerContents = new Uint8Array((i32)(runtime_api.register_len(registerId)));
        runtime_api.read_register(registerId, registerContents.buffer as u64);
        return near.bytesToString(registerContents);
    }   
}