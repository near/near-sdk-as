import { util } from "./util";
import { runtime_api } from './runtime_api';
import { u128 } from "bignum";

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
    const registerContents = new Uint8Array(runtime_api.register_len(registerId) as i32);
    runtime_api.read_register(registerId, registerContents.dataStart);
    return util.bytesToString(registerContents)!;
  }
}



/**
* Class to make asynchronous calls to other contracts and receive callbacks.
* Here is an example on how to create a new async call with the callback.
* ```
* export function callMetaNear(): void {
*   let itemArgs: AddItemArgs = {
*     accountId: "alice.near",
*     itemId: "Sword +9000",s
*   };
*   let promise = ContractPromise.create(
*     "metanear",
*     "addItem",
*     itemArgs.encode(),
*     0,
*   );
*   // Setting up args for the callback
*   let requestArgs: OnItemAddedArgs = {
*     "itemAddedRequestId": "UNIQUE_REQUEST_ID",
*   };
*   let callbackPromise = promise.then(
*      "_onItemAdded",
*      requestArgs.encode(),
*      2,  // Attaching 2 additional requests, in case we need to do another call
*   );
*   callbackPromise.returnAsResult();
* }
* ```
* See docs on used methods for more details.
*/
export class ContractPromise {
  // Session-based unique promise ID. Don't preserve it longer than this execution.
  id: u64;

  /**
  * Creates a new async call promise. Returns an instance of `ContractPromise`.
  * The call would be scheduled if the this current execution of the contract succeeds
  * without errors or failed asserts.
  * @param contractName Account ID of the remote contract to call. E.g. `metanear`.
  * @param methodName Method name on the remote contract to call. E.g. `addItem`.
  * @param args Serialized arguments to pass into the method. To get them create a new model
  *     specific for the method you calling, e.g. `AddItemArgs`. Then create an instance of it
  *     and populate arguments. After this, serialize it into bytes. E.g.
  *     ```
  *     let itemArgs: AddItemArgs = {
  *       accountId: "alice.near",
  *       itemId: "Sword +9000",
  *     };
  *     // Serialize args
  *     let args = itemArgs.encode();
  *     ```
  * @param gas The amount of gas attached to the call
  * @param amount The amount of tokens from your contract to be sent to the remote contract with this call.
  */
  static create(
    contractName: string,
    methodName: string,
    args: Uint8Array,
    gas: u64,
    amount: u128 = u128.fromU64(0)
  ): ContractPromise {
    const contract_name_encoded = util.stringToBytes(contractName);
    const method_name_encoded = util.stringToBytes(methodName);
    let amount_arr = amount.toUint8Array();
    const id: u64 = runtime_api.promise_create(
      contract_name_encoded.byteLength,
      contract_name_encoded.dataStart,
      method_name_encoded.byteLength,
      method_name_encoded.dataStart,
      args.byteLength,
      args.dataStart,
      amount_arr.dataStart,
      gas);
      //@ts-ignore: Typescript expects the object to have a function to match the type
      // Wheras as only cares about the fields.
    return {
      id
    };
  }

  /**
  * Creating a callback for the AsyncCall Promise created with `create` method.
  * @param contractName Name of your contract.
  * @param methodName Method name on your contract to be called to receive the callback.
  *     NOTE: Your callback method name can start with `_`, which would prevent other
  *     contracts from calling it directly. Only callbacks can call methods with `_` prefix.
  * @param args Serialized arguments on your callback method, see `create` for details.
  * @param gas The amount of gas attached to the call.
  * @param amount The amount of tokens from the called contract to be sent to the current contract with this call.
  */
  then(
    contractName: string,
    methodName: string,
    args: Uint8Array,
    gas: u64,
    amount: u128 = u128.fromU64(0)
  ): ContractPromise {
    const contract_name_encoded = util.stringToBytes(contractName);
    const method_name_encoded = util.stringToBytes(methodName);
    let amount_arr = amount.toUint8Array();
    const id = runtime_api.promise_then(
      this.id,
      contract_name_encoded.byteLength,
      contract_name_encoded.dataStart,
      method_name_encoded.byteLength,
      method_name_encoded.dataStart,
      args.byteLength,
      args.dataStart,
      amount_arr.dataStart,
      gas);
      //@ts-ignore: See above ignore comment
    return {
      id
    };
  }

  /**
  * Returns the promise as a result of your function. Don't return any other results from the function.
  * Your current function should be `void` and shouldn't return anything else. E.g.
  * ```
  * export function callMetaNear(): void {
  *   let itemArgs: AddItemArgs = {
  *     accountId: "alice.near",
  *     itemId: "Sword +9000",
  *   };
  *   let promise = ContractPromise.create(
  *     "metanear",
  *     "addItem",
  *     itemArgs.encode(),
  *     0,
  *     0,
  *   );
  *   promise.returnAsResult();
  * }
  * ```
  *
  * Now when you call `callMetaNear` method, it creates new promise to `metanear` contract.
  * And saying that the result of the current execution depends on the result `addItem`.
  * Even though this contract is not going to be called with a callback, the contract which
  * calling `callMetaNear` would receive the result from `addItem`. This call essentially acts
  * as a proxy.
  *
  * You can also attach a callback on top of the promise before returning it, e.g.
  *
  * ```
  *   ...
  *   let promise = ContractPromise.create(
  *      ...
  *   );
  *   // Setting up args for the callback
  *   let requestArgs: OnItemAddedArgs = {
  *     "itemAddedRequestId": "UNIQUE_REQUEST_ID",
  *   };
  *   let callbackPromise = promise.then(
  *      "_onItemAdded",
  *      requestArgs.encode(),
  *      2,  // Attaching 2 additional requests, in case we need to do another call
  *   );
  *   callbackPromise.returnAsResult();
  * }
  * ```
  */
  returnAsResult(): void {
    runtime_api.promise_return(this.id);
  }

  // /**
  //  * Joins multiple async call promises into one, to aggregate results before the callback.
  //  * NOTE: Given promises can only be new async calls and can't be callbacks.
  //  * Joined promise can't be returned as a result
  //  * @param promises List of async call promises to join.
  //  */
  static all(promises: ContractPromise[]): ContractPromise {
    assert(promises.length > 0);
    const ids = new Array<u64>(promises.length);
    for (let i = 0; i < promises.length; i++) {
      ids[i] = promises[i].id;
    }
    const id = runtime_api.promise_and(ids.dataStart, ids.length);
    //@ts-ignore doesn't need methods
    return { id };
  }

/**
 * Method to receive async (one or multiple) results from the remote contract in the callback.
 * Example of using it.
 * ```
 * // This function is prefixed with `_`, so other contracts or people can't call it directly.
 * export function _onItemAdded(itemAddedRequestId: string): bool {
 *   // Get all results
 *   let results = ContractPromise.getResults();
 *   let addItemResult = results[0];
 *   // Verifying the remote contract call succeeded.
 *   if (addItemResult.success) {
 *     // Decoding data from the bytes buffer into the local object.
 *     let data = AddItemResult.decode(addItemResult.buffer);
 *     if (data.itemPower > 9000) {
 *       return true;
 *     }
 *   }
 *   return false;
 * }
 * ```
 * @returns An array of results based on the number of promises the callback was created on.
 *     If the callback using `then` was scheduled only on one result, then one result will be returned.
 */
  static getResults(): ContractPromiseResult[] {
    let count = <i64>runtime_api.promise_results_count();
    let results = Array.create<ContractPromiseResult>(count as i32);
    for (let i = 0; i < count; i++) {
      const promise_status = runtime_api.promise_result(i, 0) as i32;
      let isOk = promise_status == 1;
      if (!isOk) {
        results[i] = new ContractPromiseResult();
        results[i].status = promise_status;
        continue;
      }
      const buffer = new Uint8Array(runtime_api.register_len(0) as i32);
      runtime_api.read_register(0, buffer.dataStart);
      results[i] = { status: promise_status, buffer: buffer };
    }
    return results;
  }
}

/**
 * Class to store results of the async calls on the remote contracts.
 */
export class ContractPromiseResult {
  // Whether the execution of the remote call succeeded.
  status: i32;
  // Bytes data returned by the remote contract. Can be empty or null, if the remote
  // method returns `void`.
  buffer: Uint8Array;
}

export let context: Context = new Context();
