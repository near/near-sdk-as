"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function getHierachySymbol(item) {
    let symbol = '';
    if (item.reflection) {
        symbol = item.reflection.extendedTypes ? '↳ ' : '';
    }
    return symbol;
}
exports.getHierachySymbol = getHierachySymbol;
