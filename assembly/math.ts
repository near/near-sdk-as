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
      (0xff & data[0]) << 24 |
      (0xff & data[1]) << 16 |
      (0xff & data[2]) << 8 |
      (0xff & data[3]) << 0
    );
  }


  const _BLOCK_INDEX_SEED_AT_KEY = "block_index_seeded_at";
  const _RANDOM_BUFFER_KEY = "random_buffer_key";
  const _RANDOM_BUFFER_INDEX_KEY = "random_buffer_index_key";

  export function randomBuffer(len: u32): Uint8Array {
    let block_index_seeded_at: u64;
    let random_buffer: Uint8Array;
    let random_buffer_index_key: i32;
    let len_i32 = len as i32;

    // Reseed if it was not seeded at all, or was seeded more than one block ago.
    if (!storage.contains(_BLOCK_INDEX_SEED_AT_KEY) || storage.getSome<i32>(_BLOCK_INDEX_SEED_AT_KEY) != runtime_api.block_index()) {
      block_index_seeded_at = runtime_api.block_index() as i32;
      storage.set<u64>(_BLOCK_INDEX_SEED_AT_KEY, block_index_seeded_at); 
      random_buffer = randomSeed();
      storage.setBytes(_RANDOM_BUFFER_KEY, random_buffer);
      random_buffer_index_key = 0;
      storage.set<i32>(_RANDOM_BUFFER_INDEX_KEY, random_buffer_index_key);
    } else {
      random_buffer = storage.getBytes(_RANDOM_BUFFER_KEY)!;
      random_buffer_index_key = storage.getPrimitive<i32>(_RANDOM_BUFFER_INDEX_KEY, 0);
    }

    let result: Uint8Array = new Uint8Array(len);
    for (let i = 0; i < len_i32; i++) {
      result[i] = random_buffer[random_buffer_index_key];
      if (random_buffer_index_key == random_buffer.length - 1) {
        random_buffer = sha256(random_buffer);
        storage.setBytes(_RANDOM_BUFFER_KEY, random_buffer);
        random_buffer_index_key = 0;
        storage.set<i32>(_RANDOM_BUFFER_INDEX_KEY, random_buffer_index_key);
      } else {
        random_buffer_index_key += 1;
      }
    }
    storage.set<i32>(_RANDOM_BUFFER_INDEX_KEY, random_buffer_index_key);
    return result;
  }

  export function sha256(inp: Uint8Array): Uint8Array {
    runtime_api.sha256(inp.byteLength, inp.dataStart, 0);
    const hashedBytes = new Uint8Array(runtime_api.register_len(0) as i32);
    runtime_api.read_register(0, hashedBytes.dataStart);
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
