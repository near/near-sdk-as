import { init_simulator, to_yocto, UserAccount } from "..";

import * as path from "path";

const counter_path = path.resolve("build/debug/counter.wasm");
const singleton_path = path.resolve("build/debug/singleton.wasm");

describe("init_simulator", () => {
  it("with default GenesisConfig", () => {
    const user = init_simulator();
    expect(user.account_id()).toBe("root");
  });
  it("with GenesisConfig", () => {
    const user = init_simulator({
      genesis_time: "1",
      gas_price: "200000000",
      gas_limit: "399999999999999",
      genesis_height: "1",
      epoch_length: "1",
      block_prod_time: "1500000000",
      state_records: [],
      validators: [
        {
          account_id: "alice",
          amount: to_yocto("10"),
          public_key: "ed25519:DcA2MzgpJbrUATQLLceocVckhhAqrkingax4oJ9kZ84",
        },
      ],
    });
    expect(user.account_id()).toBe("root");
  });
});

describe("user_account", () => {
  let root: UserAccount;

  beforeEach(() => {
    root = init_simulator();
  });

  it("user.create_user()", () => {
    const alice = root.create_user("alice", to_yocto("10"));
    expect(alice.account_id()).toBe("alice");
  });

  it("user.account_id()", () => {
    expect(root.account_id()).toBe("root");
    const alice = root.create_user("alice", to_yocto("10"));
    expect(alice.account_id()).toBe("alice");
  });

  it("user.account()", () => {
    const alice = root.create_user("alice", to_yocto("10"));
    expect(alice.account()).toHaveProperty(
      "code_hash",
      "11111111111111111111111111111111"
    );
    expect(alice.account()).toHaveProperty("amount", to_yocto("10"));
    expect(alice.account()).toHaveProperty("storage_usage");
    expect(alice.account()).toHaveProperty("locked");
  });

  it("user.transfer()", () => {
    const alice = root.create_user("alice", to_yocto("10"));
    const txRes = root.transfer(alice.account_id(), to_yocto("10"));
    expect(txRes.is_ok()).toBe(true);
    expect(alice.account()).toHaveProperty("amount", to_yocto("20"));
  });

  it("user.call() and user.deploy()", () => {
    const alice = root.create_user("alice", to_yocto("9999999"));
    const contract = alice.deploy(counter_path, "counter", to_yocto("10"));
    expect(contract.account()?.amount).toBe(to_yocto("10"));

    const txRes = alice.call(contract.account_id(), "incrementCounter");
    txRes.assert_success();
  });

  it("user.deploy_and_init()", () => {
    const alice = root.create_user("alice", to_yocto("9999999"));
    const contract = root.deploy_and_init(
      singleton_path,
      "singleton",
      "new",
      { owner: "alice" },
      to_yocto("10")
    );
    expect(contract.account_id()).toBe("singleton");

    const txRes = alice.call(contract.account_id(), "visit");
    txRes.assert_success();
  });

  it("user.view()", () => {
    const alice = root.create_user("alice", to_yocto("9999999"));
    const contract = alice.deploy(counter_path, "counter", to_yocto("10"));
    const value = alice.view(contract.account_id(), "getCounter");
    expect(value).toBe(0);
  });
});

describe("user_transaction", () => {
  it("test chained transaction", () => {
    const root = init_simulator();
    const contract = root.deploy(counter_path, "counter", to_yocto("10"));

    const tx = root.create_transaction(contract.account_id());
    const txRes = tx
      .transfer(to_yocto("100"))
      .function_call("getCounter")
      .submit();
    txRes.assert_success();
  });
});
