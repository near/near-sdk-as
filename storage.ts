import { runtime_api } from './runtime_api';
import { util } from "./util";
import { logging } from "./logging";


/**
* An instance of a Storage class that is used for working with contract storage on the blockchain.
*/
export let storage: Storage = new Storage();

/**
* Represents contract storage.
*/
export class Storage {
  /**
  * Returns list of keys between the given start key and the end key. Both inclusive.
  * NOTE: Must be very careful to avoid exploding amount of compute with this method.
  * @param start The start key used as a lower bound in lexicographical order. Inclusive.
  * @param end The end key used as a upper bound in lexicographical order. Inclusive.
  * @param limit The maximum number of keys to return. Default is `-1`, means no limit.
  */
  keyRange(start: string, end: string, limit: i32 = -1): string[] {
    let start_encoded = util.stringToBytes(start);
    let end_encoded = util.stringToBytes(end);

    const iterator_id = runtime_api.storage_iter_range(
      start_encoded.buffer.byteLength,
      start_encoded.buffer as u64,
      end_encoded.buffer.byteLength,
      end_encoded.buffer as u64);

      return this._fetchIter(iterator_id, limit);
    }

    /**
    * Returns list of keys starting with given prefix.
    * NOTE: Must be very careful to avoid exploding amount of compute with this method.
    * @param prefix The key prefix.
    * @param limit The maximum number of keys to return. Default is `-1`, means no limit.
    */
    keys(prefix: string, limit: i32 = -1): string[] {
      let prefix_encoded = util.stringToBytes(prefix);
      const iterator_id = runtime_api.storage_iter_prefix(
        prefix_encoded.buffer.byteLength,
        prefix_encoded.buffer as u64);
        return this._fetchIter(iterator_id, limit);
      }

      /**
      * Store string value under given key. Both key and value are encoded as UTF-8 strings.
      */
      setString(key: string, value: string): void {
        let key_encoded = util.stringToBytes(key);
        let value_encoded = util.stringToBytes(value);
        const storage_write_result =
        runtime_api.storage_write(key_encoded.buffer.byteLength, key_encoded.buffer as u64, value_encoded.buffer.byteLength, value_encoded.buffer as u64, 0);
        // TODO: handle return value?
      }

      /**
      * Get string value stored under given key. Both key and value are encoded as UTF-8 strings.
      */
      getString(key: string): string {
        return util.bytesToString(this._internalReadBytes(key));
      }

      /**
      * Store byte array under given key. Key is encoded as UTF-8 strings.
      * Byte array stored as is.
      *
      * It's convenient to use this together with `domainObject.encode()`.
      */
      setBytes(key: string, value: Uint8Array): void {
        let key_encoded = util.stringToBytes(key);
        const storage_write_result =
        runtime_api.storage_write(key_encoded.buffer.byteLength, key_encoded.buffer as u64, value.buffer.byteLength, value.buffer as u64, 0);
        // TODO: handle return value?
      }

      /**
      * Get byte array stored under given key. Key is encoded as UTF-8 strings.
      * Byte array stored as is.
      *
      * It's convenient to use this together with `DomainObject.decode()`.
      */
      getBytes(key: string): Uint8Array {
        return this._internalReadBytes(key);
      }

      /**
      * Returns true if the given key is present in the storage.
      */
      contains(key: string): bool {
        let key_encoded = util.stringToBytes(key);
        return (bool)(runtime_api.storage_has_key(key_encoded.buffer.byteLength, key_encoded.buffer as u64));
      }

      /**
      * Deletes a given key from the storage.
      */
      delete(key: string): void {
        let key_encoded = util.stringToBytes(key);
        runtime_api.storage_remove(key_encoded.buffer.byteLength, key_encoded.buffer as u64, 0);
      }

      /**
      * Stores given generic value under the key. Key is encoded as UTF-8 strings.
      * Supported types: bool, integer, string and data objects defined in model.ts.
      *
      * @param key A key to use for storage.
      * @param value A value to store.
      */
      set<T>(key: string, value: T): void {
        if (isString<T>()) {
          this.setString(key, value);
        } else if (isInteger<T>()) {
          this.setString(key, value.toString());
        } else {
          this.setBytes(key, value.encode());
        }
      }

      /**
      * Gets given generic value stored under the key. Key is encoded as UTF-8 strings.
      * Supported types: bool, integer, string and data objects defined in model.ts.
      *
      * @param key A key to read from storage.
      * @param defaultValue The default value if the key is not available
      * @returns A value of type T stored under the given key.
      */
      get<T>(key: string, defaultValue: T = null): T {
        if (isString<T>() || isInteger<T>()) {
          return util.parseFromString<T>(this.getString(key), defaultValue);
        } else {
          return util.parseFromBytes<T>(this.getBytes(key), defaultValue);
        }
      }

      private _internalReadBytes(key: string): Uint8Array{
        let key_encoded = util.stringToBytes(key);
        let res = runtime_api.storage_read(key_encoded.buffer.byteLength, key_encoded.buffer as u64, 0);
        if (res == 1) {
          let value_len = runtime_api.register_len(0);
          let value = new Uint8Array(value_len as i32);
          runtime_api.read_register(0, value.buffer as u64);
          return value;
        } else {
          return null;
        }
      }

      /**
      * @hidden
      * Internal method to fetch list of keys from the given iterator up the limit.
      */
      private _fetchIter(iterId: u64, limit: i32 = -1): string[] {
        let result: string[] = new Array<string>();

        while(limit-- != 0 && runtime_api.storage_iter_next(iterId, 0, 1) == 1) {
          let key_len = runtime_api.register_len(0);
          let key_data = new Uint8Array(key_len as i32);
          runtime_api.read_register(0, key_data.buffer as u64);
          if (key_data.buffer != null) {
            result.push(util.bytesToString(key_data));
          }
        }
        return result;
      }

      // TODO: test and improve the u64 handling
      // @inline
      // hasKey(key: string): bool {
      //   return this.contains(key);
      // }
      // /**
      //  * Store 64-bit unsigned int under given key. Key is encoded as UTF-8 strings.
      //  * Number is encoded as decimal string.
      //  */
      // setU64(key: string, value: u64): void {
      //   this.setItem(key, value.toString());
      // }

      // /**
      //  * Get 64-bit unsigned int stored under given key. Key is encoded as UTF-8 strings.
      //  * Number is encoded as decimal string.
      //  *
      //  * @returns int value or 0 if value is not found
      //  */
      // getU64(key: string): u64 {
      //   return U64.parseInt(this.getItem(key) || "0");
      // }
    }
