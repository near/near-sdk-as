import { base64 } from '../../near';

function stringToBytes(s: string): Uint8Array {
    let len = s.lengthUTF8 - 1;
    let res = new Uint8Array(len);
    let ptr = s.toUTF8();
    for (let i = 0; i < len; i++) {
        res[i] = load<u8>(ptr + i);
    }
    return res;
}

function bytesToString(bytes: Uint8Array): string {
    return String.fromUTF8(bytes.buffer.data, bytes.length);
}

function testBase64(original: string, expectedEncoding: string): void {
    let bytes = stringToBytes(original);
    let encoded = base64.encode(bytes);
    expect<string>(encoded).toBe(expectedEncoding);
    let decoded = base64.decode(encoded);
    expect<string>(bytesToString(decoded)).toBe(original);
}

describe('base64 encoding/decoding', (): void => {
    it('hello world', (): void => {
        testBase64('hello, world', 'aGVsbG8sIHdvcmxk');
    });

    it('test pad 1', (): void => {
        testBase64('some string', 'c29tZSBzdHJpbmc=');
    });

    it('test pad 2', (): void => {
        testBase64('some long string', 'c29tZSBsb25nIHN0cmluZw==');
    });
});
