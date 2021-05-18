use near_sdk::{serde_json, Balance, Gas};
use near_sdk_sim::{
    hash::CryptoHash, init_simulator as i_s, near_crypto::PublicKey, ExecutionResult as ER,
    UserAccount, UserTransaction as UT, DEFAULT_GAS, STORAGE_AMOUNT,
};
use neon::prelude::*;

pub mod helper;
pub mod outcome;
pub mod runtime;
pub mod user;

pub struct User(UserAccount);
impl Finalize for User {}

// TODO remove this after updating simulator
unsafe impl Sync for User {}
unsafe impl Send for User {}

pub struct UserTransaction(Option<UT>);

impl UserTransaction {
    // pub fn submit(&mut self) -> ER {
    //     match self.0.as_ref() {
    //       Some(ut) => { self.0 = None; ut.submit()
    //       },
    //     None => panic!("No internal tranaction")
    //     }
    // }
}

// impl Copy for UserTransaction {}

impl Finalize for UserTransaction {}

// TODO remove this after updating simulator
unsafe impl Sync for UserTransaction {}
unsafe impl Send for UserTransaction {}

pub struct ExecutionResult(ER);

impl Finalize for ExecutionResult {}

// TODO remove this after updating simulator
unsafe impl Sync for ExecutionResult {}
unsafe impl Send for ExecutionResult {}

// TODO: handle error better
fn read_bytes(cx: &mut FunctionContext, index: i32) -> Vec<u8> {
    let js_arr_handle: Handle<JsBuffer> = cx.argument(index).unwrap();
    let wasm_bytes: Vec<u8> = {
        let guard = cx.lock();
        let data = js_arr_handle.borrow(&guard);
        data.as_slice().into()
    };
    wasm_bytes
}

// TODO: improve error handling
fn read_u128(cx: &mut FunctionContext, index: i32) -> u128 {
    let str = cx.argument::<JsString>(index).unwrap().value(cx);
    u128::from_str_radix(&str, 10).unwrap()
}

// TODO: improve error handling
fn read_u64(cx: &mut FunctionContext, index: i32) -> u64 {
    let str = cx.argument::<JsString>(index).unwrap().value(cx);
    u64::from_str_radix(&str, 10).unwrap()
}

fn _read_public_key(cx: &mut FunctionContext, index: i32) -> PublicKey {
    let str = cx.argument::<JsString>(index).unwrap().value(cx);
    near_sdk::serde_json::from_str(&str).unwrap()
}

fn read_crypto_hash(cx: &mut FunctionContext, index: i32) -> CryptoHash {
    let str = cx.argument::<JsString>(index).unwrap().value(cx);
    near_sdk::serde_json::from_str(&str).unwrap()
}
fn create_user(mut cx: FunctionContext) -> JsResult<JsBox<User>> {
    Ok(cx.boxed(User(i_s(None))))
}

mod user_old {
    use super::*;
    pub fn account_id(mut cx: FunctionContext) -> JsResult<JsString> {
        let user = cx.argument::<JsBox<User>>(0)?;
        Ok(cx.string(user.0.account_id()))
    }
    pub fn amount(mut cx: FunctionContext) -> JsResult<JsString> {
        let user = cx.argument::<JsBox<User>>(0)?;
        let balance = user.0.account().unwrap().amount;
        // let balance: u128 = cx.borrow(&user, |user| user.0.account().unwrap().amount);

        Ok(cx.string(balance.to_string()))
    }

    pub fn deploy(mut cx: FunctionContext) -> JsResult<JsBox<User>> {
        let user = cx.argument::<JsBox<User>>(0)?;
        let wasm_bytes: Vec<u8> = read_bytes(&mut cx, 1);
        let account_id: String = cx.argument::<JsString>(2)?.value(&mut cx);
        // let deposit_str = cx.argument::<JsString>(3)?.value(&mut cx);
        let deposit: u128 = read_u128(&mut cx, 3);
        let _user = user.0.deploy(&wasm_bytes, account_id, deposit);

        Ok(cx.boxed(User(_user)))
    }

    pub fn view(mut cx: FunctionContext) -> JsResult<JsString> {
        let user = cx.argument::<JsBox<User>>(0)?;
        let account_id: String = cx.argument::<JsString>(1)?.value(&mut cx);
        let method: String = cx.argument::<JsString>(2)?.value(&mut cx);
        let args = cx.argument::<JsString>(3)?.value(&mut cx).into_bytes();
        let res = user.0.view(account_id, &method, &args);
        // println!("{:#?}", res.unwrap_json_value());
        Ok(cx.string(serde_json::to_string(&res.unwrap_json_value()).unwrap()))
    }

    pub fn call(mut cx: FunctionContext) -> JsResult<JsBox<ExecutionResult>> {
        let user = cx.argument::<JsBox<User>>(0)?;
        let account_id: String = cx.argument::<JsString>(1)?.value(&mut cx);
        let method: String = cx.argument::<JsString>(2)?.value(&mut cx);
        let args_str = cx.argument::<JsString>(3)?.value(&mut cx);
        let args = args_str.clone().into_bytes();
        let gas: Gas = read_u64(&mut cx, 4);
        let deposit: Balance = read_u128(&mut cx, 5);
        let res = user.0.call(account_id, &method, &args, gas, deposit);
        Ok(cx.boxed(ExecutionResult(res)))
    }

    pub fn create_user(mut cx: FunctionContext) -> JsResult<JsBox<User>> {
        let user = cx.argument::<JsBox<User>>(0)?;
        let account_id: String = cx.argument::<JsString>(1)?.value(&mut cx);
        let initial_balance = read_u128(&mut cx, 2);
        Ok(cx.boxed(User(user.0.create_user(account_id, initial_balance))))
    }
}
mod transaction {
    use super::*;
    pub fn submit(mut cx: FunctionContext) -> JsResult<JsUndefined> {
        //JsResult<JsBox<ExecutionResult>> {
        let _tx: Handle<JsBox<UserTransaction>> = cx.argument(0)?;
        // let res = tx.submit();
        // let res = &tx;
        // let res = (*res).0.submit();
        // Ok(cx.boxed(ExecutionResult(res)))
        Ok(cx.undefined())
    }

    /// Create account for the receiver of the transaction.
    pub fn create_account(mut cx: FunctionContext) -> JsResult<JsUndefined> {
        let _tx = cx.argument::<JsBox<UserTransaction>>(0)?;
        // let tx = tx.0.create_account();
        Ok(cx.undefined())
    }

    /// Deploy Wasm binary
    pub fn deploy_contract(mut cx: FunctionContext) -> JsResult<JsUndefined> {
        let mut _tx = cx.argument::<JsBox<UserTransaction>>(0)?;
        let _bytes = read_bytes(&mut cx, 1);
        // tx.0.deploy_contract(bytes);
        Ok(cx.undefined())
    }

    /// Execute contract call to receiver
    pub fn function_call(mut cx: FunctionContext) -> JsResult<JsUndefined> {
        // let mut tx = cx.argument::<JsBox<UserTransaction>>(0)?;
        // let method_name: String = cx.argument::<JsString>(1)?.value(&mut cx);
        // let args = read_bytes(&cx, 2);
        // let gas: Gas = read_u64(&mut cx, 3);
        // let deposit: Balance = read_u128(&mut cx, 4);
        // tx.0.function_call(method_name, args, gas, deposit);
        Ok(cx.undefined())
    }

    /// Transfer deposit to receiver
    pub fn transfer(mut cx: FunctionContext) -> JsResult<JsUndefined> {
        // let mut tx = cx.argument::<JsBox<UserTransaction>>(0)?;
        // let deposit: Balance = read_u128(&mut cx, 1);
        // tx.0.transfer(deposit);
        Ok(cx.undefined())
    }

    /// Express interest in becoming a validator
    pub fn stake(mut cx: FunctionContext) -> JsResult<JsUndefined> {
        // let mut tx = cx.argument::<JsBox<UserTransaction>>(0)?;
        // let stake = read_u128(&mut cx, 1);
        // let public_key = read_public_key(&mut cx, 2);
        // tx.0.stake(stake, public_key);
        Ok(cx.undefined())
    }

    /// Add access key, either FunctionCall or FullAccess
    pub fn add_key(mut cx: FunctionContext) -> JsResult<JsUndefined> {
        // let mut tx = cx.argument::<JsBox<UserTransaction>>(0)?;
        // let stake = read_u128(&mut cx, 1);
        // let public_key = read_public_key(&mut cx, 2);
        // tx.0.stake(stake, public_key);
        Ok(cx.undefined())
    }

    /// Delete an access key
    pub fn delete_key(mut cx: FunctionContext) -> JsResult<JsUndefined> {
        // let mut tx = cx.argument::<JsBox<UserTransaction>>(0)?;
        // let stake = read_u128(&mut cx, 1);
        // let public_key = read_public_key(&mut cx, 2);
        // tx.0.stake(stake, public_key);
        Ok(cx.undefined())
    }

    /// Delete an account and send remaining balance to `beneficiary_id`
    pub fn delete_account(mut cx: FunctionContext) -> JsResult<JsUndefined> {
        // let mut tx = cx.argument::<JsBox<UserTransaction>>(0)?;
        // let stake = read_u128(&mut cx, 1);
        // let public_key = read_public_key(&mut cx, 2);
        // tx.0.stake(stake, public_key);
        Ok(cx.undefined())
    }
}

mod execution_result {
    use super::*;
    pub fn unwrap_json_value(mut cx: FunctionContext) -> JsResult<JsString> {
        let res = cx.argument::<JsBox<ExecutionResult>>(0)?;
        Ok(cx.string(res.0.unwrap_json_value().to_string()))
    }

    // /// Deserialize SuccessValue from Borsh
    // pub fn unwrap_borsh<T: BorshDeserialize>(&self) -> T {
    //     use crate::transaction::ExecutionStatus::*;
    //     match &(self.outcome).status {
    //         SuccessValue(s) => BorshDeserialize::try_from_slice(&s).unwrap(),
    //         _ => panic!("Cannot get value of failed transaction"),
    //     }
    // }

    // /// Deserialize SuccessValue from JSON
    // pub fn unwrap_json<T: DeserializeOwned>(&self) -> T {
    //     near_sdk::serde_json::from_value(self.unwrap_json_value()).unwrap()
    // }

    /// Check if transaction was successful
    pub fn is_ok(mut cx: FunctionContext) -> JsResult<JsBoolean> {
        let res = cx.argument::<JsBox<ExecutionResult>>(0)?;
        Ok(cx.boolean(res.0.is_ok()))
    }

    /// Test whether there is a SuccessValue
    pub fn has_value(mut cx: FunctionContext) -> JsResult<JsBoolean> {
        let res = cx.argument::<JsBox<ExecutionResult>>(0)?;
        Ok(cx.boolean(res.0.has_value()))
    }

    /// Asserts that the outcome is successful
    // pub fn assert_success(mut cx: FunctionContext) -> JsResult<JsBoolean> {
    //   let res = cx.argument::<JsBox<ExecutionResult>>(0)?;
    //   Ok(cx.boolean(res.0.assert_success()))
    // }

    /// Lookup an execution result from a hash
    pub fn lookup_hash(mut cx: FunctionContext) -> JsResult<JsBox<ExecutionResult>> {
        let res = cx.argument::<JsBox<ExecutionResult>>(0)?;
        let hash = read_crypto_hash(&mut cx, 1); //cx.argument::<JsString>(1)?.value(&mut cx);
        let res = res.0.lookup_hash(&hash);
        match res {
            None => panic!(),
            Some(res) => Ok(cx.boxed(ExecutionResult(res))),
        }
    }

    // fn get_outcome(&self, hash: &CryptoHash) -> Option<ExecutionResult> {
    //     match (*self.runtime).borrow().outcome(hash) {
    //         Some(out) => Some(ExecutionResult::new(out, &self.runtime, hash.clone())),
    //         None => None,
    //     }
    // }

    /// Reference to internal ExecutionOutcome
    pub fn outcome(mut cx: FunctionContext) -> JsResult<JsString> {
        let res = cx.argument::<JsBox<ExecutionResult>>(0)?;
        let str = serde_json::to_string(&res.0.outcome()).unwrap();
        Ok(cx.string(str))
    }

    // /// Return results of promises from the `receipt_ids` in the ExecutionOutcome
    // pub fn get_receipt_results(&self) -> Vec<Option<ExecutionResult>> {
    //     self.get_outcomes(&self.outcome.receipt_ids)
    // }

    // fn get_outcomes(&self, ids: &[CryptoHash]) -> Vec<Option<ExecutionResult>> {
    //     ids.iter().map(|id| self.get_outcome(&id)).collect()
    // }

    // /// Return the results of any promises created since the last transaction
    // pub fn promise_results(&self) -> Vec<Option<ExecutionResult>> {
    //     self.get_outcomes(&(*self.runtime).borrow().last_outcomes)
    // }

    // pub fn promise_errors(&self) -> Vec<Option<ExecutionResult>> {
    //     let mut res = self.promise_results();
    //     res.retain(|outcome| match outcome {
    //         Some(o) => !o.is_ok(),
    //         _ => false,
    //     });
    //     res
    // }

    // /// Execution status. Contains the result in case of successful execution.
    // /// NOTE: Should be the latest field since it contains unparsable by light client
    // /// ExecutionStatus::Failure
    // pub fn status(&self) -> ExecutionStatus {
    //     self.outcome.status.clone()
    // }

    // /// The amount of the gas burnt by the given transaction or receipt.
    // pub fn gas_burnt(&self) -> Gas {
    //     self.outcome.gas_burnt
    // }

    // /// The amount of tokens burnt corresponding to the burnt gas amount.
    // /// This value doesn't always equal to the `gas_burnt` multiplied by the gas price, because
    // /// the prepaid gas price might be lower than the actual gas price and it creates a deficit.
    // pub fn tokens_burnt(&self) -> u128 {
    //     self.outcome.tokens_burnt
    // }

    // /// Logs from this transaction or receipt.
    // pub fn logs(&self) -> &Vec<String> {
    //     &self.outcome.logs
    // }

    // /// The id of the account on which the execution happens. For transaction this is signer_id,
    // /// for receipt this is receiver_id.
    // pub fn executor_id(&self) -> &AccountId {
    //     &self.outcome.executor_id
    // }

    // /// Receipt IDs generated by this transaction or receipt.
    // pub fn receipt_ids(&self) -> &Vec<CryptoHash> {
    //     &self.outcome.receipt_ids
    // }

    // pub fn profile_data(&self) -> ProfileData {
    //     (*self.runtime)
    //         .borrow()
    //         .profile_of_outcome(&self.hash)
    //         .unwrap()
    // }
}

#[neon::main]
fn main(mut cx: ModuleContext) -> NeonResult<()> {
    cx.export_function("init", create_user)?;
    cx.export_function("user_account_id", user_old::account_id)?;
    cx.export_function("user_amount", user_old::amount)?;
    cx.export_function("user_deploy", user_old::deploy)?;
    cx.export_function("user_view", user_old::view)?;
    cx.export_function("user_call", user_old::call)?;
    cx.export_function("user_create_user", user_old::create_user)?;
    cx.export_function("transaction_submit", transaction::submit)?;
    cx.export_function("transaction_create_account", transaction::create_account)?;
    cx.export_function("transaction_deploy_contract", transaction::deploy_contract)?;
    cx.export_function("transaction_function_call", transaction::function_call)?;
    cx.export_function("transaction_transfer", transaction::transfer)?;
    cx.export_function("transaction_stake", transaction::stake)?;
    cx.export_function("transaction_add_key", transaction::add_key)?;
    cx.export_function("transaction_delete_key", transaction::delete_key)?;
    cx.export_function("transaction_delete_account", transaction::delete_account)?;
    cx.export_function(
        "executionResult_unwrap_json_value",
        execution_result::unwrap_json_value,
    )?;
    cx.export_function("executionResult_is_ok", execution_result::is_ok)?;
    cx.export_function("executionResult_has_value", execution_result::has_value)?;
    cx.export_function("executionResult_lookup_hash", execution_result::lookup_hash)?;
    cx.export_function("executionResult_outcome", execution_result::outcome)?;
    let default_gas = cx.string(DEFAULT_GAS.to_string());
    cx.export_value("DEFAULT_GAS", default_gas)?;
    let storage_amount = cx.string(STORAGE_AMOUNT.to_string());
    cx.export_value("STORAGE_AMOUNT", storage_amount)?;

    // New wrapper functions
    cx.export_function("$init_simulator", user::init_simulator)?;
    // UserAccount
    cx.export_function("$ua#account", user::user_account::account)?;
    cx.export_function("$ua#account_id", user::user_account::account_id)?;
    cx.export_function("$ua#call", user::user_account::call)?;
    cx.export_function("$ua#create_transaction", user::user_account::create_transaction)?;
    cx.export_function("$ua#create_user", user::user_account::create_user)?;
    cx.export_function("$ua#create_user_from", user::user_account::create_user_from)?;
    cx.export_function("$ua#deploy", user::user_account::deploy)?;
    cx.export_function("$ua#deploy_and_init", user::user_account::deploy_and_init)?;
    cx.export_function("$ua#transfer", user::user_account::transfer)?;
    cx.export_function("$ua#view", user::user_account::view)?;
    // UserTranscation
    cx.export_function("$ut#add_key", user::user_transcation::add_key)?;
    cx.export_function("$ut#create_account", user::user_transcation::create_account)?;
    cx.export_function("$ut#delete_account", user::user_transcation::delete_account)?;
    cx.export_function("$ut#delete_key", user::user_transcation::delete_key)?;
    cx.export_function("$ut#deploy_contract", user::user_transcation::deploy_contract)?;
    cx.export_function("$ut#function_call", user::user_transcation::function_call)?;
    cx.export_function("$ut#stake", user::user_transcation::stake)?;
    cx.export_function("$ut#submit", user::user_transcation::submit)?;
    cx.export_function("$ut#transfer", user::user_transcation::transfer)?;
    // ExecutionResult
    cx.export_function("$er#has_value", execution_result::has_value)?;
    cx.export_function("$er#is_ok", execution_result::is_ok)?;
    cx.export_function("$er#lookup_hash", execution_result::lookup_hash)?;
    cx.export_function("$er#outcome", execution_result::outcome)?;
    cx.export_function("$er#unwrap_json_value", execution_result::unwrap_json_value)?;

    Ok(())
}
