[near-sdk-as - v0.0.2-0](../README.md) > ["vm/context"](../modules/_vm_context_.md) > [Context](../modules/_vm_context_.context.md)

# Module: Context

Functions to edit the current VM's context

## Index

### Functions

* [restoreContext](_vm_context_.context.md#restorecontext)
* [saveContext](_vm_context_.context.md#savecontext)
* [setAccount_balance](_vm_context_.context.md#setaccount_balance)
* [setAccount_locked_balance](_vm_context_.context.md#setaccount_locked_balance)
* [setAttached_deposit](_vm_context_.context.md#setattached_deposit)
* [setBlock_index](_vm_context_.context.md#setblock_index)
* [setBlock_timestamp](_vm_context_.context.md#setblock_timestamp)
* [setCurrent_account_id](_vm_context_.context.md#setcurrent_account_id)
* [setInput](_vm_context_.context.md#setinput)
* [setIs_view](_vm_context_.context.md#setis_view)
* [setOutput_data_receivers](_vm_context_.context.md#setoutput_data_receivers)
* [setPredecessor_account_id](_vm_context_.context.md#setpredecessor_account_id)
* [setPrepaid_gas](_vm_context_.context.md#setprepaid_gas)
* [setRandom_seed](_vm_context_.context.md#setrandom_seed)
* [setSigner_account_id](_vm_context_.context.md#setsigner_account_id)
* [setSigner_account_pk](_vm_context_.context.md#setsigner_account_pk)
* [setStorage_usage](_vm_context_.context.md#setstorage_usage)

---

## Functions

<a id="restorecontext"></a>

###  restoreContext

▸ **restoreContext**(): `void`

*Defined in vm/context.ts:78*

**Returns:** `void`

___
<a id="savecontext"></a>

###  saveContext

▸ **saveContext**(): `void`

*Defined in vm/context.ts:74*

**Returns:** `void`

___
<a id="setaccount_balance"></a>

###  setAccount_balance

▸ **setAccount_balance**(_u128: *`u128`*): `void`

*Defined in vm/context.ts:110*

**Parameters:**

| Name | Type |
| ------ | ------ |
| _u128 | `u128` |

**Returns:** `void`

___
<a id="setaccount_locked_balance"></a>

###  setAccount_locked_balance

▸ **setAccount_locked_balance**(_u128: *`u128`*): `void`

*Defined in vm/context.ts:114*

**Parameters:**

| Name | Type |
| ------ | ------ |
| _u128 | `u128` |

**Returns:** `void`

___
<a id="setattached_deposit"></a>

###  setAttached_deposit

▸ **setAttached_deposit**(_u128: *`u128`*): `void`

*Defined in vm/context.ts:122*

**Parameters:**

| Name | Type |
| ------ | ------ |
| _u128 | `u128` |

**Returns:** `void`

___
<a id="setblock_index"></a>

###  setBlock_index

▸ **setBlock_index**(block_height: *`u64`*): `void`

*Defined in vm/context.ts:102*

**Parameters:**

| Name | Type |
| ------ | ------ |
| block_height | `u64` |

**Returns:** `void`

___
<a id="setblock_timestamp"></a>

###  setBlock_timestamp

▸ **setBlock_timestamp**(stmp: *`u64`*): `void`

*Defined in vm/context.ts:106*

**Parameters:**

| Name | Type |
| ------ | ------ |
| stmp | `u64` |

**Returns:** `void`

___
<a id="setcurrent_account_id"></a>

###  setCurrent_account_id

▸ **setCurrent_account_id**(id: *`string`*): `void`

*Defined in vm/context.ts:82*

**Parameters:**

| Name | Type |
| ------ | ------ |
| id | `string` |

**Returns:** `void`

___
<a id="setinput"></a>

###  setInput

▸ **setInput**(input: *`string`*): `void`

*Defined in vm/context.ts:86*

**Parameters:**

| Name | Type |
| ------ | ------ |
| input | `string` |

**Returns:** `void`

___
<a id="setis_view"></a>

###  setIs_view

▸ **setIs_view**(b: *`bool`*): `void`

*Defined in vm/context.ts:134*

**Parameters:**

| Name | Type |
| ------ | ------ |
| b | `bool` |

**Returns:** `void`

___
<a id="setoutput_data_receivers"></a>

###  setOutput_data_receivers

▸ **setOutput_data_receivers**(arrA: *`Array`<`string`>*): `void`

*Defined in vm/context.ts:138*

**Parameters:**

| Name | Type |
| ------ | ------ |
| arrA | `Array`<`string`> |

**Returns:** `void`

___
<a id="setpredecessor_account_id"></a>

###  setPredecessor_account_id

▸ **setPredecessor_account_id**(s: *`string`*): `void`

*Defined in vm/context.ts:98*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `string` |

**Returns:** `void`

___
<a id="setprepaid_gas"></a>

###  setPrepaid_gas

▸ **setPrepaid_gas**(_u64: *`u64`*): `void`

*Defined in vm/context.ts:126*

**Parameters:**

| Name | Type |
| ------ | ------ |
| _u64 | `u64` |

**Returns:** `void`

___
<a id="setrandom_seed"></a>

###  setRandom_seed

▸ **setRandom_seed**(s: *`string`*): `void`

*Defined in vm/context.ts:130*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `string` |

**Returns:** `void`

___
<a id="setsigner_account_id"></a>

###  setSigner_account_id

▸ **setSigner_account_id**(s: *`string`*): `void`

*Defined in vm/context.ts:90*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `string` |

**Returns:** `void`

___
<a id="setsigner_account_pk"></a>

###  setSigner_account_pk

▸ **setSigner_account_pk**(s: *`string`*): `void`

*Defined in vm/context.ts:95*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `string` |

**Returns:** `void`

___
<a id="setstorage_usage"></a>

###  setStorage_usage

▸ **setStorage_usage**(amt: *`u64`*): `void`

*Defined in vm/context.ts:118*

**Parameters:**

| Name | Type |
| ------ | ------ |
| amt | `u64` |

**Returns:** `void`

___

