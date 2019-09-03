import { runtime_api } from './runtime_api';
import { util } from "./util";

export namespace logging {
  /**
  * Log a string message.
  */
  export function log(msg: string): void {
    let msg_encoded = util.stringToBytes(msg);
    runtime_api.log_utf8(msg_encoded.byteLength, msg_encoded.dataStart);
  }
}
