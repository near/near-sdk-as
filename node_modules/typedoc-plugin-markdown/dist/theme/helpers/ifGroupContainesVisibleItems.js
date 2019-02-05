"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const props_1 = require("../props");
function ifGroupContainesVisibleItems(group, opts) {
    const options = props_1.getOptions();
    if (!options.excludePrivate || !group.allChildrenArePrivate) {
        return opts.fn(this);
    }
    else {
        return opts.inverse(this);
    }
}
exports.ifGroupContainesVisibleItems = ifGroupContainesVisibleItems;
