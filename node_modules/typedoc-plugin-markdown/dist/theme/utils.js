"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const props_1 = require("./props");
function getMarkdownEngine() {
    const options = props_1.getOptions();
    const specifiedEngine = options.mdEngine || options.mdFlavour || 'github';
    return specifiedEngine;
}
exports.getMarkdownEngine = getMarkdownEngine;
function compilePartial(partialName, data) {
    const template = props_1.getResources()
        .partials.getResource(partialName)
        .getTemplate();
    return template(data);
}
exports.compilePartial = compilePartial;
function compileTemplate(templateName, data) {
    const template = props_1.getResources()
        .templates.getResource(templateName)
        .getTemplate();
    return template(data);
}
exports.compileTemplate = compileTemplate;
function getAnchorRef(ref) {
    return ref
        .replace(/_|\/|\.| /g, '-')
        .replace(/"/g, '')
        .replace(/ /g, '-');
}
exports.getAnchorRef = getAnchorRef;
