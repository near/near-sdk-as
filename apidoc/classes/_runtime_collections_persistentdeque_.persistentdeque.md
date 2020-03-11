[near-sdk-as - v0.0.2-0](../README.md) > ["runtime/collections/persistentDeque"](../modules/_runtime_collections_persistentdeque_.md) > [PersistentDeque](../classes/_runtime_collections_persistentdeque_.persistentdeque.md)

# Class: PersistentDeque

A deque class that implements a persistent bidirectional queue.

## Type parameters
#### T 
## Hierarchy

**PersistentDeque**

## Indexable

\[key: `number`\]:&nbsp;`T`
A deque class that implements a persistent bidirectional queue.

## Index

### Constructors

* [constructor](_runtime_collections_persistentdeque_.persistentdeque.md#constructor)

### Accessors

* [back](_runtime_collections_persistentdeque_.persistentdeque.md#back)
* [first](_runtime_collections_persistentdeque_.persistentdeque.md#first)
* [front](_runtime_collections_persistentdeque_.persistentdeque.md#front)
* [isEmpty](_runtime_collections_persistentdeque_.persistentdeque.md#isempty)
* [last](_runtime_collections_persistentdeque_.persistentdeque.md#last)
* [length](_runtime_collections_persistentdeque_.persistentdeque.md#length)

### Methods

* [containsIndex](_runtime_collections_persistentdeque_.persistentdeque.md#containsindex)
* [popBack](_runtime_collections_persistentdeque_.persistentdeque.md#popback)
* [popFront](_runtime_collections_persistentdeque_.persistentdeque.md#popfront)
* [pushBack](_runtime_collections_persistentdeque_.persistentdeque.md#pushback)
* [pushFront](_runtime_collections_persistentdeque_.persistentdeque.md#pushfront)

---

## Constructors

<a id="constructor"></a>

###  constructor

⊕ **new PersistentDeque**(prefix: *`string`*): [PersistentDeque](_runtime_collections_persistentdeque_.persistentdeque.md)

*Defined in runtime/collections/persistentDeque.ts:14*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| prefix | `string` |  A prefix to use for every key of this deque. |

**Returns:** [PersistentDeque](_runtime_collections_persistentdeque_.persistentdeque.md)

___

## Accessors

<a id="back"></a>

###  back

**back**: 

*Defined in runtime/collections/persistentDeque.ts:207*

___
<a id="first"></a>

###  first

**first**: 

*Defined in runtime/collections/persistentDeque.ts:174*

___
<a id="front"></a>

###  front

**front**: 

*Defined in runtime/collections/persistentDeque.ts:166*

___
<a id="isempty"></a>

###  isEmpty

**isEmpty**: 

*Defined in runtime/collections/persistentDeque.ts:91*

___
<a id="last"></a>

###  last

**last**: 

*Defined in runtime/collections/persistentDeque.ts:215*

___
<a id="length"></a>

###  length

**length**: 

*Defined in runtime/collections/persistentDeque.ts:84*

___

## Methods

<a id="containsindex"></a>

###  containsIndex

▸ **containsIndex**(index: *`i32`*): `bool`

*Defined in runtime/collections/persistentDeque.ts:77*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| index | `i32` |  The index to check. |

**Returns:** `bool`
True if the given index is within the range of the deque indices.

___
<a id="popback"></a>

###  popBack

▸ **popBack**(): `T`

*Defined in runtime/collections/persistentDeque.ts:195*

**Returns:** `T`
The removed first element of the queue.

___
<a id="popfront"></a>

###  popFront

▸ **popFront**(): `T`

*Defined in runtime/collections/persistentDeque.ts:155*

**Returns:** `T`
The removed first element of the queue.

___
<a id="pushback"></a>

###  pushBack

▸ **pushBack**(element: *`T`*): `i32`

*Defined in runtime/collections/persistentDeque.ts:183*

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

*Defined in runtime/collections/persistentDeque.ts:144*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| element | `T` |  A new element to add. |

**Returns:** `i32`
The index of a newly added element

___

