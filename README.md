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
rm -rf apidoc
mkdir apidoc
node_modules/.bin/typedoc near.ts --theme markdown --ignoreCompilerErrors --excludePrivate --excludeProtected --excludeExternals --out apidoc/
```
(The tool does not deal well with items being removed from documentation, hence the need to delete output)
