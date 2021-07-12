use near_sdk_sim::{account::AccessKey, hash::CryptoHash, near_crypto::PublicKey};
use neon::prelude::*;
use std::convert::TryFrom;
use std::str::FromStr;

pub fn read_bytes(cx: &mut FunctionContext, index: i32) -> NeonResult<Vec<u8>> {
    let js_arr_handle: Handle<JsBuffer> = cx.argument(index)?;
    let wasm_bytes: Vec<u8> = {
        let guard = cx.lock();
        let data = js_arr_handle.borrow(&guard);
        data.as_slice().into()
    };
    Ok(wasm_bytes)
}

pub fn read_u128(cx: &mut FunctionContext, index: i32) -> NeonResult<u128> {
    let str = cx.argument::<JsString>(index)?.value(cx);
    match u128::from_str_radix(&str, 10) {
        Ok(v) => Ok(v),
        Err(e) => cx.throw_type_error(format!("Failed to convert '{}' to u128.\n{}", str, e)),
    }
}

pub fn read_u64(cx: &mut FunctionContext, index: i32) -> NeonResult<u64> {
    let str = cx.argument::<JsString>(index)?.value(cx);
    match u64::from_str_radix(&str, 10) {
        Ok(v) => Ok(v),
        Err(e) => cx.throw_type_error(format!("Failed to convert '{}' to u64.\n{}", str, e)),
    }
}

pub fn read_public_key(cx: &mut FunctionContext, index: i32) -> NeonResult<PublicKey> {
    let str = cx.argument::<JsString>(index)?.value(cx);
    match PublicKey::from_str(&str) {
        Ok(v) => Ok(v),
        Err(e) => cx.throw_type_error(format!("Failed to convert '{}' to PublicKey.\n{}", str, e)),
    }
}

pub fn read_access_key(cx: &mut FunctionContext, index: i32) -> NeonResult<AccessKey> {
    let str = cx.argument::<JsString>(index)?.value(cx);
    match near_sdk::serde_json::from_str::<AccessKey>(&str) {
        Ok(v) => Ok(v),
        Err(e) => cx.throw_type_error(format!("Failed to convert '{}' to AccessKey.\n{}", str, e)),
    }
}

pub fn read_crypto_hash(cx: &mut FunctionContext, index: i32) -> NeonResult<CryptoHash> {
    let str = cx.argument::<JsString>(index)?.value(cx);
    match CryptoHash::try_from(str) {
        Ok(v) => Ok(v),
        Err(e) => cx.throw_type_error(format!(
            "Failed to convert given value to CryptoHash.\n{}",
            e
        )),
    }
}
