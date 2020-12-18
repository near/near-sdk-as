import { Runtime, Account } from "..";
import { main } from "asbuild";
import { promisify } from "util";
import { join } from "path";

let runtime: Runtime;
let singleton: Account, alice: Account;

function getErrorMsg(res: any) {
  try {
    return res.err["FunctionCallError"]["HostError"]["GuestPanic"].panic_msg;
  } catch (e) {
    throw new Error(JSON.stringify(res.err, null, 2));
  }
}

async function compile(contract: string): Promise<void> {
  function asb(succ: any, fail: any) {
    main([join(__dirname,"../assembly/__tests__", contract + ".ts",), "--target", "debug", "--wat"], {
    },
    (err) => {
      if (err) {
        throw(err);
        return -1;
      } else {
        succ();
        return 1;
      }
    })
  }
  return new Promise(asb);
}

describe("Complier fails", () => {
  it("shouldn't allow methods with the same name as init function", async () => {
    try {
      await compile("singleton-fail")
      expect(true).toBe(false);
    } catch (e) {
      expect(e.message).toContain(`Method "new" already used; cannot export constructor using the same name.`);
    }
  })
})


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

  it("should only initialize once", () => {
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
    expect(res.result.outcome.logs).toContainEqual("Visited the first time by bob");
    expect(singleton.view("hasVisited", {visitor: "bob"}).return_data).toBe(true);
    expect(singleton.view("lastVisited", {}).return_data).toBe("bob");
  });

  it("should be able to visit without decorator", () => {
    init()
    const bob = runtime.newAccount("bob");
    let res = bob.call_other("singleton", "visit_without_updated_decorator");
    expect(res.result.outcome.logs).toContainEqual("Visited the first time by bob");
    expect(singleton.view("hasVisited", {visitor: "bob"}).return_data).toBe(true);
    expect(singleton.view("lastVisited", {}).return_data).toBe("bob");
  });

  it("should not update state to visit_without_change decorator", () => {
    init()
    const bob = runtime.newAccount("bob");
    let res = bob.call_other("singleton", "visit_without_change");
    expect(res.result.outcome.logs).toContainEqual("Visited the first time by bob");
    expect(singleton.view("lastVisited", {}).return_data).toBe("NULL")
  });

  it("should not have private methods", () => {
    init()
    let res = alice.call_other("singleton", "hasNotVisited", {});
    expect(res.err["FunctionCallError"]["MethodResolveError"]).toContain("MethodNotFound");
  })


});
