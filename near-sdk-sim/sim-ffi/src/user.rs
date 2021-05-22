use crate::{
    helper::{read_access_key, read_bytes, read_public_key, read_u128, read_u64},
    json_wrappers::{AccountWrapper, GenesisConfigDef},
    outcome::{BoxedExecutionResult, ExecutionResult},
};
use near_sdk::{serde_json, Balance, Gas};
use near_sdk_sim::{
    account::AccessKey, init_simulator as i_r, near_crypto::PublicKey, types::AccountId,
    ExecutionResult as ER, UserAccount as UA, UserTransaction as UT,
};
use neon::prelude::*;
use std::{cell::RefCell, ops::Deref};

type BoxedUserAccount = JsBox<RefCell<UserAccount>>;
pub struct UserAccount(pub UA);

impl Finalize for UserAccount {}
unsafe impl Send for UserAccount {}
unsafe impl Sync for UserAccount {}

impl Deref for UserAccount {
    type Target = UA;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

pub mod user_account {
    use super::*;

    pub fn account_id(mut cx: FunctionContext) -> JsResult<JsString> {
        let user_ref = cx.argument::<BoxedUserAccount>(0)?;
        let user = user_ref.borrow();
        Ok(cx.string(user.account_id()))
    }

    pub fn account(mut cx: FunctionContext) -> JsResult<JsString> {
        let user_ref = cx.argument::<BoxedUserAccount>(0)?;
        let user = user_ref.borrow();
        let acc = match user.account() {
            Some(a) => serde_json::to_string(&AccountWrapper(&a)).unwrap(),
            None => "null".to_string(),
        };
        Ok(cx.string(acc))
    }
    pub fn transfer(mut cx: FunctionContext) -> JsResult<BoxedExecutionResult> {
        let user_ref = cx.argument::<BoxedUserAccount>(0)?;
        let user = user_ref.borrow();
        let to = cx.argument::<JsString>(1)?.value(&mut cx);
        let deposit = read_u128(&mut cx, 2);
        let res = user.transfer(to, deposit);
        Ok(cx.boxed(RefCell::new(ExecutionResult(res))))
    }

    pub fn call(mut cx: FunctionContext) -> JsResult<BoxedExecutionResult> {
        let user_ref = cx.argument::<BoxedUserAccount>(0)?;
        let user = user_ref.borrow();
        let account_id = cx.argument::<JsString>(1)?.value(&mut cx);
        let method = cx.argument::<JsString>(2)?.value(&mut cx);
        let args = cx
            .argument::<JsString>(3)?
            .value(&mut cx)
            .clone()
            .into_bytes();
        let gas = read_u64(&mut cx, 4);
        let deposit = read_u128(&mut cx, 5);
        let res = user.call(account_id, &method, &args, gas, deposit);
        Ok(cx.boxed(RefCell::new(ExecutionResult(res))))
    }

    pub fn deploy(mut cx: FunctionContext) -> JsResult<BoxedUserAccount> {
        let user_ref = cx.argument::<BoxedUserAccount>(0)?;
        let user = user_ref.borrow();
        let wasm_bytes = read_bytes(&mut cx, 1);
        let account_id = cx.argument::<JsString>(2)?.value(&mut cx);
        let deposit = read_u128(&mut cx, 3);
        let new_user = user.deploy(&wasm_bytes, account_id, deposit);
        Ok(cx.boxed(RefCell::new(UserAccount(new_user))))
    }

    pub fn deploy_and_init(mut cx: FunctionContext) -> JsResult<BoxedUserAccount> {
        let user_ref = cx.argument::<BoxedUserAccount>(0)?;
        let user = user_ref.borrow();
        let wasm_bytes = read_bytes(&mut cx, 1);
        let account_id = cx.argument::<JsString>(2)?.value(&mut cx);
        let method: String = cx.argument::<JsString>(3)?.value(&mut cx);
        let args = cx
            .argument::<JsString>(4)?
            .value(&mut cx)
            .clone()
            .into_bytes();
        let deposit = read_u128(&mut cx, 5);
        let gas = read_u64(&mut cx, 6);
        let new_user = user.deploy_and_init(&wasm_bytes, account_id, &method, &args, deposit, gas);
        Ok(cx.boxed(RefCell::new(UserAccount(new_user))))
    }

    pub fn create_transaction(mut cx: FunctionContext) -> JsResult<BoxedUserTransaction> {
        let user_ref = cx.argument::<BoxedUserAccount>(0)?;
        let user = user_ref.borrow();
        let receiver_id = cx.argument::<JsString>(1)?.value(&mut cx);
        let ut = user.create_transaction(receiver_id);
        Ok(cx.boxed(RefCell::new(UserTransaction::new(Some(ut)))))
    }

    pub fn view(mut cx: FunctionContext) -> JsResult<JsString> {
        let user_ref = cx.argument::<BoxedUserAccount>(0)?;
        let user = user_ref.borrow();
        let account_id: String = cx.argument::<JsString>(1)?.value(&mut cx);
        let method: String = cx.argument::<JsString>(2)?.value(&mut cx);
        let args = cx.argument::<JsString>(3)?.value(&mut cx).into_bytes();
        let res = user.view(account_id, &method, &args);
        Ok(cx.string(serde_json::to_string(&res.unwrap_json_value()).unwrap()))
    }

    pub fn create_user_from(mut cx: FunctionContext) -> JsResult<BoxedUserAccount> {
        let user_ref = cx.argument::<BoxedUserAccount>(0)?;
        let signer_user_ref = cx.argument::<BoxedUserAccount>(1)?;
        let user = user_ref.borrow();
        let signer_user = signer_user_ref.borrow();
        let account_id: String = cx.argument::<JsString>(2)?.value(&mut cx);
        let initial_balance = read_u128(&mut cx, 3);
        let new_user = user.create_user_from(&signer_user.0, account_id, initial_balance);
        Ok(cx.boxed(RefCell::new(UserAccount(new_user))))
    }

    pub fn create_user(mut cx: FunctionContext) -> JsResult<BoxedUserAccount> {
        let user_ref = cx.argument::<BoxedUserAccount>(0)?;
        let user = user_ref.borrow();
        let account_id: String = cx.argument::<JsString>(1)?.value(&mut cx);
        let initial_balance = read_u128(&mut cx, 2);
        let new_user = user.create_user(account_id, initial_balance);
        Ok(cx.boxed(RefCell::new(UserAccount(new_user))))
    }
}

type BoxedUserTransaction = JsBox<RefCell<UserTransaction>>;
pub struct UserTransaction(Option<UT>);

impl Finalize for UserTransaction {}
unsafe impl Send for UserTransaction {}
unsafe impl Sync for UserTransaction {}

impl UserTransaction {
    fn take_inner(&mut self) -> UT {
        self.0.take().expect("UserTransaction is already consumed!")
    }

    pub fn new(ut: Option<UT>) -> Self {
        UserTransaction(ut)
    }

    pub fn submit(&mut self) -> ER {
        let ut = self.take_inner();
        ut.submit()
    }

    pub fn create_account(&mut self) -> &Self {
        // self.panic_if_none();
        let ut = self.take_inner();
        self.0 = Some(ut.create_account());
        self
    }

    pub fn deploy_contract(&mut self, code: Vec<u8>) -> &Self {
        let ut = self.take_inner();
        self.0 = Some(ut.deploy_contract(code));
        self
    }

    pub fn function_call(
        &mut self,
        method_name: String,
        args: Vec<u8>,
        gas: Gas,
        deposit: Balance,
    ) -> &Self {
        let ut = self.take_inner();
        self.0 = Some(ut.function_call(method_name, args, gas, deposit));
        self
    }

    pub fn transfer(&mut self, deposit: Balance) -> &Self {
        let ut = self.take_inner();
        self.0 = Some(ut.transfer(deposit));
        self
    }

    pub fn stake(&mut self, take: Balance, public_key: PublicKey) -> &Self {
        let ut = self.take_inner();
        self.0 = Some(ut.stake(take, public_key));
        self
    }

    pub fn add_key(&mut self, public_key: PublicKey, access_key: AccessKey) -> &Self {
        let ut = self.take_inner();
        self.0 = Some(ut.add_key(public_key, access_key));
        self
    }

    pub fn delete_key(&mut self, public_key: PublicKey) -> &Self {
        let ut = self.take_inner();
        self.0 = Some(ut.delete_key(public_key));
        self
    }

    pub fn delete_account(&mut self, beneficiary_id: AccountId) -> &Self {
        let ut = self.take_inner();
        self.0 = Some(ut.delete_account(beneficiary_id));
        self
    }
}

pub mod user_transcation {
    use super::*;

    pub fn submit(mut cx: FunctionContext) -> JsResult<BoxedExecutionResult> {
        let tx_ref = cx.argument::<BoxedUserTransaction>(0)?;
        let mut tx = tx_ref.borrow_mut();
        let res = tx.submit();
        Ok(cx.boxed(RefCell::new(ExecutionResult(res))))
    }

    pub fn create_account(mut cx: FunctionContext) -> JsResult<BoxedUserTransaction> {
        let tx = cx.argument::<BoxedUserTransaction>(0)?;
        tx.borrow_mut().create_account();
        Ok(tx)
    }

    pub fn deploy_contract(mut cx: FunctionContext) -> JsResult<BoxedUserTransaction> {
        let tx = cx.argument::<BoxedUserTransaction>(0)?;
        let wasm_bytes = read_bytes(&mut cx, 1);
        tx.borrow_mut().deploy_contract(wasm_bytes);
        Ok(tx)
    }

    pub fn function_call(mut cx: FunctionContext) -> JsResult<BoxedUserTransaction> {
        let tx = cx.argument::<BoxedUserTransaction>(0)?;
        let method_name = cx.argument::<JsString>(1)?.value(&mut cx);
        let args = cx
            .argument::<JsString>(2)?
            .value(&mut cx)
            .clone()
            .into_bytes();
        let gas = read_u64(&mut cx, 3);
        let deposit = read_u128(&mut cx, 4);
        tx.borrow_mut()
            .function_call(method_name, args, gas, deposit);
        Ok(tx)
    }

    pub fn transfer(mut cx: FunctionContext) -> JsResult<BoxedUserTransaction> {
        let tx = cx.argument::<BoxedUserTransaction>(0)?;
        let deposit = read_u128(&mut cx, 1);
        tx.borrow_mut().transfer(deposit);
        Ok(tx)
    }

    pub fn stake(mut cx: FunctionContext) -> JsResult<BoxedUserTransaction> {
        let tx = cx.argument::<BoxedUserTransaction>(0)?;
        let stake = read_u128(&mut cx, 1);
        let public_key = read_public_key(&mut cx, 2);
        tx.borrow_mut().stake(stake, public_key);
        Ok(tx)
    }

    pub fn add_key(mut cx: FunctionContext) -> JsResult<BoxedUserTransaction> {
        let tx = cx.argument::<BoxedUserTransaction>(0)?;
        let public_key = read_public_key(&mut cx, 1);
        let access_key = read_access_key(&mut cx, 2);
        tx.borrow_mut().add_key(public_key, access_key);
        Ok(tx)
    }

    pub fn delete_key(mut cx: FunctionContext) -> JsResult<BoxedUserTransaction> {
        let tx = cx.argument::<BoxedUserTransaction>(0)?;
        let public_key = read_public_key(&mut cx, 1);
        tx.borrow_mut().delete_key(public_key);
        Ok(tx)
    }

    pub fn delete_account(mut cx: FunctionContext) -> JsResult<BoxedUserTransaction> {
        let tx = cx.argument::<BoxedUserTransaction>(0)?;
        let beneficiary_id = cx.argument::<JsString>(1)?.value(&mut cx);
        tx.borrow_mut().delete_account(beneficiary_id);
        Ok(tx)
    }
}

pub fn init_simulator(mut cx: FunctionContext) -> JsResult<BoxedUserAccount> {
    let config = match cx.argument_opt(0) {
        Some(arg) => {
            let config_str = arg
                .downcast::<JsString, FunctionContext>(&mut cx)
                .or_throw(&mut cx)?
                .value(&mut cx);
            let mut de = serde_json::Deserializer::from_str(&config_str);
            Some(GenesisConfigDef::deserialize(&mut de).unwrap())
        }
        _ => None,
    };
    let user = i_r(config);
    Ok(cx.boxed(RefCell::new(UserAccount(user))))
}
