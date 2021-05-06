"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.JSONTransformer = void 0;
const as_1 = require("visitor-as/as");
const JSONBuilder_1 = require("./JSONBuilder");
const classExporter_1 = require("./classExporter");
const path = require("path");
class JSONTransformer extends as_1.Transform {
    afterParse(parser) {
        this.parser = parser;
        const writeFile = this.writeFile;
        const baseDir = this.baseDir;
        let newParser = new as_1.Parser(parser.diagnostics);
        // Filter for near files
        let files = JSONBuilder_1.JSONBindingsBuilder.nearFiles(this.parser.sources);
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
                writeFile(path.join("out", source.normalizedPath), sourceText, baseDir);
            }
            // Parses file and any new imports added to the source
            newParser.parseFile(sourceText, path.join(JSONBuilder_1.isEntry(source) ? "" : "./", source.normalizedPath), JSONBuilder_1.isEntry(source));
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvdHJhbnNmb3JtZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBQUEsc0NBQThFO0FBQzlFLCtDQUE2RDtBQUU3RCxtREFBZ0Q7QUFFaEQsNkJBQTZCO0FBRTdCLE1BQU0sZUFBZ0IsU0FBUSxjQUFTO0lBR3JDLFVBQVUsQ0FBQyxNQUFjO1FBQ3ZCLElBQUksQ0FBQyxNQUFNLEdBQUcsTUFBTSxDQUFDO1FBQ3JCLE1BQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUM7UUFDakMsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQztRQUM3QixJQUFJLFNBQVMsR0FBRyxJQUFJLFdBQU0sQ0FBQyxNQUFNLENBQUMsV0FBVyxDQUFDLENBQUM7UUFFL0Msd0JBQXdCO1FBQ3hCLElBQUksS0FBSyxHQUFHLGlDQUFtQixDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQy9ELGtCQUFrQjtRQUNsQixLQUFLLENBQUMsT0FBTyxDQUFDLENBQUMsTUFBTSxFQUFFLEVBQUU7WUFDdkIsSUFBSSxRQUFRLEdBQUcsdUJBQXVCLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUN6RCw2QkFBNkI7WUFDN0IsTUFBTSxDQUFDLE9BQU8sQ0FBQyxNQUFNLENBQUMsTUFBTSxDQUFDLFlBQVksQ0FBQyxDQUFDO1lBQzNDLE1BQU0sQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDLE1BQU0sQ0FBQyxZQUFZLENBQUMsQ0FBQztZQUMzQywrQkFBK0I7WUFDL0IsSUFBSSxDQUFDLE1BQU0sQ0FBQyxPQUFPLEdBQUcsSUFBSSxDQUFDLE1BQU0sQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUM5QyxDQUFDLE9BQWUsRUFBRSxFQUFFLENBQUMsT0FBTyxLQUFLLE1BQU0sQ0FDeEMsQ0FBQztZQUNGLElBQUksQ0FBQyxPQUFPLENBQUMsT0FBTyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FDaEQsQ0FBQyxPQUFlLEVBQUUsRUFBRSxDQUFDLE9BQU8sS0FBSyxNQUFNLENBQ3hDLENBQUM7WUFDRixnREFBZ0Q7WUFDaEQsNkJBQWEsQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLENBQUM7WUFDNUIsbUJBQW1CO1lBQ25CLElBQUksVUFBVSxHQUFHLGlDQUFtQixDQUFDLEtBQUssQ0FBQyxNQUFNLENBQUMsQ0FBQztZQUNuRCxJQUFJLFFBQVEsRUFBRTtnQkFDWixTQUFTLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxLQUFLLEVBQUUsTUFBTSxDQUFDLGNBQWMsQ0FBQyxFQUFFLFVBQVUsRUFBRSxPQUFPLENBQUMsQ0FBQzthQUN6RTtZQUNELHNEQUFzRDtZQUN0RCxTQUFTLENBQUMsU0FBUyxDQUNqQixVQUFVLEVBQ1YsSUFBSSxDQUFDLElBQUksQ0FBQyxxQkFBTyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksRUFBRSxNQUFNLENBQUMsY0FBYyxDQUFDLEVBQzdELHFCQUFPLENBQUMsTUFBTSxDQUFDLENBQ2hCLENBQUM7WUFDRixJQUFJLFNBQVMsR0FBRyxTQUFTLENBQUMsT0FBTyxDQUFDLEdBQUcsRUFBRyxDQUFDO1lBQ3pDLElBQUksQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztZQUNyQyxNQUFNLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxNQUFNLENBQUMsWUFBWSxDQUFDLENBQUM7WUFDeEMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFDLFlBQVksQ0FBQyxDQUFDO1lBQ3hDLE1BQU0sQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1FBQ2pDLENBQUMsQ0FBQyxDQUFDO1FBRUgsNkJBQWEsQ0FBQyxTQUFTLEdBQUcsSUFBSyxDQUFDO0lBQ2xDLENBQUM7Q0FDRjtBQUVRLDBDQUFlIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgVHJhbnNmb3JtLCBQYXJzZXIsIFNvdXJjZSwgTW9kdWxlLCBTb3VyY2VLaW5kIH0gZnJvbSBcInZpc2l0b3ItYXMvYXNcIjtcbmltcG9ydCB7IEpTT05CaW5kaW5nc0J1aWxkZXIsIGlzRW50cnkgfSBmcm9tIFwiLi9KU09OQnVpbGRlclwiO1xuaW1wb3J0IHsgVHlwZUNoZWNrZXIgfSBmcm9tIFwiLi90eXBlQ2hlY2tlclwiO1xuaW1wb3J0IHsgQ2xhc3NFeHBvcnRlciB9IGZyb20gXCIuL2NsYXNzRXhwb3J0ZXJcIjtcbmltcG9ydCB7IHV0aWxzIH0gZnJvbSBcInZpc2l0b3ItYXNcIjtcbmltcG9ydCAqIGFzIHBhdGggZnJvbSBcInBhdGhcIjtcblxuY2xhc3MgSlNPTlRyYW5zZm9ybWVyIGV4dGVuZHMgVHJhbnNmb3JtIHtcbiAgcGFyc2VyOiBQYXJzZXI7XG5cbiAgYWZ0ZXJQYXJzZShwYXJzZXI6IFBhcnNlcik6IHZvaWQge1xuICAgIHRoaXMucGFyc2VyID0gcGFyc2VyO1xuICAgIGNvbnN0IHdyaXRlRmlsZSA9IHRoaXMud3JpdGVGaWxlO1xuICAgIGNvbnN0IGJhc2VEaXIgPSB0aGlzLmJhc2VEaXI7XG4gICAgbGV0IG5ld1BhcnNlciA9IG5ldyBQYXJzZXIocGFyc2VyLmRpYWdub3N0aWNzKTtcblxuICAgIC8vIEZpbHRlciBmb3IgbmVhciBmaWxlc1xuICAgIGxldCBmaWxlcyA9IEpTT05CaW5kaW5nc0J1aWxkZXIubmVhckZpbGVzKHRoaXMucGFyc2VyLnNvdXJjZXMpO1xuICAgIC8vIFZpc2l0IGVhY2ggZmlsZVxuICAgIGZpbGVzLmZvckVhY2goKHNvdXJjZSkgPT4ge1xuICAgICAgbGV0IHdyaXRlT3V0ID0gL1xcL1xcLy4qQG5lYXJmaWxlIC4qb3V0Ly50ZXN0KHNvdXJjZS50ZXh0KTtcbiAgICAgIC8vIFJlbW92ZSBmcm9tIGxvZ3MgaW4gcGFyc2VyXG4gICAgICBwYXJzZXIuZG9uZWxvZy5kZWxldGUoc291cmNlLmludGVybmFsUGF0aCk7XG4gICAgICBwYXJzZXIuc2VlbmxvZy5kZWxldGUoc291cmNlLmludGVybmFsUGF0aCk7XG4gICAgICAvLyBSZW1vdmUgZnJvbSBwcm9ncmFtcyBzb3VyY2VzXG4gICAgICB0aGlzLnBhcnNlci5zb3VyY2VzID0gdGhpcy5wYXJzZXIuc291cmNlcy5maWx0ZXIoXG4gICAgICAgIChfc291cmNlOiBTb3VyY2UpID0+IF9zb3VyY2UgIT09IHNvdXJjZVxuICAgICAgKTtcbiAgICAgIHRoaXMucHJvZ3JhbS5zb3VyY2VzID0gdGhpcy5wcm9ncmFtLnNvdXJjZXMuZmlsdGVyKFxuICAgICAgICAoX3NvdXJjZTogU291cmNlKSA9PiBfc291cmNlICE9PSBzb3VyY2VcbiAgICAgICk7XG4gICAgICAvLyBFeHBvcnQgbWFpbiBzaW5nbGV0b24gY2xhc3MgaWYgb25lIGlzIHByZXNlbnRcbiAgICAgIENsYXNzRXhwb3J0ZXIudmlzaXQoc291cmNlKTtcbiAgICAgIC8vIEJ1aWxkIG5ldyBTb3VyY2VcbiAgICAgIGxldCBzb3VyY2VUZXh0ID0gSlNPTkJpbmRpbmdzQnVpbGRlci5idWlsZChzb3VyY2UpO1xuICAgICAgaWYgKHdyaXRlT3V0KSB7XG4gICAgICAgIHdyaXRlRmlsZShwYXRoLmpvaW4oXCJvdXRcIiwgc291cmNlLm5vcm1hbGl6ZWRQYXRoKSwgc291cmNlVGV4dCwgYmFzZURpcik7XG4gICAgICB9XG4gICAgICAvLyBQYXJzZXMgZmlsZSBhbmQgYW55IG5ldyBpbXBvcnRzIGFkZGVkIHRvIHRoZSBzb3VyY2VcbiAgICAgIG5ld1BhcnNlci5wYXJzZUZpbGUoXG4gICAgICAgIHNvdXJjZVRleHQsXG4gICAgICAgIHBhdGguam9pbihpc0VudHJ5KHNvdXJjZSkgPyBcIlwiIDogXCIuL1wiLCBzb3VyY2Uubm9ybWFsaXplZFBhdGgpLFxuICAgICAgICBpc0VudHJ5KHNvdXJjZSlcbiAgICAgICk7XG4gICAgICBsZXQgbmV3U291cmNlID0gbmV3UGFyc2VyLnNvdXJjZXMucG9wKCkhO1xuICAgICAgdGhpcy5wcm9ncmFtLnNvdXJjZXMucHVzaChuZXdTb3VyY2UpO1xuICAgICAgcGFyc2VyLmRvbmVsb2cuYWRkKHNvdXJjZS5pbnRlcm5hbFBhdGgpO1xuICAgICAgcGFyc2VyLnNlZW5sb2cuYWRkKHNvdXJjZS5pbnRlcm5hbFBhdGgpO1xuICAgICAgcGFyc2VyLnNvdXJjZXMucHVzaChuZXdTb3VyY2UpO1xuICAgIH0pO1xuXG4gICAgQ2xhc3NFeHBvcnRlci5jbGFzc1NlZW4gPSBudWxsITtcbiAgfVxufVxuXG5leHBvcnQgeyBKU09OVHJhbnNmb3JtZXIgfTtcbiJdfQ==