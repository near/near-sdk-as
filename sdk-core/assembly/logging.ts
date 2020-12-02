import { env } from "./env";
import { util } from "./util";

export namespace logging {
  /**
   * Log a string message. If T has `toString` it is called,
   * otherwise T must be serializable.
   *
   * Logs are stored as an array of strings
   *
   * ```ts
   * logging.log("log message")
   * ```
   *
   * @param msg Text to be added to the log
   */
  export function log<T = string>(msg: T): void {
    let msg_encoded: Uint8Array;
    // @ts-ignore
    if (isString<T>() || isDefined(msg.toString)) {
      // @ts-ignore
      let message = msg.toString();
      msg_encoded = util.stringToBytes(message);
    } else {
      msg_encoded = encode<T>(msg);
    }
    env.log_utf8(msg_encoded.byteLength, msg_encoded.dataStart);
  }
}
