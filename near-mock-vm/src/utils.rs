use wasm_bindgen::JsValue;

pub fn set_panic_hook() {
    // When the `console_error_panic_hook` feature is enabled, we can call the
    // `set_panic_hook` function at least once during initialization, and then
    // we will get better error messages if our code ever panics.
    //
    // For more details see
    // https://github.com/rustwasm/console_error_panic_hook#readme
    #[cfg(feature = "console_error_panic_hook")]
    console_error_panic_hook::set_once();
}

pub fn to_u128(u_128: JsValue) -> u128 {
  let balance: String = serde_wasm_bindgen::from_value(u_128).unwrap();
   u128::from_str_radix(&balance, 10).unwrap()
}