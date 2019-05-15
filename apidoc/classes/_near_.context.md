[near-runtime-ts](../README.md) > ["near"](../modules/_near_.md) > [Context](../classes/_near_.context.md)

# Class: Context

Provides context for contract execution, including information about transaction sender, etc.

## Hierarchy

**Context**

## Index

### Accessors

* [blockIndex](_near_.context.md#blockindex)
* [contractName](_near_.context.md#contractname)
* [frozenBalance](_near_.context.md#frozenbalance)
* [liquidBalance](_near_.context.md#liquidbalance)
* [receivedAmount](_near_.context.md#receivedamount)
* [sender](_near_.context.md#sender)
* [storageUsage](_near_.context.md#storageusage)

### Methods

* [deposit](_near_.context.md#deposit)
* [withdraw](_near_.context.md#withdraw)

---

## Accessors

<a id="blockindex"></a>

###  blockIndex

**get blockIndex**(): `u64`

*Defined in [near.ts:1011](https://github.com/nearprotocol/near-runtime-ts/blob/cb5fe1e/near.ts#L1011)*

Current block index.

**Returns:** `u64`

___
<a id="contractname"></a>

###  contractName

**get contractName**(): `string`

*Defined in [near.ts:1004](https://github.com/nearprotocol/near-runtime-ts/blob/cb5fe1e/near.ts#L1004)*

Account ID of contract.

**Returns:** `string`

___
<a id="frozenbalance"></a>

###  frozenBalance

**get frozenBalance**(): `u64`

*Defined in [near.ts:1025](https://github.com/nearprotocol/near-runtime-ts/blob/cb5fe1e/near.ts#L1025)*

The amount of tokens that are locked in the account. Storage usage fee is deducted from this balance.

**Returns:** `u64`

___
<a id="liquidbalance"></a>

###  liquidBalance

**get liquidBalance**(): `u64`

*Defined in [near.ts:1033](https://github.com/nearprotocol/near-runtime-ts/blob/cb5fe1e/near.ts#L1033)*

The amount of tokens that can be used for running wasm, creating transactions, and sending to other contracts through cross-contract calls.

**Returns:** `u64`

___
<a id="receivedamount"></a>

###  receivedAmount

**get receivedAmount**(): `u64`

*Defined in [near.ts:1018](https://github.com/nearprotocol/near-runtime-ts/blob/cb5fe1e/near.ts#L1018)*

The amount of tokens received with this execution call.

**Returns:** `u64`

___
<a id="sender"></a>

###  sender

**get sender**(): `string`

*Defined in [near.ts:997](https://github.com/nearprotocol/near-runtime-ts/blob/cb5fe1e/near.ts#L997)*

Account ID of transaction sender.

**Returns:** `string`

___
<a id="storageusage"></a>

###  storageUsage

**get storageUsage**(): `u64`

*Defined in [near.ts:1040](https://github.com/nearprotocol/near-runtime-ts/blob/cb5fe1e/near.ts#L1040)*

The current storage usage in bytes.

**Returns:** `u64`

___

## Methods

<a id="deposit"></a>

###  deposit

▸ **deposit**(min_amount: *`u64`*, max_amount: *`u64`*): `u64`

*Defined in [near.ts:1049](https://github.com/nearprotocol/near-runtime-ts/blob/cb5fe1e/near.ts#L1049)*

Moves assets from liquid balance to frozen balance. If there is enough liquid balance will deposit the maximum amount. Otherwise will deposit as much as possible. Will fail if there is less than minimum amount on the liquid balance. Returns the deposited amount.

**Parameters:**

| Name | Type |
| ------ | ------ |
| min_amount | `u64` |
| max_amount | `u64` |

**Returns:** `u64`

___
<a id="withdraw"></a>

###  withdraw

▸ **withdraw**(min_amount: *`u64`*, max_amount: *`u64`*): `u64`

*Defined in [near.ts:1058](https://github.com/nearprotocol/near-runtime-ts/blob/cb5fe1e/near.ts#L1058)*

Moves assets from frozen balance to liquid balance. If there is enough frozen balance will withdraw the maximum amount. Otherwise will withdraw as much as possible. Will fail if there is less than minimum amount on the frozen balance. Returns the withdrawn amount.

**Parameters:**

| Name | Type |
| ------ | ------ |
| min_amount | `u64` |
| max_amount | `u64` |

**Returns:** `u64`

___

