[near-runtime-ts](../README.md) > ["math"](../modules/_math_.md) > [math](../modules/_math_.math.md)

# Module: math

## Index

### Variables

* [_BLOCK_INDEX_SEED_AT_KEY](_math_.math.md#_block_index_seed_at_key)
* [_RANDOM_BUFFER_INDEX_KEY](_math_.math.md#_random_buffer_index_key)
* [_RANDOM_BUFFER_KEY](_math_.math.md#_random_buffer_key)

### Functions

* [_uint8ArrayToU32](_math_.math.md#_uint8arraytou32)
* [hash](_math_.math.md#hash)
* [hash32](_math_.math.md#hash32)
* [hash32Bytes](_math_.math.md#hash32bytes)
* [keccak256](_math_.math.md#keccak256)
* [keccak512](_math_.math.md#keccak512)
* [randomBuffer](_math_.math.md#randombuffer)
* [randomSeed](_math_.math.md#randomseed)
* [sha256](_math_.math.md#sha256)

---

## Variables

<a id="_block_index_seed_at_key"></a>

### `<Const>` _BLOCK_INDEX_SEED_AT_KEY

**● _BLOCK_INDEX_SEED_AT_KEY**: *"block_index_seeded_at"* = "block_index_seeded_at"

*Defined in [math.ts:55](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L55)*

___
<a id="_random_buffer_index_key"></a>

### `<Const>` _RANDOM_BUFFER_INDEX_KEY

**● _RANDOM_BUFFER_INDEX_KEY**: *"random_buffer_index_key"* = "random_buffer_index_key"

*Defined in [math.ts:57](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L57)*

___
<a id="_random_buffer_key"></a>

### `<Const>` _RANDOM_BUFFER_KEY

**● _RANDOM_BUFFER_KEY**: *"random_buffer_key"* = "random_buffer_key"

*Defined in [math.ts:56](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L56)*

___

## Functions

<a id="_uint8arraytou32"></a>

###  _uint8ArrayToU32

▸ **_uint8ArrayToU32**(data: *`Uint8Array`*): `u32`

*Defined in [math.ts:44](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L44)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| data | `Uint8Array` |

**Returns:** `u32`

___
<a id="hash"></a>

###  hash

▸ **hash**<`T`>(data: *`T`*): `Uint8Array`

*Defined in [math.ts:35](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L35)*

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

*Defined in [math.ts:22](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L22)*

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

*Defined in [math.ts:11](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L11)*

Hash a given Uint8Array. Returns hash as 32-bit integer.

**Parameters:**

| Name | Type |
| ------ | ------ |
| data | `Uint8Array` |

**Returns:** `u32`

___
<a id="keccak256"></a>

###  keccak256

▸ **keccak256**(inp: *`Uint8Array`*): `Uint8Array`

*Defined in [math.ts:101](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L101)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| inp | `Uint8Array` |

**Returns:** `Uint8Array`

___
<a id="keccak512"></a>

###  keccak512

▸ **keccak512**(inp: *`Uint8Array`*): `Uint8Array`

*Defined in [math.ts:108](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L108)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| inp | `Uint8Array` |

**Returns:** `Uint8Array`

___
<a id="randombuffer"></a>

###  randomBuffer

▸ **randomBuffer**(len: *`u32`*): `Uint8Array`

*Defined in [math.ts:59](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L59)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| len | `u32` |

**Returns:** `Uint8Array`

___
<a id="randomseed"></a>

###  randomSeed

▸ **randomSeed**(): `Uint8Array`

*Defined in [math.ts:117](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L117)*

Returns a random seed.

**Returns:** `Uint8Array`

___
<a id="sha256"></a>

###  sha256

▸ **sha256**(inp: *`Uint8Array`*): `Uint8Array`

*Defined in [math.ts:94](https://github.com/nearprotocol/near-runtime-ts/blob/6995971/assembly/math.ts#L94)*

**Parameters:**

| Name | Type |
| ------ | ------ |
| inp | `Uint8Array` |

**Returns:** `Uint8Array`

___

