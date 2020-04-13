"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const as_1 = require("visitor-as/as");
const JSONBuilder_1 = require("./JSONBuilder");
const typeChecker_1 = require("./typeChecker");
const utils_1 = require("./utils");
//@ts-ignore
const path = require("path");
class JSONTransformer extends as_1.Transform {
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
            let sourceText = JSONBuilder_1.JSONBindingsBuilder.build(source);
            if (writeOut) {
                writeFile("out/" + source.normalizedPath, sourceText, baseDir);
            }
            // Parses file and any new imports added to the source
            parser.parseFile(sourceText, (JSONBuilder_1.isEntry(source) ? "" : "./") + source.normalizedPath, JSONBuilder_1.isEntry(source));
        });
        //@ts-ignore __dirname exists
        const entryPath = utils_1.posixRelativePath(baseDir, path.join(__dirname, "../../assembly/bindgen.ts"));
        const entryFile = this.readFile(entryPath, baseDir);
        this.parser.parseFile(entryFile, entryPath, true);
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvdHJhbnNmb3JtZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7QUFBQSxzQ0FBa0U7QUFDbEUsK0NBQTZEO0FBQzdELCtDQUE0QztBQUM1QyxtQ0FBNEM7QUFDNUMsWUFBWTtBQUNaLDZCQUE2QjtBQUU3QixNQUFNLGVBQWdCLFNBQVEsY0FBUztJQUlyQyxVQUFVLENBQUMsTUFBYztRQUN2QixJQUFJLENBQUMsTUFBTSxHQUFHLE1BQU0sQ0FBQztRQUNyQixNQUFNLFNBQVMsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDO1FBQ2pDLE1BQU0sT0FBTyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUM7UUFFN0Isd0JBQXdCO1FBQ3hCLElBQUksS0FBSyxHQUFHLGlDQUFtQixDQUFDLFNBQVMsQ0FBQyxNQUFNLENBQUMsQ0FBQztRQUNsRCxlQUFlLENBQUMsTUFBTSxHQUFHLEtBQUssQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFDLEVBQUUsQ0FBQyxNQUFNLENBQUMsY0FBYyxDQUFDLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDO1FBQ3hHLGtCQUFrQjtRQUNsQixLQUFLLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxFQUFFO1lBQ3JCLElBQUksUUFBUSxHQUFHLHVCQUF1QixDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDekQsNkJBQTZCO1lBQzdCLE1BQU0sQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDLE1BQU0sQ0FBQyxZQUFZLENBQUMsQ0FBQztZQUMzQyxNQUFNLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUMsWUFBWSxDQUFDLENBQUM7WUFDM0MsK0JBQStCO1lBQy9CLE1BQU0sQ0FBQyxPQUFPLENBQUMsT0FBTyxHQUFHLE1BQU0sQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FDcEQsQ0FBQyxPQUFlLEVBQUUsRUFBRSxDQUFDLE9BQU8sS0FBSyxNQUFNLENBQ3hDLENBQUM7WUFDRixtQkFBbUI7WUFDbkIsSUFBSSxVQUFVLEdBQUcsaUNBQW1CLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1lBQ25ELElBQUksUUFBUSxFQUFFO2dCQUNaLFNBQVMsQ0FBQyxNQUFNLEdBQUcsTUFBTSxDQUFDLGNBQWMsRUFBRSxVQUFVLEVBQUUsT0FBTyxDQUFDLENBQUM7YUFDaEU7WUFDRCxzREFBc0Q7WUFDdEQsTUFBTSxDQUFDLFNBQVMsQ0FDZCxVQUFVLEVBQ1YsQ0FBQyxxQkFBTyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxHQUFHLE1BQU0sQ0FBQyxjQUFjLEVBQ3JELHFCQUFPLENBQUMsTUFBTSxDQUFDLENBQ2hCLENBQUM7UUFDSixDQUFDLENBQUMsQ0FBQztRQUNILDZCQUE2QjtRQUM3QixNQUFNLFNBQVMsR0FBRyx5QkFBaUIsQ0FBQyxPQUFPLEVBQUUsSUFBSSxDQUFDLElBQUksQ0FBQyxTQUFTLEVBQUUsMkJBQTJCLENBQUMsQ0FBQyxDQUFDO1FBQ2hHLE1BQU0sU0FBUyxHQUFXLElBQUksQ0FBQyxRQUFRLENBQUMsU0FBUyxFQUFFLE9BQU8sQ0FBRSxDQUFDO1FBQzdELElBQUksQ0FBQyxNQUFNLENBQUMsU0FBUyxDQUFDLFNBQVMsRUFBRSxTQUFTLEVBQUUsSUFBSSxDQUFDLENBQUM7UUFFbEQsSUFBSSxDQUFDLGVBQWUsQ0FBQyxNQUFNLEVBQUU7WUFDM0IseUJBQVcsQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLENBQUM7U0FDM0I7SUFDSCxDQUFDO0lBRUQsdUJBQXVCO0lBQ3ZCLFlBQVksQ0FBQyxNQUFjO1FBQ3pCLElBQUksQ0FBQyxlQUFlLENBQUMsTUFBTSxFQUFFO1lBQzNCLHlCQUFXLENBQUMsV0FBVyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1NBQ2pDO0lBQ0gsQ0FBQzs7QUFHTSwwQ0FBZTtBQWxEZixzQkFBTSxHQUFZLEtBQUssQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IFRyYW5zZm9ybSwgUGFyc2VyLCBTb3VyY2UsIE1vZHVsZSB9IGZyb20gXCJ2aXNpdG9yLWFzL2FzXCI7XG5pbXBvcnQgeyBKU09OQmluZGluZ3NCdWlsZGVyLCBpc0VudHJ5IH0gZnJvbSBcIi4vSlNPTkJ1aWxkZXJcIjtcbmltcG9ydCB7IFR5cGVDaGVja2VyIH0gZnJvbSBcIi4vdHlwZUNoZWNrZXJcIjtcbmltcG9ydCB7IHBvc2l4UmVsYXRpdmVQYXRoIH0gZnJvbSAnLi91dGlscyc7XG4vL0B0cy1pZ25vcmVcbmltcG9ydCAqIGFzIHBhdGggZnJvbSBcInBhdGhcIjtcblxuY2xhc3MgSlNPTlRyYW5zZm9ybWVyIGV4dGVuZHMgVHJhbnNmb3JtIHtcbiAgcGFyc2VyOiBQYXJzZXI7XG4gIHN0YXRpYyBpc1Rlc3Q6IGJvb2xlYW4gPSBmYWxzZTtcblxuICBhZnRlclBhcnNlKHBhcnNlcjogUGFyc2VyKTogdm9pZCB7XG4gICAgdGhpcy5wYXJzZXIgPSBwYXJzZXI7XG4gICAgY29uc3Qgd3JpdGVGaWxlID0gdGhpcy53cml0ZUZpbGU7XG4gICAgY29uc3QgYmFzZURpciA9IHRoaXMuYmFzZURpcjtcblxuICAgIC8vIEZpbHRlciBmb3IgbmVhciBmaWxlc1xuICAgIGxldCBmaWxlcyA9IEpTT05CaW5kaW5nc0J1aWxkZXIubmVhckZpbGVzKHBhcnNlcik7XG4gICAgSlNPTlRyYW5zZm9ybWVyLmlzVGVzdCA9IGZpbGVzLm1hcChzb3VyY2UgPT4gc291cmNlLm5vcm1hbGl6ZWRQYXRoKS5zb21lKHBhdGggPT4gcGF0aC5pbmNsdWRlcyhcInNwZWNcIikpO1xuICAgIC8vIFZpc2l0IGVhY2ggZmlsZVxuICAgIGZpbGVzLmZvckVhY2goc291cmNlID0+IHtcbiAgICAgIGxldCB3cml0ZU91dCA9IC9cXC9cXC8uKkBuZWFyZmlsZSAuKm91dC8udGVzdChzb3VyY2UudGV4dCk7XG4gICAgICAvLyBSZW1vdmUgZnJvbSBsb2dzIGluIHBhcnNlclxuICAgICAgcGFyc2VyLmRvbmVsb2cuZGVsZXRlKHNvdXJjZS5pbnRlcm5hbFBhdGgpO1xuICAgICAgcGFyc2VyLnNlZW5sb2cuZGVsZXRlKHNvdXJjZS5pbnRlcm5hbFBhdGgpO1xuICAgICAgLy8gUmVtb3ZlIGZyb20gcHJvZ3JhbXMgc291cmNlc1xuICAgICAgcGFyc2VyLnByb2dyYW0uc291cmNlcyA9IHBhcnNlci5wcm9ncmFtLnNvdXJjZXMuZmlsdGVyKFxuICAgICAgICAoX3NvdXJjZTogU291cmNlKSA9PiBfc291cmNlICE9PSBzb3VyY2VcbiAgICAgICk7XG4gICAgICAvLyBCdWlsZCBuZXcgU291cmNlXG4gICAgICBsZXQgc291cmNlVGV4dCA9IEpTT05CaW5kaW5nc0J1aWxkZXIuYnVpbGQoc291cmNlKTtcbiAgICAgIGlmICh3cml0ZU91dCkge1xuICAgICAgICB3cml0ZUZpbGUoXCJvdXQvXCIgKyBzb3VyY2Uubm9ybWFsaXplZFBhdGgsIHNvdXJjZVRleHQsIGJhc2VEaXIpO1xuICAgICAgfVxuICAgICAgLy8gUGFyc2VzIGZpbGUgYW5kIGFueSBuZXcgaW1wb3J0cyBhZGRlZCB0byB0aGUgc291cmNlXG4gICAgICBwYXJzZXIucGFyc2VGaWxlKFxuICAgICAgICBzb3VyY2VUZXh0LFxuICAgICAgICAoaXNFbnRyeShzb3VyY2UpID8gXCJcIiA6IFwiLi9cIikgKyBzb3VyY2Uubm9ybWFsaXplZFBhdGgsXG4gICAgICAgIGlzRW50cnkoc291cmNlKVxuICAgICAgKTtcbiAgICB9KTtcbiAgICAvL0B0cy1pZ25vcmUgX19kaXJuYW1lIGV4aXN0c1xuICAgIGNvbnN0IGVudHJ5UGF0aCA9IHBvc2l4UmVsYXRpdmVQYXRoKGJhc2VEaXIsIHBhdGguam9pbihfX2Rpcm5hbWUsIFwiLi4vLi4vYXNzZW1ibHkvYmluZGdlbi50c1wiKSk7XG4gICAgY29uc3QgZW50cnlGaWxlOiBzdHJpbmcgPSB0aGlzLnJlYWRGaWxlKGVudHJ5UGF0aCwgYmFzZURpcikhO1xuICAgIHRoaXMucGFyc2VyLnBhcnNlRmlsZShlbnRyeUZpbGUsIGVudHJ5UGF0aCwgdHJ1ZSk7XG5cbiAgICBpZiAoIUpTT05UcmFuc2Zvcm1lci5pc1Rlc3QpIHtcbiAgICAgIFR5cGVDaGVja2VyLmNoZWNrKHBhcnNlcik7XG4gICAgfVxuICB9XG4gIFxuICAvKiogQ2hlY2sgZm9yIGZsb2F0cyAqL1xuICBhZnRlckNvbXBpbGUobW9kdWxlOiBNb2R1bGUpOiB2b2lkIHtcbiAgICBpZiAoIUpTT05UcmFuc2Zvcm1lci5pc1Rlc3QpIHtcbiAgICAgIFR5cGVDaGVja2VyLmNoZWNrQmluYXJ5KG1vZHVsZSk7XG4gICAgfVxuICB9XG59XG5cbmV4cG9ydCB7IEpTT05UcmFuc2Zvcm1lciB9O1xuIl19