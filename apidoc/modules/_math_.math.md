[near-runtime-ts](../README.md) > ["math"](../modules/_math_.md) > [math](../modules/_math_.math.md)

# Module: math

## Index

### Functions

* [_uint8ArrayToU32](_math_.math.md#_uint8arraytou32)
* [hash](_math_.math.md#hash)
* [hash32](_math_.math.md#hash32)
* [hash32Bytes](_math_.math.md#hash32bytes)

---

## Functions

<a id="_uint8arraytou32"></a>

###  _uint8ArrayToU32

▸ **_uint8ArrayToU32**(data: *`Uint8Array`*): `u32`

*Defined in [math.ts:43](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/math.ts#L43)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| data | `Uint8Array` |

**Returns:** `u32`

___
<a id="hash"></a>

###  hash

▸ **hash**<`T`>(data: *`T`*): `Uint8Array`

*Defined in [math.ts:34](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/math.ts#L34)*

Hash given data. Returns hash as 32-byte array.

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| data | `T` |  data can be passed as anything with .toString (hashed as UTF-8 string). |

**Returns:** `Uint8Array`

___
<a id="hash32"></a>

###  hash32

▸ **hash32**<`T`>(data: *`T`*): `u32`

*Defined in [math.ts:21](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/math.ts#L21)*

Hash given data. Returns hash as 32-bit integer.

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| data | `T` |  data can be passed as anything with .toString (hashed as UTF-8 string). |

**Returns:** `u32`

___
<a id="hash32bytes"></a>

###  hash32Bytes

▸ **hash32Bytes**(data: *`Uint8Array`*): `u32`

*Defined in [math.ts:10](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/math.ts#L10)*

Hash a given Uint8Array. Returns hash as 32-bit integer.

**Parameters:**

| Name | Type |
| ------ | ------ |
| data | `Uint8Array` |

**Returns:** `u32`

___

