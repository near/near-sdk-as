let triggered = false;

function trigger(): string {
  triggered = true;
  return "triggered";
}

describe("assert", () => {
  it("should not trigger", () => {
    assert(true, trigger());
    expect(triggered).toBe(false);
    trigger();
    expect(triggered).toBe(true);
  });
});
