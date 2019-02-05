# near-runtime-ts
Typescript library for writing near smart contracts

##
Documentation

API docs are produced using typedoc. To run, first install typedoc

```
npm install --save-dev typedoc
npm install --save-dev typedoc typedoc-plugin-markdown
```

After installing typedoc, run
```
node_modules/.bin/typedoc near.ts --theme markdown --ignoreCompilerErrors --out apidoc/
```
