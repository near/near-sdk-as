[near-sdk-as - v0.0.2-0](../README.md) > ["runtime/collections/persistentMap"](../modules/_runtime_collections_persistentmap_.md) > [PersistentMap](../classes/_runtime_collections_persistentmap_.persistentmap.md)

# Class: PersistentMap

A map class that implements a persistent unordered map. NOTE: The Map doesn't store keys, so if you need to retrive them, include keys in the values.

## Type parameters
#### K 
#### V 
## Hierarchy

**PersistentMap**

## Index

### Constructors

* [constructor](_runtime_collections_persistentmap_.persistentmap.md#constructor)

### Methods

* [contains](_runtime_collections_persistentmap_.persistentmap.md#contains)
* [delete](_runtime_collections_persistentmap_.persistentmap.md#delete)
* [get](_runtime_collections_persistentmap_.persistentmap.md#get)
* [getSome](_runtime_collections_persistentmap_.persistentmap.md#getsome)
* [set](_runtime_collections_persistentmap_.persistentmap.md#set)
* [values](_runtime_collections_persistentmap_.persistentmap.md#values)

---

## Constructors

<a id="constructor"></a>

###  constructor

⊕ **new PersistentMap**(prefix: *`string`*): [PersistentMap](_runtime_collections_persistentmap_.persistentmap.md)

*Defined in runtime/collections/persistentMap.ts:9*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| prefix | `string` |  A prefix to use for every key of this map. |

**Returns:** [PersistentMap](_runtime_collections_persistentmap_.persistentmap.md)

___

## Methods

<a id="contains"></a>

###  contains

▸ **contains**(key: *`K`*): `bool`

*Defined in runtime/collections/persistentMap.ts:48*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| key | `K` |  Key to check. |

**Returns:** `bool`
True if the given key present in the map.

___
<a id="delete"></a>

###  delete

▸ **delete**(key: *`K`*): `void`

*Defined in runtime/collections/persistentMap.ts:56*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| key | `K` |  Key to remove. |

**Returns:** `void`

___
<a id="get"></a>

###  get

▸ **get**(key: *`K`*, defaultValue?: *`V` \| `null`*): `V` \| `null`

*Defined in runtime/collections/persistentMap.ts:65*

**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| key | `K` | - |  Key of the element. |
| `Default value` defaultValue | `V` \| `null` |  null |  The default value if the key is not present. |

**Returns:** `V` \| `null`
Value for the given key or the default value.

___
<a id="getsome"></a>

###  getSome

▸ **getSome**(key: *`K`*): `V`

*Defined in runtime/collections/persistentMap.ts:73*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| key | `K` |  Key of the element. |

**Returns:** `V`
Value for the given key or the default value.

___
<a id="set"></a>

###  set

▸ **set**(key: *`K`*, value: *`V`*): `void`

*Defined in runtime/collections/persistentMap.ts:82*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| key | `K` |  Key of the element. |
| value | `V` |  The new value of the element. |

**Returns:** `void`

___
<a id="values"></a>

###  values

▸ **values**(start: *`K`*, end: *`K`*, limit?: *`i32`*, startInclusive?: *`bool`*): `V`[]

*Defined in runtime/collections/persistentMap.ts:36*

**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| start | `K` | - |  Starting from which key to include values. Default is \`null\`, means from the beginning. |
| end | `K` | - |  Up to which key include values (inclusive). Default is \`null\`, means to the end. |
| `Default value` limit | `i32` |  -1 |  The maximum number of values to return. Default is \`-1\`, means no limit. |
| `Default value` startInclusive | `bool` | true |  Whether the start key is inclusive. Default is \`true\`, means include start key. It's useful to set it to false for pagination. |

**Returns:** `V`[]

___

