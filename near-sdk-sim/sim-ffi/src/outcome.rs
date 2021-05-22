use crate::helper::read_crypto_hash;
use crate::json_wrappers::ExecutionOutcomeWrapper;
use near_sdk::serde_json;
use near_sdk_sim::ExecutionResult as ER;
use neon::prelude::*;
use std::cell::RefCell;
use std::ops::Deref;

pub type BoxedExecutionResult = JsBox<RefCell<ExecutionResult>>;

pub struct ExecutionResult(pub ER);

impl Finalize for ExecutionResult {}
unsafe impl Sync for ExecutionResult {}
unsafe impl Send for ExecutionResult {}

impl Deref for ExecutionResult {
    type Target = ER;
    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl ExecutionResult {
    pub fn new_ref(inner: ER) -> RefCell<ExecutionResult> {
        RefCell::new(ExecutionResult(inner))
    }
}

pub mod execution_result {
    use super::*;

    pub fn unwrap_json_value(mut cx: FunctionContext) -> JsResult<JsString> {
        let res_ref = cx.argument::<BoxedExecutionResult>(0)?;
        let res = res_ref.borrow();
        Ok(cx.string(res.unwrap_json_value().to_string()))
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

    pub fn is_ok(mut cx: FunctionContext) -> JsResult<JsBoolean> {
        let res_ref = cx.argument::<BoxedExecutionResult>(0)?;
        let res = res_ref.borrow();
        Ok(cx.boolean(res.is_ok()))
    }

    pub fn has_value(mut cx: FunctionContext) -> JsResult<JsBoolean> {
        let res_ref = cx.argument::<BoxedExecutionResult>(0)?;
        let res = res_ref.borrow();
        Ok(cx.boolean(res.has_value()))
    }

    // /// Asserts that the outcome is successful
    // pub fn assert_success(&self) {
    //     assert!(self.is_ok(), "Outcome {:#?} was a failure", self.outcome);
    // }

    pub fn lookup_hash(mut cx: FunctionContext) -> JsResult<JsArray> {
        let self_ref = cx.argument::<BoxedExecutionResult>(0)?;
        let hash = read_crypto_hash(&mut cx, 1)?;
        let lookup_res = self_ref.borrow().lookup_hash(&hash);
        match lookup_res {
            None => Ok(cx.empty_array()),
            Some(r) => {
                let array = JsArray::new(&mut cx, 1);
                let boxed = cx.boxed(ExecutionResult::new_ref(r));
                array.set(&mut cx, 0, boxed).unwrap();
                Ok(array)
            }
        }
    }

    pub fn outcome(mut cx: FunctionContext) -> JsResult<JsString> {
        let res = cx.argument::<BoxedExecutionResult>(0)?;
        // let out = res.borrow().outcome();
        let outcome_json =
            serde_json::to_string(&ExecutionOutcomeWrapper(res.borrow().outcome())).unwrap();
        // let outcome_json = serde_json::to_string(&res.borrow().outcome()).unwrap();
        Ok(cx.string(outcome_json))
    }

    pub fn get_receipt_results(mut cx: FunctionContext) -> JsResult<JsArray> {
        let res_ref = cx.argument::<BoxedExecutionResult>(0)?;
        let res = res_ref.borrow();
        let results = res.get_receipt_results();

        let js_array = JsArray::new(&mut cx, results.len() as u32);
        for (i, obj) in results.iter().enumerate() {
            // //  pub fn get_receipt_results(&self) -> Vec<Option<ExecutionResult>> {
            // // Since we cannot return array of Option, we convert it to JsArray of tuples
            // // [  Some(ref),        None,         Some(ref) ]
            // // [ (true, ref), (false, self_ref), (true, ref)]
            // let arr = JsArray::new(&mut cx, 2);
            // match obj {
            //     Some(r) => {
            //         arr.set(&mut cx, 0, cx.boolean(true));
            //         arr.set(&mut cx, 0, cx.boxed(RefCell::new(ExecutionResult(*r))));
            //     }
            //     None => {
            //         arr.set(&mut cx, 0, cx.boolean(false));
            //         arr.set(&mut cx, 0, res);
            //     }
            // }
            // js_array.set(&mut cx, i as u32, arr).unwrap();
            let boxed_obj = cx.boxed(RefCell::new(ExecutionResult(obj.as_ref().unwrap().clone())));
            js_array.set(&mut cx, i as u32, boxed_obj).unwrap();
        }
        Ok(js_array)
    }

    pub fn promise_results(mut cx: FunctionContext) -> JsResult<JsArray> {
        let res = cx.argument::<BoxedExecutionResult>(0)?;
        let results = res.borrow().promise_results();

        let js_array = JsArray::new(&mut cx, results.len() as u32);
        for (i, obj) in results.iter().enumerate() {
            let boxed_obj = cx.boxed(RefCell::new(ExecutionResult(obj.as_ref().unwrap().clone())));
            js_array.set(&mut cx, i as u32, boxed_obj).unwrap();
        }
        Ok(js_array)
    }

    pub fn promise_errors(mut cx: FunctionContext) -> JsResult<JsArray> {
        let res = cx.argument::<BoxedExecutionResult>(0)?;
        let results = res.borrow().promise_errors();

        let js_array = JsArray::new(&mut cx, results.len() as u32);
        for (i, obj) in results.iter().enumerate() {
            let boxed_obj = cx.boxed(RefCell::new(ExecutionResult(obj.as_ref().unwrap().clone())));
            js_array.set(&mut cx, i as u32, boxed_obj).unwrap();
        }
        Ok(js_array)
    }

    pub fn status(mut cx: FunctionContext) -> JsResult<JsString> {
        let res = cx.argument::<BoxedExecutionResult>(0)?;
        let status = res.borrow().status();
        Ok(cx.string(serde_json::to_string(&status).unwrap()))
    }

    pub fn gas_burnt(mut cx: FunctionContext) -> JsResult<JsString> {
        let res = cx.argument::<BoxedExecutionResult>(0)?;
        let gas = res.borrow().gas_burnt();
        Ok(cx.string(gas.to_string()))
    }

    pub fn tokens_burnt(mut cx: FunctionContext) -> JsResult<JsString> {
        let res = cx.argument::<BoxedExecutionResult>(0)?;
        let tokens = res.borrow().tokens_burnt();
        Ok(cx.string(tokens.to_string()))
    }

    pub fn logs(mut cx: FunctionContext) -> JsResult<JsArray> {
        let res_ref = cx.argument::<BoxedExecutionResult>(0)?;
        let res = res_ref.borrow();
        let logs = res.logs();
        let js_array = JsArray::new(&mut cx, logs.len() as u32);
        for (i, v) in logs.iter().enumerate() {
            let js_str = cx.string(v);
            js_array.set(&mut cx, i as u32, js_str).unwrap();
        }
        Ok(js_array)
    }

    pub fn executor_id(mut cx: FunctionContext) -> JsResult<JsString> {
        let res_ref = cx.argument::<BoxedExecutionResult>(0)?;
        let res = res_ref.borrow();
        let exec_id = res.executor_id();
        Ok(cx.string(exec_id))
    }

    pub fn receipt_ids(mut cx: FunctionContext) -> JsResult<JsArray> {
        let res_ref = cx.argument::<BoxedExecutionResult>(0)?;
        let res = res_ref.borrow();
        let ids = res.receipt_ids();
        let js_array = JsArray::new(&mut cx, ids.len() as u32);
        for (i, v) in ids.iter().enumerate() {
            // let js_str = cx.string(serde_json::to_string(&v).unwrap());
            let js_str = cx.string(String::from(v));
            js_array.set(&mut cx, i as u32, js_str).unwrap();
        }
        Ok(js_array)
    }

    // pub fn profile_data(&self) -> ProfileData {
    //     (*self.runtime).borrow().profile_of_outcome(&self.hash).unwrap()
    // }
}
