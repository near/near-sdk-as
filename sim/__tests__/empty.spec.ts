let fs = require("fs");
let path = require("path");

describe("empty wat", () => {
  it("should be mostly empty", () => {
    let x = new String(
      fs.readFileSync(path.join(__dirname, "..", "build", "debug", "empty.wat"))
    );
    expect(x.toString()).toBe(
      `(module
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
)
`
    );
  });
});
