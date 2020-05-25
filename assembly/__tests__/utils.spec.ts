import { math, VM, Context, base58, context } from ".."
import { lessThanE, SkipList } from '../runtime/collections/skiplist';
 
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
    let rng = new math.RNG<u64>(10000, 10_000);
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
let u16List: SkipList<u16,u16>;
describe("SkipList", () => {
  beforeEach(() => {
    list = new SkipList<string, string>();
    u16List = new SkipList<u16,u16>();
  });
  // it("can insert", () => {
  //   list.set("hello", "world");
  //   expect(list.get("hello", "")).toBe("world");
  //   list.set("world", "hello")
  //   expect(list.get("world", "")).toBe("hello");

  // });

  it("keys should be in order", () => {
    let list = new SkipList<u16, u16>();
    const times = 3;
    let rng = new math.RNG<u16>(times);
    let keys: u16[] = [3000, 5000, 7000, 4000, 6000];// = new Array<u16>();
    for (let _i = 0; _i < keys.length; _i++) {
      let key = keys[_i];//rng.next() + 1;
      list.set(key, key);
      // keys.push(key);
    }
    // log("4121" < "699")
    // log(keys)
    // log(list);
    // log(list.get("699"));
    // log(keys)
    log(list.head)
    for (let i: i32 = 0; i < keys.length; i++) {
      expect(list.get(keys[i], 0),).toBe(keys[i]);
      // log(list.getNode(keys[i]));
    }
    let node = list.head;
    let arr = new Array<i32>(32);
    while (node.peek(0) != list.tail.key) {
      expect(node.key <= node.ptrs[0].key).toBe(true);
      // log(node.key);
      node = node.ptrs[0];
      log("node " + node.key.toString() + ", level " + node.ptrs.length.toString());
      log(node.widths)
      arr[node.ptrs.length]++;
    }
    log(arr.slice(0, list.level + 1));
  });
 
  // it("keys should be deletable", () => {
  //   const times = 100
  //   let rng = new math.RNG<u16>(times);
  //   let keys = new Array<u16>();
  //   for (let _i = 0; _i < times; _i++) {
  //     let key = rng.next();
  //     u16List.set(key, key);
  //     keys.push(key);
  //   }
  //   // log("2397" < "239")
  //   // log(u16List.getNode("239"))
  //   for (let i: i32 = 0; i < keys.length; i++) {
  //     expect(u16List.get(keys[i], 0)).toBe(keys[i]);
  //   }
  //   let deleted = new Array<i32>();
  //   for (let _i= 0; _i < times/3; _i++) {
  //     let newKey = rng.next() % 100;
  //     while (deleted.includes(newKey)){
  //       newKey = rng.next() % 100;
  //     }
  //     u16List.delete(keys[newKey]);
  //   }
  //   let node = u16List.head;
  //   let arr = new Array<i32>(32);
  //   while (node.key != u16List.tail.key) {
  //     expect(node.key <= node.ptrs[0].key).toBe(true);
  //     node = node.ptrs[0];
  //     // nodes.push(node.key.padEnd(6, " ") + ":  " + "[X]".repeat(node.ptrs.length));
  //     arr[node.ptrs.length]++;
  //   }
  //   log(arr.slice(0, u16List.level));
  // });
  
});