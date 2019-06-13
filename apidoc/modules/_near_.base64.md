[near-runtime-ts](../README.md) > ["near"](../modules/_near_.md) > [base64](../modules/_near_.base64.md)

# Module: base64

base64 encoding/decoding

## Index

### Variables

* [ALPHA](_near_.base64.md#alpha)
* [PADCHAR](_near_.base64.md#padchar)

### Functions

* [decode](_near_.base64.md#decode)
* [encode](_near_.base64.md#encode)
* [getByte64](_near_.base64.md#getbyte64)

---

## Variables

<a id="alpha"></a>

### `<Const>` ALPHA

**● ALPHA**: *`string`* = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

*Defined in [near.ts:1585](https://github.com/nearprotocol/near-runtime-ts/blob/5196cd6/near.ts#L1585)*

___
<a id="padchar"></a>

### `<Const>` PADCHAR

**● PADCHAR**: *`string`* = "="

*Defined in [near.ts:1584](https://github.com/nearprotocol/near-runtime-ts/blob/5196cd6/near.ts#L1584)*

___

## Functions

<a id="decode"></a>

###  decode

▸ **decode**(s: *`string`*): `Uint8Array`

*Defined in [near.ts:1595](https://github.com/nearprotocol/near-runtime-ts/blob/5196cd6/near.ts#L1595)*

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

*Defined in [near.ts:1644](https://github.com/nearprotocol/near-runtime-ts/blob/5196cd6/near.ts#L1644)*

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

*Defined in [near.ts:1587](https://github.com/nearprotocol/near-runtime-ts/blob/5196cd6/near.ts#L1587)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| s | `string` |
| i | `u32` |

**Returns:** `u32`

___

