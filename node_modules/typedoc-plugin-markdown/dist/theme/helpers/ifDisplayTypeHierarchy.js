"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function ifDisplayTypeHierarchy(item, opts) {
    if (!item.next) {
        return opts.inverse(this);
    }
    else {
        return opts.fn(this);
    }
}
exports.ifDisplayTypeHierarchy = ifDisplayTypeHierarchy;
