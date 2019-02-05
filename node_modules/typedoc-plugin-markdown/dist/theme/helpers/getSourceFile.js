"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const props_1 = require("../props");
const utils_1 = require("../utils");
function getSourceFile(fileName, line, url) {
    const options = props_1.getOptions();
    let md = 'Defined in ';
    if (utils_1.getMarkdownEngine() === 'bitbucket' && options.mdSourceRepo) {
        const bitbucketUrl = `${options.mdSourceRepo}/src/master/${fileName}`;
        const bitbucketParams = `fileviewer=file-view-default#${fileName}-${line}`;
        md += `[${fileName}:${line}](${bitbucketUrl}?${bitbucketParams})`;
    }
    else if (url) {
        md += `[${fileName}:${line}](${url})`;
    }
    else {
        md += `${fileName}:${line}`;
    }
    return md;
}
exports.getSourceFile = getSourceFile;
