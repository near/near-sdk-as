//@notNearfile
export * from "../vm/outcome";

export function newStringArray(): Array<string> {
  return new Array<string>();
}

export function pushString(arr: string[], str: string): Array<string> {
  arr.push(str);
  return arr;
}