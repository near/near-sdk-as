How to run the tests, currently:

copy context.json and config.json to /tmp/
compile main.wasm
from nearcore: cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=storageGenericGetSetRoundtripTest --wasm-file=/tmp/main.wasm`
