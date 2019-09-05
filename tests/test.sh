#!/bin/bash
TESTS=(base58Test base64Test logTest storageStringRoundtripTest storageBytesRoundtripTest storageGenericGetSetRoundtripTest storageKeysTest mapTests mapTestsWithPrimitices vectorTests dequeTests topnTests promiseTests mathTests)
DISABLED_TESTS=(contextTests)

[[ -e /tmp/main.wasm ]] && rm /tmp/main.wasm
cp $(dirname "$0")/out/main.wasm /tmp/
cp $(dirname "$0")/*.json /tmp/
errormsg="WasmerCallError"
errors=0
passed=0

testcase () {

    res=`cargo run --package near-vm-runner-standalone --bin near-vm-runner-standalone -- --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=$1 --wasm-file=/tmp/main.wasm --input="{}"`
    if [[ "$res" =~ "$errormsg" ]]; then
        echo -e "\e[91m[FAIL] \e[0m$res"
        errors=`expr $errors + 1`
    else
        echo -e "\e[92m[PASS] \e[0m$res"
        passed=`expr $passed + 1`
    fi
}

for i in "${TESTS[@]}"
do
    # access each element  
    # as $i
    echo
    echo "Running $i" 
    testcase $i
done

echo
echo -e "$(expr ${passed} + ${errors} + ${#DISABLED_TESTS[@]}) Total, \e[92m${passed} Passed\e[0m, \e[91m${errors} Failed\e[0m, ${#DISABLED_TESTS[@]} Ignored."

if [[ "$errors" -gt 0 ]]; then
    exit 1
fi