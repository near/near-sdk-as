const path = require("path");
const config = require("./node_modules/assemblyscript/lib/transformer/webpack.base");

const files = {
  nearBindings:"./src/index.ts"
 };

const outfolder = path.resolve(__dirname, "dist");

module.exports = config(files, outfolder, ["./assembly/nearEntry.ts"]);