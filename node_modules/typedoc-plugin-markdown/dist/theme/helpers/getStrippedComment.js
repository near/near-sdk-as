"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const utils_1 = require("../utils");
function getStrippedComment(comment) {
    const lineBreak = utils_1.getMarkdownEngine() === 'bitbucket' ? ' ' : '<br><br>';
    let newComment = '';
    if (comment) {
        if (comment.text) {
            newComment += comment.text.replace(/\n\n/g, lineBreak);
        }
        if (comment.shortText) {
            newComment += comment.shortText.replace(/\n\n/g, lineBreak);
        }
    }
    return newComment === '' ? '-' : newComment;
}
exports.getStrippedComment = getStrippedComment;
