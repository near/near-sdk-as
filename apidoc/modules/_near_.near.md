[near-runtime-ts](../README.md) > ["near"](../modules/_near_.md) > [near](../modules/_near_.near.md)

# Module: near

## Index

### Classes

* [MapEntry](../classes/_near_.near.mapentry.md)

### Functions

* [base58](_near_.near.md#base58)
* [hash](_near_.near.md#hash)
* [hash32](_near_.near.md#hash32)
* [log](_near_.near.md#log)
* [random32](_near_.near.md#random32)
* [randomBuffer](_near_.near.md#randombuffer)
* [str](_near_.near.md#str)

---

## Functions

<a id="base58"></a>

###  base58

▸ **base58**(source: *`Uint8Array`*): `string`

*Defined in [near.ts:1133](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1133)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| source | `Uint8Array` |

**Returns:** `string`

___
<a id="hash"></a>

###  hash

▸ **hash**<`T`>(data: *`T`*): `Uint8Array`

*Defined in [near.ts:1083](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1083)*

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

*Defined in [near.ts:1098](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1098)*

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

*Defined in [near.ts:1124](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1124)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| msg | `string` |

**Returns:** `void`

___
<a id="random32"></a>

###  random32

▸ **random32**(): `u32`

*Defined in [near.ts:1120](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1120)*

Returns random 32-bit integer.

**Returns:** `u32`

___
<a id="randombuffer"></a>

###  randomBuffer

▸ **randomBuffer**(len: *`u32`*): `Uint8Array`

*Defined in [near.ts:1111](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1111)*

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

*Defined in [near.ts:1128](https://github.com/nearprotocol/near-runtime-ts/blob/a04d184/near.ts#L1128)*

**Type parameters:**

#### T 
**Parameters:**

| Name | Type |
| ------ | ------ |
| value | `T` |

**Returns:** `string`

___

