// adapted from https://gist.github.com/Juszczak/63e6d9e01decc850de03
/**
 * base64 encoding/decoding
 */

const PADCHAR = "=";
const ALPHA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
 
const ALPHAVALUES = new Uint8Array(128);
for (let n=0;n<ALPHA.length;n++) {
  ALPHAVALUES[ALPHA.charCodeAt(n)] = n;
}
 
export namespace base64 {
  
   /**
    * Decode a base64-encoded string and return a Uint8Array.
    * @param s Base64 encoded string.
    */
   export function decode(s: string): Uint8Array {
     let i: u32, b10: u32;
     let pads = 0,
         imax = s.length as u32;
 
     if (imax == 0) {
       return new Uint8Array(0);
     }
 
     if (s.charAt(imax - 1) == PADCHAR) {
       pads = 1;
       if (s.charAt(imax - 2) == PADCHAR) {
         pads = 2;
       }
       imax -= 4;
     }
 
     let main_chunk = imax % 4 == 0 ? (imax / 4) * 3 : (imax / 4 + 1) * 3;
     let pad_size = pads > 0 ? 3 - pads : 0;
     let size = main_chunk + pad_size;
 
     let x = new Uint8Array(size),
         index = 0;
 
     for (i = 0; i < imax; i += 4) {
       b10 =
         (getByte64(s, i) << 18) |
         (getByte64(s, i + 1) << 12) |
         (getByte64(s, i + 2) << 6) |
         getByte64(s, i + 3);
       x[index++] = b10 >> 16;
       x[index++] = (b10 >> 8) & 255;
       x[index++] = b10 & 255;
     }
     switch (pads) {
       case 1:
         b10 =
           (getByte64(s, i) << 18) |
           (getByte64(s, i + 1) << 12) |
           (getByte64(s, i + 2) << 6);
         x[index++] = b10 >> 16;
         x[index++] = (b10 >> 8) & 255;
         break;
       case 2:
         b10 = (getByte64(s, i) << 18) | (getByte64(s, i + 1) << 12);
         x[index++] = b10 >> 16;
         break;
     }
 
     return x;
   }
 
   /**
    * Encode Uint8Array as a base64 string.
    * @param bytes Byte array of type Uint8Array.
    */
   export function encode(bytes: Uint8Array): string {
     let i: i32, b10: u32;
     
     const extrabytes = (bytes.length % 3);
     let imax = bytes.length - extrabytes;
     const len = ((bytes.length / 3) as i32) * 4 + (extrabytes == 0 ? 0 : 4);
     let x = changetype<String>(__new(<usize>(len << 1), idof<String>()));
 
     if (bytes.length == 0) {
       return "";
     }
 
     let ptr = changetype<usize>(x) - 2;
     for (i = 0; i < imax; i += 3) {
       b10 =
         ((bytes[i] as u32) << 16) |
         ((bytes[i + 1] as u32) << 8) |
         (bytes[i + 2] as u32);
       store<u16>(ptr+=2, (ALPHA.charCodeAt(b10 >> 18) as u16));
       store<u16>(ptr+=2, (ALPHA.charCodeAt(((b10 >> 12) & 63)) as u16));
       store<u16>(ptr+=2, (ALPHA.charCodeAt(((b10 >> 6) & 63)) as u16));
       store<u16>(ptr+=2, (ALPHA.charCodeAt((b10 & 63)) as u16));
     }
 
     switch (bytes.length - imax) {
       case 1:
         b10 = (bytes[i] as u32) << 16;
         store<u16>(ptr+=2, ((ALPHA.charCodeAt(b10 >> 18)) as u16));
         store<u16>(ptr+=2, ((ALPHA.charCodeAt((b10 >> 12) & 63)) as u16));
         store<u16>(ptr+=2, ((PADCHAR.charCodeAt(0)) as u16));
         store<u16>(ptr+=2, ((PADCHAR.charCodeAt(0)) as u16));
         break;
       case 2:
         b10 = ((bytes[i] as u32) << 16) | ((bytes[i + 1] as u32) << 8);
         store<u16>(ptr+=2, ((ALPHA.charCodeAt(b10 >> 18)) as u16));
         store<u16>(ptr+=2, ((ALPHA.charCodeAt((b10 >> 12) & 63)) as u16));
         store<u16>(ptr+=2, ((ALPHA.charCodeAt((b10 >> 6) & 63)) as u16));
         store<u16>(ptr+=2, ((PADCHAR.charCodeAt(0)) as u16));
         break;
     }
 
     return x;
   }
 
   @inline
   function getByte64(s: string, i: u32): u32 {
     return ALPHAVALUES[s.charCodeAt(i)];
   }
 }
 