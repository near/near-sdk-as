use near_sdk_sim::{DEFAULT_GAS, UserAccount, init_simulator as i_s};
use near_sdk::serde_json::{json};
use neon::prelude::*;

//   pub class JsRuntime for Runtime {
//     init(_) {
//       Ok(Runtime::default())
//     }
struct User(UserAccount);
impl Finalize for User {}

// TODO remove this after updating simulator
unsafe impl Sync for User {}
unsafe impl Send for User {}

fn create_user(mut cx: FunctionContext) -> JsResult<JsBox<User>> {
    Ok(cx.boxed(User(i_s(None))))
}

fn amount(mut cx: FunctionContext) -> JsResult<JsString> {
    let user = cx.argument::<JsBox<User>>(0)?;
    let balance = user.0.account().unwrap().amount;
    // let balance: u128 = cx.borrow(&user, |user| user.0.account().unwrap().amount);

    Ok(cx.string(balance.to_string()))
}

fn deploy(mut cx: FunctionContext) -> JsResult<JsBox<User>> {
    let user = cx.argument::<JsBox<User>>(0)?;
    let js_arr_handle: Handle<JsBuffer> = cx.argument(1)?;
    let wasm_bytes: Vec<u8> = {
        let guard = cx.lock();
        let data = js_arr_handle.borrow(&guard);
        data.as_slice().into()
    };
    let account_id: String = cx.argument::<JsString>(2)?.value(&mut cx);
    let deposit_str = cx.argument::<JsString>(3)?.value(&mut cx);
    let deposit: u128 = u128::from_str_radix(&deposit_str, 10).unwrap();
    let _user = user.0.deploy(&wasm_bytes, account_id, deposit);
    // println!("{:#?}, {:#?}", res, 1); // user.view(account_id.clone(), &"getCounter", &vec![]));
    
    // let mut handle = JsUser::new::<_, JsUser, _>(&mut cx, vec![])?;
    // cx.borrow_mut(&mut handle, |mut user| {
    //   user.0 = Some(_user);
    // });
    // _user.deploy(&wasm_bytes, account_id, deposit);

    Ok(cx.boxed(User(_user)))
}

fn view(mut cx: FunctionContext) -> JsResult<JsUndefined> {
  let user = cx.argument::<JsBox<User>>(0)?;
  let account_id: String = cx.argument::<JsString>(1)?.value(&mut cx);
  let method: String = cx.argument::<JsString>(2)?.value(&mut cx);
  let res = user.0.view(account_id, &method, &vec![]);
  println!("{:#?}", res.unwrap_json_value());
  Ok(cx.undefined())
}

fn call(mut cx: FunctionContext) -> JsResult<JsUndefined> {
  let user = cx.argument::<JsBox<User>>(0)?;
  let account_id: String = cx.argument::<JsString>(1)?.value(&mut cx);
  let method: String = cx.argument::<JsString>(2)?.value(&mut cx);
  let args = json!({}).to_string().into_bytes();
  let res = user.0.call(account_id, &method, &args, DEFAULT_GAS, 0);
  println!("{:#?}", res);
  Ok(cx.undefined())
}

//     method deploy(mut cx) {
//       let signer_id: String = cx.argument::<JsString>(0)?.value(&mut cx);

//       let js_arr_handle: Handle<JsBuffer> = cx.argument(1)?;
//       let wasm_bytes: Vec<u8> = {
//         let guard = cx.lock();
//         let data = js_arr_handle.borrow(&guard);
//         data.as_slice().into()
//       };
//       let account_id: String = cx.argument::<JsString>(2)?.value(&mut cx);
//       let deposit_str = cx.argument::<JsString>(3)?.value(&mut cx);
//       let deposit: u128 = u128::from_str_radix(&deposit_str, 10).unwrap();
//       let mut this = cx.this();
//       cx.borrow_mut(&mut this, |mut runtime| {
//         runtime.deploy(signer_id, &wasm_bytes, account_id, deposit);
//       });
//       // _user.deploy(&wasm_bytes, account_id, deposit);

//       Ok(cx.undefined().upcast())
//     }
//   }
//             // let mut logger = JsLazyLogger::new::<_, JsLazyLogger, _>(&mut cx, vec![])?;
// //
//   pub class JsUser for User {

//     init(_) {
//       Ok(User(None))
//     }

//     method deploy(mut cx) {
//       let js_arr_handle: Handle<JsBuffer> = cx.argument(0)?;
//       let wasm_bytes: Vec<u8> = {
//         let guard = cx.lock();
//         let data = js_arr_handle.borrow(&guard);
//         data.as_slice().into()
//       };
//       let account_id: String = cx.argument::<JsString>(1)?.value();
//       let deposit_str = cx.argument::<JsString>(2)?.value();
//       let deposit: u128 = u128::from_str_radix(&deposit_str, 10).unwrap();
//       let mut this = cx.this();
//       let _user = cx.borrow(&mut this, |user| {
//         let user: &UserAccount = user.0.as_ref().unwrap();
//         let signer = InMemorySigner::from_seed(&account_id, KeyType::ED25519, &account_id);

//         let res = user.create_transaction(account_id.clone())
//           .create_account()
//           .add_key(signer.public_key(), AccessKey::full_access())
//           .transfer(deposit)
//           .deploy_contract(wasm_bytes.to_vec())
//           .submit();

//         // user.deploy(&wasm_bytes, account_id, deposit)
//         println!("{:#?}, {:#?}", res,1 );// user.view(account_id.clone(), &"getCounter", &vec![]));
//       });
//       let mut handle = JsUser::new::<_, JsUser, _>(&mut cx, vec![])?;
//       // cx.borrow_mut(&mut handle, |mut user| {
//       //   user.0 = Some(_user);
//       // });
//       // _user.deploy(&wasm_bytes, account_id, deposit);

//       Ok(handle.upcast())
//     }

//     method amount(mut cx) {
//       let this = cx.this();
//       let balance = cx.borrow(&this, |user| user.0.as_ref().unwrap().account().unwrap().amount);
//       Ok(cx.string(balance.to_string()).upcast())
//     }

//     method view(mut cx) {
//       let this = cx.this();
//       let account_id: String = cx.argument::<JsString>(0)?.value();
//       let method: String = cx.argument::<JsString>(1)?.value();
//       let res = cx.borrow(&this, |user| {
//         let user: &UserAccount = user.0.as_ref().unwrap();
//         println!("view!!!");
//         user.view(account_id, &method, &vec![])
//       });
//       println!("{:#?}", res);
//       Ok(cx.undefined().upcast())
//     }

fn hello(mut cx: FunctionContext) -> JsResult<JsString> {
    Ok(cx.string("hello node"))
}

#[neon::main]
fn main(mut cx: ModuleContext) -> NeonResult<()> {
    cx.export_function("hello", hello)?;
    cx.export_function("create_user", create_user)?;
    cx.export_function("amount", amount)?;
    cx.export_function("deploy", deploy)?;
    cx.export_function("view", view)?;
    cx.export_function("call", call)?;


    Ok(())
}
