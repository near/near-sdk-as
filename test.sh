#!/bin/bash
set -ex

WASM_MOCK_VM="wasm-mock-vm";

if test -d "./$WASM_MOCK_VM"; then
  (cd $WASM_MOCK_VM; git pull)
else 
  git clone https://github.com/nearprotocol/$WASM_MOCK_VM
fi

cd $WASM_MOCK_VM;
../node_modules/.bin/asp;
