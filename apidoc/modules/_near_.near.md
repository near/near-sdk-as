[near-runtime-ts](../README.md) > ["near"](../modules/_near_.md) > [near](../modules/_near_.near.md)

# Module: near

## Index

### Classes

* [MapEntry](../classes/_near_.near.mapentry.md)

### Functions

* [base58](_near_.near.md#base58)
* [bytesToString](_near_.near.md#bytestostring)
* [hash](_near_.near.md#hash)
* [hash32](_near_.near.md#hash32)
* [log](_near_.near.md#log)
* [parseFromBytes](_near_.near.md#parsefrombytes)
* [parseFromString](_near_.near.md#parsefromstring)
* [random32](_near_.near.md#random32)
* [randomBuffer](_near_.near.md#randombuffer)
* [str](_near_.near.md#str)
* [stringToBytes](_near_.near.md#stringtobytes)

---

## Functions

<a id="base58"></a>

###  base58

▸ **base58**(source: *`Uint8Array`*): `string`

*Defined in [near.ts:1174](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1174)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| source | `Uint8Array` |

**Returns:** `string`

___
<a id="bytestostring"></a>

###  bytesToString

▸ **bytesToString**(bytes: *`Uint8Array`*): `string`

*Defined in [near.ts:1096](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1096)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| bytes | `Uint8Array` |

**Returns:** `string`

___
<a id="hash"></a>

###  hash

▸ **hash**<`T`>(data: *`T`*): `Uint8Array`

*Defined in [near.ts:1124](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1124)*

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

*Defined in [near.ts:1139](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1139)*

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

*Defined in [near.ts:1165](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1165)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| msg | `string` |

**Returns:** `void`

___
<a id="parsefrombytes"></a>

###  parseFromBytes

▸ **parseFromBytes**<`T`>(bytes: *`Uint8Array`*, defaultValue?: *`T`*): `T`

*Defined in [near.ts:1084](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1084)*

Parses the given bytes array to return a value of the given generic type. Supported types: bool, integer, string and data objects defined in model.ts.

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| bytes | `Uint8Array` | - |  Bytes to parse. |
| `Default value` defaultValue | `T` |  null |  The default value if the bytes are null |

**Returns:** `T`
A parsed value of type T.

___
<a id="parsefromstring"></a>

###  parseFromString

▸ **parseFromString**<`T`>(s: *`string`*, defaultValue?: *`T`*): `T`

*Defined in [near.ts:1056](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1056)*

Parses the given string to return a value of the given generic type. Supported types: bool, integer, string and data objects defined in model.ts.

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| s | `string` | - |  String to parse. |
| `Default value` defaultValue | `T` |  null |  The default value if the string is null |

**Returns:** `T`
A parsed value of type T.

___
<a id="random32"></a>

###  random32

▸ **random32**(): `u32`

*Defined in [near.ts:1161](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1161)*

Returns random 32-bit integer.

**Returns:** `u32`

___
<a id="randombuffer"></a>

###  randomBuffer

▸ **randomBuffer**(len: *`u32`*): `Uint8Array`

*Defined in [near.ts:1152](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1152)*

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

*Defined in [near.ts:1169](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1169)*

**Type parameters:**

#### T 
**Parameters:**

| Name | Type |
| ------ | ------ |
| value | `T` |

**Returns:** `string`

___
<a id="stringtobytes"></a>

###  stringToBytes

▸ **stringToBytes**(s: *`string`*): `Uint8Array`

*Defined in [near.ts:1100](https://github.com/nearprotocol/near-runtime-ts/blob/9615ced/near.ts#L1100)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `string` |

**Returns:** `Uint8Array`

___

