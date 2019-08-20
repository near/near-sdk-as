#!/bin/bash
rm /tmp/main.wasm
cp ./out/main.wasm /tmp/
errormsg='WasmerCallError("Call error: unknown error")'


res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=promiseTests --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=dequeTests --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=mathTests --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi




res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=storageGenericGetSetRoundtripTest --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=storageKeysTest --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=logTest --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=base64Test --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=base58Test --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=storageStringRoundtripTest --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=storageBytesRoundtripTest --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=mapTests --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=vectorTests --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=topnTests --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi

res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=contextTests --wasm-file=/tmp/main.wasm`
if [ "$res" == "$errormsg" ]; then
    echo "failure"
    exit 1
else
    echo $res
fi