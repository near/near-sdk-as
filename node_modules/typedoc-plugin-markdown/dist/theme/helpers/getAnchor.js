"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const utils_1 = require("../utils");
function getAnchor(anchor) {
    return utils_1.getMarkdownEngine() === 'bitbucket' ? '' : `<a id="${anchor}"></a>`;
}
exports.getAnchor = getAnchor;
