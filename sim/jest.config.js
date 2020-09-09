module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  testMatch: ["**/__tests__/**/*.spec.ts"],
  testPathIgnorePatterns: ["/assembly/", "/node_modules/"],
};
