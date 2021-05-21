use near_primitives::{
    runtime::config::RuntimeConfig,
    state_record::StateRecord,
    types::{AccountInfo, Balance, Gas},
};
use near_sdk::Duration;
use near_sdk_sim::runtime::GenesisConfig;
use std::fmt::Display;
use std::str::FromStr;

use serde::{de, Deserialize, Deserializer, Serialize};

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
struct GenesisConfigWrapper<'a>(#[serde(with = "GenesisConfigDef")] &'a GenesisConfig);

fn de_from_str<'de, T, D>(deserializer: D) -> Result<T, D::Error>
where
    T: FromStr,
    T::Err: Display,
    D: Deserializer<'de>,
{
    let s = String::deserialize(deserializer)?;
    T::from_str(&s).map_err(de::Error::custom)
}
