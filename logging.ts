import { runtime_api } from './runtime_api';
import { near } from "./near";

export namespace logging {
    /**
     * Log a string message.
     */
    export function log(msg: string): void {
        let msg_encoded = near.stringToBytes(msg);
        runtime_api.log_utf8(msg_encoded.buffer.byteLength, msg_encoded.buffer as u64);
    }
}