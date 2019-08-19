import { storage, near, base64 } from "near-runtime-ts";
import { JSONEncoder } from "assemblyscript-json";
import { JSONDecoder, ThrowingJSONHandler, DecoderState } from "assemblyscript-json";
// Runtime functions
@external("env", "read_register")
declare function read_register(register_id: u64, ptr: u64): void;
@external("env", "register_len")
declare function register_len(register_id: u64): u64;

@external("env", "input")
declare function input(register_id: u64): void;
@external("env", "value_return")
declare function value_return(value_len: u64, value_ptr: u64): void;
@external("env", "panic")
declare function panic(): void;

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

@global
      export function __near_decode_TextMessage(
          buffer: Uint8Array, state: DecoderState | null, value: TextMessage | null = null):TextMessage {
        if (value == null) {
          value =  instantiate<TextMessage>(); // Allocate without constructor
        }
        let handler = new __near_JSONHandler_TextMessage(value!);
        handler.buffer = buffer;
        handler.decoder = new JSONDecoder<__near_JSONHandler_TextMessage>(handler);
        handler.decoder.deserialize(buffer, state);
        return value!;
      }

@global
        export function __near_encode_TextMessage(
            value: TextMessage,
            encoder: JSONEncoder): void {
if (value.sender != null) {
              encoder.setString("sender", value.sender);
            } else {
              encoder.setNull("sender");
            }
if (value.text != null) {
              encoder.setString("text", value.text);
            } else {
              encoder.setNull("text");
            }
encoder.setString("number", value.number.toString());
}
export class TextMessage {
  sender: string;
  text: string;
  number: u64;

  static decode(json: Uint8Array, state: DecoderState | null = null): TextMessage {
    let value = instantiate<TextMessage>(); // Allocate without constructor
    value.decode(json, state);
    return value;
  }

  decode(json: Uint8Array, state: DecoderState | null): TextMessage {
    __near_decode_TextMessage(json, state, this);
    return this;
  }

  private _encoder(encoder: JSONEncoder, name: string | null): JSONEncoder {
    encoder.pushObject(name);
    __near_encode_TextMessage(this, encoder);
    encoder.popObject();
    return encoder;
  }

  encode(_encoder: JSONEncoder | null = null, name: string | null = ""): JSONEncoder {
    let encoder = _encoder != null ? _encoder : new JSONEncoder();
    return this._encoder(encoder!, name);
  }

  serialize(): Uint8Array {
    return this.encode().serialize();
  }

  toString(): string {
    return this._encoder().toString();
  }
}