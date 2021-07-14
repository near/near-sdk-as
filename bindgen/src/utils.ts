// @ts-ignore
let path = require("path");
import { utils } from "visitor-as";

export function posixRelativePath(from: string, to: string): string {
  const relativePath = path.relative(from, to);
  return relativePath.split(path.sep).join(path.posix.sep);
}

const capitalPattern = /([a-z])([A-Z])/g;
const doubleCapital = /([A-Z])([A-Z][a-z])/g;

export function makeSnakeCase(s: string): string {
  return s
    .replace(capitalPattern, "$1_$2")
    .replace(doubleCapital, "$1_$2")
    .toLowerCase();
}

export const getName = utils.getName;
export const toString = utils.toString;
