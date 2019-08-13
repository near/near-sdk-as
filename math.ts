import { runtime_api } from './runtime_api';
import { logging } from "./logging";

export namespace math {
    /**
     * Hash given data. Returns hash as 32-bit integer.
     * @param data data can be passed as either Uint8Array or anything with .toString (hashed as UTF-8 string).
     */
    export function hash32<T>(data: T): u32 {
        runtime_api.sha256(data.byteLength, data as u64, 0);
        const registerContents = new Uint8Array((i32)(runtime_api.register_len(0)));
        runtime_api.read_register(0, registerContents.buffer as u64);
        const result = this._int32toUInt8Array(registerContents);
        logging.log("register " + result.toString())
        return result;
    }

    function _int32toUInt8Array(data: Uint8Array): u32 {
        assert(data != null && data.length >= 4, "Cannot convert input Uint8Array to u32");
        return (
            (0xff & data[0]) << 24  |
            (0xff & data[1]) << 16  |
            (0xff & data[2]) << 8   |
            (0xff & data[3]) << 0
        ); 
    }
}