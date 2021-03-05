import { env } from "./env";
import { util } from "./util";
import { storage } from "./storage";

export namespace math {
  /**
   * Hash a given Uint8Array. Returns hash as 32-bit integer.
   */
  export function hash32Bytes(data: Uint8Array): u32 {
    return _uint8ArrayToU32(sha256(data));
  }

  /**
   * Hash given data. Returns hash as 32-bit integer.
   * @param data data can be passed as anything with .toString (hashed as UTF-8 string).
   */
  export function hash32<T>(data: T): u32 {
    return _uint8ArrayToU32(hash<T>(data));
  }

  /**
   * Hash given data. Returns hash as 32-byte array.
   * @param data data can be passed as anything with .toString (hashed as UTF-8 string).
   */
  export function hash<T>(data: T): Uint8Array {
    // @ts-ignore
    const dataAsBytes = util.stringToBytes(data.toString());
    return sha256(dataAsBytes);
  }

  function _uint8ArrayToU32(data: Uint8Array): u32 {
    assert(
      data != null && data.length >= 4,
      "Cannot convert input Uint8Array to u32"
    );
    return (
      ((0xff & data[0]) << 24) |
      ((0xff & data[1]) << 16) |
      ((0xff & data[2]) << 8) |
      ((0xff & data[3]) << 0)
    );
  }
  // @ts-ignore: decorator
  @lazy const _BLOCK_INDEX_SEED_AT_KEY = "block_index_seeded_at";
  // @ts-ignore: decorator
  @lazy const _RANDOM_BUFFER_KEY = "random_buffer_key";
  // @ts-ignore: decorator
  @lazy const _RANDOM_BUFFER_INDEX_KEY = "random_buffer_index_key";

  export function randomBuffer(
    len: u32,
    buffer: Uint8Array | null = null
  ): Uint8Array {
    let block_index_seeded_at: u64;
    let random_buffer: Uint8Array;
    let random_buffer_index_key: i32;
    let len_i32 = buffer != null ? buffer.length : (len as i32);

    // Reseed if it was not seeded at all, or was seeded more than one block ago.
    if (
      !storage.contains(_BLOCK_INDEX_SEED_AT_KEY) ||
      storage.getSome<i32>(_BLOCK_INDEX_SEED_AT_KEY) != env.block_index()
    ) {
      block_index_seeded_at = env.block_index() as i32;
      storage.set<u64>(_BLOCK_INDEX_SEED_AT_KEY, block_index_seeded_at);
      random_buffer = randomSeed();
      storage.setBytes(_RANDOM_BUFFER_KEY, random_buffer);
      random_buffer_index_key = 0;
      storage.set<i32>(_RANDOM_BUFFER_INDEX_KEY, random_buffer_index_key);
    } else {
      random_buffer = storage.getBytes(_RANDOM_BUFFER_KEY)!;
      random_buffer_index_key = storage.getPrimitive<i32>(
        _RANDOM_BUFFER_INDEX_KEY,
        0
      );
    }

    let result: Uint8Array =
      buffer == null || buffer.length < <i32>len ? new Uint8Array(len) : buffer;
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
    env.sha256(inp.byteLength, inp.dataStart, 0);
    return util.read_register(0);
  }

  export function keccak256(inp: Uint8Array): Uint8Array {
    env.keccak256(inp.byteLength, inp.dataStart, 0);
    const hashedBytes = new Uint8Array(env.register_len(0) as i32);
    env.read_register(0, hashedBytes.dataStart);
    return hashedBytes;
  }

  export function keccak512(inp: Uint8Array): Uint8Array {
    env.keccak512(inp.byteLength, inp.dataStart, 0);
    const hashedBytes = new Uint8Array(env.register_len(0) as i32);
    env.read_register(0, hashedBytes.dataStart);
    return hashedBytes;
  }
  /**
   * Returns a random seed.
   */
  export function randomSeed(): Uint8Array {
    env.random_seed(0);
    return util.read_register(0);
  }

  /** Log_2 using interger arthimetic */
  export function binaryLog(bits: u32): u32 {
    var log: u32 = 0;
    if ((bits & 0xffff0000) != 0) {
      bits >>>= 16;
      log = 16;
    }
    if (bits >= 256) {
      bits >>>= 8;
      log += 8;
    }
    if (bits >= 16) {
      bits >>>= 4;
      log += 4;
    }
    if (bits >= 4) {
      bits >>>= 2;
      log += 2;
    }
    return log + (bits >>> 1);
  }
}
/**
 * Random Number Generator
 */
export class RNG<T> {
  private buffer: Uint8Array;
  private index: i32 = 0;
  private tripsAround: u32 = 0;
  private _last: T;

  constructor(len: u32, public max: u32 = 10_000) {
    let real_len = len * sizeof<T>();
    this.buffer = math.randomBuffer(real_len);
    this._last = this.get(0);
  }

  next(): T {
    if (this.index * sizeof<T>() >= this.buffer.length) {
      this.tripsAround++;
      if (this.tripsAround == sizeof<T>()) {
        math.randomBuffer(this.buffer.length, this.buffer);
        this.index = 0;
        this.tripsAround = 0;
      } else {
        this.index = this.tripsAround;
      }
    }
    const index = this.index;
    this.index += sizeof<T>();
    this._last = this.get(index);
    return this._last;
  }
  
  private get(index: usize): T {
    // @ts-ignore
    return <T>(load<T>(this.buffer.dataStart + index) % <T>(this.max));
  }

  last(): T {
    return this._last;
  }
}
