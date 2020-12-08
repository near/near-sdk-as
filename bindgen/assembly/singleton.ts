import { storage } from "near-sdk-core";
// @ts-ignore
/* eslint-disable indent */
@lazy
@global
const __STATE_KEY = "STATE";

// @ts-ignore
@global
function __checkState(): bool {
  return storage.contains(__STATE_KEY);
}

// @ts-ignore
@global
function __getState<T>(): T {
  return storage.getSome<T>(__STATE_KEY);
}

// @ts-ignore
@lazy
@global
let __updated = false;
// @ts-ignore

@global
function __setState<T>(state: T): void {
    storage.set(__STATE_KEY, state);
}

@global
function __updateState<T>(state: T): void {
  if (__updated) {
    __setState(state);
  }
}