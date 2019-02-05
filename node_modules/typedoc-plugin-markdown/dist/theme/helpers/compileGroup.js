"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const props_1 = require("../props");
const utils_1 = require("../utils");
function compileGroup(group, parentKind) {
    const options = props_1.getOptions();
    let md = '';
    if (!options.excludePrivate || !group.allChildrenArePrivate) {
        md = utils_1.compilePartial('members.group.hbs', Object.assign({}, group));
    }
    return md;
}
exports.compileGroup = compileGroup;
