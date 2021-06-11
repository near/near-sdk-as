import { u256Safe, u128Safe} from "as-bignum";

@nearBindgen
export class u128 extends u128Safe {
  @inline static get Zero(): u128 { return new u128(); }
  @inline static get One():  u128 { return new u128(1); }
  @inline static get Min():  u128 { return new u128(); }
  @inline static get Max():  u128 { return new u128(-1, -1); }

  encode<__T>(encoder: __T): void {
    // @ts-ignore
    encoder.encode_field<u64>>("hi", this.hi);
    // @ts-ignore
    encoder.encode_field<u64>>("lo", this.lo);
  }
  decode<__T>(decoder: __T): void {
    // @ts-ignore
    this.hi = decoder.decode_field<u64>("hi");
    // @ts-ignore
    this.lo = decoder.decode_field<u64>("lo");
  }
}

@nearBindgen
export class u256 extends u256Safe {
  @inline static get Zero(): u256 { return new u256(); }
  @inline static get One():  u256 { return new u256(1); }
  @inline static get Min():  u256 { return new u256(); }
  @inline static get Max():  u256 { return new u256(-1, -1); }
}
