[near-sdk-as - v0.0.2-0](../README.md) > ["runtime/util"](../modules/_runtime_util_.md) > [util](../modules/_runtime_util_.util.md)

# Module: util

## Index

### Functions

* [UTF8Length](_runtime_util_.util.md#utf8length)
* [bytesToString](_runtime_util_.util.md#bytestostring)
* [parseFromBytes](_runtime_util_.util.md#parsefrombytes)
* [parseFromString](_runtime_util_.util.md#parsefromstring)
* [read_register](_runtime_util_.util.md#read_register)
* [stringToBytes](_runtime_util_.util.md#stringtobytes)
* [toUTF8](_runtime_util_.util.md#toutf8)
* [uint8ArrayToBuffer](_runtime_util_.util.md#uint8arraytobuffer)

---

## Functions

<a id="utf8length"></a>

###  UTF8Length

▸ **UTF8Length**(str: *`string`*, nullTerminated?: *`boolean`*): `usize`

*Defined in runtime/util.ts:19*

**Parameters:**

| Name | Type | Default value |
| ------ | ------ | ------ |
| str | `string` | - |
| `Default value` nullTerminated | `boolean` | false |

**Returns:** `usize`

___
<a id="bytestostring"></a>

###  bytesToString

▸ **bytesToString**(bytes: *`Uint8Array` \| `null`*): `string` \| `null`

*Defined in runtime/util.ts:12*

**Parameters:**

| Name | Type |
| ------ | ------ |
| bytes | `Uint8Array` \| `null` |

**Returns:** `string` \| `null`

___
<a id="parsefrombytes"></a>

###  parseFromBytes

▸ **parseFromBytes**<`T`>(bytes: *`Uint8Array`*): `T`

*Defined in runtime/util.ts:38*

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

*Defined in runtime/util.ts:49*

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| s | `string` |  String to parse. Must be not null. |

**Returns:** `T`
A parsed value of type T.

___
<a id="read_register"></a>

###  read_register

▸ **read_register**(register_id: *`u64`*): `Uint8Array`

*Defined in runtime/util.ts:75*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| register_id | `u64` |  Id of register to read from |

**Returns:** `Uint8Array`

___
<a id="stringtobytes"></a>

###  stringToBytes

▸ **stringToBytes**(s: *`string`*): `Uint8Array`

*Defined in runtime/util.ts:5*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `string` |

**Returns:** `Uint8Array`

___
<a id="toutf8"></a>

###  toUTF8

▸ **toUTF8**(str: *`string`*, nullTerminated?: *`boolean`*): `usize`

*Defined in runtime/util.ts:23*

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

*Defined in runtime/util.ts:27*

**Parameters:**

| Name | Type |
| ------ | ------ |
| array | `Uint8Array` |

**Returns:** `ArrayBuffer`

___

