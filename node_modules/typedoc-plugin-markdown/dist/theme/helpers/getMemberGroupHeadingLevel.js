"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const utils_1 = require("../utils");
function getMemberGroupHeadingLevel() {
    return utils_1.getMarkdownEngine() === 'gitbook' ? '#' : '##';
}
exports.getMemberGroupHeadingLevel = getMemberGroupHeadingLevel;
