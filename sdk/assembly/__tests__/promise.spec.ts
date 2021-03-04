import { ContractPromiseResult, PromiseStatus } from "..";

describe("Promise Result", () => {

  it("should handle success", () => {
    const HELLO_WORLD = "hello world";
    let promiseResult = new ContractPromiseResult(PromiseStatus.Successful, encode<string>(HELLO_WORLD));
    expect(promiseResult.succeeded).toBe(true);
    expect(promiseResult.failed).toBe(false);
    expect(promiseResult.pending).toBe(false);
    expect(promiseResult.decode<string>()).toStrictEqual(HELLO_WORLD);
  });

  it("should handle pending", () => {
    let promiseResult = new ContractPromiseResult(PromiseStatus.Pending);
    expect(promiseResult.succeeded).toBe(false);
    expect(promiseResult.failed).toBe(false);
    expect(promiseResult.pending).toBe(true);
  });

  it("should handle failure", () => {
    let promiseResult = new ContractPromiseResult(PromiseStatus.Failed);
    expect(promiseResult.succeeded).toBe(false);
    expect(promiseResult.failed).toBe(true);
    expect(promiseResult.pending).toBe(false);
  });
});