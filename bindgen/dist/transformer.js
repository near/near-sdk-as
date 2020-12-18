"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.JSONTransformer = void 0;
const as_1 = require("visitor-as/as");
const JSONBuilder_1 = require("./JSONBuilder");
const typeChecker_1 = require("./typeChecker");
const classExporter_1 = require("./classExporter");
class JSONTransformer extends as_1.Transform {
    afterParse(parser) {
        this.parser = parser;
        const writeFile = this.writeFile;
        const baseDir = this.baseDir;
        let newParser = new as_1.Parser(parser.diagnostics);
        // Filter for near files
        let files = JSONBuilder_1.JSONBindingsBuilder.nearFiles(this.parser.sources);
        JSONTransformer.isTest = files
            .map((source) => source.normalizedPath)
            .some((path) => path.includes("spec"));
        // Visit each file
        files.forEach((source) => {
            let writeOut = /\/\/.*@nearfile .*out/.test(source.text);
            // Remove from logs in parser
            parser.donelog.delete(source.internalPath);
            parser.seenlog.delete(source.internalPath);
            // Remove from programs sources
            this.parser.sources = this.parser.sources.filter((_source) => _source !== source);
            this.program.sources = this.program.sources.filter((_source) => _source !== source);
            // Export main singleton class if one is present
            classExporter_1.ClassExporter.visit(source);
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
        classExporter_1.ClassExporter.classSeen = null;
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvdHJhbnNmb3JtZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBQUEsc0NBQThFO0FBQzlFLCtDQUE2RDtBQUM3RCwrQ0FBNEM7QUFDNUMsbURBQWdEO0FBR2hELE1BQU0sZUFBZ0IsU0FBUSxjQUFTO0lBSXJDLFVBQVUsQ0FBQyxNQUFjO1FBQ3ZCLElBQUksQ0FBQyxNQUFNLEdBQUcsTUFBTSxDQUFDO1FBQ3JCLE1BQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUM7UUFDakMsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQztRQUM3QixJQUFJLFNBQVMsR0FBRyxJQUFJLFdBQU0sQ0FBQyxNQUFNLENBQUMsV0FBVyxDQUFDLENBQUM7UUFFL0Msd0JBQXdCO1FBQ3hCLElBQUksS0FBSyxHQUFHLGlDQUFtQixDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQy9ELGVBQWUsQ0FBQyxNQUFNLEdBQUcsS0FBSzthQUMzQixHQUFHLENBQUMsQ0FBQyxNQUFNLEVBQUUsRUFBRSxDQUFDLE1BQU0sQ0FBQyxjQUFjLENBQUM7YUFDdEMsSUFBSSxDQUFDLENBQUMsSUFBSSxFQUFFLEVBQUUsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUM7UUFDekMsa0JBQWtCO1FBQ2xCLEtBQUssQ0FBQyxPQUFPLENBQUMsQ0FBQyxNQUFNLEVBQUUsRUFBRTtZQUN2QixJQUFJLFFBQVEsR0FBRyx1QkFBdUIsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQ3pELDZCQUE2QjtZQUM3QixNQUFNLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUMsWUFBWSxDQUFDLENBQUM7WUFDM0MsTUFBTSxDQUFDLE9BQU8sQ0FBQyxNQUFNLENBQUMsTUFBTSxDQUFDLFlBQVksQ0FBQyxDQUFDO1lBQzNDLCtCQUErQjtZQUMvQixJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sR0FBRyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxNQUFNLENBQzlDLENBQUMsT0FBZSxFQUFFLEVBQUUsQ0FBQyxPQUFPLEtBQUssTUFBTSxDQUN4QyxDQUFDO1lBQ0YsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUNoRCxDQUFDLE9BQWUsRUFBRSxFQUFFLENBQUMsT0FBTyxLQUFLLE1BQU0sQ0FDeEMsQ0FBQztZQUNGLGdEQUFnRDtZQUNoRCw2QkFBYSxDQUFDLEtBQUssQ0FBQyxNQUFNLENBQUMsQ0FBQztZQUM1QixtQkFBbUI7WUFDbkIsSUFBSSxVQUFVLEdBQUcsaUNBQW1CLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1lBQ25ELElBQUksUUFBUSxFQUFFO2dCQUNaLFNBQVMsQ0FBQyxNQUFNLEdBQUcsTUFBTSxDQUFDLGNBQWMsRUFBRSxVQUFVLEVBQUUsT0FBTyxDQUFDLENBQUM7YUFDaEU7WUFDRCxzREFBc0Q7WUFDdEQsU0FBUyxDQUFDLFNBQVMsQ0FDakIsVUFBVSxFQUNWLENBQUMscUJBQU8sQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsR0FBRyxNQUFNLENBQUMsY0FBYyxFQUNyRCxxQkFBTyxDQUFDLE1BQU0sQ0FBQyxDQUNoQixDQUFDO1lBQ0YsSUFBSSxTQUFTLEdBQUcsU0FBUyxDQUFDLE9BQU8sQ0FBQyxHQUFHLEVBQUcsQ0FBQztZQUN6QyxJQUFJLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7WUFDckMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFDLFlBQVksQ0FBQyxDQUFDO1lBQ3hDLE1BQU0sQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxZQUFZLENBQUMsQ0FBQztZQUN4QyxNQUFNLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUNqQyxDQUFDLENBQUMsQ0FBQztRQUVILDZCQUFhLENBQUMsU0FBUyxHQUFHLElBQUssQ0FBQztRQUVoQyxJQUFJLENBQUMsZUFBZSxDQUFDLE1BQU0sRUFBRTtZQUMzQix5QkFBVyxDQUFDLEtBQUssQ0FBQyxNQUFNLENBQUMsQ0FBQztTQUMzQjtJQUNILENBQUM7SUFFRCx1QkFBdUI7SUFDdkIsWUFBWSxDQUFDLE1BQWM7UUFDekIsSUFBSSxDQUFDLGVBQWUsQ0FBQyxNQUFNLEVBQUU7WUFDM0IseUJBQVcsQ0FBQyxXQUFXLENBQUMsTUFBTSxDQUFDLENBQUM7U0FDakM7SUFDSCxDQUFDOztBQUdNLDBDQUFlO0FBN0RmLHNCQUFNLEdBQVksS0FBSyxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgVHJhbnNmb3JtLCBQYXJzZXIsIFNvdXJjZSwgTW9kdWxlLCBTb3VyY2VLaW5kIH0gZnJvbSBcInZpc2l0b3ItYXMvYXNcIjtcbmltcG9ydCB7IEpTT05CaW5kaW5nc0J1aWxkZXIsIGlzRW50cnkgfSBmcm9tIFwiLi9KU09OQnVpbGRlclwiO1xuaW1wb3J0IHsgVHlwZUNoZWNrZXIgfSBmcm9tIFwiLi90eXBlQ2hlY2tlclwiO1xuaW1wb3J0IHsgQ2xhc3NFeHBvcnRlciB9IGZyb20gXCIuL2NsYXNzRXhwb3J0ZXJcIjtcbmltcG9ydCB7IHV0aWxzIH0gZnJvbSBcInZpc2l0b3ItYXNcIjtcblxuY2xhc3MgSlNPTlRyYW5zZm9ybWVyIGV4dGVuZHMgVHJhbnNmb3JtIHtcbiAgcGFyc2VyOiBQYXJzZXI7XG4gIHN0YXRpYyBpc1Rlc3Q6IGJvb2xlYW4gPSBmYWxzZTtcblxuICBhZnRlclBhcnNlKHBhcnNlcjogUGFyc2VyKTogdm9pZCB7XG4gICAgdGhpcy5wYXJzZXIgPSBwYXJzZXI7XG4gICAgY29uc3Qgd3JpdGVGaWxlID0gdGhpcy53cml0ZUZpbGU7XG4gICAgY29uc3QgYmFzZURpciA9IHRoaXMuYmFzZURpcjtcbiAgICBsZXQgbmV3UGFyc2VyID0gbmV3IFBhcnNlcihwYXJzZXIuZGlhZ25vc3RpY3MpO1xuXG4gICAgLy8gRmlsdGVyIGZvciBuZWFyIGZpbGVzXG4gICAgbGV0IGZpbGVzID0gSlNPTkJpbmRpbmdzQnVpbGRlci5uZWFyRmlsZXModGhpcy5wYXJzZXIuc291cmNlcyk7XG4gICAgSlNPTlRyYW5zZm9ybWVyLmlzVGVzdCA9IGZpbGVzXG4gICAgICAubWFwKChzb3VyY2UpID0+IHNvdXJjZS5ub3JtYWxpemVkUGF0aClcbiAgICAgIC5zb21lKChwYXRoKSA9PiBwYXRoLmluY2x1ZGVzKFwic3BlY1wiKSk7XG4gICAgLy8gVmlzaXQgZWFjaCBmaWxlXG4gICAgZmlsZXMuZm9yRWFjaCgoc291cmNlKSA9PiB7XG4gICAgICBsZXQgd3JpdGVPdXQgPSAvXFwvXFwvLipAbmVhcmZpbGUgLipvdXQvLnRlc3Qoc291cmNlLnRleHQpO1xuICAgICAgLy8gUmVtb3ZlIGZyb20gbG9ncyBpbiBwYXJzZXJcbiAgICAgIHBhcnNlci5kb25lbG9nLmRlbGV0ZShzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIHBhcnNlci5zZWVubG9nLmRlbGV0ZShzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIC8vIFJlbW92ZSBmcm9tIHByb2dyYW1zIHNvdXJjZXNcbiAgICAgIHRoaXMucGFyc2VyLnNvdXJjZXMgPSB0aGlzLnBhcnNlci5zb3VyY2VzLmZpbHRlcihcbiAgICAgICAgKF9zb3VyY2U6IFNvdXJjZSkgPT4gX3NvdXJjZSAhPT0gc291cmNlXG4gICAgICApO1xuICAgICAgdGhpcy5wcm9ncmFtLnNvdXJjZXMgPSB0aGlzLnByb2dyYW0uc291cmNlcy5maWx0ZXIoXG4gICAgICAgIChfc291cmNlOiBTb3VyY2UpID0+IF9zb3VyY2UgIT09IHNvdXJjZVxuICAgICAgKTtcbiAgICAgIC8vIEV4cG9ydCBtYWluIHNpbmdsZXRvbiBjbGFzcyBpZiBvbmUgaXMgcHJlc2VudFxuICAgICAgQ2xhc3NFeHBvcnRlci52aXNpdChzb3VyY2UpO1xuICAgICAgLy8gQnVpbGQgbmV3IFNvdXJjZVxuICAgICAgbGV0IHNvdXJjZVRleHQgPSBKU09OQmluZGluZ3NCdWlsZGVyLmJ1aWxkKHNvdXJjZSk7XG4gICAgICBpZiAod3JpdGVPdXQpIHtcbiAgICAgICAgd3JpdGVGaWxlKFwib3V0L1wiICsgc291cmNlLm5vcm1hbGl6ZWRQYXRoLCBzb3VyY2VUZXh0LCBiYXNlRGlyKTtcbiAgICAgIH1cbiAgICAgIC8vIFBhcnNlcyBmaWxlIGFuZCBhbnkgbmV3IGltcG9ydHMgYWRkZWQgdG8gdGhlIHNvdXJjZVxuICAgICAgbmV3UGFyc2VyLnBhcnNlRmlsZShcbiAgICAgICAgc291cmNlVGV4dCxcbiAgICAgICAgKGlzRW50cnkoc291cmNlKSA/IFwiXCIgOiBcIi4vXCIpICsgc291cmNlLm5vcm1hbGl6ZWRQYXRoLFxuICAgICAgICBpc0VudHJ5KHNvdXJjZSlcbiAgICAgICk7XG4gICAgICBsZXQgbmV3U291cmNlID0gbmV3UGFyc2VyLnNvdXJjZXMucG9wKCkhO1xuICAgICAgdGhpcy5wcm9ncmFtLnNvdXJjZXMucHVzaChuZXdTb3VyY2UpO1xuICAgICAgcGFyc2VyLmRvbmVsb2cuYWRkKHNvdXJjZS5pbnRlcm5hbFBhdGgpO1xuICAgICAgcGFyc2VyLnNlZW5sb2cuYWRkKHNvdXJjZS5pbnRlcm5hbFBhdGgpO1xuICAgICAgcGFyc2VyLnNvdXJjZXMucHVzaChuZXdTb3VyY2UpO1xuICAgIH0pO1xuXG4gICAgQ2xhc3NFeHBvcnRlci5jbGFzc1NlZW4gPSBudWxsITtcblxuICAgIGlmICghSlNPTlRyYW5zZm9ybWVyLmlzVGVzdCkge1xuICAgICAgVHlwZUNoZWNrZXIuY2hlY2socGFyc2VyKTtcbiAgICB9XG4gIH1cblxuICAvKiogQ2hlY2sgZm9yIGZsb2F0cyAqL1xuICBhZnRlckNvbXBpbGUobW9kdWxlOiBNb2R1bGUpOiB2b2lkIHtcbiAgICBpZiAoIUpTT05UcmFuc2Zvcm1lci5pc1Rlc3QpIHtcbiAgICAgIFR5cGVDaGVja2VyLmNoZWNrQmluYXJ5KG1vZHVsZSk7XG4gICAgfVxuICB9XG59XG5cbmV4cG9ydCB7IEpTT05UcmFuc2Zvcm1lciB9O1xuIl19