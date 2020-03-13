[near-sdk-as - v0.0.2-0](../README.md) > ["vm/context"](../modules/_vm_context_.md)

# External module: "vm/context"

## Index

### Modules

* [Context](_vm_context_.context.md)

### Functions

* [_restoreContext](_vm_context_.md#_restorecontext)
* [_saveContext](_vm_context_.md#_savecontext)
* [_setAccount_balance](_vm_context_.md#_setaccount_balance)
* [_setAccount_locked_balance](_vm_context_.md#_setaccount_locked_balance)
* [_setAttached_deposit](_vm_context_.md#_setattached_deposit)
* [_setBlock_index](_vm_context_.md#_setblock_index)
* [_setBlock_timestamp](_vm_context_.md#_setblock_timestamp)
* [_setCurrent_account_id](_vm_context_.md#_setcurrent_account_id)
* [_setInput](_vm_context_.md#_setinput)
* [_setIs_view](_vm_context_.md#_setis_view)
* [_setOutput_data_receivers](_vm_context_.md#_setoutput_data_receivers)
* [_setPredecessor_account_id](_vm_context_.md#_setpredecessor_account_id)
* [_setPrepaid_gas](_vm_context_.md#_setprepaid_gas)
* [_setRandom_seed](_vm_context_.md#_setrandom_seed)
* [_setSigner_account_id](_vm_context_.md#_setsigner_account_id)
* [_setSigner_account_pk](_vm_context_.md#_setsigner_account_pk)
* [_setStorage_usage](_vm_context_.md#_setstorage_usage)

---

## Functions

<a id="_restorecontext"></a>

###  _restoreContext

▸ **_restoreContext**(): `void`

*Defined in vm/context.ts:47*

**Returns:** `void`

___
<a id="_savecontext"></a>

###  _saveContext

▸ **_saveContext**(): `void`

*Defined in vm/context.ts:43*

**Returns:** `void`

___
<a id="_setaccount_balance"></a>

###  _setAccount_balance

▸ **_setAccount_balance**(lo: *`u64`*, hi: *`u64`*): `void`

*Defined in vm/context.ts:34*

**Parameters:**

| Name | Type |
| ------ | ------ |
| lo | `u64` |
| hi | `u64` |

**Returns:** `void`

___
<a id="_setaccount_locked_balance"></a>

###  _setAccount_locked_balance

▸ **_setAccount_locked_balance**(lo: *`u64`*, hi: *`u64`*): `void`

*Defined in vm/context.ts:38*

**Parameters:**

| Name | Type |
| ------ | ------ |
| lo | `u64` |
| hi | `u64` |

**Returns:** `void`

___
<a id="_setattached_deposit"></a>

###  _setAttached_deposit

▸ **_setAttached_deposit**(lo: *`u64`*, hi: *`u64`*): `void`

*Defined in vm/context.ts:30*

**Parameters:**

| Name | Type |
| ------ | ------ |
| lo | `u64` |
| hi | `u64` |

**Returns:** `void`

___
<a id="_setblock_index"></a>

###  _setBlock_index

▸ **_setBlock_index**(block_height: *`u64`*): `void`

*Defined in vm/context.ts:51*

**Parameters:**

| Name | Type |
| ------ | ------ |
| block_height | `u64` |

**Returns:** `void`

___
<a id="_setblock_timestamp"></a>

###  _setBlock_timestamp

▸ **_setBlock_timestamp**(stmp: *`u64`*): `void`

*Defined in vm/context.ts:54*

**Parameters:**

| Name | Type |
| ------ | ------ |
| stmp | `u64` |

**Returns:** `void`

___
<a id="_setcurrent_account_id"></a>

###  _setCurrent_account_id

▸ **_setCurrent_account_id**(id: *`usize`*): `void`

*Defined in vm/context.ts:7*

**Parameters:**

| Name | Type |
| ------ | ------ |
| id | `usize` |

**Returns:** `void`

___
<a id="_setinput"></a>

###  _setInput

▸ **_setInput**(input: *`usize`*): `void`

*Defined in vm/context.ts:11*

**Parameters:**

| Name | Type |
| ------ | ------ |
| input | `usize` |

**Returns:** `void`

___
<a id="_setis_view"></a>

###  _setIs_view

▸ **_setIs_view**(b: *`bool`*): `void`

*Defined in vm/context.ts:62*

**Parameters:**

| Name | Type |
| ------ | ------ |
| b | `bool` |

**Returns:** `void`

___
<a id="_setoutput_data_receivers"></a>

###  _setOutput_data_receivers

▸ **_setOutput_data_receivers**(arrA: *`Array`<`string`>*): `void`

*Defined in vm/context.ts:65*

**Parameters:**

| Name | Type |
| ------ | ------ |
| arrA | `Array`<`string`> |

**Returns:** `void`

___
<a id="_setpredecessor_account_id"></a>

###  _setPredecessor_account_id

▸ **_setPredecessor_account_id**(s: *`usize`*): `void`

*Defined in vm/context.ts:23*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `usize` |

**Returns:** `void`

___
<a id="_setprepaid_gas"></a>

###  _setPrepaid_gas

▸ **_setPrepaid_gas**(_u64: *`u64`*): `void`

*Defined in vm/context.ts:58*

**Parameters:**

| Name | Type |
| ------ | ------ |
| _u64 | `u64` |

**Returns:** `void`

___
<a id="_setrandom_seed"></a>

###  _setRandom_seed

▸ **_setRandom_seed**(s: *`usize`*): `void`

*Defined in vm/context.ts:26*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `usize` |

**Returns:** `void`

___
<a id="_setsigner_account_id"></a>

###  _setSigner_account_id

▸ **_setSigner_account_id**(s: *`usize`*): `void`

*Defined in vm/context.ts:15*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `usize` |

**Returns:** `void`

___
<a id="_setsigner_account_pk"></a>

###  _setSigner_account_pk

▸ **_setSigner_account_pk**(s: *`usize`*): `void`

*Defined in vm/context.ts:20*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `usize` |

**Returns:** `void`

___
<a id="_setstorage_usage"></a>

###  _setStorage_usage

▸ **_setStorage_usage**(amt: *`u64`*): `void`

*Defined in vm/context.ts:68*

**Parameters:**

| Name | Type |
| ------ | ------ |
| amt | `u64` |

**Returns:** `void`

___

