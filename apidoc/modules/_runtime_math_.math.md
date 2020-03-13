[near-sdk-as - v0.0.2-0](../README.md) > ["runtime/math"](../modules/_runtime_math_.md) > [math](../modules/_runtime_math_.math.md)

# Module: math

## Index

### Variables

* [_BLOCK_INDEX_SEED_AT_KEY](_runtime_math_.math.md#_block_index_seed_at_key)
* [_RANDOM_BUFFER_INDEX_KEY](_runtime_math_.math.md#_random_buffer_index_key)
* [_RANDOM_BUFFER_KEY](_runtime_math_.math.md#_random_buffer_key)

### Functions

* [_uint8ArrayToU32](_runtime_math_.math.md#_uint8arraytou32)
* [hash](_runtime_math_.math.md#hash)
* [hash32](_runtime_math_.math.md#hash32)
* [hash32Bytes](_runtime_math_.math.md#hash32bytes)
* [keccak256](_runtime_math_.math.md#keccak256)
* [keccak512](_runtime_math_.math.md#keccak512)
* [randomBuffer](_runtime_math_.math.md#randombuffer)
* [randomSeed](_runtime_math_.math.md#randomseed)
* [sha256](_runtime_math_.math.md#sha256)

---

## Variables

<a id="_block_index_seed_at_key"></a>

### `<Const>` _BLOCK_INDEX_SEED_AT_KEY

**● _BLOCK_INDEX_SEED_AT_KEY**: *"block_index_seeded_at"* = "block_index_seeded_at"

*Defined in runtime/math.ts:43*

___
<a id="_random_buffer_index_key"></a>

### `<Const>` _RANDOM_BUFFER_INDEX_KEY

**● _RANDOM_BUFFER_INDEX_KEY**: *"random_buffer_index_key"* = "random_buffer_index_key"

*Defined in runtime/math.ts:45*

___
<a id="_random_buffer_key"></a>

### `<Const>` _RANDOM_BUFFER_KEY

**● _RANDOM_BUFFER_KEY**: *"random_buffer_key"* = "random_buffer_key"

*Defined in runtime/math.ts:44*

___

## Functions

<a id="_uint8arraytou32"></a>

###  _uint8ArrayToU32

▸ **_uint8ArrayToU32**(data: *`Uint8Array`*): `u32`

*Defined in runtime/math.ts:32*

**Parameters:**

| Name | Type |
| ------ | ------ |
| data | `Uint8Array` |

**Returns:** `u32`

___
<a id="hash"></a>

###  hash

▸ **hash**<`T`>(data: *`T`*): `Uint8Array`

*Defined in runtime/math.ts:26*

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

*Defined in runtime/math.ts:18*

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

*Defined in runtime/math.ts:10*

**Parameters:**

| Name | Type |
| ------ | ------ |
| data | `Uint8Array` |

**Returns:** `u32`

___
<a id="keccak256"></a>

###  keccak256

▸ **keccak256**(inp: *`Uint8Array`*): `Uint8Array`

*Defined in runtime/math.ts:87*

**Parameters:**

| Name | Type |
| ------ | ------ |
| inp | `Uint8Array` |

**Returns:** `Uint8Array`

___
<a id="keccak512"></a>

###  keccak512

▸ **keccak512**(inp: *`Uint8Array`*): `Uint8Array`

*Defined in runtime/math.ts:94*

**Parameters:**

| Name | Type |
| ------ | ------ |
| inp | `Uint8Array` |

**Returns:** `Uint8Array`

___
<a id="randombuffer"></a>

###  randomBuffer

▸ **randomBuffer**(len: *`u32`*): `Uint8Array`

*Defined in runtime/math.ts:47*

**Parameters:**

| Name | Type |
| ------ | ------ |
| len | `u32` |

**Returns:** `Uint8Array`

___
<a id="randomseed"></a>

###  randomSeed

▸ **randomSeed**(): `Uint8Array`

*Defined in runtime/math.ts:103*

**Returns:** `Uint8Array`

___
<a id="sha256"></a>

###  sha256

▸ **sha256**(inp: *`Uint8Array`*): `Uint8Array`

*Defined in runtime/math.ts:82*

**Parameters:**

| Name | Type |
| ------ | ------ |
| inp | `Uint8Array` |

**Returns:** `Uint8Array`

___

