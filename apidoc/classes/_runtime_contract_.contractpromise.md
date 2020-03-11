[near-sdk-as - v0.0.2-0](../README.md) > ["runtime/contract"](../modules/_runtime_contract_.md) > [ContractPromise](../classes/_runtime_contract_.contractpromise.md)

# Class: ContractPromise

Class to make asynchronous calls to other contracts and receive callbacks. Here is an example on how to create a new async call with the callback.

```
export function callMetaNear(): void {
  let itemArgs: AddItemArgs = {
    accountId: "alice.near",
    itemId: "Sword +9000",s
  };
  let promise = ContractPromise.create(
    "metanear",
    "addItem",
    itemArgs.encode(),
    0,
  );
  // Setting up args for the callback
  let requestArgs: OnItemAddedArgs = {
    "itemAddedRequestId": "UNIQUE_REQUEST_ID",
  };
  let callbackPromise = promise.then(
     "_onItemAdded",
     requestArgs.encode(),
     2,  // Attaching 2 additional requests, in case we need to do another call
  );
  callbackPromise.returnAsResult();
}
```

See docs on used methods for more details.

## Hierarchy

**ContractPromise**

## Index

### Properties

* [id](_runtime_contract_.contractpromise.md#id)

### Methods

* [returnAsResult](_runtime_contract_.contractpromise.md#returnasresult)
* [then](_runtime_contract_.contractpromise.md#then)
* [all](_runtime_contract_.contractpromise.md#all)
* [create](_runtime_contract_.contractpromise.md#create)
* [getResults](_runtime_contract_.contractpromise.md#getresults)

---

## Properties

<a id="id"></a>

###  id

**● id**: *`u64`*

*Defined in runtime/contract.ts:129*

___

## Methods

<a id="returnasresult"></a>

###  returnAsResult

▸ **returnAsResult**(): `void`

*Defined in runtime/contract.ts:259*

**Returns:** `void`

___
<a id="then"></a>

###  then

▸ **then**(contractName: *`string`*, methodName: *`string`*, args: *`Uint8Array`*, gas: *`u64`*, amount?: *`u128`*): [ContractPromise](_runtime_contract_.contractpromise.md)

*Defined in runtime/contract.ts:187*

**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| contractName | `string` | - |  Name of your contract. |
| methodName | `string` | - |  Method name on your contract to be called to receive the callback. NOTE: Your callback method name can start with \`_\`, which would prevent other contracts from calling it directly. Only callbacks can call methods with \`_\` prefix. |
| args | `Uint8Array` | - |  Serialized arguments on your callback method, see \`create\` for details. |
| gas | `u64` | - |  The amount of gas attached to the call. |
| `Default value` amount | `u128` |  u128.fromU64(0) |  The amount of tokens from the called contract to be sent to the current contract with this call. |

**Returns:** [ContractPromise](_runtime_contract_.contractpromise.md)

___
<a id="all"></a>

### `<Static>` all

▸ **all**(promises: *[ContractPromise](_runtime_contract_.contractpromise.md)[]*): [ContractPromise](_runtime_contract_.contractpromise.md)

*Defined in runtime/contract.ts:269*

**Parameters:**

| Name | Type |
| ------ | ------ |
| promises | [ContractPromise](_runtime_contract_.contractpromise.md)[] |

**Returns:** [ContractPromise](_runtime_contract_.contractpromise.md)

___
<a id="create"></a>

### `<Static>` create

▸ **create**(contractName: *`string`*, methodName: *`string`*, args: *`Uint8Array`*, gas: *`u64`*, amount?: *`u128`*): [ContractPromise](_runtime_contract_.contractpromise.md)

*Defined in runtime/contract.ts:151*

**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| contractName | `string` | - |  Account ID of the remote contract to call. E.g. \`metanear\`. |
| methodName | `string` | - |  Method name on the remote contract to call. E.g. \`addItem\`. |
| args | `Uint8Array` | - |  Serialized arguments to pass into the method. To get them create a new model specific for the method you calling, e.g. \`AddItemArgs\`. Then create an instance of it and populate arguments. After this, serialize it into bytes. E.g. ``` let itemArgs: AddItemArgs = { accountId: "alice.near", itemId: "Sword +9000", }; // Serialize args let args = itemArgs.encode(); ``` |
| gas | `u64` | - |  The amount of gas attached to the call |
| `Default value` amount | `u128` |  u128.fromU64(0) |  The amount of tokens from your contract to be sent to the remote contract with this call. |

**Returns:** [ContractPromise](_runtime_contract_.contractpromise.md)

___
<a id="getresults"></a>

### `<Static>` getResults

▸ **getResults**(): [ContractPromiseResult](_runtime_contract_.contractpromiseresult.md)[]

*Defined in runtime/contract.ts:303*

**Returns:** [ContractPromiseResult](_runtime_contract_.contractpromiseresult.md)[]
An array of results based on the number of promises the callback was created on. If the callback using `then` was scheduled only on one result, then one result will be returned.

___

