use near_sdk_sim::{DEFAULT_GAS, STORAGE_AMOUNT};
use neon::prelude::*;

mod helper;
mod json_wrappers;
pub mod outcome;
pub mod units;
pub mod user;

#[neon::main]
fn main(mut cx: ModuleContext) -> NeonResult<()> {
    let default_gas = cx.string(DEFAULT_GAS.to_string());
    cx.export_value("$DEFAULT_GAS", default_gas)?;
    let storage_amount = cx.string(STORAGE_AMOUNT.to_string());
    cx.export_value("$STORAGE_AMOUNT", storage_amount)?;

    // New wrapper functions
    cx.export_function("$init_simulator", user::init_simulator)?;
    // UserAccount
    cx.export_function("$ua$account", user::user_account::account)?;
    cx.export_function("$ua$account_id", user::user_account::account_id)?;
    cx.export_function("$ua$call", user::user_account::call)?;
    cx.export_function(
        "$ua$create_transaction",
        user::user_account::create_transaction,
    )?;
    cx.export_function("$ua$create_user", user::user_account::create_user)?;
    cx.export_function("$ua$create_user_from", user::user_account::create_user_from)?;
    cx.export_function("$ua$deploy", user::user_account::deploy)?;
    cx.export_function("$ua$deploy_and_init", user::user_account::deploy_and_init)?;
    cx.export_function("$ua$transfer", user::user_account::transfer)?;
    cx.export_function("$ua$view", user::user_account::view)?;
    // UserTranscation
    cx.export_function("$ut$add_key", user::user_transcation::add_key)?;
    cx.export_function("$ut$create_account", user::user_transcation::create_account)?;
    cx.export_function("$ut$delete_account", user::user_transcation::delete_account)?;
    cx.export_function("$ut$delete_key", user::user_transcation::delete_key)?;
    cx.export_function(
        "$ut$deploy_contract",
        user::user_transcation::deploy_contract,
    )?;
    cx.export_function("$ut$function_call", user::user_transcation::function_call)?;
    cx.export_function("$ut$stake", user::user_transcation::stake)?;
    cx.export_function("$ut$submit", user::user_transcation::submit)?;
    cx.export_function("$ut$transfer", user::user_transcation::transfer)?;
    // ExecutionResult
    cx.export_function("$er$executor_id", outcome::execution_result::executor_id)?;
    cx.export_function("$er$gas_burnt", outcome::execution_result::gas_burnt)?;
    cx.export_function(
        "$er$get_receipt_results",
        outcome::execution_result::get_receipt_results,
    )?;
    cx.export_function("$er$has_value", outcome::execution_result::has_value)?;
    cx.export_function("$er$is_ok", outcome::execution_result::is_ok)?;
    cx.export_function("$er$logs", outcome::execution_result::logs)?;
    cx.export_function("$er$lookup_hash", outcome::execution_result::lookup_hash)?;
    cx.export_function("$er$outcome", outcome::execution_result::outcome)?;
    cx.export_function(
        "$er$promise_errors",
        outcome::execution_result::promise_errors,
    )?;
    cx.export_function(
        "$er$promise_results",
        outcome::execution_result::promise_results,
    )?;
    cx.export_function("$er$receipt_ids", outcome::execution_result::receipt_ids)?;
    cx.export_function("$er$status", outcome::execution_result::status)?;
    cx.export_function("$er$tokens_burnt", outcome::execution_result::tokens_burnt)?;
    cx.export_function(
        "$er$unwrap_json_value",
        outcome::execution_result::unwrap_json_value,
    )?;

    // utils
    cx.export_function("$to_yocto", units::to_yocto)?;

    Ok(())
}
