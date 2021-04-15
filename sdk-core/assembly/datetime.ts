import { env } from "./env";
import { PlainDateTime } from "assemblyscript-temporal";

export namespace datetime {
    /**
   * Current block date time. Returns PlainDateTime object initializes with current 
   * block's timestamp
   */
  export function block_datetime(): PlainDateTime {
    return getDateTimeFromEpoch(env.block_timestamp());
  }

  function getDateTimeFromEpoch(epochNanoseconds: u64): PlainDateTime {
    const quotient = epochNanoseconds / 1_000_000;
    const remainder = epochNanoseconds % 1_000_000;
    let epochMilliseconds = +quotient;
    let nanos = +remainder;
    if (nanos < 0) {
      nanos += 1_000_000;
      epochMilliseconds -= 1;
    }
    const microsecond = i32((nanos / 1_000) % 1_000);
    const nanosecond = i32(nanos % 1_000);
    
    const item = new Date(epochMilliseconds);
    const year = item.getUTCFullYear();
    const month = item.getUTCMonth() + 1;
    const day = item.getUTCDate();
    const hour = item.getUTCHours();
    const minute = item.getUTCMinutes();
    const second = item.getUTCSeconds();
    const millisecond = item.getUTCMilliseconds();
    
    return new PlainDateTime(
      year,
      month,
      day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
      nanosecond
    );
  }
}
