# near-sdk-as

Collection of packages used in developing NEAR smart contracts in AssemblyScript including:


- [`runtime library`](./sdk-core) - AssemblyScript near runtime library
- [`bindgen`](./bindgen) - AssemblyScript transformer that adds the bindings needed to (de)serialize input and outputs.
- [`near-mock-vm`](./near-mock-vm) - Core of the NEAR VM compiled to WebAssembly used for writing unit tests.
- [`simulator`](./simulator) - A NearVM Simulator for making contract calls.
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
yarn asd --target debug
```

will create a debug build and place it in `./build/debug/..`

## Testing

### Unit Testing

See the [sdk's as-pect tests for an example](./sdk/assembly/__tests__) of creating unit tests.  Must be ending in `.spec.ts` in a `assembly/__tests__`.

### Simulation Testing

See [simulator's tests for an example](./simulator/__tests__) of creating a simulating runtime, where you can deploy compiled contracts and make contract calls.

## License

`near-sdk-as` is distributed under the terms of both the MIT license and the Apache License (Version 2.0).

See [LICENSE-MIT](LICENSE-MIT) and [LICENSE-APACHE](LICENSE-APACHE) for details.
