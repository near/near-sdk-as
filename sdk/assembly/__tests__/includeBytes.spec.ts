export function foo(): string {
  let data = includeBytes("./data.txt");
  return String.UTF8.decodeUnsafe(changetype<usize>(data), data.length);
}

describe("includeBytes", () => {
  it("should read from file", () => {
    expect(foo()).toBe("Hello World!");
  });
});
