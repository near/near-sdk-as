use near_primitives::{
    runtime::config::RuntimeConfig,
    state_record::StateRecord,
    types::{AccountInfo, Balance, Gas},
};
use near_sdk::Duration;
use near_sdk_sim::runtime::GenesisConfig;

use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
#[serde(remote = "GenesisConfig")]
pub struct GenesisConfigDef {
    pub genesis_time: u64,
    pub gas_price: Balance,
    pub gas_limit: Gas,
    pub genesis_height: u64,
    pub epoch_length: u64,
    pub block_prod_time: Duration,
    pub runtime_config: RuntimeConfig,
    pub state_records: Vec<StateRecord>,
    pub validators: Vec<AccountInfo>,
}

#[derive(Serialize)]
struct GenesisConfigWrapper<'a>(#[serde(with = "GenesisConfigDef")] &'a GenesisConfig);


