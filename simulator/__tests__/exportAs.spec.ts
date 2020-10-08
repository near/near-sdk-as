let fs = require("fs");
let path = require("path");

describe("empty wat", () => {
  it("should be mostly empty", () => {
    let x = new String(
      fs.readFileSync(
        path.join(__dirname, "..", "build", "debug", "exportAs.wat")
      )
    );
    expect(
      x
        .toString()
        .includes(
          '(export "new" (func $assembly/__tests__/exportAs/__wrapper_main))'
        )
    ).toBe(true);
  });
});
