"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const index_1 = require("typedoc/dist/lib/models/reflections/index");
const utils_1 = require("../utils");
function ifDisplayIndex(member, opts) {
    const isGitBook = utils_1.getMarkdownEngine() === 'gitbook';
    const classModule = member.children && member.children.length
        ? member.children[0].kind === index_1.ReflectionKind.Class
        : false;
    const enumModule = member.children && member.children.length
        ? member.children[0].kind === index_1.ReflectionKind.Enum
        : false;
    const interfaceModule = member.children && member.children.length
        ? member.children[0].kind === index_1.ReflectionKind.Interface
        : false;
    if ((member.displayReadme && isGitBook) ||
        (isGitBook && member.kind === index_1.ReflectionKind.Class) ||
        (isGitBook && member.kind === index_1.ReflectionKind.Interface) ||
        (isGitBook &&
            member.kind === index_1.ReflectionKind.ExternalModule &&
            !classModule &&
            (isGitBook &&
                member.kind === index_1.ReflectionKind.ExternalModule &&
                !enumModule) &&
            (isGitBook &&
                member.kind === index_1.ReflectionKind.ExternalModule &&
                !interfaceModule))) {
        return opts.inverse(this);
    }
    else {
        return opts.fn(this);
    }
}
exports.ifDisplayIndex = ifDisplayIndex;
