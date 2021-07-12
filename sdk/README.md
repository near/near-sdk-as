# near-sdk-as

Collection of packages used in developing NEAR smart contracts in AssemblyScript including:


- [`runtime library`](https://github.com/near/near-sdk-as/tree/master/sdk-core) - AssemblyScript near runtime library
- [`bindgen`](https://github.com/near/near-sdk-as/tree/master/bindgen) - AssemblyScript transformer that adds the bindings needed to (de)serialize input and outputs.
- [`near-mock-vm`](https://github.com/near/near-sdk-as/tree/master/near-mock-vm) - Core of the NEAR VM compiled to WebAssembly used for running unit tests.
- [`@as-pect/cli`](https://github.com/jtenner/as-pect) - AssemblyScript testing framework similar to jest.

## To Install

```sh
yarn add -D near-sdk-as
```

## Project Setup

To set up a AS project to compile with the sdk add the following `asconfig.json` file to the root:

```json
{
  "extends": "near-sdk-as/asconfig.json"
}
```

Then if your main file is `assembly/index.ts`, then the project can be build with [`asbuild`](https://github.com/willemneal/asbuild):

```sh
yarn asb
```

will create a release build and place it `./build/release/<name-in-package.json>.wasm`

```sh
yarn asb --target debug
```

will create a debug build and place it in `./build/debug/..`

## Testing

### Unit Testing

See the [sdk's as-pect tests for an example](./sdk/assembly/__tests__) of creating unit tests.  Must be ending in `.spec.ts` in a `assembly/__tests__`.

## License

`near-sdk-as` is distributed under the terms of both the MIT license and the Apache License (Version 2.0).

See [LICENSE-MIT](LICENSE-MIT) and [LICENSE-APACHE](LICENSE-APACHE) for details.
