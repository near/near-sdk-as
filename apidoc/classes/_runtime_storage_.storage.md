[near-sdk-as - v0.0.2-0](../README.md) > ["runtime/storage"](../modules/_runtime_storage_.md) > [Storage](../classes/_runtime_storage_.storage.md)

# Class: Storage

Represents contract storage.

## Hierarchy

**Storage**

## Index

### Methods

* [contains](_runtime_storage_.storage.md#contains)
* [delete](_runtime_storage_.storage.md#delete)
* [get](_runtime_storage_.storage.md#get)
* [getBytes](_runtime_storage_.storage.md#getbytes)
* [getPrimitive](_runtime_storage_.storage.md#getprimitive)
* [getSome](_runtime_storage_.storage.md#getsome)
* [getString](_runtime_storage_.storage.md#getstring)
* [hasKey](_runtime_storage_.storage.md#haskey)
* [keyRange](_runtime_storage_.storage.md#keyrange)
* [keys](_runtime_storage_.storage.md#keys)
* [set](_runtime_storage_.storage.md#set)
* [setBytes](_runtime_storage_.storage.md#setbytes)
* [setString](_runtime_storage_.storage.md#setstring)

---

## Methods

<a id="contains"></a>

###  contains

▸ **contains**(key: *`string`*): `bool`

*Defined in runtime/storage.ts:88*

**Parameters:**

| Name | Type |
| ------ | ------ |
| key | `string` |

**Returns:** `bool`

___
<a id="delete"></a>

###  delete

▸ **delete**(key: *`string`*): `void`

*Defined in runtime/storage.ts:101*

**Parameters:**

| Name | Type |
| ------ | ------ |
| key | `string` |

**Returns:** `void`

___
<a id="get"></a>

###  get

▸ **get**<`T`>(key: *`string`*, defaultValue?: *`T` \| `null`*): `T` \| `null`

*Defined in runtime/storage.ts:136*

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| key | `string` | - |  A key to read from storage. |
| `Default value` defaultValue | `T` \| `null` |  null |  The default value if the key is not available |

**Returns:** `T` \| `null`
A value of type T stored under the given key.

___
<a id="getbytes"></a>

###  getBytes

▸ **getBytes**(key: *`string`*): `Uint8Array` \| `null`

*Defined in runtime/storage.ts:81*

**Parameters:**

| Name | Type |
| ------ | ------ |
| key | `string` |

**Returns:** `Uint8Array` \| `null`

___
<a id="getprimitive"></a>

###  getPrimitive

▸ **getPrimitive**<`T`>(key: *`string`*, defaultValue: *`T`*): `T`

*Defined in runtime/storage.ts:154*

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| key | `string` |  A key to read from storage. |
| defaultValue | `T` |  The default value if the key is not available |

**Returns:** `T`
A value of type T stored under the given key.

___
<a id="getsome"></a>

###  getSome

▸ **getSome**<`T`>(key: *`string`*): `T`

*Defined in runtime/storage.ts:172*

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| key | `string` |  A key to read from storage. |

**Returns:** `T`
A value of type T stored under the given key.

___
<a id="getstring"></a>

###  getString

▸ **getString**(key: *`string`*): `string` \| `null`

*Defined in runtime/storage.ts:58*

**Parameters:**

| Name | Type |
| ------ | ------ |
| key | `string` |

**Returns:** `string` \| `null`

___
<a id="haskey"></a>

###  hasKey

▸ **hasKey**(key: *`string`*): `bool`

*Defined in runtime/storage.ts:94*

**Parameters:**

| Name | Type |
| ------ | ------ |
| key | `string` |

**Returns:** `bool`

___
<a id="keyrange"></a>

###  keyRange

▸ **keyRange**(start: *`string`*, end: *`string`*, limit?: *`i32`*): `string`[]

*Defined in runtime/storage.ts:17*

**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| start | `string` | - |  The start key used as a lower bound in lexicographical order. Inclusive. |
| end | `string` | - |  The end key used as a upper bound in lexicographical order. Inclusive. |
| `Default value` limit | `i32` |  -1 |  The maximum number of keys to return. Default is \`-1\`, means no limit. |

**Returns:** `string`[]

___
<a id="keys"></a>

###  keys

▸ **keys**(prefix: *`string`*, limit?: *`i32`*): `string`[]

*Defined in runtime/storage.ts:36*

**Parameters:**

| Name | Type | Default value | Description |
| ------ | ------ | ------ | ------ |
| prefix | `string` | - |  The key prefix. |
| `Default value` limit | `i32` |  -1 |  The maximum number of keys to return. Default is \`-1\`, means no limit. |

**Returns:** `string`[]

___
<a id="set"></a>

###  set

▸ **set**<`T`>(key: *`string`*, value: *`T`*): `void`

*Defined in runtime/storage.ts:113*

**Type parameters:**

#### T 
**Parameters:**

| Name | Type | Description |
| ------ | ------ | ------ |
| key | `string` |  A key to use for storage. |
| value | `T` |  A value to store. |

**Returns:** `void`

___
<a id="setbytes"></a>

###  setBytes

▸ **setBytes**(key: *`string`*, value: *`Uint8Array`*): `void`

*Defined in runtime/storage.ts:68*

**Parameters:**

| Name | Type |
| ------ | ------ |
| key | `string` |
| value | `Uint8Array` |

**Returns:** `void`

___
<a id="setstring"></a>

###  setString

▸ **setString**(key: *`string`*, value: *`string`*): `void`

*Defined in runtime/storage.ts:47*

**Parameters:**

| Name | Type |
| ------ | ------ |
| key | `string` |
| value | `string` |

**Returns:** `void`

___

