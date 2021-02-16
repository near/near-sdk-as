"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    Object.defineProperty(o, k2, { enumerable: true, get: function() { return m[k]; } });
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.stateSize = exports.encodeState = exports.decodeState = exports.assign = exports.decodeBs64 = exports.encodeBs64 = exports.decodeBs58 = exports.encodeBs58 = exports.createU128Str = exports.StrtoUTF8 = exports.UTF8toStr = exports.toNum = void 0;
const bn_js_1 = __importDefault(require("bn.js"));
const base58 = __importStar(require("bs58"));
const js_base64_1 = require("js-base64");
function toNum(x) {
    return parseInt(x.toString());
}
exports.toNum = toNum;
// http://www.onicos.com/staff/iz/amuse/javascript/expert/utf.txt
/* utf.js - UTF-8 <=> UTF-16 convertion
 *
 * Copyright (C) 1999 Masanao Izumo <iz@onicos.co.jp>
 * Version: 1.0
 * LastModified: Dec 25 1999
 * This library is free.  You can redistribute it and/or modify it.
 */
function UTF8toStr(array) {
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
                out += String.fromCharCode(((c & 0x0f) << 12) | ((char2 & 0x3f) << 6) | ((char3 & 0x3f) << 0));
                break;
        }
    }
    return out;
}
exports.UTF8toStr = UTF8toStr;
function StrtoUTF8(str) {
    var utf8 = [];
    for (var i = 0; i < str.length; i++) {
        var charcode = str.charCodeAt(i);
        if (charcode < 0x80)
            utf8.push(charcode);
        else if (charcode < 0x800) {
            utf8.push(0xc0 | (charcode >> 6), 0x80 | (charcode & 0x3f));
        }
        else if (charcode < 0xd800 || charcode >= 0xe000) {
            utf8.push(0xe0 | (charcode >> 12), 0x80 | ((charcode >> 6) & 0x3f), 0x80 | (charcode & 0x3f));
        }
        // surrogate pair
        else {
            i++;
            // UTF-16 encodes 0x10000-0x10FFFF by
            // subtracting 0x10000 and splitting the
            // 20 bits of 0x0-0xFFFFF into two halves
            charcode =
                0x10000 + (((charcode & 0x3ff) << 10) | (str.charCodeAt(i) & 0x3ff));
            utf8.push(0xf0 | (charcode >> 18), 0x80 | ((charcode >> 12) & 0x3f), 0x80 | ((charcode >> 6) & 0x3f), 0x80 | (charcode & 0x3f));
        }
    }
    return new Uint8Array(utf8);
}
exports.StrtoUTF8 = StrtoUTF8;
function createU128Str(lo, hi) {
    const num = new bn_js_1.default(hi.toString());
    return num.shln(64).add(new bn_js_1.default(lo.toString())).toString();
}
exports.createU128Str = createU128Str;
function encodeBs58(str) {
    return base58.encode(StrtoUTF8(str));
}
exports.encodeBs58 = encodeBs58;
function decodeBs58(str) {
    return UTF8toStr(new Uint8Array(base58.decode(str)));
}
exports.decodeBs58 = decodeBs58;
function encodeBs64(str) {
    return js_base64_1.Base64.encode(str);
}
exports.encodeBs64 = encodeBs64;
function decodeBs64(str) {
    return js_base64_1.Base64.decode(str);
}
exports.decodeBs64 = decodeBs64;
function assign(...args) {
    return Object.assign.apply(Object, [{}, ...args]);
}
exports.assign = assign;
function decodeState(state) {
    return Object.getOwnPropertyNames(state).reduce((acc, cur) => {
        let key = decodeBs64(cur);
        try {
            acc[key] = JSON.parse(decodeBs64(state[cur]));
        }
        catch {
            acc[key] = decodeBs64(state[cur]);
        }
        return acc;
    }, {});
}
exports.decodeState = decodeState;
function encodeState(state) {
    return Object.getOwnPropertyNames(state).reduce((acc, cur) => {
        let key = encodeBs64(cur);
        acc[key] = encodeBs64(JSON.stringify(state[cur]));
        return acc;
    }, {});
}
exports.encodeState = encodeState;
function stateSize(state) {
    return Object.getOwnPropertyNames(state).reduce((acc, cur) => {
        acc += StrtoUTF8(cur).length + StrtoUTF8(state[cur]).length;
        return acc;
    }, 0);
}
exports.stateSize = stateSize;
//# sourceMappingURL=utils.js.map