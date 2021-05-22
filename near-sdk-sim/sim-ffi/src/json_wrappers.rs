use near_primitives::account::Account;
use near_primitives::transaction::{ExecutionOutcome, ExecutionStatus};
use near_primitives::{
    runtime::config::RuntimeConfig,
    state_record::StateRecord,
    types::{AccountId, AccountInfo, Balance, Gas, StorageUsage},
};
use near_sdk::Duration;
use near_sdk_sim::hash::CryptoHash;
use near_sdk_sim::runtime::GenesisConfig;
// use neon::handle::Managed;
// use neon::prelude::*;
use std::fmt::Display;
use std::str::FromStr;

use near_sdk::serde::{de, Deserialize, Deserializer, Serialize, Serializer};
// use near_sdk::serde_json;

//
// GenesisConfig Wrapper, where u128 and u64 are serialzed as strings
//
#[derive(Serialize, Deserialize)]
#[serde(remote = "GenesisConfig")]
pub struct GenesisConfigDef {
    #[serde(deserialize_with = "de_from_str")]
    #[serde(serialize_with = "se_to_str")]
    pub genesis_time: u64,
    #[serde(deserialize_with = "de_from_str")]
    #[serde(serialize_with = "se_to_str")]
    pub gas_price: Balance,
    #[serde(deserialize_with = "de_from_str")]
    #[serde(serialize_with = "se_to_str")]
    pub gas_limit: Gas,
    #[serde(deserialize_with = "de_from_str")]
    #[serde(serialize_with = "se_to_str")]
    pub genesis_height: u64,
    #[serde(deserialize_with = "de_from_str")]
    #[serde(serialize_with = "se_to_str")]
    pub epoch_length: u64,
    #[serde(deserialize_with = "de_from_str")]
    #[serde(serialize_with = "se_to_str")]
    pub block_prod_time: Duration,
    pub runtime_config: RuntimeConfig,
    pub state_records: Vec<StateRecord>,
    pub validators: Vec<AccountInfo>,
}
#[derive(Serialize)]
pub struct GenesisConfigWrapper<'a>(#[serde(with = "GenesisConfigDef")] pub &'a GenesisConfig);

//
// ExecutionOutcome wrapper where u128 and u64 are serialized as strings
//
#[derive(Serialize)]
#[serde(remote = "ExecutionOutcome")]
pub struct ExecutionOutcomeDef {
    pub logs: Vec<String>,
    pub receipt_ids: Vec<CryptoHash>,
    #[serde(serialize_with = "se_to_str")]
    pub gas_burnt: Gas,
    #[serde(serialize_with = "se_to_str")]
    pub tokens_burnt: Balance,
    pub executor_id: AccountId,
    pub status: ExecutionStatus,
}

#[derive(Serialize)]
pub struct ExecutionOutcomeWrapper<'a>(
    #[serde(with = "ExecutionOutcomeDef")] pub &'a ExecutionOutcome,
);

//
// Account wrapper where StorageUsage is serialised as string
#[derive(Serialize, Deserialize)]
#[serde(remote = "Account")]
pub struct AccountDef {
    #[serde(serialize_with = "se_to_str")]
    pub amount: Balance,
    #[serde(serialize_with = "se_to_str")]
    pub locked: Balance,
    pub code_hash: CryptoHash,
    #[serde(serialize_with = "se_to_str")]
    pub storage_usage: StorageUsage,
}

#[derive(Serialize)]
pub struct AccountWrapper<'a>(#[serde(with = "AccountDef")] pub &'a Account);

//
// generic string serialise and deserialise helpers
//
fn de_from_str<'de, T, D>(deserializer: D) -> Result<T, D::Error>
where
    T: FromStr,
    T::Err: Display,
    D: Deserializer<'de>,
{
    let s = String::deserialize(deserializer)?;
    T::from_str(&s).map_err(de::Error::custom)
}

fn se_to_str<T, S>(x: &T, s: S) -> Result<S::Ok, S::Error>
where
    S: Serializer,
    T: ToString,
{
    s.serialize_str(&x.to_string())
}

// pub fn deserialise<'de, T, J: Managed>(
//     cx: &mut FunctionContext,
//     json: &'de str,
//     err_msg: &str,
// ) -> JsResult<'de, J>
// where
//     T: Deserialize<'de>,
// {
//     let mut de = serde_json::Deserializer::from_str(json);
//     match T::deserialize(&mut de) {
//         Ok(v) => Ok(v),
//         Err(e) => cx.throw_type_error(format!("{}.\n{}", err_msg, e)),
//     }
// }
