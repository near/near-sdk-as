import { u128 } from "..";

// TODO: findout why the commented lines below fail
function mul(a: u128, b: u128): u128 {
  return u128.mul(a,b);
}

describe("big num division", () => {

  it("should handle division", () => {
    const res = 
    // u128.mul(
      mul(u128.from('5000000000000000000000000000'), u128.from(95));
    // );
  
    const div100 = u128.div(res, u128.from(100));
    expect(div100).toBe(u128.from("4750000000000000000000000000"));
   
    const _div10 = u128.div10(res);
    const _div100 = u128.div10(_div10);
    expect(_div100).toBe(div100);

    const amount = u128.from("100");
    const result: u128 = u128.div(
      u128.mul(amount, amount),
      amount
    );
    expect(result).toStrictEqual(amount);
  
  });


});