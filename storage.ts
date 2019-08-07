import { runtime_api } from './runtime_api';
import { near } from "./near";

type DataTypeIndex = u32;

const DEFAULT_SCRATCH_BUFFER_SIZE: usize = 1 << 16;

const DATA_TYPE_STORAGE_ITER: DataTypeIndex = 6;
const DATA_TYPE_STORAGE: DataTypeIndex = 3;
const DATA_TYPE_INPUT: DataTypeIndex = 4;


/**
 * Represents contract storage.
 */
export class Storage {
    private _scratchBuf: Uint8Array = new Uint8Array(DEFAULT_SCRATCH_BUFFER_SIZE);

    /**
     * Returns list of keys between the given start key and the end key. Both inclusive.
     * NOTE: Must be very careful to avoid exploding amount of compute with this method.
     * @param start The start key used as a lower bound in lexicographical order. Inclusive.
     * @param end The end key used as a upper bound in lexicographical order. Inclusive.
     * @param limit The maximum number of keys to return. Default is `-1`, means no limit.
     */
    keyRange(start: string, end: string, limit: i32 = -1): string[] {
        let start_encoded = near.stringToBytes(start);
        let end_encoded = near.stringToBytes(end);
        const iterator_id = runtime_api.storage_iter_range(
            start_encoded.buffer.byteLength,
            start_encoded.buffer as u64,
            end_encoded.buffer.byteLength,
            end_encoded.buffer as u64);

        let result: string[] = new Array<string>();

        while (limit-- != 0 && runtime_api.storage_iter_next(iterator_id, 0, 1) == 1) {
            let key_len = runtime_api.register_len(0);
            let key_data = new Uint8Array(key_len as i32);
            runtime_api.read_register(0, key_data.buffer as u64);
            if (key_data.buffer != null) {
                result.push(near.bytesToString(key_data));
            }
        }
        return result;
    }
  
    // /**
    //  * Returns list of keys starting with given prefix.
    //  * NOTE: Must be very careful to avoid exploding amount of compute with this method.
    //  * @param prefix The key prefix.
    //  * @param limit The maximum number of keys to return. Default is `-1`, means no limit.
    //  */
    // keys(prefix: string, limit: i32 = -1): string[] {
    //   return this._fetchIter(
    //     storage_iter(prefix.lengthUTF8 - 1, prefix.toUTF8()),
    //     limit,
    //   );
    // }
  
    /**
     * Store string value under given key. Both key and value are encoded as UTF-8 strings.
     */
    setString(key: string, value: string): void {
        let key_encoded = near.stringToBytes(key);
        let value_encoded = near.stringToBytes(value);
        const storage_write_result =
            runtime_api.storage_write(key_encoded.buffer.byteLength, key_encoded.buffer as u64, value_encoded.buffer.byteLength, value_encoded.buffer as u64, 0);
        // TODO: handle return value?
    }
  
    /**
     * Get string value stored under given key. Both key and value are encoded as UTF-8 strings.
     */
    getString(key: string): string {
        let key_encoded = near.stringToBytes(key);
        let res = runtime_api.storage_read(key_encoded.buffer.byteLength, key_encoded.buffer as u64, 0);
        if (res == 1) {
            let value_len = runtime_api.register_len(0);
            let value = new Uint8Array(value_len as i32);
            runtime_api.read_register(0, value.buffer as u64);
            return near.bytesToString(value);
        } else {
            throw 'Key does not exist';
        }
    }
  
    // /**
    //  * Store byte array under given key. Key is encoded as UTF-8 strings.
    //  * Byte array stored as is.
    //  *
    //  * It's convenient to use this together with `domainObject.encode()`.
    //  */
    // setBytes(key: string, value: Uint8Array): void {
    //   //storage_write(key.lengthUTF8 - 1, key.toUTF8(), value.byteLength, value.dataStart, 0);
    // }
  
    // /**
    //  * Get byte array stored under given key. Key is encoded as UTF-8 strings.
    //  * Byte array stored as is.
    //  *
    //  * It's convenient to use this together with `DomainObject.decode()`.
    //  */
    // getBytes(key: string): Uint8Array {
    //   return this._internalReadBytes(DATA_TYPE_STORAGE, key.lengthUTF8 - 1, key.toUTF8());
    // }
  
    // /**
    //  * Returns true if the given key is present in the storage.
    //  */
    // contains(key: string): bool {
    //   return storage_has_key(key.lengthUTF8 - 1, key.toUTF8());
    // }
  
    // @inline
    // hasKey(key: string): bool {
    //   return this.contains(key);
    // }
  
    // delete(key: string): void {
    //   storage_remove(key.lengthUTF8 - 1, key.toUTF8());
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
  
    // /**
    //  * Stores given generic value under the key. Key is encoded as UTF-8 strings.
    //  * Supported types: bool, integer, string and data objects defined in model.ts.
    //  *
    //  * @param key A key to use for storage.
    //  * @param value A value to store.
    //  */
    // set<T>(key: string, value: T): void {
    //   if (isString<T>()) {
    //     this.setString(key, value);
    //   } else if (isInteger<T>()) {
    //     this.setString(key, value.toString());
    //   } else {
    //     this.setBytes(key, value.encode());
    //   }
    // }
  
    // /**
    //  * Gets given generic value stored under the key. Key is encoded as UTF-8 strings.
    //  * Supported types: bool, integer, string and data objects defined in model.ts.
    //  *
    //  * @param key A key to read from storage.
    //  * @param defaultValue The default value if the key is not available
    //  * @returns A value of type T stored under the given key.
    //  */
    // get<T>(key: string, defaultValue: T = null): T {
    //   if (isString<T>() || isInteger<T>()) {
    //     return near.parseFromString<T>(this.getString(key), defaultValue);
    //   } else {
    //     return near.parseFromBytes<T>(this.getBytes(key), defaultValue);
    //   }
    // }
  
    // /**
    //  * @hidden
    //  * Reads given params into the internal scratch buffer and returns length.
    //  */
    // private _internalBufferRead(dataType: DataTypeIndex, keyLen: usize, key: usize): usize {
    //   for (let i = 0; i < 2; ++i) {
    //     let len = data_read(
    //       dataType,
    //       keyLen,
    //       key,
    //       this._scratchBuf.byteLength,
    //       this._scratchBuf.dataStart,
    //     );
    //     if (len <= <usize>(this._scratchBuf.byteLength)) {
    //       return len;
    //     }
    //     this._scratchBuf = new Uint8Array(len);
    //   }
    //   assert(false, "Internal scratch buffer was resized more than once");
    //   return 0;
    // }
  
    // /**
    //  * @hidden
    //  * Reads a string for the given params.
    //  */
    // _internalReadString(dataType: DataTypeIndex, keyLen: usize, key: usize): string {
    //   let len = this._internalBufferRead(dataType, keyLen, key);
    //   if (len == 0) {
    //     return null;
    //   }
    //   return String.fromUTF8(this._scratchBuf.dataStart, len);
    // }
  
    // /**
    //  * @hidden
    //  * Reads bytes for the given params.
    //  */
    // _internalReadBytes(dataType: DataTypeIndex, keyLen: usize, key: usize): Uint8Array {
    //   let len = this._internalBufferRead(dataType, keyLen, key);
    //   if (len == 0) {
    //     return null;
    //   }
    //   let res = new Uint8Array(len);
    //   memory.copy(res.dataStart, this._scratchBuf.dataStart, len);
    //   return res;
    // }

    /**
     * @hidden
     * Internal method to fetch list of keys from the given iterator up the limit.
     */
    // private _fetchIter(iterId: u32, limit: i32 = -1): string[] {
    //   let result: string[] = new Array<string>();
    //   while (limit-- != 0) {
    //     let key = this._internalReadString(DATA_TYPE_STORAGE_ITER, 0, iterId);
    //     if (key != null) {
    //       result.push(key);
    //     }
    //     if (!storage_iter_next(iterId)) {
    //       break;
    //     }
    //   }
    //   return result;
    // }
  }