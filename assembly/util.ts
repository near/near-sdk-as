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
  export function parseFromBytes<T>(bytes: Uint8Array, defaultValue: T | null = null): T | null {
    if (bytes == null) {
      return defaultValue;
    }
    if (isString<T>() || isInteger<T>()) {
      return parseFromString<T>(bytesToString(bytes)!, defaultValue);
    } else {
      let v = instantiate<T>();
      //@ts-ignore v will have decode. Although second parameter is optional it causes compile error
      return v.decode(bytes, null);
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
  export function parseFromString<T>(s: string, defaultValue: T | null = null): T | null {
    if (s == null) {
      return defaultValue;
    }
    if (isString<T>()) {
      //@ts-ignore
      return s;
    } else if (isInteger<T>()) {
      if (defaultValue instanceof bool) {
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
      let v = instantiate<T>();
      //@ts-ignore v will have decode method
      return v.decode(stringToBytes(s));
    }
  }
}
