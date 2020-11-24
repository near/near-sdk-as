import { VM } from "..";
import { vector } from "./model";
const array: u32[] = [1, 2, 3];

describe("save and restore local memory", () => {
  it("should save memory", () => {
    VM.saveMem();
    array[0] = 3;
    VM.restoreMem();
    expect(array).toStrictEqual([1, 2, 3]);
  });
});

describe("save and restore contract memory", () => {
  // afterEach(()=> {
  //   VM.restoreMem();
  // });

  it("should have length 0", () => {
    // VM.saveMem();
    expect(vector.length).toBe(0);

    vector.push(42);
    // VM.restoreMem();
  });

  it("should still have length 0", () => {
    expect(vector.length).toBe(0);
  });
});
