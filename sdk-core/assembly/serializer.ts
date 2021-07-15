import { BorshSerializer, BorshDeserializer } from "@serial-as/borsh";
import { parse, stringify} from "@serial-as/json";

export abstract class Serializer {
  abstract encode<T>(value: T): Uint8Array;
  abstract decode<T>(encoded: Uint8Array): T;
}

export class BorshSerial extends Serializer {
  // encoder: BorshSerializer = 

  encode<T>(value: T): Uint8Array{
    let encoder = new BorshSerializer();
    encoder.encode(value);
    let encoded = encoder.get_encoded_object();
    return Uint8Array.wrap(encoded);
  }

  decode<T>(value: Uint8Array): T {
    return (new BorshDeserializer(value.buffer)).decode<T>();
    // return this.serial.decode<T>(value.buffer);
  }
}

export class JSONSerial extends Serializer {

  encode<T>(value: T): Uint8Array {
    return Uint8Array.wrap(String.UTF8.encode(stringify<T>(value)));
  }

  decode<T>(value: Uint8Array): T {
    return parse<T, Uint8Array>(value);
  }
}