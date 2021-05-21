use near_primitives::transaction::{ExecutionOutcome, ExecutionStatus};
use near_primitives::{
    runtime::config::RuntimeConfig,
    state_record::StateRecord,
    types::{AccountId, AccountInfo, Balance, Gas},
};
use near_sdk::Duration;
use near_sdk_sim::hash::CryptoHash;
use near_sdk_sim::runtime::GenesisConfig;
use std::fmt::Display;
use std::str::FromStr;

use serde::{de, Deserialize, Deserializer, Serialize, Serializer};

//
// GenesisConfig Wrapper, where u128 and u64 are serialzed as strings
//
#[derive(Serialize, Deserialize)]
#[serde(remote = "GenesisConfig")]
pub struct GenesisConfigDef {
    #[serde(deserialize_with = "de_from_str")]
    pub genesis_time: u64,
    #[serde(deserialize_with = "de_from_str")]
    pub gas_price: Balance,
    #[serde(deserialize_with = "de_from_str")]
    pub gas_limit: Gas,
    #[serde(deserialize_with = "de_from_str")]
    pub genesis_height: u64,
    #[serde(deserialize_with = "de_from_str")]
    pub epoch_length: u64,
    #[serde(deserialize_with = "de_from_str")]
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
