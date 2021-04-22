import { DEFAULT_GAS, init_simulator, User } from "..";
import { main } from "asbuild";
import { promisify } from "util";
import { join } from "path";

let root: User;
let singleton: User, alice: User;


function getErrorMsg(res: any) {
  try {
    return res.status.Failure.ActionError.kind["FunctionCallError"]["HostError"]["GuestPanic"].panic_msg;
  } catch (e) {
    throw new Error(JSON.stringify(res.status, null, 2));
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

function log(s: any) {
  console.log(JSON.stringify(s, null, 2));
}


describe("cross contract calls", () => {
  beforeEach(() => {
    root = init_simulator();
    alice = root;
    singleton = root.deploy(join(__dirname,"..","build","release","singleton.wasm"), "singleton");
    init();
  });

  function create_user(str: string): User {
    return root.create_user(str, "1654280000000000000000000")
  }

  function init() {
    return root.call("singleton", "new", { owner: "alice" }, DEFAULT_GAS, "0");
  }

  it("should only initialize once", () => {
    expect(getErrorMsg(init().outcome())).toContain("contract is already initialized");
  });

  it("shouldn't work if not initialized", () => {
    let res = alice.call("singleton", "owner", {}, DEFAULT_GAS, "0");
    expect(getErrorMsg(res)).toContain("contract is not initialized");
  });

  it("should return owner", () => {
    let res = singleton.view_self("owner");
    expect(res.return_data).toStrictEqual("alice");
  })



  fit("should be able to visit", () => {
    const bob = create_user("bob");
    let res = bob.call("singleton", "visit");
    expect(res.outcome().logs).toContainEqual("Visited the first time by bob");
    expect(singleton.view_self("hasVisited", {visitor: "bob"})).toBe(true);
    expect(singleton.view_self("lastVisited", {})).toBe("bob");
  });

  it("should be able to visit without decorator", () => {
    const bob = create_user("bob");
    let res = bob.call("singleton", "visit_without_updated_decorator");
    expect(res.outcome().logs).toContainEqual("Visited the first time by bob");
    expect(singleton.view_self("hasVisited", {visitor: "bob"})).toBe(true);
    expect(singleton.view_self("lastVisited", {})).toBe("bob");
  });

  it("should not update state to visit_without_change decorator", () => {
    const bob = create_user("bob");
    let res = bob.call("singleton", "visit_without_change");
    expect(res.outcome().logs).toContainEqual("Visited the first time by bob");
    expect(singleton.view_self("lastVisited", {})).toBe("NULL")
  });

  it("should not have private methods", () => {
    let res = alice.call("singleton", "hasNotVisited", {}).outcome();
    expect(res.err["FunctionCallError"]["MethodResolveError"]).toContain("MethodNotFound");
  })


});
