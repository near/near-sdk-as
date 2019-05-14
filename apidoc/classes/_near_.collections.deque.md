[near-runtime-ts](../README.md) > ["near"](../modules/_near_.md) > [collections](../modules/_near_.collections.md) > [Deque](../classes/_near_.collections.deque.md)

# Class: Deque

A deque class that implements a persistent bidirectional queue.

## Type parameters
#### T 
## Hierarchy

**Deque**

## Index

### Constructors

* [constructor](_near_.collections.deque.md#constructor)

### Accessors

* [back](_near_.collections.deque.md#back)
* [first](_near_.collections.deque.md#first)
* [front](_near_.collections.deque.md#front)
* [isEmpty](_near_.collections.deque.md#isempty)
* [last](_near_.collections.deque.md#last)
* [length](_near_.collections.deque.md#length)

### Methods

* [containsIndex](_near_.collections.deque.md#containsindex)
* [delete](_near_.collections.deque.md#delete)
* [popBack](_near_.collections.deque.md#popback)
* [popFront](_near_.collections.deque.md#popfront)
* [pushBack](_near_.collections.deque.md#pushback)
* [pushFront](_near_.collections.deque.md#pushfront)

---

## Constructors

<a id="constructor"></a>

###  constructor

⊕ **new Deque**(prefix: *`string`*): [Deque](_near_.collections.deque.md)

*Defined in [near.ts:475](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L475)*

Creates or restores a persistent deque with a given storage prefix. Always use a unique storage prefix for different collections.

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| prefix | `string` |  A prefix to use for every key of this deque. |

**Returns:** [Deque](_near_.collections.deque.md)

___

## Accessors

<a id="back"></a>

###  back

getback(): `T`

*Defined in [near.ts:677](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L677)*

**Returns:** `T`
The last/back element of the deque.

___
<a id="first"></a>

###  first

getfirst(): `T`

*Defined in [near.ts:644](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L644)*

**Returns:** `T`
The first/front element of the deque.

___
<a id="front"></a>

###  front

getfront(): `T`

*Defined in [near.ts:636](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L636)*

**Returns:** `T`
The first/front element of the deque.

___
<a id="isempty"></a>

###  isEmpty

getisEmpty(): `bool`

*Defined in [near.ts:561](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L561)*

**Returns:** `bool`
True if the deque is empty.

___
<a id="last"></a>

###  last

getlast(): `T`

*Defined in [near.ts:685](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L685)*

**Returns:** `T`
The last/back element of the deque.

___
<a id="length"></a>

###  length

getlength(): `i32`

*Defined in [near.ts:554](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L554)*

**Returns:** `i32`
The length of the deque.

___

## Methods

<a id="containsindex"></a>

###  containsIndex

▸ **containsIndex**(index: *`i32`*): `bool`

*Defined in [near.ts:538](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L538)*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| index | `i32` |  The index to check. |

**Returns:** `bool`
True if the given index is within the range of the deque indices.

___
<a id="delete"></a>

###  delete

▸ **delete**(index: *`i32`*): `void`

*Defined in [near.ts:546](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L546)*

Removes the content of the element from storage without changing length of the deque.

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| index | `i32` |  The index of the element to remove. |

**Returns:** `void`

___
<a id="popback"></a>

###  popBack

▸ **popBack**(): `T`

*Defined in [near.ts:665](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L665)*

Removes the last/back element from the deque and returns it. Asserts that the deque is not empty. Decreases the length of the deque.

**Returns:** `T`
The removed first element of the queue.

___
<a id="popfront"></a>

###  popFront

▸ **popFront**(): `T`

*Defined in [near.ts:625](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L625)*

Removes the first/front element from the deque and returns it. Asserts that the deque is not empty. Decreases the length of the deque.

**Returns:** `T`
The removed first element of the queue.

___
<a id="pushback"></a>

###  pushBack

▸ **pushBack**(element: *`T`*): `i32`

*Defined in [near.ts:653](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L653)*

Adds a new element to the end of the deque. Increases the length of the deque.

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| element | `T` |  A new element to add. |

**Returns:** `i32`
The index of a newly added element

___
<a id="pushfront"></a>

###  pushFront

▸ **pushFront**(element: *`T`*): `i32`

*Defined in [near.ts:614](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L614)*

Adds a new element in front of the deque. Increases the length of the deque.

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| element | `T` |  A new element to add. |

**Returns:** `i32`
The index of a newly added element

___

