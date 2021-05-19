const compile = require("asbuild").main;

compile(["assembly/__tests__/test.ts", "--target", "debug", "--wat"], (err) => {
  if (err) {
    throw err;
  }
  
});

// Tests where the compiler should failed to compile
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
buildFail("Setting a string to be a an int should fail.", [
  "./assembly/__tests__/bindgen/bad.ts",
  "--verbose",
]);
buildFail("Using ERROR in generic function should fail if wrong type passed.", [
  "./assembly/__tests__/bindgen/badType.ts",
  "verbose",
]);

console.log("PASSED");
