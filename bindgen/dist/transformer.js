"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.JSONTransformer = void 0;
const as_1 = require("visitor-as/as");
const JSONBuilder_1 = require("./JSONBuilder");
const classExporter_1 = require("./classExporter");
const utils_1 = require("./utils");
class JSONTransformer extends as_1.Transform {
    parser;
    afterParse(parser) {
        this.parser = parser;
        const writeFile = this.writeFile;
        const baseDir = this.baseDir;
        let newParser = new as_1.Parser(parser.diagnostics);
        // Filter for near files
        let files = JSONBuilder_1.JSONBindingsBuilder.nearFiles(this.parser.sources);
        JSONBuilder_1.JSONBindingsBuilder.checkTestBuild(parser.sources);
        // Visit each file
        files.forEach((source) => {
            if (source.internalPath.includes("index-stub"))
                return;
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
                writeFile((0, utils_1.posixRelativePath)("out", source.normalizedPath), sourceText, baseDir);
            }
            // Parses file and any new imports added to the source
            newParser.parseFile(sourceText, (0, utils_1.posixRelativePath)((0, JSONBuilder_1.isEntry)(source) ? "" : "./", source.normalizedPath), (0, JSONBuilder_1.isEntry)(source));
            let newSource = newParser.sources.pop();
            this.program.sources.push(newSource);
            parser.donelog.add(source.internalPath);
            parser.seenlog.add(source.internalPath);
            parser.sources.push(newSource);
        });
        classExporter_1.ClassExporter.classSeen = null;
    }
}
exports.JSONTransformer = JSONTransformer;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvdHJhbnNmb3JtZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBQUEsc0NBQThFO0FBQzlFLCtDQUE2RDtBQUU3RCxtREFBZ0Q7QUFHaEQsbUNBQTRDO0FBRTVDLE1BQU0sZUFBZ0IsU0FBUSxjQUFTO0lBQ3JDLE1BQU0sQ0FBUztJQUVmLFVBQVUsQ0FBQyxNQUFjO1FBQ3ZCLElBQUksQ0FBQyxNQUFNLEdBQUcsTUFBTSxDQUFDO1FBQ3JCLE1BQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUM7UUFDakMsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQztRQUM3QixJQUFJLFNBQVMsR0FBRyxJQUFJLFdBQU0sQ0FBQyxNQUFNLENBQUMsV0FBVyxDQUFDLENBQUM7UUFFL0Msd0JBQXdCO1FBQ3hCLElBQUksS0FBSyxHQUFHLGlDQUFtQixDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQy9ELGlDQUFtQixDQUFDLGNBQWMsQ0FBQyxNQUFNLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDbkQsa0JBQWtCO1FBQ2xCLEtBQUssQ0FBQyxPQUFPLENBQUMsQ0FBQyxNQUFNLEVBQUUsRUFBRTtZQUN2QixJQUFJLE1BQU0sQ0FBQyxZQUFZLENBQUMsUUFBUSxDQUFDLFlBQVksQ0FBQztnQkFBRSxPQUFPO1lBQ3ZELElBQUksUUFBUSxHQUFHLHVCQUF1QixDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDekQsNkJBQTZCO1lBQzdCLE1BQU0sQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDLE1BQU0sQ0FBQyxZQUFZLENBQUMsQ0FBQztZQUMzQyxNQUFNLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUMsWUFBWSxDQUFDLENBQUM7WUFDM0MsK0JBQStCO1lBQy9CLElBQUksQ0FBQyxNQUFNLENBQUMsT0FBTyxHQUFHLElBQUksQ0FBQyxNQUFNLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FDOUMsQ0FBQyxPQUFlLEVBQUUsRUFBRSxDQUFDLE9BQU8sS0FBSyxNQUFNLENBQ3hDLENBQUM7WUFDRixJQUFJLENBQUMsT0FBTyxDQUFDLE9BQU8sR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxNQUFNLENBQ2hELENBQUMsT0FBZSxFQUFFLEVBQUUsQ0FBQyxPQUFPLEtBQUssTUFBTSxDQUN4QyxDQUFDO1lBQ0YsZ0RBQWdEO1lBQ2hELDZCQUFhLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1lBQzVCLG1CQUFtQjtZQUNuQixJQUFJLFVBQVUsR0FBRyxpQ0FBbUIsQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLENBQUM7WUFDbkQsSUFBSSxRQUFRLEVBQUU7Z0JBQ1osU0FBUyxDQUNQLElBQUEseUJBQWlCLEVBQUMsS0FBSyxFQUFFLE1BQU0sQ0FBQyxjQUFjLENBQUMsRUFDL0MsVUFBVSxFQUNWLE9BQU8sQ0FDUixDQUFDO2FBQ0g7WUFDRCxzREFBc0Q7WUFDdEQsU0FBUyxDQUFDLFNBQVMsQ0FDakIsVUFBVSxFQUNWLElBQUEseUJBQWlCLEVBQUMsSUFBQSxxQkFBTyxFQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksRUFBRSxNQUFNLENBQUMsY0FBYyxDQUFDLEVBQ3JFLElBQUEscUJBQU8sRUFBQyxNQUFNLENBQUMsQ0FDaEIsQ0FBQztZQUNGLElBQUksU0FBUyxHQUFHLFNBQVMsQ0FBQyxPQUFPLENBQUMsR0FBRyxFQUFHLENBQUM7WUFDekMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1lBQ3JDLE1BQU0sQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxZQUFZLENBQUMsQ0FBQztZQUN4QyxNQUFNLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxNQUFNLENBQUMsWUFBWSxDQUFDLENBQUM7WUFDeEMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7UUFDakMsQ0FBQyxDQUFDLENBQUM7UUFFSCw2QkFBYSxDQUFDLFNBQVMsR0FBRyxJQUFLLENBQUM7SUFDbEMsQ0FBQztDQUNGO0FBRVEsMENBQWUiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBUcmFuc2Zvcm0sIFBhcnNlciwgU291cmNlLCBNb2R1bGUsIFNvdXJjZUtpbmQgfSBmcm9tIFwidmlzaXRvci1hcy9hc1wiO1xuaW1wb3J0IHsgSlNPTkJpbmRpbmdzQnVpbGRlciwgaXNFbnRyeSB9IGZyb20gXCIuL0pTT05CdWlsZGVyXCI7XG5pbXBvcnQgeyBUeXBlQ2hlY2tlciB9IGZyb20gXCIuL3R5cGVDaGVja2VyXCI7XG5pbXBvcnQgeyBDbGFzc0V4cG9ydGVyIH0gZnJvbSBcIi4vY2xhc3NFeHBvcnRlclwiO1xuaW1wb3J0IHsgdXRpbHMgfSBmcm9tIFwidmlzaXRvci1hc1wiO1xuaW1wb3J0ICogYXMgcGF0aCBmcm9tIFwicGF0aFwiO1xuaW1wb3J0IHsgcG9zaXhSZWxhdGl2ZVBhdGggfSBmcm9tIFwiLi91dGlsc1wiO1xuXG5jbGFzcyBKU09OVHJhbnNmb3JtZXIgZXh0ZW5kcyBUcmFuc2Zvcm0ge1xuICBwYXJzZXI6IFBhcnNlcjtcblxuICBhZnRlclBhcnNlKHBhcnNlcjogUGFyc2VyKTogdm9pZCB7XG4gICAgdGhpcy5wYXJzZXIgPSBwYXJzZXI7XG4gICAgY29uc3Qgd3JpdGVGaWxlID0gdGhpcy53cml0ZUZpbGU7XG4gICAgY29uc3QgYmFzZURpciA9IHRoaXMuYmFzZURpcjtcbiAgICBsZXQgbmV3UGFyc2VyID0gbmV3IFBhcnNlcihwYXJzZXIuZGlhZ25vc3RpY3MpO1xuXG4gICAgLy8gRmlsdGVyIGZvciBuZWFyIGZpbGVzXG4gICAgbGV0IGZpbGVzID0gSlNPTkJpbmRpbmdzQnVpbGRlci5uZWFyRmlsZXModGhpcy5wYXJzZXIuc291cmNlcyk7XG4gICAgSlNPTkJpbmRpbmdzQnVpbGRlci5jaGVja1Rlc3RCdWlsZChwYXJzZXIuc291cmNlcyk7XG4gICAgLy8gVmlzaXQgZWFjaCBmaWxlXG4gICAgZmlsZXMuZm9yRWFjaCgoc291cmNlKSA9PiB7XG4gICAgICBpZiAoc291cmNlLmludGVybmFsUGF0aC5pbmNsdWRlcyhcImluZGV4LXN0dWJcIikpIHJldHVybjtcbiAgICAgIGxldCB3cml0ZU91dCA9IC9cXC9cXC8uKkBuZWFyZmlsZSAuKm91dC8udGVzdChzb3VyY2UudGV4dCk7XG4gICAgICAvLyBSZW1vdmUgZnJvbSBsb2dzIGluIHBhcnNlclxuICAgICAgcGFyc2VyLmRvbmVsb2cuZGVsZXRlKHNvdXJjZS5pbnRlcm5hbFBhdGgpO1xuICAgICAgcGFyc2VyLnNlZW5sb2cuZGVsZXRlKHNvdXJjZS5pbnRlcm5hbFBhdGgpO1xuICAgICAgLy8gUmVtb3ZlIGZyb20gcHJvZ3JhbXMgc291cmNlc1xuICAgICAgdGhpcy5wYXJzZXIuc291cmNlcyA9IHRoaXMucGFyc2VyLnNvdXJjZXMuZmlsdGVyKFxuICAgICAgICAoX3NvdXJjZTogU291cmNlKSA9PiBfc291cmNlICE9PSBzb3VyY2VcbiAgICAgICk7XG4gICAgICB0aGlzLnByb2dyYW0uc291cmNlcyA9IHRoaXMucHJvZ3JhbS5zb3VyY2VzLmZpbHRlcihcbiAgICAgICAgKF9zb3VyY2U6IFNvdXJjZSkgPT4gX3NvdXJjZSAhPT0gc291cmNlXG4gICAgICApO1xuICAgICAgLy8gRXhwb3J0IG1haW4gc2luZ2xldG9uIGNsYXNzIGlmIG9uZSBpcyBwcmVzZW50XG4gICAgICBDbGFzc0V4cG9ydGVyLnZpc2l0KHNvdXJjZSk7XG4gICAgICAvLyBCdWlsZCBuZXcgU291cmNlXG4gICAgICBsZXQgc291cmNlVGV4dCA9IEpTT05CaW5kaW5nc0J1aWxkZXIuYnVpbGQoc291cmNlKTtcbiAgICAgIGlmICh3cml0ZU91dCkge1xuICAgICAgICB3cml0ZUZpbGUoXG4gICAgICAgICAgcG9zaXhSZWxhdGl2ZVBhdGgoXCJvdXRcIiwgc291cmNlLm5vcm1hbGl6ZWRQYXRoKSxcbiAgICAgICAgICBzb3VyY2VUZXh0LFxuICAgICAgICAgIGJhc2VEaXJcbiAgICAgICAgKTtcbiAgICAgIH1cbiAgICAgIC8vIFBhcnNlcyBmaWxlIGFuZCBhbnkgbmV3IGltcG9ydHMgYWRkZWQgdG8gdGhlIHNvdXJjZVxuICAgICAgbmV3UGFyc2VyLnBhcnNlRmlsZShcbiAgICAgICAgc291cmNlVGV4dCxcbiAgICAgICAgcG9zaXhSZWxhdGl2ZVBhdGgoaXNFbnRyeShzb3VyY2UpID8gXCJcIiA6IFwiLi9cIiwgc291cmNlLm5vcm1hbGl6ZWRQYXRoKSxcbiAgICAgICAgaXNFbnRyeShzb3VyY2UpXG4gICAgICApO1xuICAgICAgbGV0IG5ld1NvdXJjZSA9IG5ld1BhcnNlci5zb3VyY2VzLnBvcCgpITtcbiAgICAgIHRoaXMucHJvZ3JhbS5zb3VyY2VzLnB1c2gobmV3U291cmNlKTtcbiAgICAgIHBhcnNlci5kb25lbG9nLmFkZChzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIHBhcnNlci5zZWVubG9nLmFkZChzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIHBhcnNlci5zb3VyY2VzLnB1c2gobmV3U291cmNlKTtcbiAgICB9KTtcblxuICAgIENsYXNzRXhwb3J0ZXIuY2xhc3NTZWVuID0gbnVsbCE7XG4gIH1cbn1cblxuZXhwb3J0IHsgSlNPTlRyYW5zZm9ybWVyIH07XG4iXX0=