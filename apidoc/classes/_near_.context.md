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

**get blockIndex**(): `u64`

*Defined in [near.ts:1011](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1011)*

Current block index.

**Returns:** `u64`

___
<a id="contractname"></a>

###  contractName

**get contractName**(): `string`

*Defined in [near.ts:1004](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1004)*

Account ID of contract.

**Returns:** `string`

___
<a id="currentbalance"></a>

###  currentBalance

**get currentBalance**(): `u64`

*Defined in [near.ts:1018](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1018)*

Current balance of the contract.

**Returns:** `u64`

___
<a id="gasleft"></a>

###  gasLeft

**get gasLeft**(): `u64`

*Defined in [near.ts:1032](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1032)*

The amount of available gas left for this execution call.

**Returns:** `u64`

___
<a id="manaleft"></a>

###  manaLeft

**get manaLeft**(): `u32`

*Defined in [near.ts:1039](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1039)*

The amount of available mana left for this execution call.

**Returns:** `u32`

___
<a id="receivedamount"></a>

###  receivedAmount

**get receivedAmount**(): `u64`

*Defined in [near.ts:1025](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1025)*

The amount of tokens received with this execution call.

**Returns:** `u64`

___
<a id="sender"></a>

###  sender

**get sender**(): `string`

*Defined in [near.ts:997](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L997)*

Account ID of transaction sender.

**Returns:** `string`

___

