"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const utils_1 = require("../utils");
function getHeadingLevel(baseLevel) {
    return utils_1.getMarkdownEngine() === 'gitbook'
        ? baseLevel.substring(0, baseLevel.length - 1)
        : baseLevel;
}
exports.getHeadingLevel = getHeadingLevel;
