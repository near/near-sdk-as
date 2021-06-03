import { Storage, Context, logging } from "..";

const key = "KEY";
const value = "VALUE";


function loadNTimes(n: i32, s: Storage): void {
  const before = Context.usedGas;
  for (let i = 0; i < n; i++) {
    if (i % 2)
      s.getSome<string>(key);
  }
  logging.log(`host gas used after ${n} reads ${Context.usedGas - before}`);
}

Storage.cachingStorage.set(key, value);

export function runTest(i: i32): void {
  loadNTimes(i, Storage.storage);
  loadNTimes(i, Storage.cachingStorage);
}
