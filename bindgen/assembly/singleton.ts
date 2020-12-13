import { storage } from "near-sdk-core";

/* eslint-disable indent */
// @ts-ignore
@lazy
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
@global
function __setState<T>(state: T): void {
    storage.set(__STATE_KEY, state);
}
