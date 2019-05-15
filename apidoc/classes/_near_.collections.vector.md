[near-runtime-ts](../README.md) > ["near"](../modules/_near_.md) > [collections](../modules/_near_.collections.md) > [Vector](../classes/_near_.collections.vector.md)

# Class: Vector

A vector class that implements a persistent array.

## Type parameters
#### T 
## Hierarchy

**Vector**

## Index

### Constructors

* [constructor](_near_.collections.vector.md#constructor)

### Accessors

* [back](_near_.collections.vector.md#back)
* [first](_near_.collections.vector.md#first)
* [front](_near_.collections.vector.md#front)
* [isEmpty](_near_.collections.vector.md#isempty)
* [last](_near_.collections.vector.md#last)
* [length](_near_.collections.vector.md#length)

### Methods

* [containsIndex](_near_.collections.vector.md#containsindex)
* [delete](_near_.collections.vector.md#delete)
* [pop](_near_.collections.vector.md#pop)
* [popBack](_near_.collections.vector.md#popback)
* [push](_near_.collections.vector.md#push)
* [pushBack](_near_.collections.vector.md#pushback)

---

## Constructors

<a id="constructor"></a>

###  constructor

⊕ **new Vector**(prefix: *`string`*): [Vector](_near_.collections.vector.md)

*Defined in [near.ts:264](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L264)*

Creates or restores a persistent vector with a given storage prefix. Always use a unique storage prefix for different collections.

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| prefix | `string` |  A prefix to use for every key of this vector. |

**Returns:** [Vector](_near_.collections.vector.md)

___

## Accessors

<a id="back"></a>

###  back

**get back**(): `T`

*Defined in [near.ts:420](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L420)*

**Returns:** `T`
The last element of the vector. Asserts that the vector is not empty.

___
<a id="first"></a>

###  first

**get first**(): `T`

*Defined in [near.ts:443](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L443)*

**Returns:** `T`
The first element of the vector. Asserts that the vector is not empty.

___
<a id="front"></a>

###  front

**get front**(): `T`

*Defined in [near.ts:435](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L435)*

**Returns:** `T`
The first element of the vector. Asserts that the vector is not empty.

___
<a id="isempty"></a>

###  isEmpty

**get isEmpty**(): `bool`

*Defined in [near.ts:305](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L305)*

**Returns:** `bool`
True if the vector is empty.

___
<a id="last"></a>

###  last

**get last**(): `T`

*Defined in [near.ts:428](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L428)*

**Returns:** `T`
The last element of the vector. Asserts that the vector is not empty.

___
<a id="length"></a>

###  length

**get length**(): `i32`

*Defined in [near.ts:312](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L312)*

**Returns:** `i32`
The length of the vector.

___

## Methods

<a id="containsindex"></a>

###  containsIndex

▸ **containsIndex**(index: *`i32`*): `bool`

*Defined in [near.ts:298](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L298)*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| index | `i32` |  The index to check. |

**Returns:** `bool`
True if the given index is within the range of the vector indices.

___
<a id="delete"></a>

###  delete

▸ **delete**(index: *`i32`*): `void`

*Defined in [near.ts:289](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L289)*

Removes the content of the element from storage without changing length of the vector.

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| index | `i32` |  The index of the element to remove. |

**Returns:** `void`

___
<a id="pop"></a>

###  pop

▸ **pop**(): `T`

*Defined in [near.ts:398](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L398)*

Removes the last element from the vector and returns it. Asserts that the vector is not empty. Decreases the length of the vector.

**Returns:** `T`
The removed last element of the vector.

___
<a id="popback"></a>

###  popBack

▸ **popBack**(): `T`

*Defined in [near.ts:413](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L413)*

Removes the last element from the vector and returns it. Asserts that the vector is not empty. Decreases the length of the vector.

**Returns:** `T`
The removed last element of the vector.

___
<a id="push"></a>

###  push

▸ **push**(element: *`T`*): `i32`

*Defined in [near.ts:376](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L376)*

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

*Defined in [near.ts:389](https://github.com/nearprotocol/near-runtime-ts/blob/16a2965/near.ts#L389)*

Adds a new element to the end of the vector. Increases the length of the vector.

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| element | `T` |  A new element to add. |

**Returns:** `i32`
The index of a newly added element

___

