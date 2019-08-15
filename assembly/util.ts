export namespace util {

  export function stringToBytes(s: string): Uint8Array {
    let len = String.UTF8.byteLength(s, true) - 1;
    let bytes = new Uint8Array(len);
    const utf8 = String.UTF8.encode(s, true);
    memory.copy(bytes.dataStart, this.toUTF8(s), len);
    return bytes;
  }

  export function bytesToString(bytes: Uint8Array): string {
    if (bytes == null) {
      return "";
    }
    return String.UTF8.decode(bytes.buffer, true)
  }

  export function UTF8Length(str: string, nullTerminated: boolean = false): usize {
    return String.UTF8.byteLength(str, nullTerminated);
  }

  export function toUTF8(str: string, nullTerminated: boolean = false): usize {
    return changetype<usize>(String.UTF8.encode(str, nullTerminated));
  }

  /**
  * Parses the given bytes array to return a value of the given generic type.
  * Supported types: bool, integer, string and data objects defined in model.ts.
  *
  * @param bytes Bytes to parse.
  * @param defaultValue The default value if the bytes are null
  * @returns A parsed value of type T.
  */
  export function parseFromBytes<T>(bytes: Uint8Array, defaultValue: T = null): T {
    if (bytes == null) {
      return defaultValue;
    }
    if (isString<T>() || isInteger<T>()) {
      return parseFromString<T>(bytesToString(bytes), defaultValue);
    } else {
      let v = instantiate<T>();
      return v.decode(bytes);
    }
  }

  /**
  * Parses the given string to return a value of the given generic type.
  * Supported types: bool, integer, string and data objects defined in model.ts.
  *
  * @param s String to parse.
  * @param defaultValue The default value if the string is null
  * @returns A parsed value of type T.
  */
  export function parseFromString<T>(s: string, defaultValue: T = null): T {
    if (s == null) {
      return defaultValue;
    }
    if (isString<T>()) {
      return s;
    } else if (isInteger<T>()) {
      if (defaultValue instanceof bool) {
        return <T>(s == "true");
      } else if (isSigned<T>()) {
        return <T>I64.parseInt(s);
      } else {
        return <T>U64.parseInt(s);
      }
    } else {
      let v = instantiate<T>();
      return v.decode(stringToBytes(s));
    }
  }
}
