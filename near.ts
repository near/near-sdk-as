import { u128 } from "./bignum/integer/u128";
import { Storage } from "./storage";



type DataTypeIndex = u32;

const DATA_TYPE_ORIGINATOR_ACCOUNT_ID: DataTypeIndex = 1;
const DATA_TYPE_CURRENT_ACCOUNT_ID: DataTypeIndex = 2;
const DATA_TYPE_RESULT: DataTypeIndex = 5;



/**
 * An instance of a Storage class that is used for working with contract storage on the blockchain.
 */
export let storage: Storage = new Storage();



/**
 * Provides context for contract execution, including information about transaction sender, etc.
 */
class Context {
  /**
   * Account ID of transaction sender.
   */
  get sender(): string {
    return storage._internalReadString(DATA_TYPE_ORIGINATOR_ACCOUNT_ID, 0, 0);
  }

  /**
   * Account ID of contract.
   */
  get contractName(): string {
    return storage._internalReadString(DATA_TYPE_CURRENT_ACCOUNT_ID, 0, 0);
  }

  /**
   * Current block index.
   */
  get blockIndex(): u64 {
    return block_index();
  }

  /**
   * The amount of tokens received with this execution call.
   */
  get receivedAmount(): u128 {
    let buffer = new Uint8Array(16);
    received_amount(buffer.dataStart);
    return u128.fromBytes(<Uint8Array>buffer);
  }

  /**
   * The amount of tokens that are locked in the account. Storage usage fee is deducted from this balance.
   */
  get frozenBalance(): u128 {
    let buffer = new Uint8Array(16);
    frozen_balance(buffer.dataStart);
    return u128.fromBytes(<Uint8Array>buffer);
  }

  /**
   * The amount of tokens that can be used for running wasm, creating transactions, and sending to other contracts
   * through cross-contract calls.
   */
  get liquidBalance(): u128 {
    let buffer = new Uint8Array(16);
    liquid_balance(buffer.dataStart);
    return u128.fromBytes(<Uint8Array>buffer);
  }

  /**
   * The current storage usage in bytes.
   */
  get storageUsage(): u64 {
    return storage_usage();
  }

  /**
   * Moves assets from liquid balance to frozen balance.
   * If there is enough liquid balance will deposit the maximum amount. Otherwise will deposit as much as possible.
   * Will fail if there is less than minimum amount on the liquid balance. Returns the deposited amount.
   */
  deposit(minAmount: u128, maxAmount: u128): u128 {
    let minAmountBuffer = minAmount.toUint8Array();
    let maxAmountBuffer = maxAmount.toUint8Array();
    let balanceBuffer = new Uint8Array(16);
    deposit(minAmountBuffer.dataStart, maxAmountBuffer.dataStart, balanceBuffer.dataStart);
    return u128.fromBytes(<Uint8Array>balanceBuffer);
  }

   /**
   * Moves assets from frozen balance to liquid balance.
   * If there is enough frozen balance will withdraw the maximum amount. Otherwise will withdraw as much as possible.
   * Will fail if there is less than minimum amount on the frozen balance. Returns the withdrawn amount.
   */
  withdraw(minAmount: u128, maxAmount: u128): u128 {
     let minAmountBuffer = minAmount.toUint8Array();
     let maxAmountBuffer = maxAmount.toUint8Array();
     let balanceBuffer = new Uint8Array(16);
     withdraw(minAmountBuffer.dataStart, maxAmountBuffer.dataStart, balanceBuffer.dataStart);
     return u128.fromBytes(<Uint8Array>balanceBuffer);
  }
}

export let context: Context = new Context();

export namespace near {

  /**
   * Parses the given string to return a value of the given generic type.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * @param s String to parse.
   * @param defaultValue The default value if the string is null
   * @returns A parsed value of type T.
   */
  export function parseFromString<T>(s: string, defaultValue: T = null): T {
    if (s == null) {
      return defaultValue;
    }
    if (isString<T>()) {
      return s;
    } else if (isInteger<T>()) {
      if (defaultValue instanceof bool) {
        return <T>(s == "true");
      } else if (isSigned<T>()) {
        return <T>I64.parseInt(s);
      } else {
        return <T>U64.parseInt(s);
      }
    } else {
      let v = instantiate<T>();
      return v.decode(stringToBytes(s));
    }
  }

  /**
   * Parses the given bytes array to return a value of the given generic type.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * @param bytes Bytes to parse.
   * @param defaultValue The default value if the bytes are null
   * @returns A parsed value of type T.
   */
  export function parseFromBytes<T>(bytes: Uint8Array, defaultValue: T = null): T {
    if (bytes == null) {
      return defaultValue;
    }
    if (isString<T>() || isInteger<T>()) {
      return parseFromString<T>(bytesToString(bytes), defaultValue);
    } else {
      let v = instantiate<T>();
      return v.decode(bytes);
    }
  }

  export function bytesToString(bytes: Uint8Array): string {
    return String.fromUTF8(bytes.dataStart, bytes.byteLength)
  }

  export function stringToBytes(s: string): Uint8Array {
    let len = s.lengthUTF8 - 1;
    let bytes = new Uint8Array(len);
    memory.copy(bytes.dataStart, s.toUTF8(), len);
    return bytes;
  }

  /**
   * Helper class to store key->value pairs.
   */
  export class MapEntry<K, V> {
    key: K;
    value: V;

    constructor(key: K, value: V) {
      this.key = key;
      this.value = value;
    }
  }

  /**
   * Hash given data. Returns hash as 32-byte array.
   * @param data data can be passed as either Uint8Array or anything with .toString (hashed as UTF-8 string).
   */
  export function hash<T>(data: T): Uint8Array {
    let result = new Uint8Array(32);
    if (data instanceof Uint8Array) {
      _near_hash(data.byteLength, data.dataStart, result.dataStart);
    } else {
      let str = data.toString();
      _near_hash(str.lengthUTF8 - 1, str.toUTF8(), result.dataStart);
    }
    return result;
  }

  /**
   * Hash given data. Returns hash as 32-bit integer.
   * @param data data can be passed as either Uint8Array or anything with .toString (hashed as UTF-8 string).
   */
  export function hash32<T>(data: T): u32 {
    let dataToHash : Uint8Array;
    if (data instanceof Uint8Array) {
      return _near_hash32(data.byteLength, data.dataStart);
    } else {
      let str = data.toString();
      return _near_hash32(str.lengthUTF8 - 1, str.toUTF8());
    }
  }

  /**
   * Returns random byte buffer of given length.
   */
  export function randomBuffer(len: u32): Uint8Array {
    let result = new Uint8Array(len);
    _near_random_buf(len, result.dataStart);
    return result;
  }

  /**
   * Returns random 32-bit integer.
   */
  export function random32(): u32 {
    return random32();
  }

  export function log(msg: string): void {
    _near_log(<usize>msg);
  }

  export function str<T>(value: T): string {
    let arr: Array<T> = [value];
    return arr.toString();
  }

  export function base58(source: Uint8Array): string {
    // Code converted from:
    // https://github.com/cryptocoinjs/base-x/blob/master/index.js
    const iFACTOR = 2; // TODO: Calculate precise value to avoid overallocating
    const ALPHABET = '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz';
    let BASE = ALPHABET.length;
    let LEADER = ALPHABET.charAt(0);

    // Skip & count leading zeroes.
    let zeroes = 0
    let length = 0
    let pbegin = 0
    let pend = source.length

    while (pbegin !== pend && source[pbegin] === 0) {
      pbegin++
      zeroes++
    }

    // Allocate enough space in big-endian base58 representation.
    let size = ((pend - pbegin) * iFACTOR + 1) >>> 0
    let b58 = new Uint8Array(size)

    // Process the bytes.
    while (pbegin !== pend) {
      let carry = i32(source[pbegin])

      // Apply "b58 = b58 * 256 + ch".
      let i = 0
      for (let it = size - 1; (carry !== 0 || i < length) && (it !== -1); it--, i++) {
        carry += (256 * b58[it]) >>> 0
        b58[it] = (carry % BASE) >>> 0
        carry = (carry / BASE) >>> 0
      }

      assert(carry == 0, 'Non-zero carry');
      length = i
      pbegin++
    }

    // Skip leading zeroes in base58 result.
    let it = size - length
    while (it !== size && b58[it] === 0) {
      it++
    }

    // Translate the result into a string.
    let str = LEADER.repeat(zeroes)
    for (; it < size; ++it) str += ALPHABET.charAt(b58[it])

    return str
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
  id: i32;

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
   * @param amount The amount of tokens from your contract to be sent to the remote contract with this call.
   */
  static create(
      contractName: string,
      methodName: string,
      args: Uint8Array,
      amount: u128 = 0
  ): ContractPromise {
    return {
      id: promise_create(
        contractName.lengthUTF8 - 1, contractName.toUTF8(),
        methodName.lengthUTF8 - 1, methodName.toUTF8(),
        args.byteLength, args.dataStart, amount.toUint8Array().dataStart)
    };
  }

  /**
   * Creating a callback for the AsyncCall Promise created with `create` method.
   * @param methodName Method name on your contract to be called to receive the callback.
   *     NOTE: Your callback method name can start with `_`, which would prevent other
   *     contracts from calling it directly. Only callbacks can call methods with `_` prefix.
   * @param args Serialized arguments on your callback method, see `create` for details.
   * @param amount The amount of tokens from the called contract to be sent to the current contract with this call.
   */
  then(
      methodName: string,
      args: Uint8Array,
      amount: u128
  ): ContractPromise {
    return {
      id: promise_then(
        this.id,
        methodName.lengthUTF8 - 1, methodName.toUTF8(),
        args.byteLength, args.dataStart,
        amount.toUint8Array().dataStart)
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
    return_promise(this.id);
  }

  /**
   * Joins multiple async call promises into one, to aggregate results before the callback.
   * NOTE: Given promises can only be new async calls and can't be callbacks.
   * Joined promise can't be returned as a result
   * @param promises List of async call promises to join.
   */
  static all(promises: ContractPromise[]): ContractPromise {
    assert(promises.length > 0);
    let id = promises[0].id;
    for (let i = 1; i < promises.length; i++) {
      id = promise_and(id, promises[i].id);
    }
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
  static getResults() : ContractPromiseResult[] {
    let count = <i32>result_count();
    let results = Array.create<ContractPromiseResult>(count);
    for (let i = 0; i < count; i++) {
      let isOk = result_is_ok(i);
      if (!isOk) {
        results[i] = { success: false }
        continue;
      }
      let buffer = storage._internalReadBytes(DATA_TYPE_RESULT, 0, i);
      results[i] = { success: isOk, buffer: buffer };
    }
    return results;
  }
}

/**
 * Class to store results of the async calls on the remote contracts.
 */
export class ContractPromiseResult {
  // Whether the execution of the remote call succeeded.
  success: bool;
  // Bytes data returned by the remote contract. Can be empty or null, if the remote
  // method returns `void`.
  buffer: Uint8Array;
}

declare function storage_write(key_len: u64, key_ptr: u64, value_len: u64, value_ptr: u64, register_id: u64): u64;
@external("env", "storage_remove")
declare function storage_remove(key_len: usize, key_ptr: usize): void;
@external("env", "storage_has_key")
declare function storage_has_key(key_len: usize, key_ptr: usize): bool;
@external("env", "storage_iter")
declare function storage_iter(prefix_len: usize, prefix_ptr: usize): u32;
@external("env", "storage_range")
declare function storage_range(start_len: usize, start_ptr: usize, end_len: usize, end_ptr: usize): u32;
@external("env", "storage_iter_next")
declare function storage_iter_next(id: u32): u32;

@external("env", "result_count")
declare function result_count(): u32;
@external("env", "result_is_ok")
declare function result_is_ok(index: u32): bool;

@external("env", "return_value")
declare function return_value(value_len: usize, value_ptr: usize): void;
@external("env", "return_promise")
declare function return_promise(promise_index: u32): void;

@external("env", "data_read")
declare function data_read(type_index: u32, key_len: usize, key: usize, max_buf_len: usize, buf_ptr: usize): usize;

@external("env", "promise_create")
declare function promise_create(
    account_id_len: usize, account_id_ptr: usize,
    method_name_len: usize, method_name_ptr: usize,
    args_len: usize, args_ptr: usize,
    amount_ptr: usize): u32;

@external("env", "promise_then")
declare function promise_then(
    promise_index: u32,
    method_name_len: usize, method_name_ptr: usize,
    args_len: usize, args_ptr: usize,
    amount_ptr: usize): u32;

@external("env", "promise_and")
declare function promise_and(promise_index1: u32, promise_index2: u32): u32;

@external("env", "check_ethash")
declare function check_ethash(
    block_number: u64,
    header_hash_ptr: usize, header_hash_len: u32,
    nonce: u64,
    mix_hash_ptr: usize, mix_hash_len: u32,
    difficulty: u64
): bool;

/**
 * @hidden
 * Hash buffer is 32 bytes
 */
@external("env", "hash")
declare function _near_hash(value_len: usize, value_ptr: usize, buf_ptr: usize): void;

/**
 * @hidden
 */
@external("env", "hash32")
declare function _near_hash32(value_len: usize, value_ptr: usize): u32;

/**
 * @hidden
 * Fills given buffer with random u8.
 */
@external("env", "random_buf")
declare function _near_random_buf(buf_len: u32, buf_ptr: usize): void

/**
 * @hidden
 */
@external("env", "random32")
declare function random32(): u32;

/**
 * @hidden
 */
@external("env", "log")
declare function _near_log(msg_ptr: usize): void;

/**
 * @hidden
 */
@external("env", "frozen_balance")
declare function frozen_balance(balance_ptr: usize): void;

/**
 * @hidden
 */
@external("env", "liquid_balance")
declare function liquid_balance(balance_ptr: usize): void;

/**
 * @hidden
 */
@external("env", "storage_usage")
declare function storage_usage(): u64;

/**
 * @hidden
 */
@external("env", "deposit")
declare function deposit(min_amount_ptr: usize, max_amount_ptr: usize, balance_ptr: usize): void;

/**
 * @hidden
 */
@external("env", "withdraw")
declare function withdraw(min_amount_ptr: usize, max_amount_ptr: usize, balance_ptr: usize): void;

/**
 * @hidden
 */
@external("env", "received_amount")
declare function received_amount(balance_ptr: usize): void;

/**
 * @hidden
 */
@external("env", "block_index")
declare function block_index(): u64;

// adapted from https://gist.github.com/Juszczak/63e6d9e01decc850de03
/**
 * base64 encoding/decoding
 */
export namespace base64 {
  //tenporary hack to work around  import { storage, near, base64 } from "./near in intermediate main.near.ts files. It doesn't look like this is actually used
}
