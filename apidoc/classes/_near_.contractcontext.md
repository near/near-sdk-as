[](../README.md) > ["near"](../modules/_near_.md) > [ContractContext](../classes/_near_.contractcontext.md)

# Class: ContractContext

Provides context for contract execution, including information about transaction sender, etc.

## Hierarchy

**ContractContext**

## Index

### Accessors

* [contractName](_near_.contractcontext.md#contractname)
* [sender](_near_.contractcontext.md#sender)

### Methods

* [getString](_near_.contractcontext.md#getstring)

---

## Accessors

<a id="contractname"></a>

###  contractName

getcontractName(): `string`

*Defined in near.ts:20*

Account ID of contract.

**Returns:** `string`

___
<a id="sender"></a>

###  sender

getsender(): `string`

*Defined in near.ts:13*

Account ID of transaction sender.

**Returns:** `string`

___

## Methods

<a id="getstring"></a>

###  getString

▸ **getString**(typeIndex: *[BufferTypeIndex](../modules/_near_.md#buffertypeindex)*, key: *`string`*): `string`

*Defined in near.ts:27*

Returns context value with given index and key. Internal usage only for now.

**Parameters:**

| Name | Type |
| ------ | ------ |
| typeIndex | [BufferTypeIndex](../modules/_near_.md#buffertypeindex) |
| key | `string` |

**Returns:** `string`

___

