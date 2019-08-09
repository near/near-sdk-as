//tenporary hack to work around  import { storage, near, base64 } from "./near in intermediate main.near.ts files. It doesn't look like this is actually used
export namespace base64 {}
export namespace storage {}

export namespace near {

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


