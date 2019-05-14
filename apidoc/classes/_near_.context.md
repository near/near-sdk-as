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

*Defined in [near.ts:1029](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1029)*

Current block index.

**Returns:** `u64`

___
<a id="contractname"></a>

###  contractName

getcontractName(): `string`

*Defined in [near.ts:1022](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1022)*

Account ID of contract.

**Returns:** `string`

___
<a id="currentbalance"></a>

###  currentBalance

getcurrentBalance(): `u64`

*Defined in [near.ts:1036](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1036)*

Current balance of the contract.

**Returns:** `u64`

___
<a id="gasleft"></a>

###  gasLeft

getgasLeft(): `u64`

*Defined in [near.ts:1050](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1050)*

The amount of available gas left for this execution call.

**Returns:** `u64`

___
<a id="manaleft"></a>

###  manaLeft

getmanaLeft(): `u32`

*Defined in [near.ts:1057](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1057)*

The amount of available mana left for this execution call.

**Returns:** `u32`

___
<a id="receivedamount"></a>

###  receivedAmount

getreceivedAmount(): `u64`

*Defined in [near.ts:1043](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1043)*

The amount of tokens received with this execution call.

**Returns:** `u64`

___
<a id="sender"></a>

###  sender

getsender(): `string`

*Defined in [near.ts:1015](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1015)*

Account ID of transaction sender.

**Returns:** `string`

___

