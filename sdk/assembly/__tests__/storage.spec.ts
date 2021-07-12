import { Storage, Context } from "..";

const key = "KEY";
const value = "VALUE";


function loadNTimes(n: i32, s: Storage): void {
  log(`host gas before ${Context.usedGas}`);
  for (let i = 0; i < n; i++) {
    s.getSome<string>(key);
  }
  log(`host gas after ${n} reads ${Context.usedGas}`);
}

let numberOfTests = 10;

describe("Test difference between storages", () => {

  beforeEach(() => {
    Storage.cachingStorage.set(key, value);
  });

  it("test differences in loop of reads", () => {    
    loadNTimes(numberOfTests, Storage.storage);
    loadNTimes(numberOfTests, Storage.cachingStorage);
  });

});