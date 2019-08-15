import { runtime_api } from './runtime_api';
import { util } from "./util";
import { logging } from "./logging";

export namespace math {

  /**
  * Hash a given Uint8Array. Returns hash as 32-bit integer.
  */
  export function hash32Bytes(data: Uint8Array): u32 {
    runtime_api.sha256(data.buffer.byteLength, data.dataStart, 0);
    const registerContents = new Uint8Array((i32)(runtime_api.register_len(0)));
    runtime_api.read_register(0, registerContents.dataStart);
    return this._uint8ArrayToU32(registerContents);
  }

  /**
  * Hash given data. Returns hash as 32-bit integer.
  * @param data data can be passed as anything with .toString (hashed as UTF-8 string).
  */
  export function hash32<T>(data: T): u32 {
    const dataAsBytes = util.stringToBytes(data.toString());
    runtime_api.sha256(dataAsBytes.buffer.byteLength, dataAsBytes.dataStart, 0);
    const registerContents = new Uint8Array((i32)(runtime_api.register_len(0)));
    runtime_api.read_register(0, registerContents.dataStart);
    return this._uint8ArrayToU32(registerContents);
  }

  /**
   * Hash given data. Returns hash as 32-byte array.
   * @param data data can be passed as anything with .toString (hashed as UTF-8 string).
   */
  export function hash<T>(data: T): Uint8Array {
    const dataAsBytes = util.stringToBytes(data.toString());
    runtime_api.sha256(dataAsBytes.buffer.byteLength, dataAsBytes.dataStart, 0);
    const registerContents = new Uint8Array(runtime_api.register_len(0) as i32);
    runtime_api.read_register(0, registerContents.dataStart);
    return registerContents;
  }

  function _uint8ArrayToU32(data: Uint8Array): u32 {
    assert(data.buffer != null && data.length >= 4, "Cannot convert input Uint8Array to u32");
    return (
      (0xff & data[0]) << 24  |
      (0xff & data[1]) << 16  |
      (0xff & data[2]) << 8   |
      (0xff & data[3]) << 0
    );
  }

  // /**
  //  * Returns random byte buffer of given length.
  //  */
  // export function randomBuffer(len: u32): Uint8Array {
  //     // simple approach: random seed
  //     let result = new Uint8Array(len);
  //     _near_random_buf(len, result.dataStart);
  //     return result;
  // }


  //const _LAST_RANDOM_VALUE_KEY = "_lr";
  // /**
  // * Returns random 32-bit integer.
  // */
  // export function random32(): u32 {
  //   const lastValue = storage.contains(this._LAST_RANDOM_VALUE_KEY) ? storage.get<u32>(this._LAST_RANDOM_VALUE_KEY) : 0;
  //   runtime_api.random_seed(0);

  //   const registerLength = runtime_api.register_len(0) as i32;
  //   assert(registerLength >= 4, "Random seed is not long enough");
  //   const registerContents = new Uint8Array(runtime_api.register_len(0) as i32);
  //   runtime_api.read_register(0, registerContents.dataStart);
  //   return _uint8ArrayToU32(registerContents);
  // }
}
