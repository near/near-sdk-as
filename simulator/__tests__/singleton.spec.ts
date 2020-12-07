import { Runtime, Account } from "..";

let runtime: Runtime;
let singleton: Account, alice: Account;

function getErrorMsg(res: any) {
  return res.err["FunctionCallError"]["HostError"]["GuestPanic"].panic_msg;
}


describe("cross contract calls", () => {
  beforeEach(() => {
    runtime = new Runtime();
    alice = runtime.newAccount("alice");
    singleton = runtime.newAccount(
      "singleton",
      __dirname + "/../build/debug/singleton.wasm"
    );
  });

  function init() {
    return alice.call_other("singleton", "new", { owner: "alice" });
  }

  it("should only initialze once", () => {
    init();
    let res = init();
    expect(getErrorMsg(res)).toContain("contract is already initialized");
  });

  it("shouldn't work if not initialized", () => {
    let res = alice.call_other("singleton", "owner", {});
    expect(getErrorMsg(res)).toContain("contract is not initialized");
  });

  it("should return owner", () => {
    init()
    let res = singleton.view("owner");
    expect(res.return_data).toStrictEqual("alice");
  })

  it("should be able to visit", () => {
    init()
    const bob = runtime.newAccount("bob");
    let res = bob.call_other("singleton", "visit");
    expect(res.result.outcome.logs).toContainEqual("Visited by bob");
    expect(singleton.view("hasVisited", {visitor: "bob"}).return_data).toBe(true)
  });

  it("should not have private methods", () => {
    init()
    let res = alice.call_other("singleton", "hasNotVisited", {});
    expect(res.err["FunctionCallError"]["MethodResolveError"]).toContain("MethodNotFound");
  })
});
