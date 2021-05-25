import { DEFAULT_GAS, init_simulator, UserAccount } from "../../src";
import { join } from "path";
import { compile, getGuestPanicMsg } from "../common";

let root: UserAccount;
let singleton: UserAccount, alice: UserAccount;

describe("Complier fails", () => {
  it("shouldn't allow methods with the same name as init function", async () => {
    try {
      await compile("singleton-fail");
      expect(true).toBe(false);
    } catch (e) {
      expect(e.message).toContain(
        `Method "new" already used; cannot export constructor using the same name.`
      );
    }
  });
});

function log(s: any) {
  console.log(JSON.stringify(s, null, 2));
}

function view(method: string, args?: any): any {
  return singleton.view_self(method, args).value
}

describe("cross contract calls", () => {
  beforeEach(() => {
    root = init_simulator();
    alice = root;
    singleton = root.deploy(
      join(__dirname, "..", "..", "build", "debug", "singleton.wasm"),
      "singleton"
    );
  });

  function create_user(str: string): UserAccount {
    return root.create_user(str, "1654280000000000000000000");
  }

  function init() {
    return root.call("singleton", "new", { owner: "alice" });
  }

  it("should only initialize once", () => {
    init();
    expect(getGuestPanicMsg(init().outcome())).toContain(
      "contract is already initialized"
    );
  });

  it("shouldn't work if not initialized", () => {
    let res = alice.call("singleton", "owner", {}, DEFAULT_GAS, "0");
    expect(getGuestPanicMsg(res.outcome())).toContain(
      "contract is not initialized"
    );
  });

  it("should return owner", () => {
    init();
    let res = view("owner");
    expect(res).toStrictEqual("alice");
  });

  it("should be able to visit", () => {
    init();
    const bob = create_user("bob");
    let res = bob.call("singleton", "visit");
    expect(res.outcome().logs).toContainEqual("Visited the first time by bob");
    expect(view("hasVisited", { visitor: "bob" })).toBe(true);
    expect(view("lastVisited", {})).toBe("bob");
  });

  it("should be able to visit without decorator", () => {
    init();
    const bob = create_user("bob");
    let res = bob.call("singleton", "visit_without_updated_decorator");
    expect(res.outcome().logs).toContainEqual("Visited the first time by bob");
    expect(view("hasVisited", { visitor: "bob" })).toBe(true);
    expect(view("lastVisited", {})).toBe("bob");
  });

  it("should not update state to visit_without_change decorator", () => {
    init();
    const bob = create_user("bob");
    let res = bob.call("singleton", "visit_without_change");
    expect(res.outcome().logs).toContainEqual("Visited the first time by bob");
    expect(view("lastVisited", {})).toBe("NULL");
  });

  it("should not have private methods", () => {
    init();
    let res = alice.call("singleton", "hasNotVisited", {}).outcome();
    expect(
      (res.status as Failure).error["ActionError"]["kind"]["FunctionCallError"][
        "MethodResolveError"
      ]
    ).toContain("MethodNotFound");
  });
});
