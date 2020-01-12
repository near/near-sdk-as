#!/bin/bash
TESTS=(mapTestsWithArray base58Test base64Test logTest storageStringRoundtripTest storageBytesRoundtripTest storageGenericGetSetRoundtripTest storageKeysTest mapTests mapTestsWithPrimitices vectorTests dequeTests topnTests promiseTests mathTests)
DISABLED_TESTS=(contextTests)

[[ -e /tmp/main.wasm ]] && rm /tmp/main.wasm
cp $(dirname "$0")/out/main.wasm /tmp/
cp $(dirname "$0")/*.json /tmp/
errormsg="FunctionCallError"
errors=0
passed=0

testcase () {

    res=`nearcore/target/debug/near-vm-runner-standalone --context-file=/tmp/context.json --config-file=/tmp/config.json --method-name=$1 --wasm-file=/tmp/main.wasm --input="{}"`
    if [[ "$res" =~ "$errormsg" ]]; then
        echo -e "\033[91m[FAIL] \033[0m$res"
        errors=`expr $errors + 1`
    else
        echo -e "\033[92m[PASS] \033[0m$res"
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
echo -e "$(expr ${passed} + ${errors} + ${#DISABLED_TESTS[@]}) Total, \033[92m${passed} Passed\033[0m, \033[91m${errors} Failed\033[0m, ${#DISABLED_TESTS[@]} Ignored."

if [[ "$errors" -gt 0 ]]; then
    exit 1
fi
