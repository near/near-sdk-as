"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const props_1 = require("../props");
function ifDisplayIndexItem(item, opts) {
    const options = props_1.getOptions();
    if ((item.children && item.children.length === 0) ||
        (options.excludePrivate && item.flags.isPrivate)) {
        return opts.inverse(this);
    }
    else {
        return opts.fn(this);
    }
}
exports.ifDisplayIndexItem = ifDisplayIndexItem;
