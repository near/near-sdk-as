const path = require("path");
const config = require("./webpack.base");
const files = {
  nearBindings:"./src/index.ts"
 };

const outfolder = path.resolve(__dirname);

module.exports = config(files, outfolder,  ["./assembly/nearEntry.ts"]);