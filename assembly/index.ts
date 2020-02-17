
import { base64, runtime_api } from "near-runtime-ts";
import { JSONEncoder as _JSONEncoder, JSON } from "assemblyscript-json";
import { u128 } from "bignum";

// Runtime functions
// tslint:disable: no-unsafe-any

@global
class JSONEncoder extends _JSONEncoder {
  encode<T>(name: string, val: T): void {
    encode<T, JSONEncoder>(val, name, this);
  }
}

type Usize = u64;
//@ts-ignore
@global
function read_register(register_id: Usize, ptr: Usize): void {
  runtime_api.read_register(register_id, ptr);
}
//@ts-ignore
@global
function register_len(register_id: Usize): Usize {
  return runtime_api.register_len(register_id);
}

//@ts-ignore
@global
function input(register_id: Usize): void {
  runtime_api.input(register_id);
}
//@ts-ignore
@global
function value_return(value_len: Usize, value_ptr: Usize): void {
  runtime_api.value_return(value_len, value_ptr);
}
//@ts-ignore
@global
function panic(): void {
  runtime_api.panic();
}

//@ts-ignore
@global
function getInput(): JSON.Obj { 
  // Reading input bytes.
  input(0);
  let json_len = register_len(0);
  if (json_len == U32.MAX_VALUE) {
    panic();
  }
  let json = new Uint8Array(json_len as u32);
  //@ts-ignore
  read_register(0, json.dataStart);
  return <JSON.Obj> JSON.parse(json);
}


//@ts-ignore
@global
function encode<T, Output = Uint8Array>(value: T, name: string | null = "", encoder: JSONEncoder = new JSONEncoder()): Output {
  if (isBoolean<T>()) {
    //@ts-ignore
    encoder.setBoolean(name, value);
  } else if (isInteger<T>()) {
    if (value instanceof i64 || value instanceof u64) {
      //@ts-ignore
      encoder.setString(name, value.toString());
    } else {
    //@ts-ignore
      encoder.setInteger(name, value);
    }
  } else if (isString<T>()) {
    if (changetype<usize>(value) == 0) {
      encoder.setNull(name);
    } else {
      //@ts-ignore
      encoder.setString(name, value);
    }
  } else if (isReference<T>()) {
    //@ts-ignore
     if (changetype<usize>(value) == 0) {
       encoder.setNull(name);
     } else if (isArrayLike<T>(value)) {
      if (value instanceof Uint8Array) {
        //@ts-ignore
        encoder.setString(name, base64.encode(<Uint8Array> value));
      } else {
        encoder.pushArray(name);
        for (let i: i32 = 0; i < value.length; i++) {
          //@ts-ignore
          encode<valueof<T>, JSONEncoder>(value[i], null, encoder);
        }
        encoder.popArray();
      }
    } else { // Is an object
      if (value instanceof u128) {
        encoder.setString(name, value.toString());
      } else {
        //@ts-ignore
        value._encode(name, encoder);
      }
    }
  } else {
    throw new Error("Encoding failed");
  }
  var output: Output;
  //@ts-ignore
  if (output instanceof Uint8Array) {
    //@ts-ignore
    return <Output>encoder.serialize();
  }
  //@ts-ignore
  assert( output instanceof JSONEncoder, "Bad return type for encoder");
  //@ts-ignore
  return <Output>encoder;
}

//@ts-ignore
@inline
function getStr(val: JSON.Value, name: String): string {
  assert(val instanceof JSON.Str, "Value with Key: " + name + " is not a string or null");
  return (<JSON.Str>val)._str;
}

function decodeArray<T>(val: JSON.Value, name: string): Array<T> {
  assert(val instanceof JSON.Arr, "Value with Key: " + name + " is not an array or null.");
  const res = new Array<T>();
  const arr = (<JSON.Arr>val)._arr;
  for (let i: i32 = 0; i < arr.length; i++) {
    let item: T = decode<T, JSON.Value>(arr[i]);
    res.push(item);
  }
  return res;
}

function isReallyNullable<T>(): bool {
  return isReference<T>() || isArrayLike<T>() || isNullable<T>() || isString<T>();
}

//@ts-ignore
@global
function decode<T, V = Uint8Array>(buf: V, name: string = ""): T {
  const buffer = <JSON.Value>(buf instanceof Uint8Array ? JSON.parse(buf) : buf);
  var val: JSON.Value;
  if (buffer instanceof JSON.Obj && name != "") {
    const obj: JSON.Obj = <JSON.Obj>buffer;
    let res = obj.get(name);
    if (res == null) {
      if (isReallyNullable<T>() && !isInteger<T>()){
        if (isInteger<T>()){
          throw new Error("type " + nameof<T>() + " cannot be null.");
        } else {
          //@ts-ignore
          return <T>null
        }
      } else {
        throw new Error("type " + nameof<T>() + " cannot be null.");
      }
    }
    val = res;
  }else {
    val = <JSON.Value> buffer;
  }
  if (isBoolean<T>()) {
    assert(val instanceof JSON.Bool, "Value with Key: " +  name + " with type " + nameof<T>()  + " is not a string");
    //@ts-ignore
    return (<JSON.Bool>val)._bool;
  }
  var value: T;
  if (isInteger<T>()) {
    //@ts-ignore
    if (value instanceof u64 || value instanceof i64) {
      assert(val instanceof JSON.Str, "Value with Key: " +  name + " with type " + nameof<T>()  + " is an 64-bit integer and is expected to be encoded as a string");
      let str = (<JSON.Str>val)._str;
      //@ts-ignore
      return <T>(isSigned<T>() ? I64.parseInt(str) : U64.parseInt(str));
    }
    assert(val instanceof JSON.Num, "Value with Key: " +  name + " with type " + nameof<T>()  + " is not an Integer");
    //@ts-ignore
    return <T>(<JSON.Num>val)._num;
  }
  if (val instanceof JSON.Null) {
    assert(isReallyNullable<T>(), "Key: " + name + " with type " + nameof<T>() + "is not nullable.");
    //@ts-ignore
    return changetype<T>(<usize>0);
  }
  if (isString<T>()) {
    //@ts-ignore
    return getStr(val, name);
  }
  assert(isReference<T>(), name + " with type " + nameof<T>() + " must be an integer, boolean, string, object, or array");
  if (isArrayLike<T>()) {
    //@ts-ignore
    if (value instanceof Uint8Array ) {
      //@ts-ignore
      return base64.decode(getStr(val, name));
    }
    //@ts-ignore
    // assert(val instanceof Arr, "Value with Key: " +  name + " with type " + nameof<T>()  + " is expected to be an array")
    //@ts-ignore only checking the instance
    return <T>decodeArray<valueof<T>>(val, name);
  }
  //@ts-ignore
  if (value instanceof u128) {
    assert(val instanceof JSON.Str);
    //@ts-ignore
    return u128.fromString(getStr(val, name));
  }
  assert(val instanceof JSON.Obj, "Value with Key: " +  name + " with type " + nameof<T>()  + " is not an object or null");
  value = changetype<T>(__alloc(offsetof<T>(), idof<T>()));
  //@ts-ignore
  return value.decode<JSON.Obj>(<JSON.Obj>val);
}