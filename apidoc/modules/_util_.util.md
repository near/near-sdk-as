[near-runtime-ts](../README.md) > ["util"](../modules/_util_.md) > [util](../modules/_util_.util.md)

# Module: util

## Index

### Functions

* [UTF8Length](_util_.util.md#utf8length)
* [bytesToString](_util_.util.md#bytestostring)
* [parseFromBytes](_util_.util.md#parsefrombytes)
* [parseFromString](_util_.util.md#parsefromstring)
* [stringToBytes](_util_.util.md#stringtobytes)
* [toUTF8](_util_.util.md#toutf8)
* [uint8ArrayToBuffer](_util_.util.md#uint8arraytobuffer)

---

## Functions

<a id="utf8length"></a>

###  UTF8Length

▸ **UTF8Length**(str: *`string`*, nullTerminated?: *`boolean`*): `usize`

*Defined in [util.ts:17](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/util.ts#L17)*

**Parameters:**

| Name | Type | Default value |
| ------ | ------ | ------ |
| str | `string` | - |
| `Default value` nullTerminated | `boolean` | false |

**Returns:** `usize`

___
<a id="bytestostring"></a>

###  bytesToString

▸ **bytesToString**(bytes: *`Uint8Array`*): `string` \| `null`

*Defined in [util.ts:10](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/util.ts#L10)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| bytes | `Uint8Array` |

**Returns:** `string` \| `null`

___
<a id="parsefrombytes"></a>

###  parseFromBytes

▸ **parseFromBytes**<`T`>(bytes: *`Uint8Array`*): `T`

*Defined in [util.ts:36](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/util.ts#L36)*

Parses the given bytes array to return a value of the given generic type. Supported types: bool, integer, string and data objects defined in model.ts.

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| bytes | `Uint8Array` |  Bytes to parse. Bytes must be not null. |

**Returns:** `T`
A parsed value of type T.

___
<a id="parsefromstring"></a>

###  parseFromString

▸ **parseFromString**<`T`>(s: *`string`*): `T`

*Defined in [util.ts:53](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/util.ts#L53)*

Parses the given string to return a value of the given generic type. Supported types: bool, integer, string and data objects defined in model.ts.

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| s | `string` |  String to parse. Must be not null. |

**Returns:** `T`
A parsed value of type T.

___
<a id="stringtobytes"></a>

###  stringToBytes

▸ **stringToBytes**(s: *`string`*): `Uint8Array`

*Defined in [util.ts:3](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/util.ts#L3)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `string` |

**Returns:** `Uint8Array`

___
<a id="toutf8"></a>

###  toUTF8

▸ **toUTF8**(str: *`string`*, nullTerminated?: *`boolean`*): `usize`

*Defined in [util.ts:21](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/util.ts#L21)*

**Parameters:**

| Name | Type | Default value |
| ------ | ------ | ------ |
| str | `string` | - |
| `Default value` nullTerminated | `boolean` | false |

**Returns:** `usize`

___
<a id="uint8arraytobuffer"></a>

###  uint8ArrayToBuffer

▸ **uint8ArrayToBuffer**(array: *`Uint8Array`*): `ArrayBuffer`

*Defined in [util.ts:25](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/util.ts#L25)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| array | `Uint8Array` |

**Returns:** `ArrayBuffer`

___

