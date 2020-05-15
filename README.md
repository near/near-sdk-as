# near-sdk-as
Collection of packages used in developing NEAR smart contracts in AssemblyScript including:


- [`runtime`](./assembly/runtime) - AssemblyScript near runtime library
- [`bindgen`](./bindgen) - AssemblyScript transformer that adds the bindings needed to (de)serialize input and outputs.
- [`wasm-mock-vm`](https://github.com/nearprotocol/wasm-mock-vm) - Core of the NEAR VM compiled to WebAssembly used for writing unit tests.
- [`VM Runtime`](./runtime) - A NearVM Simulator for making contract calls.
- [`@as-pect/cli`](https://github.com/jtenner/as-pect) - AssemblyScript testing framework similar to jest.

## To Install
```
yarn add -D near-sdk-as
```

## License

`near-sdk-as` is distributed under the terms of both the MIT license and the Apache License (Version 2.0).

See [LICENSE-MIT](LICENSE-MIT) and [LICENSE-APACHE](LICENSE-APACHE) for details.
