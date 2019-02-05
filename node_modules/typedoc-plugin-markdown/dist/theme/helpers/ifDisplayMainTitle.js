"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const utils_1 = require("../utils");
function ifDisplayMainTitle(item, opts) {
    if (utils_1.getMarkdownEngine() === 'gitbook' || item.model.displayReadme) {
        return opts.inverse(this);
    }
    else {
        return opts.fn(this);
    }
}
exports.ifDisplayMainTitle = ifDisplayMainTitle;
