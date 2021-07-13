import { env, u128, util, Context, JSON as json } from "near-sdk-core";
import { JSON } from "assemblyscript-json";
import { storage } from "near-sdk-core";

// Runtime functions
// tslint:disable: no-unsafe-any
/* eslint-disable  @typescript-eslint/no-unused-vars */

// @ts-ignore
@global
function isNull<T>(t: T): bool {
  if (isNullable<T>() || isReference<T>()) {
    return changetype<usize>(t) == 0;
  }
  return false;
}

// @ts-ignore
@global
function notPayable(): void {
  assert(Context.attachedDeposit == u128.Zero, "Method doesn't accept deposit");
}

// @ts-ignore
@global
function oneYocto(): void {
  assert(Context.attachedDeposit == u128.One, "Requires attached deposit of exactly 1 yoctoNEAR");
}

// @ts-ignore
// @global
// function requireParameter<T>(name: string): T {
//   assert(
//     false,
//     "Parameter " +
//       name +
//       " with type " +
//       nameof<T>() +
//       " is required but missing"
//   );
//   return __defaultValue<T>();
// }


type Usize = u64;
// @ts-ignore
@global
function read_register(register_id: Usize, ptr: Usize): void {
  env.read_register(register_id, ptr);
}
// @ts-ignore
@global
function register_len(register_id: Usize): Usize {
  return env.register_len(register_id);
}

// @ts-ignore
@global
function input(register_id: Usize): void {
  env.input(register_id);
}
// @ts-ignore
@global
function value_return(value_len: Usize, value_ptr: Usize): void {
  env.value_return(value_len, value_ptr);
}
// @ts-ignore
@global
function panic(): void {
  env.panic();
}
// @ts-ignore
@global
function panic_utf8(len: Usize, ptr: Usize): void {
  env.panic_utf8(len, ptr);
}

// @ts-ignore
@global
function getInput(): JSON.Obj {
  // Reading input bytes.
  input(0);
  let json_len = register_len(0);
  if (json_len == U32.MAX_VALUE) {
    panic();
  }
  let json = new Uint8Array(json_len as u32);
  // @ts-ignore
  read_register(0, json.dataStart);
  return <JSON.Obj>JSON.parse(json);
}

// @ts-ignore
@global
function getInputArray(): ArrayBuffer {
  // Reading input bytes.
  input(0);
  let json_len = register_len(0);
  if (json_len == U32.MAX_VALUE) {
    panic();
  }
  let json = new ArrayBuffer(json_len as u32);
  // @ts-ignore
  read_register(0, changetype<usize>(json));
  return json;
}

// @ts-ignore
@global
function getInputString(): string {
  const buffer = getInputArray();
  return String.UTF8.decode(buffer);
}

// @ts-ignore
@global
function encode<T, _To = Uint8Array>(
  value: T
): Uint8Array {
  return  util.stringToBytes(json.stringify(value));
}



function isNumber<T>(): boolean {
  return isFloat<T>() || isInteger<T>();
}

// @ts-ignore
@global
function decode<T>(buf: Uint8Array, name: string = ""): T {
  const str = util.bytesToString(buf)!;
  return json.parse<T>(str);

}

// @ts-ignore
// @global
// function __defaultValue<T>(): T {
//   if (isInteger<T>() || isFloat<T>()) {
//     // @ts-ignore
//     return <T>0;
//   }
//   if (isString<T>()) return "";
//   return changetype<T>(0);
// }

/**
 * Singleton support functions
 */

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


@global
function __assertPrivate(): void {
  let contractName = Context.contractName;
  assert(contractName == Context.predecessor, `Only ${contractName} can call this method.`);
}