"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function ifHasTypeDeclarations(parameters, opts) {
    const hasTypeDeclaration = parameters.find((param) => {
        return param.type.declaration && param.type.declaration.children;
    });
    if (hasTypeDeclaration) {
        return opts.fn(this);
    }
    else {
        return opts.inverse(this);
    }
}
exports.ifHasTypeDeclarations = ifHasTypeDeclarations;
