import { BorshSerializer, BorshDeserializer } from "@serial-as/borsh";
import { parse, stringify} from "@serial-as/json";

export abstract class Serializer {
  abstract ser<T>(value: T): Uint8Array;
  abstract deser<T>(encoded: Uint8Array): T;
}

export class BorshSerial extends Serializer {

  ser<T>(value: T): Uint8Array {
    let encoded = BorshSerializer.encode(value);
    return Uint8Array.wrap(encoded);
  }

  deser<T>(value: Uint8Array): T {
    return BorshDeserializer.decode<T>(value.buffer);
  }
}

/**
 * Class for serializing data with JSON.
 * Types are serialized according to the JSON Spec with the exception of strings.
 * Since strings can be directly encoded into UTF8 there is no need to add `"`"
 */
export class JSONSerial extends Serializer {

  ser<T>(value: T): Uint8Array {
    let str: string;
    if (isString<T>()){
      // @ts-ignore
      str = value;
    } else {
      str = stringify(value);
    }
    return Uint8Array.wrap(String.UTF8.encode(str));
  }

  deser<T>(value: Uint8Array): T {
    const str = String.UTF8.decode(value.buffer);
    if (isString<T>()) {
      // @ts-ignore
      return str;
    }
    return parse<T, string>(str);
  }
}