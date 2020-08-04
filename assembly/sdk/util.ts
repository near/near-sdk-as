import { env } from "./env";

export namespace util {
  /**
   * Convert a given string into a Uint8Array encoded as UTF-8.
   * @param s data to encode
   */
  export function stringToBytes(s: string): Uint8Array {
    let len = String.UTF8.byteLength(s, true) - 1;
    let bytes = new Uint8Array(len);
    memory.copy(bytes.dataStart, toUTF8(s), len);
    return bytes;
  }

  /**
   * Decode an UTF-8 encoded Uint8Array into a string.
   * @param bytes array to decode
   */
  export function bytesToString(bytes: Uint8Array | null): string | null {
    if (bytes == null) {
      return null;
    }
    return String.UTF8.decode(uint8ArrayToBuffer(bytes), true);
  }

  /**
   * Calculates the byte length of the specified UTF-8 string, which can optionally be null terminated.
   * @param str data
   * @param nullTerminated
   */
  export function UTF8Length(
    str: string,
    nullTerminated: boolean = false
  ): usize {
    return String.UTF8.byteLength(str, nullTerminated);
  }

  /**
   * Parses the given bytes array to return a value of the given generic type.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * @param bytes Bytes to parse. Bytes must be not null.
   * @returns A parsed value of type T.
   */
  export function parseFromBytes<T>(bytes: Uint8Array): T {
    return decode<T>(bytes);
  }

  /**
   * Parses the given string to return a value of the given generic type.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * @param s String to parse. Must be not null.
   * @returns A parsed value of type T.
   */
  export function parseFromString<T>(s: string): T {
    if (isString<T>()) {
      //@ts-ignore
      return s;
    } else if (isInteger<T>()) {
      if (isBoolean<T>()) {
        //@ts-ignore
        return <T>(s == "true");
      } else if (isSigned<T>()) {
        //@ts-ignore
        return <T>I64.parseInt(s);
      } else {
        //@ts-ignore
        return <T>U64.parseInt(s);
      }
    } else {
      //@ts-ignore v will have decode method
      return decode<T>(stringToBytes(s));
    }
  }

  /**
   * @package
   * Reads contents of a register into a Uint8Array.
   * Note: this is a low level function and should be used directly only rarely from client code.
   *
   * @param register_id Id of register to read from
   */
  export function read_register(register_id: u64): Uint8Array {
    const value_len = env.register_len(register_id);
    const value = new Uint8Array(value_len as i32);
    env.read_register(0, value.dataStart);
    return value;
  }

  export function read_register_string(register_id: u64): string {
    const res = util.bytesToString(util.read_register(register_id));
    return res != null ? <string>res : "";
  }

  /**
   * @package
   * This method is a simple string validation of accountId's
   *
   * @param accountId Id of Account
   */
  export function isValidAccountID(accountId: string): boolean {
    const length: u64 = accountId ? accountId.length : 0;
    if (
      length < 2 ||
      length > 64 ||
      accountId.includes("@") ||
      accountId.substring(0, 1).includes("-") ||
      accountId.substring(0, 1).includes(".")
    ) {
      return false;
    }
    return !!accountId;
  }

  // Private helpers
  function toUTF8(str: string, nullTerminated: boolean = false): usize {
    return changetype<usize>(String.UTF8.encode(str, nullTerminated));
  }

  function uint8ArrayToBuffer(array: Uint8Array): ArrayBuffer {
    return array.buffer.slice(
      array.byteOffset,
      array.byteLength + array.byteOffset
    );
  }

  /**
   * Unsafe function that alocates a new type T with no initialization.
   */
  export function allocate<T>(): T {
    return changetype<T>(__alloc(offsetof<T>(), idof<T>()));
  }
}
