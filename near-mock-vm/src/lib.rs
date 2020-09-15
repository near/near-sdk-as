pub mod memory;
pub mod mocked_chain;
pub mod utils;
pub mod runner;

#[cfg(feature="use_wee_alloc")]
#[global_allocator]
static ALLOC: near_sdk::wee_alloc::WeeAlloc<'_> = near_sdk::wee_alloc::WeeAlloc::INIT;


#[wasm_bindgen::prelude::wasm_bindgen(start)]
pub fn main() {
  utils::set_panic_hook();
}

