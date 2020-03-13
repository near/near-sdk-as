[near-sdk-as - v0.0.2-0](../README.md) > ["runtime/base64"](../modules/_runtime_base64_.md) > [base64](../modules/_runtime_base64_.base64.md)

# Module: base64

base64 encoding/decoding

## Index

### Variables

* [ALPHA](_runtime_base64_.base64.md#alpha)
* [PADCHAR](_runtime_base64_.base64.md#padchar)

### Functions

* [decode](_runtime_base64_.base64.md#decode)
* [encode](_runtime_base64_.base64.md#encode)
* [getByte64](_runtime_base64_.base64.md#getbyte64)

---

## Variables

<a id="alpha"></a>

### `<Const>` ALPHA

**● ALPHA**: *`string`* = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

*Defined in runtime/base64.ts:7*

___
<a id="padchar"></a>

### `<Const>` PADCHAR

**● PADCHAR**: *`string`* = "="

*Defined in runtime/base64.ts:6*

___

## Functions

<a id="decode"></a>

###  decode

▸ **decode**(s: *`string`*): `Uint8Array`

*Defined in runtime/base64.ts:13*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| s | `string` |  Base64 encoded string. |

**Returns:** `Uint8Array`

___
<a id="encode"></a>

###  encode

▸ **encode**(bytes: *`Uint8Array`*): `string`

*Defined in runtime/base64.ts:62*

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| bytes | `Uint8Array` |  Byte array of type Uint8Array. |

**Returns:** `string`

___
<a id="getbyte64"></a>

###  getByte64

▸ **getByte64**(s: *`string`*, i: *`u32`*): `u32`

*Defined in runtime/base64.ts:99*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `string` |
| i | `u32` |

**Returns:** `u32`

___

