import * as fs from "fs/promises";
import * as path from "path";
import { ava as avaTest } from "near-workspaces-ava";

avaTest("should be mostly empty", async (t) => {
  let x = new String(
    await fs.readFile(
      path.join(__dirname, "..", "build", "debug", "exportAs.wat")
    )
  );
  t.true(
    x
      .toString()
      .includes(
        '(export "new" (func $assembly/__tests__/exportAs/__wrapper_main))'
      )
  );
});
