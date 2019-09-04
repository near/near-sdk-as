#!/bin/bash
[[ -e /tmp/main.wasm ]] && rm /tmp/main.wasm
cp $(dirname "$0")/out/main.wasm /tmp/
cp $(dirname "$0")/*.json /tmp/
errormsg="WasmerCallError"
errors=0
passed=0

testcase () {

    res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=$1 --wasm-file=/tmp/main.wasm`
    if [[ "$res" =~ "$errormsg" ]]; then
        echo -e "\e[91m[FAIL] \e[0m$res"
        errors=`expr $errors + 1`
    else
        echo -e "\e[92m[PASS] \e[0m$res"
        passed=`expr $passed + 1`
    fi
}

testcase promiseTests
testcase dequeTests
testcase mathTests
testcase storageGenericGetSetRoundtripTest
testcase storageKeysTest
testcase logTest
testcase base64Test
testcase base58Test
testcase storageStringRoundtripTest
testcase storageBytesRoundtripTest
testcase mapTests
testcase vectorTests
testcase topnTests
testcase contextTests

echo -e "$(expr ${passed} + ${errors}) Total, \e[92m${passed} Passed\e[0m, \e[91m${errors} Failed"

if [[ "$errors" -gt 0 ]]; then
    exit 1
fi