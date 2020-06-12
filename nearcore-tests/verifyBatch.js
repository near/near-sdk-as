#!/usr/bin/env node

const assertNoDiff = require("assert-no-diff")
const outcomeStr = process.argv[2];
let outcome = JSON.parse(outcomeStr);
const expected = { 
  "outcome": {
    "balance": "4",
    "storage_usage": 0,
    "return_data": "None",
    "burnt_gas": 8106380049138,
    "used_gas": 14691459389832,
    "logs": []
 },
 "err": null,
 "receipts": [
    {
       "receipt_indices": [],
       "receiver_id": "test.account",
       "actions": [
          "CreateAccount",
          {
             "AddKeyWithFunctionCall": {
                "public_key": "1SnaTomvVzRgZah6Xh34z5xR4HUTRP67KxB8btMFqc9m",
                "nonce": 0,
                "allowance": null,
                "receiver_id": "testing.account",
                "method_names": [
                   "send",
                   "receive"
                ]
             }
          },
          {
             "AddKeyWithFullAccess": {
                "public_key": "1SnaTomvVzRgZah6Xh34z5xR4HUTRP67KxB8btMFqc9m",
                "nonce": 0
             }
          },
          {
             "DeleteKey": {
                "public_key": "1SnaTomvVzRgZah6Xh34z5xR4HUTRP67KxB8btMFqc9m"
             }
          },
          {
             "DeployContract": {
                "code": []
             }
          },
          {
             "FunctionCall": {
                "method_name": "send",
                "args": "",
                "gas": 0,
                "deposit": 0
             }
          },
          {
             "Stake": {
                "stake": 0,
                "public_key": "1SnaTomvVzRgZah6Xh34z5xR4HUTRP67KxB8btMFqc9m"
             }
          },
          {
             "Transfer": {
                "deposit": 0
             }
          },
          {
             "DeleteAccount": {
                "beneficiary_id": "bene.account"
             }
          }
       ]
    },
    {
       "receipt_indices": [],
       "receiver_id": "app-v1.bob.testnet",
       "actions": [
          "CreateAccount",
          {
             "Transfer": {
                "deposit": 1
             }
          },
          {
             "AddKeyWithFullAccess": {
                "public_key": "15T",
                "nonce": 0
             }
          },
          {
             "DeployContract": {
                "code": [
                   0,
                   1,
                   90,
                   100
                ]
             }
          }
       ]
    },
    {
       "receipt_indices": [],
       "receiver_id": "first-contract.bob.testnet",
       "actions": [
          "CreateAccount"
       ]
    },
    {
       "receipt_indices": [
          2
       ],
       "receiver_id": "first-contract.bob.testnet",
       "actions": [
          {
             "Transfer": {
                "deposit": 10
             }
          }
       ]
    }
 ],
 "state": {}
}
assertNoDiff.json(outcome.receipts, expected.receipts, "Batch receipts should be the same")
assertNoDiff.chars(outcome.outcome.balance, expected.outcome.balance, "Balances should be the same")
