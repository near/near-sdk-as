import { base64, near } from '../../near';

function testBase64(original: string, expectedEncoding: string): void {
    let bytes = near.stringToBytes(original);
    let encoded = base64.encode(bytes);
    expect<string>(encoded).toBe(expectedEncoding);
    let decoded = base64.decode(encoded);
    expect<string>(near.bytesToString(decoded)).toBe(original);
}

describe('utils', (): void => {
    it('bytesToString', (): void => {
        let byteArray = new Uint8Array(4);
        byteArray[0] = 131;
        byteArray[1] = 100;
        byteArray[2] = 111;
        byteArray[3] = 103;
        let bytes = byteArray.subarray(1);
        let s = near.bytesToString(bytes);
        expect<string>(s).toBe('dog');
    });
});

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
