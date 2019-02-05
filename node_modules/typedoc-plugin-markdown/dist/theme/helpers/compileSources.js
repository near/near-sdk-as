"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const props_1 = require("../props");
const utils_1 = require("../utils");
function compileSources(sources) {
    const options = props_1.getOptions();
    let md = '';
    if (!options.mdHideSources) {
        md = utils_1.compilePartial('member.sources.hbs', sources);
    }
    return md;
}
exports.compileSources = compileSources;
