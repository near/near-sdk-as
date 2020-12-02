import { base64, util } from "..";

function testBase64(original: string, expectedEncoding: string): void {
  let bytes = util.stringToBytes(original);
  let encoded = base64.encode(bytes);
  expect<string>(encoded).toBe(expectedEncoding);
  let decoded = base64.decode(encoded);
  expect<string>(util.bytesToString(decoded)!).toBe(original);
}

describe("utils", (): void => {
  it("bytesToString", (): void => {
    let byteArray = new Uint8Array(4);
    byteArray[0] = 131;
    byteArray[1] = 100;
    byteArray[2] = 111;
    byteArray[3] = 103;
    let bytes = <Uint8Array>byteArray.subarray(1);
    let s = util.bytesToString(bytes)!;
    expect<string>(s).toBe("dog");
  });
});

describe("base64 encoding/decoding", (): void => {
  it("hello world", (): void => {
    testBase64("hello, world", "aGVsbG8sIHdvcmxk");
  });

  it("test pad 1", (): void => {
    testBase64("some string", "c29tZSBzdHJpbmc=");
  });

  it("test pad 2", (): void => {
    testBase64("some long string", "c29tZSBsb25nIHN0cmluZw==");
  });
});

describe("calling exports internally", () => {
  it("should not call the wrapper function ", () => {
    expect<string>(simple("hello")).toStrictEqual("hello world");
  });
});

export function simple(str: string): string {
  return str + " world";
}
