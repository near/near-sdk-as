// @notNearfile
/// <reference types="@as-pect/assembly/types/as-pect" />

import "near-sdk-bindgen";
// @ts-ignore
export * from "near-mock-vm/outcome";
import { VM } from "near-mock-vm";

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
  VM.saveMem();
});

afterEach(() => {
  VM.restoreMem();
});
