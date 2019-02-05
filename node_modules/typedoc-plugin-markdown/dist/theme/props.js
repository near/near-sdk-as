"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const props = new Map();
function setProps(options, resources) {
    props.set('options', options);
    props.set('resources', resources);
}
exports.setProps = setProps;
function getOptions() {
    return props.get('options');
}
exports.getOptions = getOptions;
function getResources() {
    return props.get('resources');
}
exports.getResources = getResources;
