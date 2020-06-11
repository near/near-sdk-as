import { math, Context, RNG } from ".."
 
function test(i: u32): void {
  expect(<f64>math.binaryLog(i)).toBe(Math.floor(Math.log2(i)));
}

// function _getRandomInt(max: i64): u64 {
//   return <u64>Math.floor(JSMath.random() * Math.floor(<f32>max));
// }

// function getRandomInt(max: u32): u32 {
//   let buffer = math.randomBuffer(4);
//   let res = load<u32>(changetype<usize>(buffer.buffer) + buffer.byteOffset);
//   // log(res % max);
//   __free(changetype<usize>(buffer));
//   return res % max;
// }

// const FACTOR: u32 = 10_000;

// const ETimes10e10: u32 = 27183;

// function lessThanE(): bool {
//   let low = getRandomInt(FACTOR);
//   let high = (FACTOR * FACTOR) / ETimes10e10;
//   return low < high;
// }
function isOdd(rng: RNG<u64> ): bool {
  return rng.next() % 2 == 1
}

describe("log_2", () => {
  it("binary log", () => {
    for (let i: u32 = 1; i < 100_000_000;) {
      test(i);
      i = i + 1;
      i *= 2;
    }
  });


  it("test 2", () => {
    // log((FACTOR * FACTOR) / ETimes10e10);
    Context.setPrepaid_gas(8446744073709552000);
    // log(context.prepaidGas);
    let rng = new RNG<u64>(10000, 10_000);
    let count: u32 = 0;
    // while(count < 32){
    //   log(rng.next());
    //   count++;
    // }
    for (let i: u32 = 0; i < 10_000; i++) {
      // if (i % 100 == 99) {
      //   let int: u64 = _getRandomInt(100_000_000_000_000) * 100_000_000_000_000_000_000;
      //   let str = int.toString();
      //   Context.setRandom_seed(str);
      // }
      count += <u32>isOdd(rng);
      // VM.restoreState();
    }
    expect(count).toBeGreaterThan(4900);
    expect(count).toBeLessThan(5100)
  });
});
