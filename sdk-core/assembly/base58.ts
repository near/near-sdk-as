export namespace base58 {
  /**
   * Encode Uint8Array as a base58 string.
   * @param bytes Byte array of type Uint8Array.
   */
  export function encode(source: Uint8Array): string {
    // Code converted from:
    // https://github.com/cryptocoinjs/base-x/blob/master/index.js
    const iFACTOR = 2; // TODO: Calculate precise value to avoid overallocating
    const ALPHABET =
      "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz";
    let BASE = ALPHABET.length;
    let LEADER = ALPHABET.charAt(0);

    // Skip & count leading zeroes.
    let zeroes = 0;
    let length = 0;
    let pbegin = 0;
    let pend = source.length;

    while (pbegin !== pend && source[pbegin] === 0) {
      pbegin++;
      zeroes++;
    }

    // Allocate enough space in big-endian base58 representation.
    let size = ((pend - pbegin) * iFACTOR + 1) >>> 0;
    let b58 = new Uint8Array(size);

    // Process the bytes.
    while (pbegin !== pend) {
      let carry = i32(source[pbegin]);

      // Apply "b58 = b58 * 256 + ch".
      let i = 0;
      for (
        let it = size - 1;
        (carry !== 0 || i < length) && it !== -1;
        it--, i++
      ) {
        carry += (256 * b58[it]) >>> 0;
        b58[it] = carry % BASE >>> 0;
        carry = (carry / BASE) >>> 0;
      }

      assert(carry == 0, "Non-zero carry");
      length = i;
      pbegin++;
    }

    // Skip leading zeroes in base58 result.
    let it = size - length;
    while (it !== size && b58[it] === 0) {
      it++;
    }

    // Translate the result into a string.
    let str = LEADER.repeat(zeroes);
    for (; it < size; ++it) str += ALPHABET.charAt(b58[it]);

    return str;
  }

  export function decode(string: string): Uint8Array {
    const buffer = decodeUnsafe(string);
    if (buffer) {
      return buffer;
    }
    throw new Error("Non-base58 character");
  }
}

function decodeUnsafe(source: string): Uint8Array {
  if (source.length === 0) {
    return new Uint8Array(0);
  }

  const ALPHABET = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz";
  const BASE = ALPHABET.length;
  const LEADER = ALPHABET.charAt(0);
  // const FACTOR = Math.log(BASE) / Math.log(256) // log(BASE) / log(256), rounded up
  const FACTOR = 1; // no floating point operations allowed so round up
  let BASE_MAP = new Uint8Array(256);

  for (let j = 0; j < BASE_MAP.length; j++) {
    BASE_MAP[j] = 255;
  }

  for (let i = 0; i < ALPHABET.length; i++) {
    let x = ALPHABET.charAt(i);
    let xc = x.charCodeAt(0);
    if (BASE_MAP[xc] !== 255) {
      throw new TypeError(x + " is ambiguous");
    }
    BASE_MAP[xc] = i;
    // log(BASE_MAP.subarray(xc - 1, xc + 2))
  }

  let psz = 0;
  // Skip leading spaces.
  while (source.charAt(psz) === " ") {
    psz++;
  }

  // Skip and count leading '1's.
  let length = 0;

  while (source.charAt(psz) === LEADER) {
    psz++;
  }

  // Allocate enough space in big-endian base256 representation.
  let size = i32((source.length - psz) * FACTOR + 1) >>> 0; // log(58) / log(256), rounded up.
  let b256 = new Uint8Array(size - 1);

  // Process the characters.
  while (source.charAt(psz)) {
    // Decode character
    let bmIdx = source.charCodeAt(psz);

    if (bmIdx < 0) break;
    let carry = i32(BASE_MAP[bmIdx]);

    // Invalid character
    if (carry === 255) {
      break;
    }
    let i = 0;
    for (
      let it = size - 2;
      (carry !== 0 || i < length) && it !== -1;
      it--, i++
    ) {
      carry += (BASE * b256[it]) >>> 0;
      b256[it] = carry % 256 >>> 0;
      carry = (carry / 256) >>> 0;
    }
    if (carry !== 0) {
      throw new Error("Non-zero carry");
    }
    length = i;
    psz++;
  }
  // Skip trailing spaces.
  while (source.charAt(psz) === " ") {
    psz++;
  }

  // Skip leading zeroes in b256.
  let i = 0;
  while (b256[i] === 0) {
    i++;
  }
  i--; // keep the leading zero since that marked ed25519 (won't work with secp256k1)

  return <Uint8Array>b256.slice(i);
}
