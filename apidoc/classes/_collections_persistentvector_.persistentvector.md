[near-runtime-ts](../README.md) > ["collections/persistentVector"](../modules/_collections_persistentvector_.md) > [PersistentVector](../classes/_collections_persistentvector_.persistentvector.md)

# Class: PersistentVector

A vector class that implements a persistent array.

## Type parameters
#### T 
## Hierarchy

**PersistentVector**

## Index

### Constructors

* [constructor](_collections_persistentvector_.persistentvector.md#constructor)

### Accessors

* [back](_collections_persistentvector_.persistentvector.md#back)
* [first](_collections_persistentvector_.persistentvector.md#first)
* [front](_collections_persistentvector_.persistentvector.md#front)
* [isEmpty](_collections_persistentvector_.persistentvector.md#isempty)
* [last](_collections_persistentvector_.persistentvector.md#last)
* [length](_collections_persistentvector_.persistentvector.md#length)

### Methods

* [containsIndex](_collections_persistentvector_.persistentvector.md#containsindex)
* [pop](_collections_persistentvector_.persistentvector.md#pop)
* [popBack](_collections_persistentvector_.persistentvector.md#popback)
* [push](_collections_persistentvector_.persistentvector.md#push)
* [pushBack](_collections_persistentvector_.persistentvector.md#pushback)

---

## Constructors

<a id="constructor"></a>

###  constructor

⊕ **new PersistentVector**(prefix: *`string`*): [PersistentVector](_collections_persistentvector_.persistentvector.md)

*Defined in [collections/persistentVector.ts:10](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L10)*

Creates or restores a persistent vector with a given storage prefix. Always use a unique storage prefix for different collections.

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| prefix | `string` |  A prefix to use for every key of this vector. |

**Returns:** [PersistentVector](_collections_persistentvector_.persistentvector.md)

___

## Accessors

<a id="back"></a>

###  back

**get back**(): `T`

*Defined in [collections/persistentVector.ts:158](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L158)*

**Returns:** `T`
The last element of the vector. Asserts that the vector is not empty.

___
<a id="first"></a>

###  first

**get first**(): `T`

*Defined in [collections/persistentVector.ts:181](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L181)*

**Returns:** `T`
The first element of the vector. Asserts that the vector is not empty.

___
<a id="front"></a>

###  front

**get front**(): `T`

*Defined in [collections/persistentVector.ts:173](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L173)*

**Returns:** `T`
The first element of the vector. Asserts that the vector is not empty.

___
<a id="isempty"></a>

###  isEmpty

**get isEmpty**(): `bool`

*Defined in [collections/persistentVector.ts:42](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L42)*

**Returns:** `bool`
True if the vector is empty.

___
<a id="last"></a>

###  last

**get last**(): `T`

*Defined in [collections/persistentVector.ts:166](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L166)*

**Returns:** `T`
The last element of the vector. Asserts that the vector is not empty.

___
<a id="length"></a>

###  length

**get length**(): `i32`

*Defined in [collections/persistentVector.ts:49](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L49)*

**Returns:** `i32`
The length of the vector.

___

## Methods

<a id="containsindex"></a>

###  containsIndex

▸ **containsIndex**(index: *`i32`*): `bool`

*Defined in [collections/persistentVector.ts:35](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L35)*

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

*Defined in [collections/persistentVector.ts:136](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L136)*

Removes the last element from the vector and returns it. Asserts that the vector is not empty. Decreases the length of the vector.

**Returns:** `T`
The removed last element of the vector.

___
<a id="popback"></a>

###  popBack

▸ **popBack**(): `T`

*Defined in [collections/persistentVector.ts:151](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L151)*

Removes the last element from the vector and returns it. Asserts that the vector is not empty. Decreases the length of the vector.

**Returns:** `T`
The removed last element of the vector.

___
<a id="push"></a>

###  push

▸ **push**(element: *`T`*): `i32`

*Defined in [collections/persistentVector.ts:114](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L114)*

Adds a new element to the end of the vector. Increases the length of the vector.

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

*Defined in [collections/persistentVector.ts:127](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/collections/persistentVector.ts#L127)*

Adds a new element to the end of the vector. Increases the length of the vector.

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| element | `T` |  A new element to add. |

**Returns:** `i32`
The index of a newly added element

___

