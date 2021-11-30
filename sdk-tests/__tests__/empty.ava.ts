import * as fs from "fs/promises";
import * as path from "path";
import { ava as avaTest } from "near-workspaces-ava";

avaTest("should be mostly empty", async (t) => {
  let x = new String(
    await fs.readFile(path.join(__dirname, "..", "build", "debug", "empty.wat"))
  );
  t.is(
    x.toString(),
    `(module
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
)
`
  );
});
