import { FooBar } from "./ason";

const foobar = new FooBar();

describe("compare costs", () => {
  it("compare costs", () => {
    let serailazed = ASON.serialize(foobar);
    // let asonSeralized = Uint8Array.wrap(serailazed.slice(0).buffer);
    expect(ASON.deserialize<FooBar>(serailazed)).toStrictEqual(foobar);
  });
});

