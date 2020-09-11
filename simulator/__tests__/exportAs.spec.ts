import * as fs from "fs";
import * as path from "path";

describe("exportAs", () => {
  it("should be mostly empty", () => {
    let wasmFile = fs.readFileSync(
      path.join(__dirname, "..", "build", "debug", "exportAs.wasm")
    );
    let mod = new WebAssembly.Module(wasmFile);
    let newFn = WebAssembly.Module.exports(mod).find(
      (exp) => exp.name === "new"
    );
    expect(newFn).toBeTruthy();
    expect(newFn!.kind).toBe("function");
  });
});
