"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.JSONTransformer = void 0;
const as_1 = require("visitor-as/as");
const JSONBuilder_1 = require("./JSONBuilder");
const typeChecker_1 = require("./typeChecker");
let JSONTransformer = /** @class */ (() => {
    class JSONTransformer extends as_1.Transform {
        afterParse(parser) {
            this.parser = parser;
            const writeFile = this.writeFile;
            const baseDir = this.baseDir;
            let newParser = new as_1.Parser(parser.diagnostics);
            // Filter for near files
            let files = JSONBuilder_1.JSONBindingsBuilder.nearFiles(parser);
            JSONTransformer.isTest = files.map(source => source.normalizedPath).some(path => path.includes("spec"));
            // Visit each file
            files.forEach(source => {
                let writeOut = /\/\/.*@nearfile .*out/.test(source.text);
                // Remove from logs in parser
                parser.donelog.delete(source.internalPath);
                parser.seenlog.delete(source.internalPath);
                // Remove from programs sources
                this.parser.sources = this.parser.sources.filter((_source) => _source !== source);
                this.program.sources = this.program.sources.filter((_source) => _source !== source);
                // Build new Source
                let sourceText = JSONBuilder_1.JSONBindingsBuilder.build(source);
                if (writeOut) {
                    writeFile("out/" + source.normalizedPath, sourceText, baseDir);
                }
                // Parses file and any new imports added to the source
                newParser.parseFile(sourceText, (JSONBuilder_1.isEntry(source) ? "" : "./") + source.normalizedPath, JSONBuilder_1.isEntry(source));
                let newSource = newParser.sources.pop();
                this.program.sources.push(newSource);
                parser.donelog.add(source.internalPath);
                parser.seenlog.add(source.internalPath);
                parser.sources.push(newSource);
            });
            if (!JSONTransformer.isTest) {
                typeChecker_1.TypeChecker.check(parser);
            }
        }
        /** Check for floats */
        afterCompile(module) {
            if (!JSONTransformer.isTest) {
                typeChecker_1.TypeChecker.checkBinary(module);
            }
        }
    }
    JSONTransformer.isTest = false;
    return JSONTransformer;
})();
exports.JSONTransformer = JSONTransformer;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvdHJhbnNmb3JtZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBQUEsc0NBQWtFO0FBQ2xFLCtDQUE2RDtBQUM3RCwrQ0FBNEM7QUFLNUM7SUFBQSxNQUFNLGVBQWdCLFNBQVEsY0FBUztRQUlyQyxVQUFVLENBQUMsTUFBYztZQUN2QixJQUFJLENBQUMsTUFBTSxHQUFHLE1BQU0sQ0FBQztZQUNyQixNQUFNLFNBQVMsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDO1lBQ2pDLE1BQU0sT0FBTyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUM7WUFDN0IsSUFBSSxTQUFTLEdBQUcsSUFBSSxXQUFNLENBQUMsTUFBTSxDQUFDLFdBQVcsQ0FBQyxDQUFDO1lBRS9DLHdCQUF3QjtZQUN4QixJQUFJLEtBQUssR0FBRyxpQ0FBbUIsQ0FBQyxTQUFTLENBQUMsTUFBTSxDQUFDLENBQUM7WUFDbEQsZUFBZSxDQUFDLE1BQU0sR0FBRyxLQUFLLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxFQUFFLENBQUMsTUFBTSxDQUFDLGNBQWMsQ0FBQyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQztZQUN4RyxrQkFBa0I7WUFDbEIsS0FBSyxDQUFDLE9BQU8sQ0FBQyxNQUFNLENBQUMsRUFBRTtnQkFDckIsSUFBSSxRQUFRLEdBQUcsdUJBQXVCLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsQ0FBQztnQkFDekQsNkJBQTZCO2dCQUM3QixNQUFNLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUMsWUFBWSxDQUFDLENBQUM7Z0JBQzNDLE1BQU0sQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDLE1BQU0sQ0FBQyxZQUFZLENBQUMsQ0FBQztnQkFDM0MsK0JBQStCO2dCQUMvQixJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sR0FBRyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxNQUFNLENBQzlDLENBQUMsT0FBZSxFQUFFLEVBQUUsQ0FBQyxPQUFPLEtBQUssTUFBTSxDQUN4QyxDQUFDO2dCQUNGLElBQUksQ0FBQyxPQUFPLENBQUMsT0FBTyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FDaEQsQ0FBQyxPQUFlLEVBQUUsRUFBRSxDQUFDLE9BQU8sS0FBSyxNQUFNLENBQ3hDLENBQUM7Z0JBQ0YsbUJBQW1CO2dCQUNuQixJQUFJLFVBQVUsR0FBRyxpQ0FBbUIsQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLENBQUM7Z0JBQ25ELElBQUksUUFBUSxFQUFFO29CQUNaLFNBQVMsQ0FBQyxNQUFNLEdBQUcsTUFBTSxDQUFDLGNBQWMsRUFBRSxVQUFVLEVBQUUsT0FBTyxDQUFDLENBQUM7aUJBQ2hFO2dCQUNELHNEQUFzRDtnQkFDdEQsU0FBUyxDQUFDLFNBQVMsQ0FDakIsVUFBVSxFQUNWLENBQUMscUJBQU8sQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsR0FBRyxNQUFNLENBQUMsY0FBYyxFQUNyRCxxQkFBTyxDQUFDLE1BQU0sQ0FBQyxDQUNoQixDQUFDO2dCQUNGLElBQUksU0FBUyxHQUFHLFNBQVMsQ0FBQyxPQUFPLENBQUMsR0FBRyxFQUFHLENBQUM7Z0JBQ3pDLElBQUksQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztnQkFDckMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFDLFlBQVksQ0FBQyxDQUFDO2dCQUN4QyxNQUFNLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxNQUFNLENBQUMsWUFBWSxDQUFDLENBQUM7Z0JBQ3hDLE1BQU0sQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1lBQ2pDLENBQUMsQ0FBQyxDQUFDO1lBRUgsSUFBSSxDQUFDLGVBQWUsQ0FBQyxNQUFNLEVBQUU7Z0JBQzNCLHlCQUFXLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDO2FBQzNCO1FBQ0gsQ0FBQztRQUVELHVCQUF1QjtRQUN2QixZQUFZLENBQUMsTUFBYztZQUN6QixJQUFJLENBQUMsZUFBZSxDQUFDLE1BQU0sRUFBRTtnQkFDM0IseUJBQVcsQ0FBQyxXQUFXLENBQUMsTUFBTSxDQUFDLENBQUM7YUFDakM7UUFDSCxDQUFDOztJQXBETSxzQkFBTSxHQUFZLEtBQUssQ0FBQztJQXFEakMsc0JBQUM7S0FBQTtBQUVRLDBDQUFlIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgVHJhbnNmb3JtLCBQYXJzZXIsIFNvdXJjZSwgTW9kdWxlIH0gZnJvbSBcInZpc2l0b3ItYXMvYXNcIjtcbmltcG9ydCB7IEpTT05CaW5kaW5nc0J1aWxkZXIsIGlzRW50cnkgfSBmcm9tIFwiLi9KU09OQnVpbGRlclwiO1xuaW1wb3J0IHsgVHlwZUNoZWNrZXIgfSBmcm9tIFwiLi90eXBlQ2hlY2tlclwiO1xuaW1wb3J0IHsgcG9zaXhSZWxhdGl2ZVBhdGggfSBmcm9tICcuL3V0aWxzJztcbi8vQHRzLWlnbm9yZVxuaW1wb3J0ICogYXMgcGF0aCBmcm9tIFwicGF0aFwiO1xuXG5jbGFzcyBKU09OVHJhbnNmb3JtZXIgZXh0ZW5kcyBUcmFuc2Zvcm0ge1xuICBwYXJzZXI6IFBhcnNlcjtcbiAgc3RhdGljIGlzVGVzdDogYm9vbGVhbiA9IGZhbHNlO1xuXG4gIGFmdGVyUGFyc2UocGFyc2VyOiBQYXJzZXIpOiB2b2lkIHtcbiAgICB0aGlzLnBhcnNlciA9IHBhcnNlcjtcbiAgICBjb25zdCB3cml0ZUZpbGUgPSB0aGlzLndyaXRlRmlsZTtcbiAgICBjb25zdCBiYXNlRGlyID0gdGhpcy5iYXNlRGlyO1xuICAgIGxldCBuZXdQYXJzZXIgPSBuZXcgUGFyc2VyKHBhcnNlci5kaWFnbm9zdGljcyk7XG5cbiAgICAvLyBGaWx0ZXIgZm9yIG5lYXIgZmlsZXNcbiAgICBsZXQgZmlsZXMgPSBKU09OQmluZGluZ3NCdWlsZGVyLm5lYXJGaWxlcyhwYXJzZXIpO1xuICAgIEpTT05UcmFuc2Zvcm1lci5pc1Rlc3QgPSBmaWxlcy5tYXAoc291cmNlID0+IHNvdXJjZS5ub3JtYWxpemVkUGF0aCkuc29tZShwYXRoID0+IHBhdGguaW5jbHVkZXMoXCJzcGVjXCIpKTtcbiAgICAvLyBWaXNpdCBlYWNoIGZpbGVcbiAgICBmaWxlcy5mb3JFYWNoKHNvdXJjZSA9PiB7XG4gICAgICBsZXQgd3JpdGVPdXQgPSAvXFwvXFwvLipAbmVhcmZpbGUgLipvdXQvLnRlc3Qoc291cmNlLnRleHQpO1xuICAgICAgLy8gUmVtb3ZlIGZyb20gbG9ncyBpbiBwYXJzZXJcbiAgICAgIHBhcnNlci5kb25lbG9nLmRlbGV0ZShzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIHBhcnNlci5zZWVubG9nLmRlbGV0ZShzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIC8vIFJlbW92ZSBmcm9tIHByb2dyYW1zIHNvdXJjZXNcbiAgICAgIHRoaXMucGFyc2VyLnNvdXJjZXMgPSB0aGlzLnBhcnNlci5zb3VyY2VzLmZpbHRlcihcbiAgICAgICAgKF9zb3VyY2U6IFNvdXJjZSkgPT4gX3NvdXJjZSAhPT0gc291cmNlXG4gICAgICApO1xuICAgICAgdGhpcy5wcm9ncmFtLnNvdXJjZXMgPSB0aGlzLnByb2dyYW0uc291cmNlcy5maWx0ZXIoXG4gICAgICAgIChfc291cmNlOiBTb3VyY2UpID0+IF9zb3VyY2UgIT09IHNvdXJjZVxuICAgICAgKTtcbiAgICAgIC8vIEJ1aWxkIG5ldyBTb3VyY2VcbiAgICAgIGxldCBzb3VyY2VUZXh0ID0gSlNPTkJpbmRpbmdzQnVpbGRlci5idWlsZChzb3VyY2UpO1xuICAgICAgaWYgKHdyaXRlT3V0KSB7XG4gICAgICAgIHdyaXRlRmlsZShcIm91dC9cIiArIHNvdXJjZS5ub3JtYWxpemVkUGF0aCwgc291cmNlVGV4dCwgYmFzZURpcik7XG4gICAgICB9XG4gICAgICAvLyBQYXJzZXMgZmlsZSBhbmQgYW55IG5ldyBpbXBvcnRzIGFkZGVkIHRvIHRoZSBzb3VyY2VcbiAgICAgIG5ld1BhcnNlci5wYXJzZUZpbGUoXG4gICAgICAgIHNvdXJjZVRleHQsXG4gICAgICAgIChpc0VudHJ5KHNvdXJjZSkgPyBcIlwiIDogXCIuL1wiKSArIHNvdXJjZS5ub3JtYWxpemVkUGF0aCxcbiAgICAgICAgaXNFbnRyeShzb3VyY2UpXG4gICAgICApO1xuICAgICAgbGV0IG5ld1NvdXJjZSA9IG5ld1BhcnNlci5zb3VyY2VzLnBvcCgpITtcbiAgICAgIHRoaXMucHJvZ3JhbS5zb3VyY2VzLnB1c2gobmV3U291cmNlKTtcbiAgICAgIHBhcnNlci5kb25lbG9nLmFkZChzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIHBhcnNlci5zZWVubG9nLmFkZChzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIHBhcnNlci5zb3VyY2VzLnB1c2gobmV3U291cmNlKTtcbiAgICB9KTtcbiAgIFxuICAgIGlmICghSlNPTlRyYW5zZm9ybWVyLmlzVGVzdCkge1xuICAgICAgVHlwZUNoZWNrZXIuY2hlY2socGFyc2VyKTtcbiAgICB9XG4gIH1cbiAgXG4gIC8qKiBDaGVjayBmb3IgZmxvYXRzICovXG4gIGFmdGVyQ29tcGlsZShtb2R1bGU6IE1vZHVsZSk6IHZvaWQge1xuICAgIGlmICghSlNPTlRyYW5zZm9ybWVyLmlzVGVzdCkge1xuICAgICAgVHlwZUNoZWNrZXIuY2hlY2tCaW5hcnkobW9kdWxlKTtcbiAgICB9XG4gIH1cbn1cblxuZXhwb3J0IHsgSlNPTlRyYW5zZm9ybWVyIH07XG4iXX0=