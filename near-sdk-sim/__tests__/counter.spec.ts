import { DEFAULT_GAS, ExecutionResult, init_simulator, UserAccount } from "..";
import { main } from "asbuild";
import { promisify } from "util";
import { join } from "path";

let root: UserAccount;
let counter: UserAccount, alice: UserAccount;


function getErrorMsg(res: any) {
  try {
    return res.err["FunctionCallError"]["HostError"]["GuestPanic"].panic_msg;
  } catch (e) {
    throw new Error(JSON.stringify(res.err, null, 2));
  }
}

function increment(value: number) {
  return root.call("counter", "incrementCounter", {value});
}

function assert_success(res: ExecutionResult) {
  if (!res.is_ok()) {
    console.error(JSON.stringify(res.outcome(), null, 2))
    throw new Error()
  }
}


describe("counter", () => {
  beforeEach( () => {
    root = init_simulator();
    counter = root.deploy(
      join(__dirname, "..", "build", "debug", "counter.wasm"),
      "counter",
      "112897800000000000000000000000"
    );
    
  });

  it("should increment", () => {
    const first = counter.view_self("getCounter");
    const delta = 3;
    const res = increment(delta);
    assert_success(res);
    const second = counter.view_self("getCounter");
    expect(second).toBe(first + delta);
  });

  it("should increment with default of one", () => {
    const first = counter.view_self("getCounter");
    const incrementBy = 1;
    const res = root.call("counter", "incrementCounter");
    assert_success(res);
    const second = counter.view_self("getCounter");
    expect(second).toBe(first + incrementBy);
  });


});
