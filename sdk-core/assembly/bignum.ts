import { u256Safe, u128Safe} from "as-bignum";

// @nearBindgen
// export class u128 extends u128Safe {
//   @inline static get Zero(): u128 { return new u128(); }
//   @inline static get One():  u128 { return new u128(1); }
//   @inline static get Min():  u128 { return new u128(); }
//   @inline static get Max():  u128 { return new u128(-1, -1); }

  
//   @inline
//   static fromString(value: string, radix: i32 = 10): u128 {
//     return changetype<u128>(u128Safe.fromString(value, radix));
//   }

//   // @inline
//   // static fromI256(value: I256): u128 {
//   //   return u128Safe.fromI256(value);
//   // }

//   // @inline
//   // static fromI256Safe(value: i256Safe): u128 {
//   //   return u128Safe.fromI256(value);
//   // }

//   // @inline
//   // static fromU256(value: u256): u128 {
//   //   return u128Safe.fromU256(value);
//   // }

//   // @inline
//   // static fromI128(value: I128): u128 {
//   //   return u128Safe.fromI128(value);
//   // }

//   // @inline
//   // static fromI128Safe(value: i128Safe): u128 {
//   //   return u128Safe.fromI128(value);
//   // }

//   @inline
//   static fromU128(value: u128): u128 {
//     return changetype<u128>(u128Safe.fromU128(value));
//   }

//   @inline
//   static fromI64(value: i64): u128 {
//     return changetype<u128>(u128Safe.fromI64(value));
//   }

//   @inline
//   static fromU64(value: u64): u128 {
//     return changetype<u128>(u128Safe.fromU64(value));
//   }

//   @inline
//   static fromF64(value: f64): u128 {
//     return changetype<u128>(u128Safe.fromF64(value));
//   }

//   @inline
//   static fromF32(value: f32): u128 {
//     return changetype<u128>(u128Safe.fromF32(value));
//   }

//   @inline
//   static fromI32(value: i32): u128 {
//     return changetype<u128>(u128Safe.fromI32(value));
//   }

//   @inline
//   static fromU32(value: u32): u128 {
//     return changetype<u128>(u128Safe.fromU32(value));
//   }

//   @inline
//   static fromBool(value: bool): u128 {
//     return changetype<u128>(u128Safe.fromBool(value));
//   }

//   @inline
//   static fromBits(lo1: u32, lo2: u32, hi1: u32, hi2: u32): u128 {
//     return changetype<u128>(u128Safe.fromBits(lo1, lo2, hi1, hi2));
//   }

//   @inline
//   static fromBytes<T>(array: T, bigEndian: bool = false): u128 {
//     return changetype<u128>(u128Safe.fromBytes<T>(array, bigEndian));
//   }

//   @inline
//   static fromBytesLE(array: u8[]): u128 {
//     return changetype<u128>(u128Safe.fromBytesLE(array));
//   }

//   @inline
//   static fromBytesBE(array: u8[]): u128 {
//     return changetype<u128>(u128Safe.fromBytesBE(array));
//   }

//   @inline
//   static fromUint8ArrayLE(array: Uint8Array): u128 {
//     return changetype<u128>(u128Safe.fromUint8ArrayLE(array));
//   }

//   @inline
//   static fromUint8ArrayBE(array: Uint8Array): u128 {
//     return changetype<u128>(u128Safe.fromUint8ArrayBE(array));
//   }

//   /**
//    * Create 128-bit unsigned integer from generic type T
//    * @param  value
//    * @returns 128-bit unsigned integer
//    */
//   @inline
//   static from<T>(value: T): u128 {
//     return changetype<u128>(u128Safe.from<T>(value));
//   }

//   @inline @operator('|')
//   static or(a: u128, b: u128): u128 {
//     return changetype<u128>(u128Safe.or(a, b));
//   }

//   @inline @operator('^')
//   static xor(a: u128, b: u128): u128 {
//     return changetype<u128>(u128Safe.xor(a, b));
//   }

//   @inline @operator('&')
//   static and(a: u128, b: u128): u128 {
//     return changetype<u128>(u128Safe.and(a, b));
//   }

//   @inline @operator('<<')
//   static shl(value: u128, shift: i32): u128 {
//     return changetype<u128>(u128Safe.shl(value, shift));
//   }

//   @inline @operator('>>')
//   static shr(value: u128, shift: i32): u128 {
//    return changetype<u128>(u128Safe.shr(value, shift));
//   }

//   @inline @operator('>>>')
//   static shr_u(value: u128, shift: i32): u128 {
//     return u128.shr(value, shift);
//   }

//   @inline
//   static rotl(value: u128, shift: i32): u128 {
//     return changetype<u128>(u128Safe.rotl(value, shift));
//   }

//   @inline
//   static rotr(value: u128, shift: i32): u128 {
//     return changetype<u128>(u128Safe.rotr(value, shift));
//   }


//   @operator('+')
//   static add(a: u128, b: u128): u128 {
//     return changetype<u128>(u128Safe.add(a, b));
//   }

//   @operator('-')
//   static sub(a: u128, b: u128): u128 {
//     return changetype<u128>(u128Safe.sub(a, b));
//   }

//   @operator('*')
//   static mul(a: u128, b: u128): u128 {
//     return changetype<u128>(u128Safe.mul(a, b));
//   }

//   @inline @operator('/')
//   static div(a: u128, b: u128): u128 {
//     return changetype<u128>(u128Safe.div(a, b));
//   }

//   @inline @operator('**')
//   static pow(base: u128, exponent: i32): u128 {
//     return changetype<u128>(u128Safe.pow(base, exponent));
//   }

//   @inline @operator('%')
//   static rem(a: u128, b: u128): u128 {
//     return changetype<u128>(u128Safe.rem(a, b));
//   }

//   @inline
//   static div10(value: u128): u128 {
//     return changetype<u128>(u128Safe.div10(value));
//   }

//   @inline
//   static rem10(value: u128): u128 {
//     return changetype<u128>(u128Safe.rem10(value));
//   }

//   // compute floor(sqrt(x))
//   @inline
//   static sqrt(value: u128): u128 {
//     return changetype<u128>(u128Safe.sqrt(value));
//   }

//   @inline
//   static muldiv(number: u128, numerator: u128, denominator: u128): u128 {
//     // TODO: Need implement overflow checking
//     return changetype<u128>(u128Safe.muldiv(number, numerator, denominator));
//   }

//   encode<__T>(encoder: __T): void {
//     // @ts-ignore
//     encoder.encode_string(this.toString())
//     // encoder.encode_field<u64>("hi", this.hi);
//     // // @ts-ignore
//     // encoder.encode_field<u64>("lo", this.lo);
//   }
//   decode<__T>(decoder: __T): void {
//     // @ts-ignore
//     this = u128.from(decoder.decode_string());
//     // this.hi = decoder.decode_field<u64>("hi");
//     // // @ts-ignore
//     // this.lo = decoder.decode_field<u64>("lo");
//   }
// }

// @nearBindgen
// export class u256 extends u256Safe {
//   @inline static get Zero(): u256 { return new u256(); }
//   @inline static get One():  u256 { return new u256(1); }
//   @inline static get Min():  u256 { return new u256(); }
//   @inline static get Max():  u256 { return new u256(-1, -1); }
// }


export {u256Safe as u256, u128Safe as u128};