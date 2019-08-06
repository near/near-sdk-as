import { context, storage, near } from "./near";
import { base64 } from "./base64";

// --- contract code goes below

// It's good to use common constant, but not required.
const LAST_SENDER_KEY = "last_sender";

export function hello(name: string): string {
    return "hello".concat(name);
}

export function base64encode(name: string): string {
  const array = new Uint8Array(4);
  array[0] = 0;
  array[1] = 1;
  array[2] = 90;
  array[3] = 100;
  return base64.encode(array);
}
