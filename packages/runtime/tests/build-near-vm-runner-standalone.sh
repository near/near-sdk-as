#!/bin/bash
CARGO_HOME="${CARGO_HOME:-$HOME/.cargo}"
RUST_VERSION=nightly
if [[ -e nearcore ]]; then
    cd nearcore;
    git checkout stable;
    git pull
else
    git clone --depth=1 -b stable https://github.com/nearprotocol/nearcore;
    cd nearcore
fi

if [[ ! -e $CARGO_HOME ]]; then
    curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path --default-toolchain $RUST_VERSION
fi

cargo build -p near-vm-runner-standalone
