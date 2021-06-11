"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.FunctionExportWrapper = exports.FunctionClass = void 0;
const as_1 = require("visitor-as/as");
const visitor_as_1 = require("visitor-as");
const common_1 = require("./common");
const utils_1 = require("./utils");
const transformRange_1 = require("visitor-as/dist/transformRange");
const methodInjector_1 = require("@serial-as/transform/dist/methodInjector");
class FunctionClass extends visitor_as_1.BaseVisitor {
    _class;
    visitFunctionDeclaration(node) {
        let name = utils_1.getName(node);
        let fields = node.signature.parameters.map((p) => p.range.toString() + ` = defaultValue<${utils_1.getName(p.type)}>()`);
        let params = node.signature.parameters.map((p) => `this.${utils_1.getName(p)}`);
        if (fields.length > 0) {
            // add blank to make join add ;
            fields.push("");
        }
        const fieldStrs = fields.join(";\n");
        let _classStr = `class ${name}__class {
  ${fieldStrs}
  call(): ${utils_1.getName(node.signature.returnType)} {
    return ${name}(${params.join(",")});
  }
}`;
        let _class = (visitor_as_1.SimpleParser.parseTopLevelStatement(_classStr));
        methodInjector_1.MethodInjector.visit(_class);
        this._class = _class;
    }
    static visit(node) {
        const funcClass = new FunctionClass();
        funcClass.visit(node);
        return funcClass._class;
    }
}
exports.FunctionClass = FunctionClass;
// class RenamedExport {
//   constructor(public from: string, public to: string){}
//   parse(): Statement {
//     const val = this.toString();
//     console.log(`About to parse ${val}`);
//     return SimpleParser.parseTopLevelStatement(val);
//   }
//   toString(): string {
//     return `\nexport { ${this.from} as ${this.to}}`;
//   }
//   addExport(p: Program): void {
//     for (let file of p.filesByName.values()) {
//       const _export = file.lookupInSelf(this.from);
//       if (_export) {
//         console.log(`about to rename ${this.from} to ${this.to}`);
//         // file.ensureExport(this.to, _export);
//         return
//       } else {
//         if (file.members && !isLibrary(file.source)) {
//           console.log(file.name)
//           file.members.forEach(m => {
//             console.log(m.name)
//           })
//         }
//       }
//     }
//   }
// }
class FunctionExportWrapper extends visitor_as_1.BaseVisitor {
    static isTest = false;
    functions = [];
    exports = [];
    wrappedFuncs = new Set();
    classWrappers = [];
    static checkTestBuild(sources) {
        this.isTest = sources.some((s) => s.normalizedPath.includes(".spec."));
    }
    needsWrapper(node) {
        let isExport = node.is(as_1.CommonFlags.EXPORT);
        let alreadyWrapped = this.wrappedFuncs.has(utils_1.toString(node.name));
        let noInputOrOutput = common_1.numOfParameters(node) == 0 && common_1.returnsVoid(node);
        if (!isExport ||
            alreadyWrapped ||
            noInputOrOutput ||
            FunctionExportWrapper.isTest)
            return false;
        return common_1.isEntry(node) || visitor_as_1.utils.hasDecorator(node, common_1.NEAR_DECORATOR);
    }
    visitFunctionDeclaration(node) {
        const name = utils_1.getName(node);
        if (!this.needsWrapper(node)) {
            if ((common_1.isEntry(node) || visitor_as_1.utils.hasDecorator(node, common_1.NEAR_DECORATOR)) &&
                !this.wrappedFuncs.has(name) &&
                node.is(as_1.CommonFlags.EXPORT)) {
                console.log("adding...  " + name);
                this.exports.push(this.camelCaseToSnakeCaseExport(name, ""));
                this.wrappedFuncs.add(name);
            }
            super.visitFunctionDeclaration(node);
            return;
        }
        const _class = FunctionClass.visit(node);
        transformRange_1.RangeTransform.visit(_class, node);
        this.classWrappers.push(_class);
        this.functions.push(common_1.parseTopLevelStatements(this.generateWrapperFunction(node))[0]);
        console.log(visitor_as_1.utils.toString(this.functions[this.functions.length - 1]));
        // Change function to not be an export
        node.flags = node.flags ^ as_1.CommonFlags.EXPORT;
        this.wrappedFuncs.add(name);
    }
    camelCaseToSnakeCaseExport(name, prefix = common_1.WRAPPER_PREFIX) {
        let s = utils_1.makeSnakeCase(name);
        if (s.normalize() === name.normalize()) {
            return "";
        }
        return `export { ${prefix + name} as ${s} }`;
    }
    /*
    Create a wrapper function that will be export in the function's place.
    */
    generateWrapperFunction(func) {
        let funcSource = [];
        let signature = func.signature;
        let params = signature.parameters;
        let returnType = signature.returnType;
        let returnTypeName = utils_1.toString(returnType);
        // let returnTypeNameNoNull = returnTypeName
        //   .split("|")
        //   .map((name) => name.trim())
        //   .filter((name) => name !== "null")
        //   .join("");
        // let hasNull = returnTypeName.includes("null");
        let name = utils_1.getName(func);
        if (func.decorators && func.decorators.length > 0) {
            funcSource.push(func.decorators.map((decorator) => utils_1.toString(decorator)).join("\n"));
        }
        const className = name + "__class";
        funcSource.push(`
    function __wrapper_${name}(): void {`);
        if (params.length > 0) {
            funcSource.push(`  const _class = JSON.decode<${className}>(getInputString())`);
        }
        else {
            `const _class = instantiate<${className}>();`;
        }
        if (returnTypeName !== "void") {
            funcSource.push(`  
      let result: ${returnTypeName} = _class.call();
      const val = String.UTF8.encode(JSON.encode(result));
      value_return(val.byteLength, changetype<usize>(val));
  `);
        }
        else {
            funcSource.push(`_class.call()`);
        }
        funcSource.push(`}`);
        this.addExport(name);
        return funcSource.join("\n");
    }
    addExport(name) {
        console.log(`adding ${name}!!!`);
        this.exports.push(`export {${common_1.WRAPPER_PREFIX + name} as ${name}}`);
        let res = this.camelCaseToSnakeCaseExport(name, common_1.WRAPPER_PREFIX);
        if (res) {
            this.exports.push(res);
        }
    }
    visitSource(node) {
        // this.functions = [];
        // this.exports = [];
        // this.classWrappers = [];
        // let exports: Statement[] = this.exports.map(parseTopLevelStatements).flat();
        // console.log(`exports:\n${exports.map(utils.toString)}`)
        // console.log(this.functions.join("\n"))
        // console.log(this.exports.join("\n"));
        super.visitSource(node);
        const newParser = new as_1.Parser();
        // const newCode = this.functions.join("\n")
        if (this.functions.length > 0) {
            node.statements.push(...this.functions.map((n) => transformRange_1.RangeTransform.visit(n, node)));
            const str = this.exports.join("\n");
            newParser.parseFile(str, node.normalizedPath, common_1.isEntry(node));
            const exportsSource = newParser.sources[0];
            // RangeTransform.visit(exportsSource, node);
            node.statements = node.statements.concat(exportsSource.statements);
            // console.log(`source: ${utils.toString(node)}`)
            node.statements.push(...this.classWrappers);
        }
    }
    static visit(sources) {
        FunctionExportWrapper.checkTestBuild(sources);
        sources.forEach((s) => {
            new FunctionExportWrapper().visit(s);
        });
    }
}
exports.FunctionExportWrapper = FunctionExportWrapper;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZnVuY3Rpb25XcmFwcGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vc3JjL2Z1bmN0aW9uV3JhcHBlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7QUFBQSxzQ0FTdUI7QUFDdkIsMkNBQThEO0FBQzlELHFDQVFrQjtBQUNsQixtQ0FBMkQ7QUFDM0QsbUVBQWdFO0FBQ2hFLDZFQUEwRTtBQUcxRSxNQUFhLGFBQWMsU0FBUSx3QkFBVztJQUM1QyxNQUFNLENBQW1CO0lBRXpCLHdCQUF3QixDQUFDLElBQXlCO1FBQ2hELElBQUksSUFBSSxHQUFHLGVBQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUN6QixJQUFJLE1BQU0sR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLFVBQVUsQ0FBQyxHQUFHLENBQ3hDLENBQUMsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDLFFBQVEsRUFBRSxHQUFHLG1CQUFtQixlQUFPLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxLQUFLLENBQ3BFLENBQUM7UUFDRixJQUFJLE1BQU0sR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLFVBQVUsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLEVBQUUsRUFBRSxDQUFDLFFBQVEsZUFBTyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUN4RSxJQUFJLE1BQU0sQ0FBQyxNQUFNLEdBQUcsQ0FBQyxFQUFFO1lBQ3JCLCtCQUErQjtZQUMvQixNQUFNLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxDQUFDO1NBQ2pCO1FBQ0QsTUFBTSxTQUFTLEdBQUcsTUFBTSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQztRQUNyQyxJQUFJLFNBQVMsR0FBRyxTQUFTLElBQUk7SUFDN0IsU0FBUztZQUNELGVBQU8sQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLFVBQVUsQ0FBQzthQUNqQyxJQUFJLElBQUksTUFBTSxDQUFDLElBQUksQ0FBQyxHQUFHLENB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LEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLEVBQUUsRUFBRSxDQUFDLCtCQUFjLENBQUMsS0FBSyxDQUFDLENBQUMsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUM1RCxDQUFDO1lBRUYsTUFBTSxHQUFHLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDcEMsU0FBUyxDQUFDLFNBQVMsQ0FBQyxHQUFHLEVBQUUsSUFBSSxDQUFDLGNBQWMsRUFBRSxnQkFBTyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7WUFDN0QsTUFBTSxhQUFhLEdBQUcsU0FBUyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQztZQUMzQyw2Q0FBNkM7WUFDN0MsSUFBSSxDQUFDLFVBQVUsR0FBRyxJQUFJLENBQUMsVUFBVSxDQUFDLE1BQU0sQ0FBQyxhQUFhLENBQUMsVUFBVSxDQUFDLENBQUM7WUFDbkUsaURBQWlEO1lBQ2pELElBQUksQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLEdBQUcsSUFBSSxDQUFDLGFBQWEsQ0FBQyxDQUFDO1NBQzdDO0lBQ0gsQ0FBQztJQUVELE1BQU0sQ0FBQyxLQUFLLENBQUMsT0FBaUI7UUFDNUIscUJBQXFCLENBQUMsY0FBYyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQzlDLE9BQU8sQ0FBQyxPQUFPLENBQUMsQ0FBQyxDQUFDLEVBQUUsRUFBRTtZQUNwQixJQUFJLHFCQUFxQixFQUFFLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQ3ZDLENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQzs7QUFySkgsc0RBc0pDIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgQ2xhc3NEZWNsYXJhdGlvbixcbiAgU291cmNlLFxuICBDb21tb25GbGFncyxcbiAgRnVuY3Rpb25EZWNsYXJhdGlvbixcbiAgU3RhdGVtZW50LFxuICBQcm9ncmFtLFxuICBOb2RlS2luZCxcbiAgUGFyc2VyLFxufSBmcm9tIFwidmlzaXRvci1hcy9hc1wiO1xuaW1wb3J0IHsgdXRpbHMsIEJhc2VWaXNpdG9yLCBTaW1wbGVQYXJzZXIgfSBmcm9tIFwidmlzaXRvci1hc1wiO1xuaW1wb3J0IHtcbiAgY3JlYXRlRGVjb2RlU3RhdGVtZW50LFxuICBpc0VudHJ5LFxuICBORUFSX0RFQ09SQVRPUixcbiAgbnVtT2ZQYXJhbWV0ZXJzLFxuICBwYXJzZVRvcExldmVsU3RhdGVtZW50cyxcbiAgcmV0dXJuc1ZvaWQsXG4gIFdSQVBQRVJfUFJFRklYLFxufSBmcm9tIFwiLi9jb21tb25cIjtcbmltcG9ydCB7IGdldE5hbWUsIG1ha2VTbmFrZUNhc2UsIHRvU3RyaW5nIH0gZnJvbSBcIi4vdXRpbHNcIjtcbmltcG9ydCB7IFJhbmdlVHJhbnNmb3JtIH0gZnJvbSBcInZpc2l0b3ItYXMvZGlzdC90cmFuc2Zvcm1SYW5nZVwiO1xuaW1wb3J0IHsgTWV0aG9kSW5qZWN0b3IgfSBmcm9tIFwiQHNlcmlhbC1hcy90cmFuc2Zvcm0vZGlzdC9tZXRob2RJbmplY3RvclwiO1xuaW1wb3J0IHsgaXNMaWJyYXJ5IH0gZnJvbSBcInZpc2l0b3ItYXMvZGlzdC91dGlsc1wiO1xuXG5leHBvcnQgY2xhc3MgRnVuY3Rpb25DbGFzcyBleHRlbmRzIEJhc2VWaXNpdG9yIHtcbiAgX2NsYXNzOiBDbGFzc0RlY2xhcmF0aW9uO1xuXG4gIHZpc2l0RnVuY3Rpb25EZWNsYXJhdGlvbihub2RlOiBGdW5jdGlvbkRlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgbGV0IG5hbWUgPSBnZXROYW1lKG5vZGUpO1xuICAgIGxldCBmaWVsZHMgPSBub2RlLnNpZ25hdHVyZS5wYXJhbWV0ZXJzLm1hcChcbiAgICAgIChwKSA9PiBwLnJhbmdlLnRvU3RyaW5nKCkgKyBgID0gZGVmYXVsdFZhbHVlPCR7Z2V0TmFtZShwLnR5cGUpfT4oKWBcbiAgICApO1xuICAgIGxldCBwYXJhbXMgPSBub2RlLnNpZ25hdHVyZS5wYXJhbWV0ZXJzLm1hcCgocCkgPT4gYHRoaXMuJHtnZXROYW1lKHApfWApO1xuICAgIGlmIChmaWVsZHMubGVuZ3RoID4gMCkge1xuICAgICAgLy8gYWRkIGJsYW5rIHRvIG1ha2Ugam9pbiBhZGQgO1xuICAgICAgZmllbGRzLnB1c2goXCJcIik7XG4gICAgfVxuICAgIGNvbnN0IGZpZWxkU3RycyA9IGZpZWxkcy5qb2luKFwiO1xcblwiKTtcbiAgICBsZXQgX2NsYXNzU3RyID0gYGNsYXNzICR7bmFtZX1fX2NsYXNzIHtcbiAgJHtmaWVsZFN0cnN9XG4gIGNhbGwoKTogJHtnZXROYW1lKG5vZGUuc2lnbmF0dXJlLnJldHVyblR5cGUpfSB7XG4gICAgcmV0dXJuICR7bmFtZX0oJHtwYXJhbXMuam9pbihcIixcIil9KTtcbiAgfVxufWA7XG4gICAgbGV0IF9jbGFzcyA9IDxDbGFzc0RlY2xhcmF0aW9uPihcbiAgICAgIFNpbXBsZVBhcnNlci5wYXJzZVRvcExldmVsU3RhdGVtZW50KF9jbGFzc1N0cilcbiAgICApO1xuICAgIE1ldGhvZEluamVjdG9yLnZpc2l0KF9jbGFzcyk7XG4gICAgdGhpcy5fY2xhc3MgPSBfY2xhc3M7XG4gIH1cblxuICBzdGF0aWMgdmlzaXQobm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbik6IENsYXNzRGVjbGFyYXRpb24ge1xuICAgIGNvbnN0IGZ1bmNDbGFzcyA9IG5ldyBGdW5jdGlvbkNsYXNzKCk7XG4gICAgZnVuY0NsYXNzLnZpc2l0KG5vZGUpO1xuICAgIHJldHVybiBmdW5jQ2xhc3MuX2NsYXNzO1xuICB9XG59XG5cbi8vIGNsYXNzIFJlbmFtZWRFeHBvcnQge1xuLy8gICBjb25zdHJ1Y3RvcihwdWJsaWMgZnJvbTogc3RyaW5nLCBwdWJsaWMgdG86IHN0cmluZyl7fVxuXG4vLyAgIHBhcnNlKCk6IFN0YXRlbWVudCB7XG4vLyAgICAgY29uc3QgdmFsID0gdGhpcy50b1N0cmluZygpO1xuLy8gICAgIGNvbnNvbGUubG9nKGBBYm91dCB0byBwYXJzZSAke3ZhbH1gKTtcbi8vICAgICByZXR1cm4gU2ltcGxlUGFyc2VyLnBhcnNlVG9wTGV2ZWxTdGF0ZW1lbnQodmFsKTtcbi8vICAgfVxuXG4vLyAgIHRvU3RyaW5nKCk6IHN0cmluZyB7XG4vLyAgICAgcmV0dXJuIGBcXG5leHBvcnQgeyAke3RoaXMuZnJvbX0gYXMgJHt0aGlzLnRvfX1gO1xuLy8gICB9XG5cbi8vICAgYWRkRXhwb3J0KHA6IFByb2dyYW0pOiB2b2lkIHtcbi8vICAgICBmb3IgKGxldCBmaWxlIG9mIHAuZmlsZXNCeU5hbWUudmFsdWVzKCkpIHtcbi8vICAgICAgIGNvbnN0IF9leHBvcnQgPSBmaWxlLmxvb2t1cEluU2VsZih0aGlzLmZyb20pO1xuLy8gICAgICAgaWYgKF9leHBvcnQpIHtcbi8vICAgICAgICAgY29uc29sZS5sb2coYGFib3V0IHRvIHJlbmFtZSAke3RoaXMuZnJvbX0gdG8gJHt0aGlzLnRvfWApO1xuLy8gICAgICAgICAvLyBmaWxlLmVuc3VyZUV4cG9ydCh0aGlzLnRvLCBfZXhwb3J0KTtcbi8vICAgICAgICAgcmV0dXJuXG4vLyAgICAgICB9IGVsc2Uge1xuLy8gICAgICAgICBpZiAoZmlsZS5tZW1iZXJzICYmICFpc0xpYnJhcnkoZmlsZS5zb3VyY2UpKSB7XG4vLyAgICAgICAgICAgY29uc29sZS5sb2coZmlsZS5uYW1lKVxuLy8gICAgICAgICAgIGZpbGUubWVtYmVycy5mb3JFYWNoKG0gPT4ge1xuLy8gICAgICAgICAgICAgY29uc29sZS5sb2cobS5uYW1lKVxuLy8gICAgICAgICAgIH0pXG4vLyAgICAgICAgIH1cbi8vICAgICAgIH1cbi8vICAgICB9XG4vLyAgIH1cbi8vIH1cblxuZXhwb3J0IGNsYXNzIEZ1bmN0aW9uRXhwb3J0V3JhcHBlciBleHRlbmRzIEJhc2VWaXNpdG9yIHtcbiAgc3RhdGljIGlzVGVzdDogYm9vbGVhbiA9IGZhbHNlO1xuICBmdW5jdGlvbnM6IFN0YXRlbWVudFtdID0gW107XG4gIGV4cG9ydHM6IHN0cmluZ1tdID0gW107XG4gIHdyYXBwZWRGdW5jczogU2V0PHN0cmluZz4gPSBuZXcgU2V0KCk7XG4gIGNsYXNzV3JhcHBlcnM6IENsYXNzRGVjbGFyYXRpb25bXSA9IFtdO1xuXG4gIHN0YXRpYyBjaGVja1Rlc3RCdWlsZChzb3VyY2VzOiBTb3VyY2VbXSkge1xuICAgIHRoaXMuaXNUZXN0ID0gc291cmNlcy5zb21lKChzKSA9PiBzLm5vcm1hbGl6ZWRQYXRoLmluY2x1ZGVzKFwiLnNwZWMuXCIpKTtcbiAgfVxuXG4gIG5lZWRzV3JhcHBlcihub2RlOiBGdW5jdGlvbkRlY2xhcmF0aW9uKTogYm9vbGVhbiB7XG4gICAgbGV0IGlzRXhwb3J0ID0gbm9kZS5pcyhDb21tb25GbGFncy5FWFBPUlQpO1xuICAgIGxldCBhbHJlYWR5V3JhcHBlZCA9IHRoaXMud3JhcHBlZEZ1bmNzLmhhcyh0b1N0cmluZyhub2RlLm5hbWUpKTtcbiAgICBsZXQgbm9JbnB1dE9yT3V0cHV0ID0gbnVtT2ZQYXJhbWV0ZXJzKG5vZGUpID09IDAgJiYgcmV0dXJuc1ZvaWQobm9kZSk7XG4gICAgaWYgKFxuICAgICAgIWlzRXhwb3J0IHx8XG4gICAgICBhbHJlYWR5V3JhcHBlZCB8fFxuICAgICAgbm9JbnB1dE9yT3V0cHV0IHx8XG4gICAgICBGdW5jdGlvbkV4cG9ydFdyYXBwZXIuaXNUZXN0XG4gICAgKVxuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIHJldHVybiBpc0VudHJ5KG5vZGUpIHx8IHV0aWxzLmhhc0RlY29yYXRvcihub2RlLCBORUFSX0RFQ09SQVRPUik7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uRGVjbGFyYXRpb24obm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIGNvbnN0IG5hbWUgPSBnZXROYW1lKG5vZGUpO1xuICAgIGlmICghdGhpcy5uZWVkc1dyYXBwZXIobm9kZSkpIHtcbiAgICAgIGlmIChcbiAgICAgICAgKGlzRW50cnkobm9kZSkgfHwgdXRpbHMuaGFzRGVjb3JhdG9yKG5vZGUsIE5FQVJfREVDT1JBVE9SKSkgJiZcbiAgICAgICAgIXRoaXMud3JhcHBlZEZ1bmNzLmhhcyhuYW1lKSAmJlxuICAgICAgICBub2RlLmlzKENvbW1vbkZsYWdzLkVYUE9SVClcbiAgICAgICkge1xuICAgICAgICBjb25zb2xlLmxvZyhcImFkZGluZy4uLiAgXCIgKyBuYW1lKTtcbiAgICAgICAgdGhpcy5leHBvcnRzLnB1c2godGhpcy5jYW1lbENhc2VUb1NuYWtlQ2FzZUV4cG9ydChuYW1lLCBcIlwiKSk7XG4gICAgICAgIHRoaXMud3JhcHBlZEZ1bmNzLmFkZChuYW1lKTtcbiAgICAgIH1cbiAgICAgIHN1cGVyLnZpc2l0RnVuY3Rpb25EZWNsYXJhdGlvbihub2RlKTtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgY29uc3QgX2NsYXNzID0gRnVuY3Rpb25DbGFzcy52aXNpdChub2RlKTtcbiAgICBSYW5nZVRyYW5zZm9ybS52aXNpdChfY2xhc3MsIG5vZGUpO1xuICAgIHRoaXMuY2xhc3NXcmFwcGVycy5wdXNoKF9jbGFzcyk7XG4gICAgdGhpcy5mdW5jdGlvbnMucHVzaChcbiAgICAgIHBhcnNlVG9wTGV2ZWxTdGF0ZW1lbnRzKHRoaXMuZ2VuZXJhdGVXcmFwcGVyRnVuY3Rpb24obm9kZSkpWzBdXG4gICAgKTtcbiAgICBjb25zb2xlLmxvZyh1dGlscy50b1N0cmluZyh0aGlzLmZ1bmN0aW9uc1t0aGlzLmZ1bmN0aW9ucy5sZW5ndGggLSAxXSkpO1xuICAgIC8vIENoYW5nZSBmdW5jdGlvbiB0byBub3QgYmUgYW4gZXhwb3J0XG4gICAgbm9kZS5mbGFncyA9IG5vZGUuZmxhZ3MgXiBDb21tb25GbGFncy5FWFBPUlQ7XG4gICAgdGhpcy53cmFwcGVkRnVuY3MuYWRkKG5hbWUpO1xuICB9XG5cbiAgY2FtZWxDYXNlVG9TbmFrZUNhc2VFeHBvcnQoXG4gICAgbmFtZTogc3RyaW5nLFxuICAgIHByZWZpeDogc3RyaW5nID0gV1JBUFBFUl9QUkVGSVhcbiAgKTogc3RyaW5nIHtcbiAgICBsZXQgcyA9IG1ha2VTbmFrZUNhc2UobmFtZSk7XG4gICAgaWYgKHMubm9ybWFsaXplKCkgPT09IG5hbWUubm9ybWFsaXplKCkpIHtcbiAgICAgIHJldHVybiBcIlwiO1xuICAgIH1cbiAgICByZXR1cm4gYGV4cG9ydCB7ICR7cHJlZml4ICsgbmFtZX0gYXMgJHtzfSB9YDtcbiAgfVxuXG4gIC8qXG4gIENyZWF0ZSBhIHdyYXBwZXIgZnVuY3Rpb24gdGhhdCB3aWxsIGJlIGV4cG9ydCBpbiB0aGUgZnVuY3Rpb24ncyBwbGFjZS5cbiAgKi9cbiAgcHJpdmF0ZSBnZW5lcmF0ZVdyYXBwZXJGdW5jdGlvbihmdW5jOiBGdW5jdGlvbkRlY2xhcmF0aW9uKTogc3RyaW5nIHtcbiAgICBsZXQgZnVuY1NvdXJjZTogc3RyaW5nW10gPSBbXTtcbiAgICBsZXQgc2lnbmF0dXJlID0gZnVuYy5zaWduYXR1cmU7XG4gICAgbGV0IHBhcmFtcyA9IHNpZ25hdHVyZS5wYXJhbWV0ZXJzO1xuICAgIGxldCByZXR1cm5UeXBlID0gc2lnbmF0dXJlLnJldHVyblR5cGU7XG4gICAgbGV0IHJldHVyblR5cGVOYW1lID0gdG9TdHJpbmcocmV0dXJuVHlwZSk7XG4gICAgLy8gbGV0IHJldHVyblR5cGVOYW1lTm9OdWxsID0gcmV0dXJuVHlwZU5hbWVcbiAgICAvLyAgIC5zcGxpdChcInxcIilcbiAgICAvLyAgIC5tYXAoKG5hbWUpID0+IG5hbWUudHJpbSgpKVxuICAgIC8vICAgLmZpbHRlcigobmFtZSkgPT4gbmFtZSAhPT0gXCJudWxsXCIpXG4gICAgLy8gICAuam9pbihcIlwiKTtcbiAgICAvLyBsZXQgaGFzTnVsbCA9IHJldHVyblR5cGVOYW1lLmluY2x1ZGVzKFwibnVsbFwiKTtcbiAgICBsZXQgbmFtZSA9IGdldE5hbWUoZnVuYyk7XG4gICAgaWYgKGZ1bmMuZGVjb3JhdG9ycyAmJiBmdW5jLmRlY29yYXRvcnMubGVuZ3RoID4gMCkge1xuICAgICAgZnVuY1NvdXJjZS5wdXNoKFxuICAgICAgICBmdW5jLmRlY29yYXRvcnMubWFwKChkZWNvcmF0b3IpID0+IHRvU3RyaW5nKGRlY29yYXRvcikpLmpvaW4oXCJcXG5cIilcbiAgICAgICk7XG4gICAgfVxuICAgIGNvbnN0IGNsYXNzTmFtZSA9IG5hbWUgKyBcIl9fY2xhc3NcIjtcbiAgICBmdW5jU291cmNlLnB1c2goYFxuICAgIGZ1bmN0aW9uIF9fd3JhcHBlcl8ke25hbWV9KCk6IHZvaWQge2ApO1xuICAgIGlmIChwYXJhbXMubGVuZ3RoID4gMCkge1xuICAgICAgZnVuY1NvdXJjZS5wdXNoKFxuICAgICAgICBgICBjb25zdCBfY2xhc3MgPSBKU09OLmRlY29kZTwke2NsYXNzTmFtZX0+KGdldElucHV0U3RyaW5nKCkpYFxuICAgICAgKTtcbiAgICB9IGVsc2Uge1xuICAgICAgYGNvbnN0IF9jbGFzcyA9IGluc3RhbnRpYXRlPCR7Y2xhc3NOYW1lfT4oKTtgO1xuICAgIH1cbiAgICBpZiAocmV0dXJuVHlwZU5hbWUgIT09IFwidm9pZFwiKSB7XG4gICAgICBmdW5jU291cmNlLnB1c2goYCAgXG4gICAgICBsZXQgcmVzdWx0OiAke3JldHVyblR5cGVOYW1lfSA9IF9jbGFzcy5jYWxsKCk7XG4gICAgICBjb25zdCB2YWwgPSBTdHJpbmcuVVRGOC5lbmNvZGUoSlNPTi5lbmNvZGUocmVzdWx0KSk7XG4gICAgICB2YWx1ZV9yZXR1cm4odmFsLmJ5dGVMZW5ndGgsIGNoYW5nZXR5cGU8dXNpemU+KHZhbCkpO1xuICBgKTtcbiAgICB9IGVsc2Uge1xuICAgICAgZnVuY1NvdXJjZS5wdXNoKGBfY2xhc3MuY2FsbCgpYCk7XG4gICAgfVxuICAgIGZ1bmNTb3VyY2UucHVzaChgfWApO1xuICAgIHRoaXMuYWRkRXhwb3J0KG5hbWUpO1xuICAgIHJldHVybiBmdW5jU291cmNlLmpvaW4oXCJcXG5cIik7XG4gIH1cblxuICBhZGRFeHBvcnQobmFtZTogc3RyaW5nKTogdm9pZCB7XG4gICAgY29uc29sZS5sb2coYGFkZGluZyAke25hbWV9ISEhYCk7XG4gICAgdGhpcy5leHBvcnRzLnB1c2goYGV4cG9ydCB7JHtXUkFQUEVSX1BSRUZJWCArIG5hbWV9IGFzICR7bmFtZX19YCk7XG4gICAgbGV0IHJlcyA9IHRoaXMuY2FtZWxDYXNlVG9TbmFrZUNhc2VFeHBvcnQobmFtZSwgV1JBUFBFUl9QUkVGSVgpO1xuICAgIGlmIChyZXMpIHtcbiAgICAgIHRoaXMuZXhwb3J0cy5wdXNoKHJlcyk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRTb3VyY2Uobm9kZTogU291cmNlKTogdm9pZCB7XG4gICAgLy8gdGhpcy5mdW5jdGlvbnMgPSBbXTtcbiAgICAvLyB0aGlzLmV4cG9ydHMgPSBbXTtcbiAgICAvLyB0aGlzLmNsYXNzV3JhcHBlcnMgPSBbXTtcbiAgICAvLyBsZXQgZXhwb3J0czogU3RhdGVtZW50W10gPSB0aGlzLmV4cG9ydHMubWFwKHBhcnNlVG9wTGV2ZWxTdGF0ZW1lbnRzKS5mbGF0KCk7XG5cbiAgICAvLyBjb25zb2xlLmxvZyhgZXhwb3J0czpcXG4ke2V4cG9ydHMubWFwKHV0aWxzLnRvU3RyaW5nKX1gKVxuICAgIC8vIGNvbnNvbGUubG9nKHRoaXMuZnVuY3Rpb25zLmpvaW4oXCJcXG5cIikpXG4gICAgLy8gY29uc29sZS5sb2codGhpcy5leHBvcnRzLmpvaW4oXCJcXG5cIikpO1xuICAgIHN1cGVyLnZpc2l0U291cmNlKG5vZGUpO1xuICAgIGNvbnN0IG5ld1BhcnNlciA9IG5ldyBQYXJzZXIoKTtcbiAgICAvLyBjb25zdCBuZXdDb2RlID0gdGhpcy5mdW5jdGlvbnMuam9pbihcIlxcblwiKVxuICAgIGlmICh0aGlzLmZ1bmN0aW9ucy5sZW5ndGggPiAwKSB7XG4gICAgICBub2RlLnN0YXRlbWVudHMucHVzaChcbiAgICAgICAgLi4udGhpcy5mdW5jdGlvbnMubWFwKChuKSA9PiBSYW5nZVRyYW5zZm9ybS52aXNpdChuLCBub2RlKSlcbiAgICAgICk7XG5cbiAgICAgIGNvbnN0IHN0ciA9IHRoaXMuZXhwb3J0cy5qb2luKFwiXFxuXCIpO1xuICAgICAgbmV3UGFyc2VyLnBhcnNlRmlsZShzdHIsIG5vZGUubm9ybWFsaXplZFBhdGgsIGlzRW50cnkobm9kZSkpO1xuICAgICAgY29uc3QgZXhwb3J0c1NvdXJjZSA9IG5ld1BhcnNlci5zb3VyY2VzWzBdO1xuICAgICAgLy8gUmFuZ2VUcmFuc2Zvcm0udmlzaXQoZXhwb3J0c1NvdXJjZSwgbm9kZSk7XG4gICAgICBub2RlLnN0YXRlbWVudHMgPSBub2RlLnN0YXRlbWVudHMuY29uY2F0KGV4cG9ydHNTb3VyY2Uuc3RhdGVtZW50cyk7XG4gICAgICAvLyBjb25zb2xlLmxvZyhgc291cmNlOiAke3V0aWxzLnRvU3RyaW5nKG5vZGUpfWApXG4gICAgICBub2RlLnN0YXRlbWVudHMucHVzaCguLi50aGlzLmNsYXNzV3JhcHBlcnMpO1xuICAgIH1cbiAgfVxuXG4gIHN0YXRpYyB2aXNpdChzb3VyY2VzOiBTb3VyY2VbXSk6IHZvaWQge1xuICAgIEZ1bmN0aW9uRXhwb3J0V3JhcHBlci5jaGVja1Rlc3RCdWlsZChzb3VyY2VzKTtcbiAgICBzb3VyY2VzLmZvckVhY2goKHMpID0+IHtcbiAgICAgIG5ldyBGdW5jdGlvbkV4cG9ydFdyYXBwZXIoKS52aXNpdChzKTtcbiAgICB9KTtcbiAgfVxufVxuIl19