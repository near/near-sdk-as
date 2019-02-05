"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const declaration_1 = require("typedoc/dist/lib/utils/options/declaration");
const plugin_1 = require("./plugin");
module.exports = (PluginHost) => {
    const app = PluginHost.owner;
    if (app.converter.hasComponent('markdown')) {
        return;
    }
    app.options.addDeclaration({
        component: 'markdown',
        help: 'Markdown Plugin: Suppress file sources from output.',
        name: 'mdHideSources',
        type: declaration_1.ParameterType.Boolean,
    });
    app.options.addDeclaration({
        component: 'markdown',
        defaultValue: 'github',
        help: 'Markdown Plugin: (github|bitbucket|gitbook) Specifies the markdown rendering engine.',
        name: 'mdEngine',
        type: declaration_1.ParameterType.String,
    });
    app.options.addDeclaration({
        component: 'markdown',
        defaultValue: 'github',
        help: 'Markdown Plugin: Deprectated - use --mdEngine.',
        name: 'mdFlavour',
        type: declaration_1.ParameterType.String,
    });
    app.options.addDeclaration({
        component: 'markdown',
        help: 'The repository to use for source files (ignored unless markdownFlavour is set)',
        name: 'mdSourceRepo',
        type: declaration_1.ParameterType.String,
    });
    app.converter.addComponent('markdown', new plugin_1.MarkdownPlugin(app.converter));
};
