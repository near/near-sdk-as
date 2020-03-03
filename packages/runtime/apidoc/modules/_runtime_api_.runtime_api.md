[near-runtime-ts](../README.md) > ["runtime_api"](../modules/_runtime_api_.md) > [runtime_api](../modules/_runtime_api_.runtime_api.md)

# Module: runtime_api

## Index

### Functions

* [abort](_runtime_api_.runtime_api.md#abort)
* [account_balance](_runtime_api_.runtime_api.md#account_balance)
* [attached_deposit](_runtime_api_.runtime_api.md#attached_deposit)
* [block_index](_runtime_api_.runtime_api.md#block_index)
* [current_account_id](_runtime_api_.runtime_api.md#current_account_id)
* [gas](_runtime_api_.runtime_api.md#gas)
* [input](_runtime_api_.runtime_api.md#input)
* [keccak256](_runtime_api_.runtime_api.md#keccak256)
* [keccak512](_runtime_api_.runtime_api.md#keccak512)
* [log_utf16](_runtime_api_.runtime_api.md#log_utf16)
* [log_utf8](_runtime_api_.runtime_api.md#log_utf8)
* [panic](_runtime_api_.runtime_api.md#panic)
* [predecessor_account_id](_runtime_api_.runtime_api.md#predecessor_account_id)
* [prepaid_gas](_runtime_api_.runtime_api.md#prepaid_gas)
* [promise_and](_runtime_api_.runtime_api.md#promise_and)
* [promise_batch_action_add_key_with_full_access](_runtime_api_.runtime_api.md#promise_batch_action_add_key_with_full_access)
* [promise_batch_action_add_key_with_function_call](_runtime_api_.runtime_api.md#promise_batch_action_add_key_with_function_call)
* [promise_batch_action_create_account](_runtime_api_.runtime_api.md#promise_batch_action_create_account)
* [promise_batch_action_delete_account](_runtime_api_.runtime_api.md#promise_batch_action_delete_account)
* [promise_batch_action_delete_key](_runtime_api_.runtime_api.md#promise_batch_action_delete_key)
* [promise_batch_action_deploy_contract](_runtime_api_.runtime_api.md#promise_batch_action_deploy_contract)
* [promise_batch_action_function_call](_runtime_api_.runtime_api.md#promise_batch_action_function_call)
* [promise_batch_action_stake](_runtime_api_.runtime_api.md#promise_batch_action_stake)
* [promise_batch_action_transfer](_runtime_api_.runtime_api.md#promise_batch_action_transfer)
* [promise_batch_create](_runtime_api_.runtime_api.md#promise_batch_create)
* [promise_batch_then](_runtime_api_.runtime_api.md#promise_batch_then)
* [promise_create](_runtime_api_.runtime_api.md#promise_create)
* [promise_result](_runtime_api_.runtime_api.md#promise_result)
* [promise_results_count](_runtime_api_.runtime_api.md#promise_results_count)
* [promise_return](_runtime_api_.runtime_api.md#promise_return)
* [promise_then](_runtime_api_.runtime_api.md#promise_then)
* [random_seed](_runtime_api_.runtime_api.md#random_seed)
* [read_register](_runtime_api_.runtime_api.md#read_register)
* [register_len](_runtime_api_.runtime_api.md#register_len)
* [sha256](_runtime_api_.runtime_api.md#sha256)
* [signer_account_id](_runtime_api_.runtime_api.md#signer_account_id)
* [signer_account_pk](_runtime_api_.runtime_api.md#signer_account_pk)
* [storage_has_key](_runtime_api_.runtime_api.md#storage_has_key)
* [storage_iter_next](_runtime_api_.runtime_api.md#storage_iter_next)
* [storage_iter_prefix](_runtime_api_.runtime_api.md#storage_iter_prefix)
* [storage_iter_range](_runtime_api_.runtime_api.md#storage_iter_range)
* [storage_read](_runtime_api_.runtime_api.md#storage_read)
* [storage_remove](_runtime_api_.runtime_api.md#storage_remove)
* [storage_usage](_runtime_api_.runtime_api.md#storage_usage)
* [storage_write](_runtime_api_.runtime_api.md#storage_write)
* [used_gas](_runtime_api_.runtime_api.md#used_gas)
* [value_return](_runtime_api_.runtime_api.md#value_return)

---

## Functions

<a id="abort"></a>

###  abort

▸ **abort**(msg_ptr: *`u32`*, filename_ptr: *`u32`*, line: *`u32`*, col: *`u32`*): `void`

*Defined in [runtime_api.ts:89](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L89)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| msg_ptr | `u32` |
| filename_ptr | `u32` |
| line | `u32` |
| col | `u32` |

**Returns:** `void`

___
<a id="account_balance"></a>

###  account_balance

▸ **account_balance**(balance_ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:45](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L45)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| balance_ptr | `u64` |

**Returns:** `void`

___
<a id="attached_deposit"></a>

###  attached_deposit

▸ **attached_deposit**(balance_ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:48](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L48)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| balance_ptr | `u64` |

**Returns:** `void`

___
<a id="block_index"></a>

###  block_index

▸ **block_index**(): `u64`

*Defined in [runtime_api.ts:35](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L35)*

**Returns:** `u64`

___
<a id="current_account_id"></a>

###  current_account_id

▸ **current_account_id**(register_id: *`u64`*): `void`

*Defined in [runtime_api.ts:20](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L20)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| register_id | `u64` |

**Returns:** `void`

___
<a id="gas"></a>

###  gas

▸ **gas**(gas_amount: *`u32`*): `void`

*Defined in [runtime_api.ts:177](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L177)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| gas_amount | `u32` |

**Returns:** `void`

___
<a id="input"></a>

###  input

▸ **input**(register_id: *`u64`*): `void`

*Defined in [runtime_api.ts:32](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L32)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| register_id | `u64` |

**Returns:** `void`

___
<a id="keccak256"></a>

###  keccak256

▸ **keccak256**(value_len: *`u64`*, value_ptr: *`u64`*, register_id: *`u64`*): `void`

*Defined in [runtime_api.ts:67](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L67)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| value_len | `u64` |
| value_ptr | `u64` |
| register_id | `u64` |

**Returns:** `void`

___
<a id="keccak512"></a>

###  keccak512

▸ **keccak512**(value_len: *`u64`*, value_ptr: *`u64`*, register_id: *`u64`*): `void`

*Defined in [runtime_api.ts:70](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L70)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| value_len | `u64` |
| value_ptr | `u64` |
| register_id | `u64` |

**Returns:** `void`

___
<a id="log_utf16"></a>

###  log_utf16

▸ **log_utf16**(len: *`u64`*, ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:86](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L86)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| len | `u64` |
| ptr | `u64` |

**Returns:** `void`

___
<a id="log_utf8"></a>

###  log_utf8

▸ **log_utf8**(len: *`u64`*, ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:83](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L83)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| len | `u64` |
| ptr | `u64` |

**Returns:** `void`

___
<a id="panic"></a>

###  panic

▸ **panic**(): `void`

*Defined in [runtime_api.ts:80](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L80)*

**Returns:** `void`

___
<a id="predecessor_account_id"></a>

###  predecessor_account_id

▸ **predecessor_account_id**(register_id: *`u64`*): `void`

*Defined in [runtime_api.ts:29](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L29)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| register_id | `u64` |

**Returns:** `void`

___
<a id="prepaid_gas"></a>

###  prepaid_gas

▸ **prepaid_gas**(): `u64`

*Defined in [runtime_api.ts:51](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L51)*

**Returns:** `u64`

___
<a id="promise_and"></a>

###  promise_and

▸ **promise_and**(promise_idx_ptr: *`u64`*, promise_idx_count: *`u64`*): `u64`

*Defined in [runtime_api.ts:102](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L102)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_idx_ptr | `u64` |
| promise_idx_count | `u64` |

**Returns:** `u64`

___
<a id="promise_batch_action_add_key_with_full_access"></a>

###  promise_batch_action_add_key_with_full_access

▸ **promise_batch_action_add_key_with_full_access**(promise_index: *`u64`*, public_key_len: *`u64`*, public_key_ptr: *`u64`*, nonce: *`u64`*): `void`

*Defined in [runtime_api.ts:139](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L139)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_index | `u64` |
| public_key_len | `u64` |
| public_key_ptr | `u64` |
| nonce | `u64` |

**Returns:** `void`

___
<a id="promise_batch_action_add_key_with_function_call"></a>

###  promise_batch_action_add_key_with_function_call

▸ **promise_batch_action_add_key_with_function_call**(promise_index: *`u64`*, public_key_len: *`u64`*, public_key_ptr: *`u64`*, nonce: *`u64`*, allowance_ptr: *`u64`*, receiver_id_len: *`u64`*, receiver_id_ptr: *`u64`*, method_names_len: *`u64`*, method_names_ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:142](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L142)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_index | `u64` |
| public_key_len | `u64` |
| public_key_ptr | `u64` |
| nonce | `u64` |
| allowance_ptr | `u64` |
| receiver_id_len | `u64` |
| receiver_id_ptr | `u64` |
| method_names_len | `u64` |
| method_names_ptr | `u64` |

**Returns:** `void`

___
<a id="promise_batch_action_create_account"></a>

###  promise_batch_action_create_account

▸ **promise_batch_action_create_account**(promise_index: *`u64`*): `void`

*Defined in [runtime_api.ts:124](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L124)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_index | `u64` |

**Returns:** `void`

___
<a id="promise_batch_action_delete_account"></a>

###  promise_batch_action_delete_account

▸ **promise_batch_action_delete_account**(promise_index: *`u64`*, beneficiary_id_len: *`u64`*, beneficiary_id_ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:148](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L148)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_index | `u64` |
| beneficiary_id_len | `u64` |
| beneficiary_id_ptr | `u64` |

**Returns:** `void`

___
<a id="promise_batch_action_delete_key"></a>

###  promise_batch_action_delete_key

▸ **promise_batch_action_delete_key**(promise_index: *`u64`*, public_key_len: *`u64`*, public_key_ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:145](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L145)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_index | `u64` |
| public_key_len | `u64` |
| public_key_ptr | `u64` |

**Returns:** `void`

___
<a id="promise_batch_action_deploy_contract"></a>

###  promise_batch_action_deploy_contract

▸ **promise_batch_action_deploy_contract**(promise_index: *`u64`*, code_len: *`u64`*, code_ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:127](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L127)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_index | `u64` |
| code_len | `u64` |
| code_ptr | `u64` |

**Returns:** `void`

___
<a id="promise_batch_action_function_call"></a>

###  promise_batch_action_function_call

▸ **promise_batch_action_function_call**(promise_index: *`u64`*, method_name_len: *`u64`*, method_name_ptr: *`u64`*, arguments_len: *`u64`*, arguments_ptr: *`u64`*, amount_ptr: *`u64`*, gas: *`u64`*): `void`

*Defined in [runtime_api.ts:130](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L130)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_index | `u64` |
| method_name_len | `u64` |
| method_name_ptr | `u64` |
| arguments_len | `u64` |
| arguments_ptr | `u64` |
| amount_ptr | `u64` |
| gas | `u64` |

**Returns:** `void`

___
<a id="promise_batch_action_stake"></a>

###  promise_batch_action_stake

▸ **promise_batch_action_stake**(promise_index: *`u64`*, amount_ptr: *`u64`*, public_key_len: *`u64`*, public_key_ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:136](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L136)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_index | `u64` |
| amount_ptr | `u64` |
| public_key_len | `u64` |
| public_key_ptr | `u64` |

**Returns:** `void`

___
<a id="promise_batch_action_transfer"></a>

###  promise_batch_action_transfer

▸ **promise_batch_action_transfer**(promise_index: *`u64`*, amount_ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:133](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L133)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_index | `u64` |
| amount_ptr | `u64` |

**Returns:** `void`

___
<a id="promise_batch_create"></a>

###  promise_batch_create

▸ **promise_batch_create**(account_id_len: *`u64`*, account_id_ptr: *`u64`*): `u64`

*Defined in [runtime_api.ts:114](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L114)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| account_id_len | `u64` |
| account_id_ptr | `u64` |

**Returns:** `u64`

___
<a id="promise_batch_then"></a>

###  promise_batch_then

▸ **promise_batch_then**(promise_index: *`u64`*, account_id_len: *`u64`*, account_id_ptr: *`u64`*): `u64`

*Defined in [runtime_api.ts:117](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L117)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_index | `u64` |
| account_id_len | `u64` |
| account_id_ptr | `u64` |

**Returns:** `u64`

___
<a id="promise_create"></a>

###  promise_create

▸ **promise_create**(account_id_len: *`u64`*, account_id_ptr: *`u64`*, method_name_len: *`u64`*, method_name_ptr: *`u64`*, arguments_len: *`u64`*, arguments_ptr: *`u64`*, amount_ptr: *`u64`*, gas: *`u64`*): `u64`

*Defined in [runtime_api.ts:96](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L96)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| account_id_len | `u64` |
| account_id_ptr | `u64` |
| method_name_len | `u64` |
| method_name_ptr | `u64` |
| arguments_len | `u64` |
| arguments_ptr | `u64` |
| amount_ptr | `u64` |
| gas | `u64` |

**Returns:** `u64`

___
<a id="promise_result"></a>

###  promise_result

▸ **promise_result**(result_idx: *`u64`*, register_id: *`u64`*): `u64`

*Defined in [runtime_api.ts:108](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L108)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| result_idx | `u64` |
| register_id | `u64` |

**Returns:** `u64`

___
<a id="promise_results_count"></a>

###  promise_results_count

▸ **promise_results_count**(): `u64`

*Defined in [runtime_api.ts:105](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L105)*

**Returns:** `u64`

___
<a id="promise_return"></a>

###  promise_return

▸ **promise_return**(promise_id: *`u64`*): `void`

*Defined in [runtime_api.ts:111](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L111)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_id | `u64` |

**Returns:** `void`

___
<a id="promise_then"></a>

###  promise_then

▸ **promise_then**(promise_index: *`u64`*, account_id_len: *`u64`*, account_id_ptr: *`u64`*, method_name_len: *`u64`*, method_name_ptr: *`u64`*, arguments_len: *`u64`*, arguments_ptr: *`u64`*, amount_ptr: *`u64`*, gas: *`u64`*): `u64`

*Defined in [runtime_api.ts:99](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L99)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promise_index | `u64` |
| account_id_len | `u64` |
| account_id_ptr | `u64` |
| method_name_len | `u64` |
| method_name_ptr | `u64` |
| arguments_len | `u64` |
| arguments_ptr | `u64` |
| amount_ptr | `u64` |
| gas | `u64` |

**Returns:** `u64`

___
<a id="random_seed"></a>

###  random_seed

▸ **random_seed**(register_id: *`u64`*): `void`

*Defined in [runtime_api.ts:61](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L61)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| register_id | `u64` |

**Returns:** `void`

___
<a id="read_register"></a>

###  read_register

▸ **read_register**(register_id: *`u64`*, ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:10](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L10)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| register_id | `u64` |
| ptr | `u64` |

**Returns:** `void`

___
<a id="register_len"></a>

###  register_len

▸ **register_len**(register_id: *`u64`*): `u64`

*Defined in [runtime_api.ts:13](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L13)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| register_id | `u64` |

**Returns:** `u64`

___
<a id="sha256"></a>

###  sha256

▸ **sha256**(value_len: *`u64`*, value_ptr: *`u64`*, register_id: *`u64`*): `void`

*Defined in [runtime_api.ts:64](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L64)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| value_len | `u64` |
| value_ptr | `u64` |
| register_id | `u64` |

**Returns:** `void`

___
<a id="signer_account_id"></a>

###  signer_account_id

▸ **signer_account_id**(register_id: *`u64`*): `void`

*Defined in [runtime_api.ts:23](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L23)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| register_id | `u64` |

**Returns:** `void`

___
<a id="signer_account_pk"></a>

###  signer_account_pk

▸ **signer_account_pk**(register_id: *`u64`*): `void`

*Defined in [runtime_api.ts:26](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L26)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| register_id | `u64` |

**Returns:** `void`

___
<a id="storage_has_key"></a>

###  storage_has_key

▸ **storage_has_key**(key_len: *`u64`*, key_ptr: *`u64`*): `u64`

*Defined in [runtime_api.ts:164](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L164)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| key_len | `u64` |
| key_ptr | `u64` |

**Returns:** `u64`

___
<a id="storage_iter_next"></a>

###  storage_iter_next

▸ **storage_iter_next**(iterator_id: *`u64`*, key_register_id: *`u64`*, value_register_id: *`u64`*): `u64`

*Defined in [runtime_api.ts:173](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L173)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| iterator_id | `u64` |
| key_register_id | `u64` |
| value_register_id | `u64` |

**Returns:** `u64`

___
<a id="storage_iter_prefix"></a>

###  storage_iter_prefix

▸ **storage_iter_prefix**(prefix_len: *`u64`*, prefix_ptr: *`u64`*): `u64`

*Defined in [runtime_api.ts:167](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L167)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| prefix_len | `u64` |
| prefix_ptr | `u64` |

**Returns:** `u64`

___
<a id="storage_iter_range"></a>

###  storage_iter_range

▸ **storage_iter_range**(start_len: *`u64`*, start_ptr: *`u64`*, end_len: *`u64`*, end_ptr: *`u64`*): `u64`

*Defined in [runtime_api.ts:170](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L170)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| start_len | `u64` |
| start_ptr | `u64` |
| end_len | `u64` |
| end_ptr | `u64` |

**Returns:** `u64`

___
<a id="storage_read"></a>

###  storage_read

▸ **storage_read**(key_len: *`u64`*, key_ptr: *`u64`*, register_id: *`u64`*): `u64`

*Defined in [runtime_api.ts:158](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L158)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| key_len | `u64` |
| key_ptr | `u64` |
| register_id | `u64` |

**Returns:** `u64`

___
<a id="storage_remove"></a>

###  storage_remove

▸ **storage_remove**(key_len: *`u64`*, key_ptr: *`u64`*, register_id: *`u64`*): `u64`

*Defined in [runtime_api.ts:161](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L161)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| key_len | `u64` |
| key_ptr | `u64` |
| register_id | `u64` |

**Returns:** `u64`

___
<a id="storage_usage"></a>

###  storage_usage

▸ **storage_usage**(): `u64`

*Defined in [runtime_api.ts:38](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L38)*

**Returns:** `u64`

___
<a id="storage_write"></a>

###  storage_write

▸ **storage_write**(key_len: *`u64`*, key_ptr: *`u64`*, value_len: *`u64`*, value_ptr: *`u64`*, register_id: *`u64`*): `u64`

*Defined in [runtime_api.ts:155](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L155)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| key_len | `u64` |
| key_ptr | `u64` |
| value_len | `u64` |
| value_ptr | `u64` |
| register_id | `u64` |

**Returns:** `u64`

___
<a id="used_gas"></a>

###  used_gas

▸ **used_gas**(): `u64`

*Defined in [runtime_api.ts:54](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L54)*

**Returns:** `u64`

___
<a id="value_return"></a>

###  value_return

▸ **value_return**(value_len: *`u64`*, value_ptr: *`u64`*): `void`

*Defined in [runtime_api.ts:77](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/runtime_api.ts#L77)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| value_len | `u64` |
| value_ptr | `u64` |

**Returns:** `void`

___

