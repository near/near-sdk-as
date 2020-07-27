const compile = require("asbuild").main;

compile(["../assembly/__tests__/bindgen/test.ts", "--target", "debug"]);

function buildFail(msg, args) {
  var failed = false;
  try {
    compile(...(args || []), {}, (err) => {
      if (err) {
        throw err;
      }
    });
  } catch (err) {
    failed = true;
  } finally {
    if (!failed) {
      throw new Error(msg);
    }
  }
}
buildFail("Failing to compiling should fail.", [
  "../assembly/__tests__/bindgen/bad.ts",
  "--verbose",
]);
buildFail("Failing with bad types compiling should fail.", [
  "../assembly/__tests__/bindgen/badType.ts",
  "verbose",
]);

console.log("PASSED");
