import { DEFAULT_GAS, init_simulator, UserAccount } from "../../src";

let root: UserAccount;
let singleton: UserAccount, alice: UserAccount;

function getErrorMsg(res: any) {
  try {
    return res.error["ActionError"]["kind"]["FunctionCallError"]["HostError"]["GuestPanic"].panic_msg;
  } catch (e) {
    throw new Error(JSON.stringify(res.error, null, 2));
  }
}


describe("Singleton with no constructor", () => {
  beforeEach(() => {
    root = init_simulator();
    alice = root;
    singleton = root.deploy(
      [__dirname, "..", "..", "/build/debug/singleton-no-constructor.wasm"],
      "singleton"
    );
  });

  function init() {
    return alice.call("singleton", "setOwner", { owner: "alice" });
  }

  it("should only initialize once", () => {
    init();
    let res = init().outcome();
    expect(getErrorMsg(res.status)).toContain("contract is already initialized");
  });

  it("shouldn't work if not initialized", () => {
    let res = () => singleton.view_self("owner", {});
    expect(res).toThrowError(/contract is not initialized/);
  });

  it("should return owner", () => {
    init()
    let res = singleton.view_self("owner");
    expect(res.value).toStrictEqual("alice");
  })

  it("should be able to visit", () => {
    init()
    const bob = root.create_user("bob");
    let res = bob.call("singleton", "visit");
    expect(res.outcome().logs).toContainEqual("Visited the first time by bob");
    expect(singleton.view_self("hasVisited", {visitor: "bob"}).value).toBe(true);
    expect(singleton.view_self("lastVisited", {}).value).toBe("bob");
  });

  it("should be able to visit without decorator", () => {
    init()
    const bob = root.create_user("bob");
    let res = bob.call("singleton", "visit_without_updated_decorator");
    expect(res.outcome().logs).toContainEqual("Visited the first time by bob");
    expect(singleton.view_self("hasVisited", {visitor: "bob"}).value).toBe(true);
    expect(singleton.view_self("lastVisited", {}).value).toBe("bob");
  });

  it("should not update state to visit_without_change decorator", () => {
    init()
    const bob = root.create_user("bob");
    let res = bob.call("singleton", "visit_without_change");
    expect(res.outcome().logs).toContainEqual("Visited the first time by bob");
    expect(singleton.view_self("lastVisited", {}).value).toBe("NULL")
  });

  it("should not have private methods", () => {
    init()
    let res = alice.call("singleton", "hasNotVisited", {}).outcome();
    expect((res.status as Failure).error["ActionError"]["kind"]["FunctionCallError"]["MethodResolveError"]).toContain("MethodNotFound");
  })
});

