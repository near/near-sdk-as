import BN from "bn.js";
import * as base58 from "bs58";
import { Base64 } from "js-base64";
import { InternalState, ExternalState } from "./types";

export function toNum(x: number | BigInt) {
  return parseInt(x.toString());
}
// http://www.onicos.com/staff/iz/amuse/javascript/expert/utf.txt

/* utf.js - UTF-8 <=> UTF-16 convertion
 *
 * Copyright (C) 1999 Masanao Izumo <iz@onicos.co.jp>
 * Version: 1.0
 * LastModified: Dec 25 1999
 * This library is free.  You can redistribute it and/or modify it.
 */

export function UTF8toStr(array: Uint8Array | number[]): string {
  var out, i, len, c;
  var char2, char3;

  out = "";
  len = array.length;
  i = 0;
  while (i < len) {
    c = array[i++];
    switch (c >> 4) {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
        // 0xxxxxxx
        out += String.fromCharCode(c);
        break;
      case 12:
      case 13:
        // 110x xxxx   10xx xxxx
        char2 = array[i++];
        out += String.fromCharCode(((c & 0x1f) << 6) | (char2 & 0x3f));
        break;
      case 14:
        // 1110 xxxx  10xx xxxx  10xx xxxx
        char2 = array[i++];
        char3 = array[i++];
        out += String.fromCharCode(
          ((c & 0x0f) << 12) | ((char2 & 0x3f) << 6) | ((char3 & 0x3f) << 0)
        );
        break;
    }
  }

  return out;
}

export function StrtoUTF8(str: string): Uint8Array {
  var utf8 = [];
  for (var i = 0; i < str.length; i++) {
    var charcode = str.charCodeAt(i);
    if (charcode < 0x80) utf8.push(charcode);
    else if (charcode < 0x800) {
      utf8.push(0xc0 | (charcode >> 6), 0x80 | (charcode & 0x3f));
    } else if (charcode < 0xd800 || charcode >= 0xe000) {
      utf8.push(
        0xe0 | (charcode >> 12),
        0x80 | ((charcode >> 6) & 0x3f),
        0x80 | (charcode & 0x3f)
      );
    }
    // surrogate pair
    else {
      i++;
      // UTF-16 encodes 0x10000-0x10FFFF by
      // subtracting 0x10000 and splitting the
      // 20 bits of 0x0-0xFFFFF into two halves
      charcode =
        0x10000 + (((charcode & 0x3ff) << 10) | (str.charCodeAt(i) & 0x3ff));
      utf8.push(
        0xf0 | (charcode >> 18),
        0x80 | ((charcode >> 12) & 0x3f),
        0x80 | ((charcode >> 6) & 0x3f),
        0x80 | (charcode & 0x3f)
      );
    }
  }
  return new Uint8Array(utf8);
}

export function createU128Str(lo: BigInt, hi: BigInt): string {
  const num = new BN(hi.toString());
  return num.shln(64).add(new BN(lo.toString())).toString();
}

export function encodeBs58(str: string): string {
  return base58.encode(StrtoUTF8(str));
}

export function decodeBs58(str: string): string {
  return UTF8toStr(new Uint8Array(base58.decode(str)));
}

export function encodeBs64(str: string): string {
  return Base64.encode(str);
}

export function decodeBs64(str: string): string {
  return Base64.decode(str);
}

export function assign<T>(...args: T[] | Partial<T>[]): T {
  return Object.assign.apply(Object, [{}, ...args]);
}

export function decodeState(state: InternalState): ExternalState {
  return Object.getOwnPropertyNames(state).reduce<ExternalState>(
    (acc: ExternalState, cur: string) => {
      let key = decodeBs64(cur);
      try {
        acc[key] = JSON.parse(decodeBs64(state[cur]));
      } catch {
        acc[key] = decodeBs64(state[cur]);
      }
      return acc;
    },
    {}
  );
}

export function encodeState(state: ExternalState): InternalState {
  return Object.getOwnPropertyNames(state).reduce<InternalState>(
    (acc: InternalState, cur: string) => {
      let key = encodeBs64(cur);
      acc[key] = encodeBs64(JSON.stringify(state[cur]));
      return acc;
    },
    {}
  );
}

export function stateSize(state: ExternalState): number {
  return Object.getOwnPropertyNames(state).reduce<number>(
    (acc: number, cur: string) => {
      acc += StrtoUTF8(cur).length + StrtoUTF8(state[cur]).length;
      return acc;
    },
    0
  );
}
