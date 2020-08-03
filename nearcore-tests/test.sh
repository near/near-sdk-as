#!/bin/bash
TESTS=(getDefaultValue mapTestsWithArray base58Test base64Test logTest storageStringRoundtripTest storageBytesRoundtripTest storageGenericGetSetRoundtripTest mapTests mapTestsWithPrimitices vectorTests dequeTests promiseTests mathTests)
DISABLED_TESTS=(contextTests)

[[ -e /tmp/main.wasm ]] && rm /tmp/main.wasm
cp "$(dirname "$0")"/build/release/main.wasm /tmp/
cp "$(dirname "$0")"/*.json /tmp/
errormsg="FunctionCallError"
errors=0
passed=0
../node_modules/.bin/near-vm >> /dev/null;
testcase () {

    res=$(../node_modules/.bin/near-vm --context-file=/tmp/context-stable.json --method-name="$1" --wasm-file=/tmp/main.wasm --input="{}")
    if [[ "$res" =~ $errormsg ]]; then
        echo -e "\033[91m[FAIL] \033[0m$res"
        errors=$((errors + 1))
    else
        echo -e "\033[92m[PASS] \033[0m$res"
        passed=$((passed + 1))
    fi
    # res=$(../node_modules/near-mock-vm/bin/bin.js run ./out/main.wasm "$1" "{}")
    # if [[ "$res" =~ $errormsg ]]; then
    #     echo -e "\033[91m[FAIL] \033[0m$res"
    #     errors=$((errors + 1))
    # else
    #     echo -e "\033[92m[PASS] \033[0m$res"
    #     passed=$((passed + 1))
    # fi
}
METHOD=promiseBatchTest
res=$(../node_modules/.bin/near-vm --context-file=/tmp/context-stable.json --method-name="$METHOD" --wasm-file=/tmp/main.wasm --input="{}")
echo "Running $METHOD";
./verifyBatch.js "$res";
if [[ $? -eq 1 ]]; then
        echo -e "\033[91m[FAIL] \033[0m$res"
        errors=$((errors + 1))
    else
        echo -e "\033[92m[PASS] \033[0m$res"
        passed=$((passed + 1))
    fi

for i in "${TESTS[@]}"
do
    # access each element
    # as $i
    echo
    echo "Running $i"
    testcase "$i"
done

echo
echo -e "$((passed + errors + ${#DISABLED_TESTS[@]})) Total, \033[92m${passed} Passed\033[0m, \033[91m${errors} Failed\033[0m, ${#DISABLED_TESTS[@]} Ignored."

if [[ "$errors" -gt 0 ]]; then
    exit 1
fi
