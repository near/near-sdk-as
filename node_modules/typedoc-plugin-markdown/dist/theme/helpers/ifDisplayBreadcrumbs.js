"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const utils_1 = require("../utils");
function ifDisplayBreadcrumbs(opts) {
    return utils_1.getMarkdownEngine() === 'gitbook' ? opts.inverse(this) : opts.fn(this);
}
exports.ifDisplayBreadcrumbs = ifDisplayBreadcrumbs;
