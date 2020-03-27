//@ts-ignore
let path = require("path");

export function relativePath(from: string, to: string): string {
  const relativePath = path.relative(from, to);
  return relativePath.split(path.sep).join(path.posix.sep);
}