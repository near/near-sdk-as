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
Object.defineProperty(exports, "__esModule", { value: true });
exports.Memory = void 0;
const utils = __importStar(require("./utils"));
const DEFAULT_MEMORY_DESC = { initial: 1024, maximum: 2048 };
class Memory {
    constructor(memory = DEFAULT_MEMORY_DESC) {
        if (memory instanceof WebAssembly.Memory) {
            this.Memory = memory;
        }
        else {
            this.Memory = new WebAssembly.Memory(memory);
        }
    }
    /** Access to memories buffer */
    get memory() {
        return new Uint8Array(this.Memory.buffer);
    }
    // Returns whether the memory interval is completely inside the smart contract memory.
    fits_memory(offset, len) {
        return utils.toNum(offset) + utils.toNum(len) < this.memory.length;
    }
    // Reads the content of the given memory interval.
    //
    // # Panics
    //
    // If memory interval is outside the smart contract memory.
    read_memory(offset, buffer) {
        offset = utils.toNum(offset);
        buffer.set(this.memory.slice(offset, offset + buffer.length), 0);
    }
    // Reads a single byte from the memory.
    //
    // # Panics
    //
    // If pointer is outside the smart contract memory.
    read_memory_u8(offset) {
        this.memory[utils.toNum(offset)];
    }
    // Writes the buffer into the smart contract memory.
    //
    // # Panics
    //
    // If `offset + buffer.len()` is outside the smart contract memory.
    write_memory(offset, buffer) {
        this.memory.set(buffer, utils.toNum(offset));
    }
    set(arr, offset) {
        this.memory.set(arr, offset);
    }
    slice(ptr, len) {
        return this.memory.slice(ptr, len);
    }
    readUTF8Str(ptr) {
        let arr = [];
        const mem = this.memory;
        while (mem[ptr] != 0) {
            arr.push(mem[ptr]);
            ptr++;
        }
        return utils.UTF8toStr(arr);
    }
}
exports.Memory = Memory;
//# sourceMappingURL=memory.js.map