#!/bin/bash
RUST_VERSION=nightly
if [[ -e nearcore ]]; then
    cd nearcore
    git pull
else
    git clone https://github.com/nearprotocol/nearcore
    cd nearcore
fi

if [[ ! -e $HOME/.cargo ]]; then
curl https://sh.rustup.rs -sSf | \
     sh -s -- -y --no-modify-path --default-toolchain $RUST_VERSION
fi

$HOME/.cargo/bin/cargo build -p near-vm-runner-standalone
