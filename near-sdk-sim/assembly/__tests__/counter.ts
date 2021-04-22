import { Storage, logging } from "near-sdk-as";

// --- contract code goes below

export function incrementCounter(value: i32 = 1): void {
  const newCounter = Storage.getPrimitive<i32>("counter", 0) + value;
  Storage.set<i32>("counter", newCounter);
  logging.log("Counter is now: " + newCounter.toString());
}

export function decrementCounter(value: i32 = 1): void {
  const newCounter = Storage.getPrimitive<i32>("counter", 0) - value;
  Storage.set<i32>("counter", newCounter);
  logging.log("Counter is now: " + newCounter.toString());
}

export function getCounter(): i32 {
  return Storage.getPrimitive<i32>("counter", 0);
}

export function resetCounter(): void {
  Storage.set<i32>("counter", 0);
  logging.log("Counter is reset!");
}
