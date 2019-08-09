import { u128 } from "./bignum/integer/u128";
import { Storage } from './storage';


type DataTypeIndex = u32;

const DATA_TYPE_ORIGINATOR_ACCOUNT_ID: DataTypeIndex = 1;
const DATA_TYPE_CURRENT_ACCOUNT_ID: DataTypeIndex = 2;
const DATA_TYPE_RESULT: DataTypeIndex = 5;


/**
 * An instance of a Storage class that is used for working with contract storage on the blockchain.
 */
export let storage: Storage = new Storage();



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
    if (bytes == null) {
      return null;
    }
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

  export function str<T>(value: T): string {
    let arr: Array<T> = [value];
    return arr.toString();
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

// adapted from https://gist.github.com/Juszczak/63e6d9e01decc850de03
/**
 * base64 encoding/decoding
 */
export namespace base64 {
  //tenporary hack to work around  import { storage, near, base64 } from "./near in intermediate main.near.ts files. It doesn't look like this is actually used
}
