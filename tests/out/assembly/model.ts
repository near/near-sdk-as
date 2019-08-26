import { storage, near, base64 } from "near-runtime-ts";
import { JSONEncoder } from "assemblyscript-json";
import { JSONDecoder, ThrowingJSONHandler, DecoderState } from "assemblyscript-json";

export class __near_JSONHandler_TextMessage extends ThrowingJSONHandler {
  buffer: Uint8Array;
  decoder: JSONDecoder<__near_JSONHandler_TextMessage>;
  handledRoot: boolean = false;
  value: TextMessage;

  constructor(value_: TextMessage) {
    super();
    this.value = value_;
  }
      
  setString(name: string, value: string): void {
    if (name == "sender") {
      this.value.sender = <string>value;
      return;
     }
    if (name == "text") {
      this.value.text = <string>value;
      return;
     }
    if (name == "number") {
      this.value.number = U64.parseInt(value);
      return;
     }
    super.setString(name, value);
    }
  setNull(name: string): void {
    if (name == "sender") {
        this.value.sender = <string>null
         return;
      }
    if (name == "text") {
        this.value.text = <string>null
         return;
      }

    super.setNull(name);
  }

  pushObject(name: string): bool {
if (!this.handledRoot) {
      assert(name == null || name.length == 0);
      this.handledRoot = true;
      return true;
    } else {
      assert(name != null || name.length != 0);
    }

    return super.pushObject(name);
  }

  pushArray(name: string): bool {

    return super.pushArray(name);
  }
}

export class TextMessage {
  sender: string;
  text: string;
  number: u64 = 0;

  static decode(json: Uint8Array, state: DecoderState | null = null): TextMessage {
    let value = instantiate<TextMessage>(); // Allocate without constructor
    value.decode(json, state);
    return value;
  }

  decode(json: Uint8Array, state: DecoderState | null): TextMessage {
    let handler: __near_JSONHandler_TextMessage = new __near_JSONHandler_TextMessage(this);
    handler.buffer = json;
    let decoder = new JSONDecoder<__near_JSONHandler_TextMessage>(handler);
    handler.decoder = decoder;
    decoder.deserialize(json, state);
    return this;
  }

  encode(_encoder: JSONEncoder | null = null, name: string | null = ""): JSONEncoder {
    let encoder = (_encoder != null ? _encoder : new JSONEncoder())!;
    encoder.pushObject(name);
    encode<string>(encoder, this.sender, "sender");
    encode<string>(encoder, this.text, "text");
    encode<u64>(encoder, this.number, "number");
    encoder.popObject();
    return encoder
  }

  serialize(): Uint8Array {
    return this.encode().serialize();
  }

  toJSON(): string {
    return this.encode().toString();
  }
}