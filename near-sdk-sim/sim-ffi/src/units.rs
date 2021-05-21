use near_sdk_sim::to_yocto as to_y;
use neon::prelude::*;

pub fn to_yocto(mut cx: FunctionContext) -> JsResult<JsString> {
    let value = cx.argument::<JsString>(0)?.value(&mut cx);
    let yocto_str = cx.string(to_y(&value).to_string());
    return Ok(yocto_str);
}
