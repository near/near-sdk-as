[near-sdk-as - v0.0.2-0](../README.md) > ["vm/outcome"](../modules/_vm_outcome_.md) > [Outcome](../classes/_vm_outcome_.outcome.md)

# Class: Outcome

## Hierarchy

**Outcome**

## Index

### Constructors

* [constructor](_vm_outcome_.outcome.md#constructor)

### Properties

* [balance](_vm_outcome_.outcome.md#balance)
* [burnt_gas](_vm_outcome_.outcome.md#burnt_gas)
* [logs](_vm_outcome_.outcome.md#logs)
* [return_data](_vm_outcome_.outcome.md#return_data)
* [storage_usage](_vm_outcome_.outcome.md#storage_usage)
* [used_gas](_vm_outcome_.outcome.md#used_gas)

---

## Constructors

<a id="constructor"></a>

###  constructor

⊕ **new Outcome**(balance_lo: *`u64`*, balance_hi: *`u64`*, burnt_gas: *`u64`*, used_gas: *`u64`*, logs: *`string`[]*, storage_usage: *`u64`*, return_data: *[ReturnData](_vm_outcome_.returndata.md)*): [Outcome](_vm_outcome_.outcome.md)

*Defined in [vm/outcome.ts:22](https://github.com/near/near-sdk-as/blob/13976e25/assembly/vm/outcome.ts#L22)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| balance_lo | `u64` |
| balance_hi | `u64` |
| burnt_gas | `u64` |
| used_gas | `u64` |
| logs | `string`[] |
| storage_usage | `u64` |
| return_data | [ReturnData](_vm_outcome_.returndata.md) |

**Returns:** [Outcome](_vm_outcome_.outcome.md)

___

## Properties

<a id="balance"></a>

###  balance

**● balance**: *`u128`*

*Defined in [vm/outcome.ts:22](https://github.com/near/near-sdk-as/blob/13976e25/assembly/vm/outcome.ts#L22)*

___
<a id="burnt_gas"></a>

###  burnt_gas

**● burnt_gas**: *`u64`*

*Defined in [vm/outcome.ts:26](https://github.com/near/near-sdk-as/blob/13976e25/assembly/vm/outcome.ts#L26)*

___
<a id="logs"></a>

###  logs

**● logs**: *`string`[]*

*Defined in [vm/outcome.ts:28](https://github.com/near/near-sdk-as/blob/13976e25/assembly/vm/outcome.ts#L28)*

___
<a id="return_data"></a>

###  return_data

**● return_data**: *[ReturnData](_vm_outcome_.returndata.md)*

*Defined in [vm/outcome.ts:30](https://github.com/near/near-sdk-as/blob/13976e25/assembly/vm/outcome.ts#L30)*

___
<a id="storage_usage"></a>

###  storage_usage

**● storage_usage**: *`u64`*

*Defined in [vm/outcome.ts:29](https://github.com/near/near-sdk-as/blob/13976e25/assembly/vm/outcome.ts#L29)*

___
<a id="used_gas"></a>

###  used_gas

**● used_gas**: *`u64`*

*Defined in [vm/outcome.ts:27](https://github.com/near/near-sdk-as/blob/13976e25/assembly/vm/outcome.ts#L27)*

___

