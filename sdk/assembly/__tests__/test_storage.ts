import { 
  borshStorage, 
  jsonStorage, Storage,  Context, logging, u128 } from "..";
import { BorshSerial } from "..";


class Foo {
  i32: i32 = 42;
  u64: u64 = 38247192384729384798;
  u128: u128 = u128.from("3403298457049857095873425098473583475234934587432934287432523450");
}

const key1 = "J";
const key2 = "B";
const value = new Foo();

const normalStorage = new Storage();
const borshNoCaching = new Storage(new BorshSerial());


function loadNTimes(key: string, n: i32, s: Storage, message: string): void {
  const before = Context.usedGas;
  for (let i = 0; i < n; i++) {
    if (i % 2)
      s.getSome<Foo>(key);
  }
  log(`using ${message} host gas used after ${n} reads: ${Context.usedGas - before}`);
}


export function runTest(i: i32): void {
  borshStorage.set(key2, value);
  jsonStorage.set(key1, value);

  log(borshStorage.getSome<Uint8Array>(key2).length);
  log(jsonStorage.getSome<Uint8Array>(key1).length);
  loadNTimes(key1, i, normalStorage, "json no caching");
  loadNTimes(key1, i, jsonStorage, `json with caching`);
  loadNTimes(key2, i, borshNoCaching, "borsh no caching");
  loadNTimes(key2, i, borshStorage, `borsh with caching`);
}
