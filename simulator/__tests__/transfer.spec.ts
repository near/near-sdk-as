import { Runtime, Account } from "..";

let runtime: Runtime;
let transfer: Account, alice: Account, bob: Account;

describe("transfer", () => {
    beforeEach(() => {
        runtime = new Runtime();
        alice = runtime.newAccount("alice");
        bob = runtime.newAccount("bob");
        transfer = runtime.newAccount(
            "transfer",
            __dirname + "/../build/debug/transfer.wasm"
        );
    });

    it("should transfer some and keep some attached deposit", () => {
        const result = alice.call_other("transfer", "transferSomeAndKeepSomeAttachedDeposit", {
            receiver: "bob"
        }, undefined, "1000000000000000000000000");
        expect(result.result.receipts[0].receiver_id).toBe('bob');
        // 90% to receiver
        expect(result.result.receipts[0].actions[0].Transfer.deposit).toBe(0.9 * Math.pow(10, 24));
    });
});
