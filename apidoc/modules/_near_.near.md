[near-runtime-ts](../README.md) > ["near"](../modules/_near_.md) > [near](../modules/_near_.near.md)

# Module: near

## Index

### Functions

* [base58](_near_.near.md#base58)
* [bufferWithSize](_near_.near.md#bufferwithsize)
* [bufferWithSizeFromPtr](_near_.near.md#bufferwithsizefromptr)
* [hash](_near_.near.md#hash)
* [hash32](_near_.near.md#hash32)
* [log](_near_.near.md#log)
* [random32](_near_.near.md#random32)
* [randomBuffer](_near_.near.md#randombuffer)
* [str](_near_.near.md#str)
* [utf8](_near_.near.md#utf8)

---

## Functions

<a id="base58"></a>

###  base58

▸ **base58**(source: *`Uint8Array`*): `string`

*Defined in [near.ts:225](https://github.com/nearprotocol/near-runtime-ts/blob/a6cbaa1/near.ts#L225)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| source | `Uint8Array` |

**Returns:** `string`

___
<a id="bufferwithsize"></a>

###  bufferWithSize

▸ **bufferWithSize**(buf: *`Uint8Array`*): `Uint8Array`

*Defined in [near.ts:208](https://github.com/nearprotocol/near-runtime-ts/blob/a6cbaa1/near.ts#L208)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| buf | `Uint8Array` |

**Returns:** `Uint8Array`

___
<a id="bufferwithsizefromptr"></a>

###  bufferWithSizeFromPtr

▸ **bufferWithSizeFromPtr**(ptr: *`usize`*, length: *`usize`*): `Uint8Array`

*Defined in [near.ts:198](https://github.com/nearprotocol/near-runtime-ts/blob/a6cbaa1/near.ts#L198)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| ptr | `usize` |
| length | `usize` |

**Returns:** `Uint8Array`

___
<a id="hash"></a>

###  hash

▸ **hash**<`T`>(data: *`T`*): `Uint8Array`

*Defined in [near.ts:154](https://github.com/nearprotocol/near-runtime-ts/blob/a6cbaa1/near.ts#L154)*

Hash given data. Returns hash as 32-byte array.

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| data | `T` |  data can be passed as either Uint8Array or anything with .toString (hashed as UTF-8 string). |

**Returns:** `Uint8Array`

___
<a id="hash32"></a>

###  hash32

▸ **hash32**<`T`>(data: *`T`*): `u32`

*Defined in [near.ts:171](https://github.com/nearprotocol/near-runtime-ts/blob/a6cbaa1/near.ts#L171)*

Hash given data. Returns hash as 32-bit integer.

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| data | `T` |  data can be passed as either Uint8Array or anything with .toString (hashed as UTF-8 string). |

**Returns:** `u32`

___
<a id="log"></a>

###  log

▸ **log**(msg: *`string`*): `void`

*Defined in [near.ts:212](https://github.com/nearprotocol/near-runtime-ts/blob/a6cbaa1/near.ts#L212)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| msg | `string` |

**Returns:** `void`

___
<a id="random32"></a>

###  random32

▸ **random32**(): `u32`

*Defined in [near.ts:194](https://github.com/nearprotocol/near-runtime-ts/blob/a6cbaa1/near.ts#L194)*

Returns random 32-bit integer.

**Returns:** `u32`

___
<a id="randombuffer"></a>

###  randomBuffer

▸ **randomBuffer**(len: *`u32`*): `Uint8Array`

*Defined in [near.ts:185](https://github.com/nearprotocol/near-runtime-ts/blob/a6cbaa1/near.ts#L185)*

Returns random byte buffer of given length.

**Parameters:**

| Name | Type |
| ------ | ------ |
| len | `u32` |

**Returns:** `Uint8Array`

___
<a id="str"></a>

###  str

▸ **str**<`T`>(value: *`T`*): `string`

*Defined in [near.ts:216](https://github.com/nearprotocol/near-runtime-ts/blob/a6cbaa1/near.ts#L216)*

**Type parameters:**

#### T 
**Parameters:**

| Name | Type |
| ------ | ------ |
| value | `T` |

**Returns:** `string`

___
<a id="utf8"></a>

###  utf8

▸ **utf8**(value: *`string`*): `usize`

*Defined in [near.ts:221](https://github.com/nearprotocol/near-runtime-ts/blob/a6cbaa1/near.ts#L221)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| value | `string` |

**Returns:** `usize`

___

