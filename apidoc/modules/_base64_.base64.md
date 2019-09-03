[near-runtime-ts](../README.md) > ["base64"](../modules/_base64_.md) > [base64](../modules/_base64_.base64.md)

# Module: base64

base64 encoding/decoding

## Index

### Variables

* [ALPHA](_base64_.base64.md#alpha)
* [PADCHAR](_base64_.base64.md#padchar)

### Functions

* [decode](_base64_.base64.md#decode)
* [encode](_base64_.base64.md#encode)
* [getByte64](_base64_.base64.md#getbyte64)

---

## Variables

<a id="alpha"></a>

### `<Const>` ALPHA

**● ALPHA**: *`string`* = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

*Defined in [base64.ts:7](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/base64.ts#L7)*

___
<a id="padchar"></a>

### `<Const>` PADCHAR

**● PADCHAR**: *`string`* = "="

*Defined in [base64.ts:6](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/base64.ts#L6)*

___

## Functions

<a id="decode"></a>

###  decode

▸ **decode**(s: *`string`*): `Uint8Array`

*Defined in [base64.ts:13](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/base64.ts#L13)*

Decode base64-encoded string and return a Uint8Array.

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| s | `string` |  Base64 encoded string. |

**Returns:** `Uint8Array`

___
<a id="encode"></a>

###  encode

▸ **encode**(bytes: *`Uint8Array`*): `string`

*Defined in [base64.ts:62](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/base64.ts#L62)*

Encode Uint8Array in base64.

**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| bytes | `Uint8Array` |  Byte array of type Uint8Array. |

**Returns:** `string`

___
<a id="getbyte64"></a>

###  getByte64

▸ **getByte64**(s: *`string`*, i: *`u32`*): `u32`

*Defined in [base64.ts:99](https://github.com/nearprotocol/near-runtime-ts/blob/d0fcf87/assembly/base64.ts#L99)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `string` |
| i | `u32` |

**Returns:** `u32`

___

