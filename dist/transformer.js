"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const ast_1 = require("./ast");
const JSONBuilder_1 = require("./JSONBuilder");
const typeChecker_1 = require("./typeChecker");
class JSONTransformer extends ast_1.Transform {
    afterParse(parser) {
        this.parser = parser;
        const writeFile = this.writeFile;
        const baseDir = this.baseDir;
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
            parser.program.sources = parser.program.sources.filter((_source) => _source !== source);
            // Build new Source
            let sourceText = JSONBuilder_1.JSONBindingsBuilder.build(parser, source);
            if (writeOut) {
                writeFile("out/" + source.normalizedPath, sourceText, baseDir);
            }
            // Parses file and any new imports added to the source
            parser.parseFile(sourceText, (JSONBuilder_1.isEntry(source) ? "" : "./") + source.normalizedPath, JSONBuilder_1.isEntry(source));
        });
        //@ts-ignore __dirname exists
        this.parser.parseFile('import "near-bindgen-as"', "nearFile", true);
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
exports.JSONTransformer = JSONTransformer;
JSONTransformer.isTest = false;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvdHJhbnNmb3JtZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7QUFBQSwrQkFBMEQ7QUFDMUQsK0NBQTZEO0FBQzdELCtDQUE0QztBQUU1QyxNQUFNLGVBQWdCLFNBQVEsZUFBUztJQUlyQyxVQUFVLENBQUMsTUFBYztRQUN2QixJQUFJLENBQUMsTUFBTSxHQUFHLE1BQU0sQ0FBQztRQUNyQixNQUFNLFNBQVMsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDO1FBQ2pDLE1BQU0sT0FBTyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUM7UUFFN0Isd0JBQXdCO1FBQ3hCLElBQUksS0FBSyxHQUFHLGlDQUFtQixDQUFDLFNBQVMsQ0FBQyxNQUFNLENBQUMsQ0FBQztRQUNsRCxlQUFlLENBQUMsTUFBTSxHQUFHLEtBQUssQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFDLEVBQUUsQ0FBQyxNQUFNLENBQUMsY0FBYyxDQUFDLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDO1FBQ3hHLGtCQUFrQjtRQUNsQixLQUFLLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxFQUFFO1lBQ3JCLElBQUksUUFBUSxHQUFHLHVCQUF1QixDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDekQsNkJBQTZCO1lBQzdCLE1BQU0sQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDLE1BQU0sQ0FBQyxZQUFZLENBQUMsQ0FBQztZQUMzQyxNQUFNLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUMsWUFBWSxDQUFDLENBQUM7WUFDM0MsK0JBQStCO1lBQy9CLE1BQU0sQ0FBQyxPQUFPLENBQUMsT0FBTyxHQUFHLE1BQU0sQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FDcEQsQ0FBQyxPQUFlLEVBQUUsRUFBRSxDQUFDLE9BQU8sS0FBSyxNQUFNLENBQ3hDLENBQUM7WUFDRixtQkFBbUI7WUFDbkIsSUFBSSxVQUFVLEdBQUcsaUNBQW1CLENBQUMsS0FBSyxDQUFDLE1BQU0sRUFBRSxNQUFNLENBQUMsQ0FBQztZQUMzRCxJQUFJLFFBQVEsRUFBRTtnQkFDWixTQUFTLENBQUMsTUFBTSxHQUFHLE1BQU0sQ0FBQyxjQUFjLEVBQUUsVUFBVSxFQUFFLE9BQU8sQ0FBQyxDQUFDO2FBQ2hFO1lBQ0Qsc0RBQXNEO1lBQ3RELE1BQU0sQ0FBQyxTQUFTLENBQ2QsVUFBVSxFQUNWLENBQUMscUJBQU8sQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsR0FBRyxNQUFNLENBQUMsY0FBYyxFQUNyRCxxQkFBTyxDQUFDLE1BQU0sQ0FBQyxDQUNoQixDQUFDO1FBQ0osQ0FBQyxDQUFDLENBQUM7UUFFSCw2QkFBNkI7UUFDN0IsSUFBSSxDQUFDLE1BQU0sQ0FBQyxTQUFTLENBQUMsMEJBQTBCLEVBQUUsVUFBVSxFQUFFLElBQUksQ0FBQyxDQUFDO1FBQ3BFLElBQUksQ0FBQyxlQUFlLENBQUMsTUFBTSxFQUFFO1lBQzNCLHlCQUFXLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1NBQzNCO0lBQ0gsQ0FBQztJQUVELHVCQUF1QjtJQUN2QixZQUFZLENBQUMsTUFBYztRQUN6QixJQUFJLENBQUMsZUFBZSxDQUFDLE1BQU0sRUFBRTtZQUMzQix5QkFBVyxDQUFDLFdBQVcsQ0FBQyxNQUFNLENBQUMsQ0FBQztTQUNqQztJQUNILENBQUM7O0FBR00sMENBQWU7QUFoRGYsc0JBQU0sR0FBWSxLQUFLLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBUcmFuc2Zvcm0sIFBhcnNlciwgU291cmNlLCBNb2R1bGUgfSBmcm9tIFwiLi9hc3RcIjtcbmltcG9ydCB7IEpTT05CaW5kaW5nc0J1aWxkZXIsIGlzRW50cnkgfSBmcm9tIFwiLi9KU09OQnVpbGRlclwiO1xuaW1wb3J0IHsgVHlwZUNoZWNrZXIgfSBmcm9tIFwiLi90eXBlQ2hlY2tlclwiO1xuXG5jbGFzcyBKU09OVHJhbnNmb3JtZXIgZXh0ZW5kcyBUcmFuc2Zvcm0ge1xuICBwYXJzZXI6IFBhcnNlcjtcbiAgc3RhdGljIGlzVGVzdDogYm9vbGVhbiA9IGZhbHNlO1xuXG4gIGFmdGVyUGFyc2UocGFyc2VyOiBQYXJzZXIpOiB2b2lkIHtcbiAgICB0aGlzLnBhcnNlciA9IHBhcnNlcjtcbiAgICBjb25zdCB3cml0ZUZpbGUgPSB0aGlzLndyaXRlRmlsZTtcbiAgICBjb25zdCBiYXNlRGlyID0gdGhpcy5iYXNlRGlyO1xuXG4gICAgLy8gRmlsdGVyIGZvciBuZWFyIGZpbGVzXG4gICAgbGV0IGZpbGVzID0gSlNPTkJpbmRpbmdzQnVpbGRlci5uZWFyRmlsZXMocGFyc2VyKTtcbiAgICBKU09OVHJhbnNmb3JtZXIuaXNUZXN0ID0gZmlsZXMubWFwKHNvdXJjZSA9PiBzb3VyY2Uubm9ybWFsaXplZFBhdGgpLnNvbWUocGF0aCA9PiBwYXRoLmluY2x1ZGVzKFwic3BlY1wiKSk7XG4gICAgLy8gVmlzaXQgZWFjaCBmaWxlXG4gICAgZmlsZXMuZm9yRWFjaChzb3VyY2UgPT4ge1xuICAgICAgbGV0IHdyaXRlT3V0ID0gL1xcL1xcLy4qQG5lYXJmaWxlIC4qb3V0Ly50ZXN0KHNvdXJjZS50ZXh0KTtcbiAgICAgIC8vIFJlbW92ZSBmcm9tIGxvZ3MgaW4gcGFyc2VyXG4gICAgICBwYXJzZXIuZG9uZWxvZy5kZWxldGUoc291cmNlLmludGVybmFsUGF0aCk7XG4gICAgICBwYXJzZXIuc2VlbmxvZy5kZWxldGUoc291cmNlLmludGVybmFsUGF0aCk7XG4gICAgICAvLyBSZW1vdmUgZnJvbSBwcm9ncmFtcyBzb3VyY2VzXG4gICAgICBwYXJzZXIucHJvZ3JhbS5zb3VyY2VzID0gcGFyc2VyLnByb2dyYW0uc291cmNlcy5maWx0ZXIoXG4gICAgICAgIChfc291cmNlOiBTb3VyY2UpID0+IF9zb3VyY2UgIT09IHNvdXJjZVxuICAgICAgKTtcbiAgICAgIC8vIEJ1aWxkIG5ldyBTb3VyY2VcbiAgICAgIGxldCBzb3VyY2VUZXh0ID0gSlNPTkJpbmRpbmdzQnVpbGRlci5idWlsZChwYXJzZXIsIHNvdXJjZSk7XG4gICAgICBpZiAod3JpdGVPdXQpIHtcbiAgICAgICAgd3JpdGVGaWxlKFwib3V0L1wiICsgc291cmNlLm5vcm1hbGl6ZWRQYXRoLCBzb3VyY2VUZXh0LCBiYXNlRGlyKTtcbiAgICAgIH1cbiAgICAgIC8vIFBhcnNlcyBmaWxlIGFuZCBhbnkgbmV3IGltcG9ydHMgYWRkZWQgdG8gdGhlIHNvdXJjZVxuICAgICAgcGFyc2VyLnBhcnNlRmlsZShcbiAgICAgICAgc291cmNlVGV4dCxcbiAgICAgICAgKGlzRW50cnkoc291cmNlKSA/IFwiXCIgOiBcIi4vXCIpICsgc291cmNlLm5vcm1hbGl6ZWRQYXRoLFxuICAgICAgICBpc0VudHJ5KHNvdXJjZSlcbiAgICAgICk7XG4gICAgfSk7XG5cbiAgICAvL0B0cy1pZ25vcmUgX19kaXJuYW1lIGV4aXN0c1xuICAgIHRoaXMucGFyc2VyLnBhcnNlRmlsZSgnaW1wb3J0IFwibmVhci1iaW5kZ2VuLWFzXCInLCBcIm5lYXJGaWxlXCIsIHRydWUpO1xuICAgIGlmICghSlNPTlRyYW5zZm9ybWVyLmlzVGVzdCkge1xuICAgICAgVHlwZUNoZWNrZXIuY2hlY2socGFyc2VyKTtcbiAgICB9XG4gIH1cbiAgXG4gIC8qKiBDaGVjayBmb3IgZmxvYXRzICovXG4gIGFmdGVyQ29tcGlsZShtb2R1bGU6IE1vZHVsZSk6IHZvaWQge1xuICAgIGlmICghSlNPTlRyYW5zZm9ybWVyLmlzVGVzdCkge1xuICAgICAgVHlwZUNoZWNrZXIuY2hlY2tCaW5hcnkobW9kdWxlKTtcbiAgICB9XG4gIH1cbn1cblxuZXhwb3J0IHsgSlNPTlRyYW5zZm9ybWVyIH07XG4iXX0=