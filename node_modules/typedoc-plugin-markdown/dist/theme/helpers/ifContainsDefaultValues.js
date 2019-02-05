"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function ifContainsDefaultValues(parameters) {
    let hasDefaultValues = false;
    parameters.forEach((param) => {
        if (param.defaultValue) {
            hasDefaultValues = true;
            return;
        }
    });
    return hasDefaultValues;
}
exports.ifContainsDefaultValues = ifContainsDefaultValues;
