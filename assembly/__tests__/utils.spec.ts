import { math, VM, Context, base58, context } from ".."
import { lessThanE, RNG, SkipList } from '../runtime/collections/skiplist';
 
function test(i: u32): void {
  expect(<f64>math.binaryLog(i)).toBe(Math.floor(Math.log2(i)));
}

function _getRandomInt(max: i64): u64 {
  return <u64>Math.floor(JSMath.random() * Math.floor(<f32>max));
}

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
    log(context.prepaidGas);
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
      count += <u32>lessThanE(rng);
      // VM.restoreState();
    }
    log(count);
  });
});
let list: SkipList<string, string>;
describe("SkipList", () => {
  beforeEach(() => {
    list = new SkipList<string, string>();
  });
  it("can insert", () => {
    list.set("hello", "world");
    expect(list.get("hello")).toBe("world");
  });

  it("keys should be in order", () => {
    const times = 1_000
    let rng = new RNG<i32>(times);
    let keys = new Array<string>();
    for (let _i = 0; _i < times; _i++) {
      let key = rng.next().toString();
      list.set(key, key);
    }
    for (let i: i32 = 0; i < keys.length; i++) {
      expect(list.get(keys[i])).toBe(keys[i]);
    }
    let node = list.head;
    let arr = new Array<i32>(32);
    while (node.key != list.tail.key) {
      node.key <= node.ptrs[0].key;
      node = node.ptrs[0];
      arr[node.ptrs.length]++;
    }
    log(arr.slice(0, list.level));
  });
});