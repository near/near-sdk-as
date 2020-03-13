[near-sdk-as - v0.0.2-0](../README.md) > ["runtime/collections/persistentVector"](../modules/_runtime_collections_persistentvector_.md) > [PersistentVector](../classes/_runtime_collections_persistentvector_.persistentvector.md)

# Class: PersistentVector

A vector class that implements a persistent array.

## Type parameters
#### T 
## Hierarchy

**PersistentVector**

## Indexable

\[key: `number`\]:&nbsp;`T`
A vector class that implements a persistent array.

## Index

### Constructors

* [constructor](_runtime_collections_persistentvector_.persistentvector.md#constructor)

### Accessors

* [back](_runtime_collections_persistentvector_.persistentvector.md#back)
* [first](_runtime_collections_persistentvector_.persistentvector.md#first)
* [front](_runtime_collections_persistentvector_.persistentvector.md#front)
* [isEmpty](_runtime_collections_persistentvector_.persistentvector.md#isempty)
* [last](_runtime_collections_persistentvector_.persistentvector.md#last)
* [length](_runtime_collections_persistentvector_.persistentvector.md#length)

### Methods

* [containsIndex](_runtime_collections_persistentvector_.persistentvector.md#containsindex)
* [pop](_runtime_collections_persistentvector_.persistentvector.md#pop)
* [popBack](_runtime_collections_persistentvector_.persistentvector.md#popback)
* [push](_runtime_collections_persistentvector_.persistentvector.md#push)
* [pushBack](_runtime_collections_persistentvector_.persistentvector.md#pushback)

---

## Constructors

<a id="constructor"></a>

###  constructor

⊕ **new PersistentVector**(prefix: *`string`*): [PersistentVector](_runtime_collections_persistentvector_.persistentvector.md)

*Defined in runtime/collections/persistentVector.ts:12*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| prefix | `string` |  A prefix to use for every key of this vector. |

**Returns:** [PersistentVector](_runtime_collections_persistentvector_.persistentvector.md)

___

## Accessors

<a id="back"></a>

###  back

**back**: 

*Defined in runtime/collections/persistentVector.ts:160*

___
<a id="first"></a>

###  first

**first**: 

*Defined in runtime/collections/persistentVector.ts:183*

___
<a id="front"></a>

###  front

**front**: 

*Defined in runtime/collections/persistentVector.ts:175*

___
<a id="isempty"></a>

###  isEmpty

**isEmpty**: 

*Defined in runtime/collections/persistentVector.ts:44*

___
<a id="last"></a>

###  last

**last**: 

*Defined in runtime/collections/persistentVector.ts:168*

___
<a id="length"></a>

###  length

**length**: 

*Defined in runtime/collections/persistentVector.ts:51*

___

## Methods

<a id="containsindex"></a>

###  containsIndex

▸ **containsIndex**(index: *`i32`*): `bool`

*Defined in runtime/collections/persistentVector.ts:37*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| index | `i32` |  The index to check. |

**Returns:** `bool`
True if the given index is within the range of the vector indices.

___
<a id="pop"></a>

###  pop

▸ **pop**(): `T`

*Defined in runtime/collections/persistentVector.ts:138*

**Returns:** `T`
The removed last element of the vector.

___
<a id="popback"></a>

###  popBack

▸ **popBack**(): `T`

*Defined in runtime/collections/persistentVector.ts:153*

**Returns:** `T`
The removed last element of the vector.

___
<a id="push"></a>

###  push

▸ **push**(element: *`T`*): `i32`

*Defined in runtime/collections/persistentVector.ts:116*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| element | `T` |  A new element to add. |

**Returns:** `i32`
The index of a newly added element

___
<a id="pushback"></a>

###  pushBack

▸ **pushBack**(element: *`T`*): `i32`

*Defined in runtime/collections/persistentVector.ts:129*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| element | `T` |  A new element to add. |

**Returns:** `i32`
The index of a newly added element

___

