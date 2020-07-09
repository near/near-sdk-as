//@notNearfile
/// <reference types="@as-pect/assembly/types/as-pect" />

import "../bindgen";
export * from "./outcome";
import { VM } from "./vm";

export function newStringArray(): Array<string> {
  return new Array<string>();
}

export function pushString(arr: string[], str: string): Array<string> {
  arr.push(str);
  return arr;
}

/**
 * Ensure that state of the VM is restored before each test.
 */
beforeEach(() => {
  VM.restoreState();
});
