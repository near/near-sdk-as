const path = require("path");
process.env.CARGO_MANIFEST_DIR = __dirname;
process.env.RUST_BACKTRACE = "full";

module.exports = {
  preset: "ts-jest",
  testEnvironment: "node",
  testMatch: ["**/__tests__/**/*.spec.ts"],
  testPathIgnorePatterns: ["/assembly/", "/node_modules/"],
};
