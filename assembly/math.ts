import { runtime_api } from './runtime_api';
import { util } from "./util";
import { logging } from "./logging";
import { storage } from "./storage";

export namespace math {

  /**
  * Hash a given Uint8Array. Returns hash as 32-bit integer.
  */
  export function hash32Bytes(data: Uint8Array): u32 {
    runtime_api.sha256(data.byteLength, data.dataStart, 0);
    const registerContents = new Uint8Array((i32)(runtime_api.register_len(0)));
    runtime_api.read_register(0, registerContents.dataStart);
    return _uint8ArrayToU32(registerContents);
  }

  /**
  * Hash given data. Returns hash as 32-bit integer.
  * @param data data can be passed as anything with .toString (hashed as UTF-8 string).
  */
  export function hash32<T>(data: T): u32 {
    //@ts-ignore
    const dataAsBytes = util.stringToBytes(data.toString());
    runtime_api.sha256(dataAsBytes.byteLength, dataAsBytes.dataStart, 0);
    const registerContents = new Uint8Array((i32)(runtime_api.register_len(0)));
    runtime_api.read_register(0, registerContents.dataStart);
    return _uint8ArrayToU32(registerContents);
  }

  /**
   * Hash given data. Returns hash as 32-byte array.
   * @param data data can be passed as anything with .toString (hashed as UTF-8 string).
   */
  export function hash<T>(data: T): Uint8Array {
    //@ts-ignore
    const dataAsBytes = util.stringToBytes(data.toString());
    runtime_api.sha256(dataAsBytes.byteLength, dataAsBytes.dataStart, 0);
    const registerContents = new Uint8Array(runtime_api.register_len(0) as i32);
    runtime_api.read_register(0, registerContents.dataStart);
    return registerContents;
  }

  function _uint8ArrayToU32(data: Uint8Array): u32 {
    assert(data != null && data.length >= 4, "Cannot convert input Uint8Array to u32");
    return (
      (0xff & data[0]) << 24  |
      (0xff & data[1]) << 16  |
      (0xff & data[2]) << 8   |
      (0xff & data[3]) << 0
    );
  }

  const _LAST_RANDOM_VALUE_KEY = "lr";
  const _RANDOM_BUFFER_LENGTH = 32;
  /**
   * Returns random byte buffer of given length.
   */
  export function randomBuffer(len: u32): Uint8Array {
      let result = new Uint8Array(len);
      let currentRandomBufferIndex = -1;
      let randomBuffer: Uint8Array | null = null;
      const lenAsI32 = len as i32;
      for (let i = 0; i < lenAsI32; i++) {
        if (randomBuffer == null || currentRandomBufferIndex >= randomBuffer.length) {
          randomBuffer = getRandomBuffer();
          currentRandomBufferIndex = 0;
        }

        result[i] = randomBuffer![currentRandomBufferIndex];
        currentRandomBufferIndex++;
      }

      return result;
  }

  /**
  * Returns random buffer.
  */
  export function getRandomBuffer(): Uint8Array {
    let resultValue : Uint8Array;
    if (storage.contains(_LAST_RANDOM_VALUE_KEY)) {
      resultValue = storage.getBytes(_LAST_RANDOM_VALUE_KEY)!;
    } else {
      resultValue = new Uint8Array(_RANDOM_BUFFER_LENGTH);
    }

    // add random seed to last random value
    const randomSeed = randomSeed();
    for (let i = 0; i < randomSeed.length && i < resultValue.length; i++) {
      resultValue[i] = resultValue[i] + randomSeed[i];
    }

    runtime_api.sha256(resultValue.byteLength, resultValue.dataStart, 0);
    const hashedBytes = new Uint8Array(runtime_api.register_len(0) as i32);
    runtime_api.read_register(0, hashedBytes.dataStart);

    storage.setBytes(_LAST_RANDOM_VALUE_KEY, hashedBytes);
    return hashedBytes;
  }

  /**
  * Returns a random seed.
  */
  export function randomSeed(): Uint8Array {
    runtime_api.random_seed(0);
    const returnValue = new Uint8Array(runtime_api.register_len(0) as i32);
    runtime_api.read_register(0, returnValue.dataStart);
    return returnValue;
  }
}
