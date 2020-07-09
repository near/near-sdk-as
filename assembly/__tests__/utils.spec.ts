import { math, VMContext, RNG } from "..";

function test(i: u32): void {
  expect(<f64>math.binaryLog(i)).toBe(Math.floor(Math.log2(i)));
}

function isOdd(rng: RNG<u64>): bool {
  return rng.next() % 2 == 1;
}

describe("test integer log_2", () => {
  it("binary log", () => {
    for (let i: u32 = 1; i < 100_000_000; ) {
      test(i);
      i = i + 1;
      i *= 2;
    }
  });
});
describe("RNG", () => {
  it("coin flip should be 50/50", () => {
    VMContext.setPrepaid_gas(8446744073709552000);
    let rng = new RNG<u64>(10000, 10_000);
    let count: u32 = 0;
    for (let i: u32 = 0; i < 10_000; i++) {
      count += <u32>isOdd(rng);
    }
    expect(count).toBeGreaterThan(4900);
    expect(count).toBeLessThan(5100);
  });
});
