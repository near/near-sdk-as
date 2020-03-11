[near-sdk-as - v0.0.2-0](../README.md) > ["runtime/collections/persistentTopn"](../modules/_runtime_collections_persistenttopn_.md) > [PersistentTopN](../classes/_runtime_collections_persistenttopn_.persistenttopn.md)

# Class: PersistentTopN

A TopN class that can return first N keys of a type K sorted by rating. Rating is stored as i32. Default sort order is descending (highest rated keys), but can be changed to ascending (lowest rated keys).

## Type parameters
#### K 
## Hierarchy

**PersistentTopN**

## Index

### Constructors

* [constructor](_runtime_collections_persistenttopn_.persistenttopn.md#constructor)

### Accessors

* [isEmpty](_runtime_collections_persistenttopn_.persistenttopn.md#isempty)
* [length](_runtime_collections_persistenttopn_.persistenttopn.md#length)

### Methods

* [contains](_runtime_collections_persistenttopn_.persistenttopn.md#contains)
* [delete](_runtime_collections_persistenttopn_.persistenttopn.md#delete)
* [getRating](_runtime_collections_persistenttopn_.persistenttopn.md#getrating)
* [getTop](_runtime_collections_persistenttopn_.persistenttopn.md#gettop)
* [getTopFromKey](_runtime_collections_persistenttopn_.persistenttopn.md#gettopfromkey)
* [getTopWithRating](_runtime_collections_persistenttopn_.persistenttopn.md#gettopwithrating)
* [getTopWithRatingFromKey](_runtime_collections_persistenttopn_.persistenttopn.md#gettopwithratingfromkey)
* [incrementRating](_runtime_collections_persistenttopn_.persistenttopn.md#incrementrating)
* [keysToRatings](_runtime_collections_persistenttopn_.persistenttopn.md#keystoratings)
* [setRating](_runtime_collections_persistenttopn_.persistenttopn.md#setrating)

---

## Constructors

<a id="constructor"></a>

###  constructor

⊕ **new PersistentTopN**(prefix: *`string`*, descending?: *`bool`*): [PersistentTopN](_runtime_collections_persistenttopn_.persistenttopn.md)

*Defined in runtime/collections/persistentTopn.ts:29*

**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| prefix | `string` | - |  A prefix to use for every key of this collection. |
| `Default value` descending | `bool` | true |  Sorting order of keys for rating. Default is descending (the highest rated keys). |

**Returns:** [PersistentTopN](_runtime_collections_persistenttopn_.persistenttopn.md)

___

## Accessors

<a id="isempty"></a>

###  isEmpty

**isEmpty**: 

*Defined in runtime/collections/persistentTopn.ts:74*

___
<a id="length"></a>

###  length

**length**: 

*Defined in runtime/collections/persistentTopn.ts:82*

___

## Methods

<a id="contains"></a>

###  contains

▸ **contains**(key: *`K`*): `bool`

*Defined in runtime/collections/persistentTopn.ts:103*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| key | `K` |  Key to check. |

**Returns:** `bool`
True if the given key is present.

___
<a id="delete"></a>

###  delete

▸ **delete**(key: *`K`*): `void`

*Defined in runtime/collections/persistentTopn.ts:111*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| key | `K` |  Key to remove. |

**Returns:** `void`

___
<a id="getrating"></a>

###  getRating

▸ **getRating**(key: *`K`*, defaultRating?: *`i32`*): `i32`

*Defined in runtime/collections/persistentTopn.ts:183*

**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| key | `K` | - |  Key of the element. |
| `Default value` defaultRating | `i32` | 0 |  The default rating to return if the key is not present. |

**Returns:** `i32`
Value for the given key or the defaultRating.

___
<a id="gettop"></a>

###  getTop

▸ **getTop**(limit: *`i32`*): `K`[]

*Defined in runtime/collections/persistentTopn.ts:137*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| limit | `i32` |  The maximum limit of keys to return. |

**Returns:** `K`[]
The array of top rated keys.

___
<a id="gettopfromkey"></a>

###  getTopFromKey

▸ **getTopFromKey**(limit: *`i32`*, fromKey: *`K`*): `K`[]

*Defined in runtime/collections/persistentTopn.ts:148*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| limit | `i32` |  The maximum limit of keys to return. |
| fromKey | `K` |  The key from which return top list (exclisive). |

**Returns:** `K`[]
The array of top rated keys starting from the given key.

___
<a id="gettopwithrating"></a>

###  getTopWithRating

▸ **getTopWithRating**(limit: *`i32`*): [MapEntry](_runtime_collections_index_.collections.mapentry.md)<`K`, `i32`>[]

*Defined in runtime/collections/persistentTopn.ts:163*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| limit | `i32` |  The maximum limit of keys to return. |

**Returns:** [MapEntry](_runtime_collections_index_.collections.mapentry.md)<`K`, `i32`>[]
The array of top rated keys with their corresponding rating.

___
<a id="gettopwithratingfromkey"></a>

###  getTopWithRatingFromKey

▸ **getTopWithRatingFromKey**(limit: *`i32`*, fromKey: *`K`*): [MapEntry](_runtime_collections_index_.collections.mapentry.md)<`K`, `i32`>[]

*Defined in runtime/collections/persistentTopn.ts:174*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| limit | `i32` |  The maximum limit of keys to return. |
| fromKey | `K` |  The key from which return top list (exclisive). |

**Returns:** [MapEntry](_runtime_collections_index_.collections.mapentry.md)<`K`, `i32`>[]
The array of top rated keys with their rating starting from the given key.

___
<a id="incrementrating"></a>

###  incrementRating

▸ **incrementRating**(key: *`K`*, increment?: *`i32`*): `void`

*Defined in runtime/collections/persistentTopn.ts:208*

**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| key | `K` | - |  The key to update. |
| `Default value` increment | `i32` | 1 |  The increment value for the rating (1 by default). |

**Returns:** `void`

___
<a id="keystoratings"></a>

###  keysToRatings

▸ **keysToRatings**(keys: *`K`[]*): [MapEntry](_runtime_collections_index_.collections.mapentry.md)<`K`, `i32`>[]

*Defined in runtime/collections/persistentTopn.ts:124*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| keys | `K`[] |  The array of keys to lookup rating. |

**Returns:** [MapEntry](_runtime_collections_index_.collections.mapentry.md)<`K`, `i32`>[]
an array of key to rating pairs for the given keys.

___
<a id="setrating"></a>

###  setRating

▸ **setRating**(key: *`K`*, rating: *`i32`*): `void`

*Defined in runtime/collections/persistentTopn.ts:192*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| key | `K` |  The key to update. |
| rating | `i32` |  The new rating of the key. |

**Returns:** `void`

___

