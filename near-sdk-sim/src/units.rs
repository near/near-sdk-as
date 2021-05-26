use neon::prelude::*;
use std::str::FromStr;

fn _safe_parse<T: FromStr>(cx: &mut FunctionContext, s: &str) -> NeonResult<T> {
    match s.parse() {
        Ok(v) => Ok(v),
        Err(_) => cx.throw_type_error(format!("Failed to convert to u128")),
    }
}

pub fn to_yocto(mut cx: FunctionContext) -> JsResult<JsString> {
    let value = cx.argument::<JsString>(0)?.value(&mut cx);

    // copied form https://github.com/near/near-sdk-rs/blob/master/near-sdk-sim/src/units.rs#L10-L20
    // with some modification for better error handling for neon bindings
    let vals: Vec<_> = value.split('.').collect();
    // let part1 = vals[0].parse::<u128>().unwrap() * 10u128.pow(24);
    let part1 = _safe_parse::<u128>(&mut cx, vals[0])? * 10u128.pow(24);
    let yocto_u128 = if vals.len() > 1 {
        let power = vals[1].len() as u32;
        let part2 = _safe_parse::<u128>(&mut cx, vals[1])? * 10u128.pow(24 - power);
        part1 + part2
    } else {
        part1
    };

    let yocto_str = cx.string(yocto_u128.to_string());
    return Ok(yocto_str);
}
