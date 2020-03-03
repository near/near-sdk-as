import { runtime_api } from './runtime_api';
import { util } from "./util";

export namespace logging {
  /**
  * Log a string message.
  */
  export function log<T = string>(msg: T): void {
    let msg_encoded: Uint8Array;
    if (isString<T>()) {
      //@ts-ignore
      let message = msg.toString();
      msg_encoded= util.stringToBytes(message);
    } else {
      msg_encoded = encode<T>(msg);
    }
    runtime_api.log_utf8(msg_encoded.byteLength, msg_encoded.dataStart);
  }
}
