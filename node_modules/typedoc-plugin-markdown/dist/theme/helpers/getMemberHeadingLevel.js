"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const index_1 = require("typedoc/dist/lib/models/reflections/index");
const utils_1 = require("../utils");
function getMemberHeadingLevel(member) {
    let headingLevel = utils_1.getMarkdownEngine() === 'gitbook' ? '##' : '###';
    if (member.parent && member.parent.kind === index_1.ReflectionKind.ObjectLiteral) {
        headingLevel = headingLevel + '#';
    }
    return headingLevel;
}
exports.getMemberHeadingLevel = getMemberHeadingLevel;
