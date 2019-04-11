[near-runtime-ts](../README.md) > ["near"](../modules/_near_.md) > [Context](../classes/_near_.context.md)

# Class: Context

Provides context for contract execution, including information about transaction sender, etc.

## Hierarchy

**Context**

## Index

### Accessors

* [blockIndex](_near_.context.md#blockindex)
* [contractName](_near_.context.md#contractname)
* [currentBalance](_near_.context.md#currentbalance)
* [gasLeft](_near_.context.md#gasleft)
* [manaLeft](_near_.context.md#manaleft)
* [receivedAmount](_near_.context.md#receivedamount)
* [sender](_near_.context.md#sender)

---

## Accessors

<a id="blockindex"></a>

###  blockIndex

getblockIndex(): `u64`

*Defined in [near.ts:1037](https://github.com/nearprotocol/near-runtime-ts/blob/d90519d/near.ts#L1037)*

Current block index.

**Returns:** `u64`

___
<a id="contractname"></a>

###  contractName

getcontractName(): `string`

*Defined in [near.ts:1030](https://github.com/nearprotocol/near-runtime-ts/blob/d90519d/near.ts#L1030)*

Account ID of contract.

**Returns:** `string`

___
<a id="currentbalance"></a>

###  currentBalance

getcurrentBalance(): `u64`

*Defined in [near.ts:1044](https://github.com/nearprotocol/near-runtime-ts/blob/d90519d/near.ts#L1044)*

Current balance of the contract.

**Returns:** `u64`

___
<a id="gasleft"></a>

###  gasLeft

getgasLeft(): `u64`

*Defined in [near.ts:1058](https://github.com/nearprotocol/near-runtime-ts/blob/d90519d/near.ts#L1058)*

The amount of available gas left for this execution call.

**Returns:** `u64`

___
<a id="manaleft"></a>

###  manaLeft

getmanaLeft(): `u32`

*Defined in [near.ts:1065](https://github.com/nearprotocol/near-runtime-ts/blob/d90519d/near.ts#L1065)*

The amount of available mana left for this execution call.

**Returns:** `u32`

___
<a id="receivedamount"></a>

###  receivedAmount

getreceivedAmount(): `u64`

*Defined in [near.ts:1051](https://github.com/nearprotocol/near-runtime-ts/blob/d90519d/near.ts#L1051)*

The amount of tokens received with this execution call.

**Returns:** `u64`

___
<a id="sender"></a>

###  sender

getsender(): `string`

*Defined in [near.ts:1023](https://github.com/nearprotocol/near-runtime-ts/blob/d90519d/near.ts#L1023)*

Account ID of transaction sender.

**Returns:** `string`

___

