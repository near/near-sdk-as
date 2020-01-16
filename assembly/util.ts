import { runtime_api } from "./runtime_api";

export namespace util {

  export function stringToBytes(s: string): Uint8Array {
    let len = String.UTF8.byteLength(s, true) - 1;
    let bytes = new Uint8Array(len);
    memory.copy(bytes.dataStart, toUTF8(s), len);
    return bytes;
  }

  export function bytesToString(bytes: Uint8Array): string | null {
    if (bytes == null) {
      return null;
    }
    return String.UTF8.decode(uint8ArrayToBuffer(bytes), true)
  }

  export function UTF8Length(str: string, nullTerminated: boolean = false): usize {
    return String.UTF8.byteLength(str, nullTerminated);
  }

  export function toUTF8(str: string, nullTerminated: boolean = false): usize {
    return changetype<usize>(String.UTF8.encode(str, nullTerminated));
  }

  function uint8ArrayToBuffer(array: Uint8Array): ArrayBuffer {
    return array.buffer.slice(array.byteOffset, array.byteLength + array.byteOffset)
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
   * Reads contents of a register into a Uint8Array.
   * 
   * @param register_id Id of register to read from
   */
  export function read_register(register_id: u64): Uint8Array {
    const value_len = runtime_api.register_len(register_id);
    const value = new Uint8Array(value_len as i32);
    runtime_api.read_register(0, value.dataStart);
    return value;
  }
}