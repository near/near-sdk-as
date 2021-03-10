import { base64, runtime_api, u128, util, Context } from "near-sdk-core";
import { JSONEncoder as _JSONEncoder, JSON } from "assemblyscript-json";
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
function requireParameter<T>(name: string): T {
  assert(
    false,
    "Parameter " +
      name +
      " with type " +
      nameof<T>() +
      " is required but missing"
  );
  return defaultValue<T>();
}

@global
class JSONEncoder extends _JSONEncoder {
  encode<T>(name: string, val: T): void {
    encode<T, JSONEncoder>(val, name, this);
  }
}

type Usize = u64;
// @ts-ignore
@global
function read_register(register_id: Usize, ptr: Usize): void {
  runtime_api.read_register(register_id, ptr);
}
// @ts-ignore
@global
function register_len(register_id: Usize): Usize {
  return runtime_api.register_len(register_id);
}

// @ts-ignore
@global
function input(register_id: Usize): void {
  runtime_api.input(register_id);
}
// @ts-ignore
@global
function value_return(value_len: Usize, value_ptr: Usize): void {
  runtime_api.value_return(value_len, value_ptr);
}
// @ts-ignore
@global
function panic(): void {
  runtime_api.panic();
}
// @ts-ignore
@global
function panic_utf8(len: Usize, ptr: Usize): void {
  runtime_api.panic_utf8(len, ptr);
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
function encode<T, Output = Uint8Array>(
  value: T,
  name: string | null = "",
  encoder: JSONEncoder = new JSONEncoder()
): Output {
  if (isBoolean<T>()) {
    // @ts-ignore
    encoder.setBoolean(name, value);
  } else if (isInteger<T>()) {
    if (value instanceof i64 || value instanceof u64) {
      // @ts-ignore
      encoder.setString(name, value.toString());
    } else {
      // @ts-ignore
      encoder.setInteger(name, value);
    }
  } else if (isFloat<T>()) {
    // @ts-ignore
    encoder.setFloat(name, value);
  } else if (isString<T>()) {
    if (isNull<T>(value)) {
      encoder.setNull(name);
    } else {
      // @ts-ignore
      encoder.setString(name, value);
    }
  } else if (isReference<T>()) {
    // @ts-ignore
    if (isNull<T>(value)) {
      encoder.setNull(name);
    } else {
      // @ts-ignore
      if (isDefined(value._encode)) {
        if (isNullable<T>()) {
          if (value != null) {
            // @ts-ignore
            value._encode(name, encoder);
          } else {
            encoder.setNull(name);
          }
        } else {
          // @ts-ignore
          value._encode(name, encoder);
        }
      } else if (isArrayLike<T>(value)) {
        if (value instanceof Uint8Array) {
          // @ts-ignore
          encoder.setString(name, base64.encode(<Uint8Array>value));
        } else {
          encoder.pushArray(name);
          for (let i: i32 = 0; i < value.length; i++) {
            // @ts-ignore
            encode<valueof<T>, JSONEncoder>(value[i], null, encoder);
          }
          encoder.popArray();
        }
      } else {
        // Is an object
        if (value instanceof u128) {
          // @ts-ignore
          encoder.setString(name, value.toString());
        } else if (value instanceof Map) {
          assert(
            // @ts-ignore
            nameof<indexof<T>>() == "String",
            "Can only encode maps with string keys"
          );
          let keys = value.keys();
          encoder.pushObject(name);
          for (let i = 0; i < keys.length; i++) {
            // @ts-ignore
            encode<valueof<T>, JSONEncoder>(
              value.get(keys[i]),
              keys[i],
              encoder
            );
          }
          encoder.popObject();
        } else if (value instanceof Set) {
          // @ts-ignore
          let values: Array<indexof<T>> = value.values();
          encoder.pushArray(name);
          for (let i = 0; i < values.length; i++) {
            // @ts-ignore
            encode<indexof<T>, JSONEncoder>(values[i], null, encoder);
          }
          encoder.popArray();
        }
      }
    }
  } else {
    throw new Error(
      "Encoding failed " +
        (name != null && name != "" ? " for " + name : "") +
        " with type " +
        nameof<T>()
    );
  }
  var output: Output;
  // @ts-ignore
  if (output instanceof Uint8Array) {
    // @ts-ignore
    return <Output>encoder.serialize();
  }
  assert(
    // @ts-ignore
    output instanceof JSONEncoder,
    // @ts-ignore
    "Bad return type " + nameof < Output > +" for encoder"
  );
  // @ts-ignore
  return <Output>encoder;
}

// @ts-ignore
@inline
function getStr(val: JSON.Value, name: string): string {
  assert(
    val instanceof JSON.Str,
    "Value with Key: " + name + " is not a string or null"
  );
  return (<JSON.Str>val)._str;
}

function decodeArray<T>(val: JSON.Value, name: string): Array<T> {
  assert(
    val instanceof JSON.Arr,
    "Value with Key: " + name + " is not an array or null."
  );
  const res = new Array<T>();
  const arr = (<JSON.Arr>val)._arr;
  for (let i: i32 = 0; i < arr.length; i++) {
    let item: T = decode<T, JSON.Value>(arr[i]);
    res.push(item);
  }
  return res;
}

function decodeMap<V>(aVal: JSON.Value, name: string): Map<string, V> {
  assert(
    aVal instanceof JSON.Obj,
    "Value with Key: " + name + " is not an Obj."
  );
  let val = <JSON.Obj>aVal;
  let map = new Map<string, V>();
  for (let i = 0; i < val.keys.length; i++) {
    let key = val.keys[i];
    map.set(key, decode<V, JSON.Value>(<JSON.Value>val.get(key)));
  }
  return map;
}

function decodeSet<V>(aVal: JSON.Value, name: string): Set<V> {
  assert(
    aVal instanceof JSON.Arr,
    "Value with Key: " + name + " is not an Obj."
  );
  let arr = (<JSON.Arr>aVal)._arr;
  let set = new Set<V>();
  for (let i = 0; i < arr.length; i++) {
    let val = arr[i];
    set.add(decode<V, JSON.Value>(val));
  }
  return set;
}

function isReallyNullable<T>(): bool {
  return (
    isReference<T>() || isArrayLike<T>() || isNullable<T>() || isString<T>()
  );
}

function JSONTypeToString<T>(t: T): string {
  if (t instanceof JSON.Str) {
    return "string";
  }
  if (t instanceof JSON.Bool) {
    return "Boolean";
  }
  if (t instanceof JSON.Obj) {
    return "Object";
  }
  if (t instanceof JSON.Arr) {
    return "Array";
  }
  if (t instanceof JSON.Null) {
    return "Null";
  }
  if (t instanceof JSON.Integer) {
    return "Integer";
  }
  if (t instanceof JSON.Float) {
    return "Float";
  }
  return "UNKNOWN TYPE";
}

function isNumber<T>(): boolean {
  return isFloat<T>() || isInteger<T>();
}

// @ts-ignore
@global
function decode<T, V = Uint8Array>(buf: V, name: string = ""): T {
  const buffer = <JSON.Value>(
    (buf instanceof Uint8Array ? JSON.parse(buf) : buf)
  );
  var val: JSON.Value;
  if (buffer instanceof JSON.Obj && name != "") {
    const obj: JSON.Obj = <JSON.Obj>buffer;
    let res = obj.get(name);
    if (res == null) {
      if (isReallyNullable<T>() && !isNumber<T>()) {
        if (isFloat<T>()) {
          throw new Error("type " + nameof<T>() + " cannot be null.");
        } else if (isInteger<T>()) {
          throw new Error("type " + nameof<T>() + " cannot be null.");
        } else {
          // @ts-ignore
          return changetype<T>(res);
        }
      } else {
        throw new Error("type " + nameof<T>() + " cannot be null.");
      }
    }
    val = res;
  } else {
    val = <JSON.Value>buffer;
  }
  if (isBoolean<T>()) {
    assert(
      val instanceof JSON.Bool,
      "Value with Key: " +
        name +
        " with type " +
        nameof<T>() +
        " is not a string"
    );
    // @ts-ignore
    return (<JSON.Bool>val)._bool;
  }
  var value: T;
  if (isInteger<T>()) {
    // @ts-ignore
    if (value instanceof u64 || value instanceof i64) {
      assert(
        val instanceof JSON.Str,
        "Value with Key: " +
          name +
          " with type " +
          nameof<T>() +
          " is an 64-bit integer and is expected to be encoded as a string"
      );
      let str = (<JSON.Str>val)._str;
      // @ts-ignore
      return <T>(isSigned<T>() ? I64.parseInt(str) : U64.parseInt(str));
    }
    assert(
      val instanceof JSON.Integer,
      "Value with Key: " +
        name +
        " with type " +
        nameof<T>() +
        " is not an Integer"
    );
    // @ts-ignore
    return <T>(<JSON.Integer>val)._num;
  } else if (isFloat<T>()) {
    assert(
      val instanceof JSON.Float,
      "Value with Key: " +
        name +
        " with type " +
        nameof<T>() +
        " is not a Float"
    );
    // @ts-ignore
    return <T>(<JSON.Float>val)._num;
  }
  if (val instanceof JSON.Null) {
    assert(
      isReallyNullable<T>(),
      "Key: " + name + " with type " + nameof<T>() + "is not nullable"
    );
    // @ts-ignore
    return changetype<T>(<usize>0);
  }
  if (isString<T>()) {
    // @ts-ignore
    return getStr(val, name);
  }
  assert(
    isReference<T>(),
    name +
      " with type " +
      nameof<T>() +
      " must be an integer, boolean, string, object, or array"
  );
  // @ts-ignore
  if (isDefined(value.decode)) {
    assert(
      val instanceof JSON.Obj || val instanceof JSON.Obj,
      "Value with Key: " +
        name +
        " with type " +
        nameof<T>() +
        " is not an object or null " +
        (val instanceof JSON.Obj).toString()
    );
    value = util.allocate<T>();
    if (isNullable<T>()) {
      if (value != null) {
        // @ts-ignore
        return value.decode<JSON.Obj>(<JSON.Obj>val);
      }
    } else {
      // @ts-ignore
      return value.decode<JSON.Obj>(<JSON.Obj>val);
    }
  }
  // @ts-ignore
  if (value instanceof Map) {
    assert(
      val instanceof JSON.Obj,
      "Value with Key: " +
        name +
        " of type map expected a JSON.Obj, but recevied " +
        JSONTypeToString(val)
    );
    assert(
      // @ts-ignore
      nameof<indexof<T>>() == "String",
      "Value with Key: " +
        name +
        " cannot decode a map which has an index type " +
        // @ts-ignore
        nameof<indexof<T>>() +
        ", it must be a string"
    );
    // @ts-ignore
    return <T>decodeMap<valueof<T>>(<JSON.Obj>val, name);
  }
  // @ts-ignore
  if (value instanceof Set) {
    assert(
      val instanceof JSON.Arr,
      "Value with Key: " +
        name +
        " of type map expected a JSON.Obj, but recevied " +
        JSONTypeToString(val)
    );
    // @ts-ignore
    return <T>decodeSet<indexof<T>>(val, name);
  }
  if (isArrayLike<T>()) {
    // @ts-ignore
    if (value instanceof Uint8Array) {
      // @ts-ignore
      return base64.decode(getStr(val, name));
    }
    // @ts-ignore
    // assert(val instanceof Arr, "Value with Key: " +  name + " with type " + nameof<T>()  + " is expected to be an array")
    // @ts-ignore only checking the instance
    return <T>decodeArray<valueof<T>>(val, name);
  }
  // @ts-ignore
  if (value instanceof u128) {
    assert(
      val instanceof JSON.Str,
      "Value with Key: " +
        name +
        " expected type string to decode u128 but got " +
        JSONTypeToString(val)
    );
    // @ts-ignore
    return u128.fromString(getStr(val, name));
  }
  throw new Error(
    "Error when trying to decode " +
      name +
      " with type " +
      nameof<T>() +
      " and unexpected JSON type " +
      JSONTypeToString(val) +
      "\nPerhaps @nearBindgen decorator needs to be added to class " +
      nameof<T>()
  );
}

// @ts-ignore
@global
function defaultValue<T>(): T {
  if (isInteger<T>() || isFloat<T>()) {
    // @ts-ignore
    return <T>0;
  }
  return changetype<T>(0);
}

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
