# Near Bindings Generator 
Transforms the Assembyscript AST to serialize exported functions and add `encode` and `decode` functions for generating and parsing JSON strings.


To use you must build the Transformer class:

```bash
npm run build # uses webpack
```

Then when using the assemblyscript compiler you must add the following:

```
asc <file> --transform ./dist/jsonbindings.js ...
```
