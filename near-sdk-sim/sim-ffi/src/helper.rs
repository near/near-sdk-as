use near_sdk_sim::{
    account::AccessKey, hash::CryptoHash, near_crypto::PublicKey, to_yocto as to_y,
};
use neon::prelude::*;
use std::convert::TryFrom;

pub fn to_yocto(mut cx: FunctionContext) -> JsResult<JsString> {
    let value = cx.argument::<JsString>(0)?.value(&mut cx);
    let yocto_str = cx.string(to_y(&value).to_string());
    return Ok(yocto_str);
}

// TODO: handle error better
pub fn read_bytes(cx: &mut FunctionContext, index: i32) -> Vec<u8> {
    let js_arr_handle: Handle<JsBuffer> = cx.argument(index).unwrap();
    let wasm_bytes: Vec<u8> = {
        let guard = cx.lock();
        let data = js_arr_handle.borrow(&guard);
        data.as_slice().into()
    };
    wasm_bytes
}

// TODO: improve error handling
pub fn read_u128(cx: &mut FunctionContext, index: i32) -> u128 {
    let str = cx.argument::<JsString>(index).unwrap().value(cx);
    u128::from_str_radix(&str, 10).unwrap()
}

// TODO: improve error handling
pub fn read_u64(cx: &mut FunctionContext, index: i32) -> u64 {
    let str = cx.argument::<JsString>(index).unwrap().value(cx);
    u64::from_str_radix(&str, 10).unwrap()
}

pub fn read_public_key(cx: &mut FunctionContext, index: i32) -> PublicKey {
    let str = cx.argument::<JsString>(index).unwrap().value(cx);
    near_sdk::serde_json::from_str::<PublicKey>(&str).unwrap()
}

pub fn read_access_key(cx: &mut FunctionContext, index: i32) -> AccessKey {
    let str = cx.argument::<JsString>(index).unwrap().value(cx);
    near_sdk::serde_json::from_str::<AccessKey>(&str).unwrap()
}

pub fn read_crypto_hash(cx: &mut FunctionContext, index: i32) -> CryptoHash {
    let str = cx.argument::<JsString>(index).unwrap().value(cx);
    // near_sdk::serde_json::from_str::<CryptoHash>(&str).unwrap()
    CryptoHash::try_from(str).unwrap()
}

// pub fn pack_option_as_js_obj(cx: &mut FunctionContext) -> Handle<JsObject> {
//     let obj = cx.empty_object();
//     obj
// }
