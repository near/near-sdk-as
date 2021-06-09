"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.JSONTransformer = void 0;
const as_1 = require("visitor-as/as");
const JSONBuilder_1 = require("./JSONBuilder");
const classExporter_1 = require("./classExporter");
const visitor_as_1 = require("visitor-as");
const path = require("path");
const common_1 = require("./common");
const functionWrapper_1 = require("./functionWrapper");
class JSONTransformer extends as_1.Transform {
    afterParse(parser) {
        this.parser = parser;
        const writeFile = this.writeFile;
        const baseDir = this.baseDir;
        // Filter for near files
        let sources = common_1.nearFiles(this.parser.sources);
        classExporter_1.ClassExporter.visit(sources);
        JSONBuilder_1.JSONBindingsBuilder.visit(sources);
        functionWrapper_1.FunctionExportWrapper.visit(sources);
        let regex = /\/\/.*@nearfile .*out/;
        sources.forEach(source => {
            if (regex.test(source.text))
                writeFile(path.join("out", source.normalizedPath), visitor_as_1.utils.toString(source), baseDir);
        });
        // Visit each file
        // files.forEach((source) => {
        //   // Remove from logs in parser
        //   parser.donelog.delete(source.internalPath);
        //   parser.seenlog.delete(source.internalPath);
        //   // Remove from programs sources
        //   this.parser.sources = this.parser.sources.filter(
        //     (_source: Source) => _source !== source
        //   );
        //   this.program.sources = this.program.sources.filter(
        //     (_source: Source) => _source !== source
        //   );
        //   // Export main singleton class if one is present
        //   // Build new Source
        //   let sourceText = JSONBindingsBuilder.build(source);
        //   if (writeOut) {
        //    
        //   }
        //   // Parses file and any new imports added to the source
        //   newParser.parseFile(
        //     sourceText,
        //     path.join(isEntry(source) ? "" : "./", source.normalizedPath),
        //     isEntry(source)
        //   );
        //   let newSource = newParser.sources.pop()!;
        //   this.program.sources.push(newSource);
        //   parser.donelog.add(source.internalPath);
        //   parser.seenlog.add(source.internalPath);
        //   parser.sources.push(newSource);
        // });
        classExporter_1.ClassExporter.classSeen = null;
    }
}
exports.JSONTransformer = JSONTransformer;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvdHJhbnNmb3JtZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBQUEsc0NBQThFO0FBQzlFLCtDQUFvRDtBQUVwRCxtREFBZ0Q7QUFDaEQsMkNBQW1DO0FBQ25DLDZCQUE2QjtBQUM3QixxQ0FBcUM7QUFDckMsdURBQTBEO0FBRTFELE1BQU0sZUFBZ0IsU0FBUSxjQUFTO0lBR3JDLFVBQVUsQ0FBQyxNQUFjO1FBQ3ZCLElBQUksQ0FBQyxNQUFNLEdBQUcsTUFBTSxDQUFDO1FBQ3JCLE1BQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUM7UUFDakMsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQztRQUU3Qix3QkFBd0I7UUFDeEIsSUFBSSxPQUFPLEdBQUcsa0JBQVMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQzdDLDZCQUFhLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQzdCLGlDQUFtQixDQUFDLEtBQUssQ0FBQyxPQUFPLENBQUMsQ0FBQztRQUNuQyx1Q0FBcUIsQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLENBQUM7UUFFckMsSUFBSSxLQUFLLEdBQUcsdUJBQXVCLENBQUM7UUFDcEMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxNQUFNLENBQUMsRUFBRTtZQUN2QixJQUFJLEtBQUssQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQztnQkFDM0IsU0FBUyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsS0FBSyxFQUFFLE1BQU0sQ0FBQyxjQUFjLENBQUMsRUFBRSxrQkFBSyxDQUFDLFFBQVEsQ0FBQyxNQUFNLENBQUMsRUFBRSxPQUFPLENBQUMsQ0FBQztRQUN0RixDQUFDLENBQUMsQ0FBQTtRQUVGLGtCQUFrQjtRQUNsQiw4QkFBOEI7UUFDOUIsa0NBQWtDO1FBQ2xDLGdEQUFnRDtRQUNoRCxnREFBZ0Q7UUFDaEQsb0NBQW9DO1FBQ3BDLHNEQUFzRDtRQUN0RCw4Q0FBOEM7UUFDOUMsT0FBTztRQUNQLHdEQUF3RDtRQUN4RCw4Q0FBOEM7UUFDOUMsT0FBTztRQUNQLHFEQUFxRDtRQUVyRCx3QkFBd0I7UUFDeEIsd0RBQXdEO1FBQ3hELG9CQUFvQjtRQUNwQixNQUFNO1FBQ04sTUFBTTtRQUNOLDJEQUEyRDtRQUMzRCx5QkFBeUI7UUFDekIsa0JBQWtCO1FBQ2xCLHFFQUFxRTtRQUNyRSxzQkFBc0I7UUFDdEIsT0FBTztRQUNQLDhDQUE4QztRQUM5QywwQ0FBMEM7UUFDMUMsNkNBQTZDO1FBQzdDLDZDQUE2QztRQUM3QyxvQ0FBb0M7UUFDcEMsTUFBTTtRQUVOLDZCQUFhLENBQUMsU0FBUyxHQUFHLElBQUssQ0FBQztJQUNsQyxDQUFDO0NBQ0Y7QUFFUSwwQ0FBZSIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IFRyYW5zZm9ybSwgUGFyc2VyLCBTb3VyY2UsIE1vZHVsZSwgU291cmNlS2luZCB9IGZyb20gXCJ2aXNpdG9yLWFzL2FzXCI7XG5pbXBvcnQgeyBKU09OQmluZGluZ3NCdWlsZGVyIH0gZnJvbSBcIi4vSlNPTkJ1aWxkZXJcIjtcbmltcG9ydCB7IFR5cGVDaGVja2VyIH0gZnJvbSBcIi4vdHlwZUNoZWNrZXJcIjtcbmltcG9ydCB7IENsYXNzRXhwb3J0ZXIgfSBmcm9tIFwiLi9jbGFzc0V4cG9ydGVyXCI7XG5pbXBvcnQgeyB1dGlscyB9IGZyb20gXCJ2aXNpdG9yLWFzXCI7XG5pbXBvcnQgKiBhcyBwYXRoIGZyb20gXCJwYXRoXCI7XG5pbXBvcnQgeyBuZWFyRmlsZXMgfSBmcm9tIFwiLi9jb21tb25cIjtcbmltcG9ydCB7IEZ1bmN0aW9uRXhwb3J0V3JhcHBlciB9IGZyb20gXCIuL2Z1bmN0aW9uV3JhcHBlclwiO1xuXG5jbGFzcyBKU09OVHJhbnNmb3JtZXIgZXh0ZW5kcyBUcmFuc2Zvcm0ge1xuICBwYXJzZXI6IFBhcnNlcjtcblxuICBhZnRlclBhcnNlKHBhcnNlcjogUGFyc2VyKTogdm9pZCB7XG4gICAgdGhpcy5wYXJzZXIgPSBwYXJzZXI7XG4gICAgY29uc3Qgd3JpdGVGaWxlID0gdGhpcy53cml0ZUZpbGU7XG4gICAgY29uc3QgYmFzZURpciA9IHRoaXMuYmFzZURpcjtcblxuICAgIC8vIEZpbHRlciBmb3IgbmVhciBmaWxlc1xuICAgIGxldCBzb3VyY2VzID0gbmVhckZpbGVzKHRoaXMucGFyc2VyLnNvdXJjZXMpO1xuICAgIENsYXNzRXhwb3J0ZXIudmlzaXQoc291cmNlcyk7XG4gICAgSlNPTkJpbmRpbmdzQnVpbGRlci52aXNpdChzb3VyY2VzKTtcbiAgICBGdW5jdGlvbkV4cG9ydFdyYXBwZXIudmlzaXQoc291cmNlcyk7XG5cbiAgICBsZXQgcmVnZXggPSAvXFwvXFwvLipAbmVhcmZpbGUgLipvdXQvO1xuICAgIHNvdXJjZXMuZm9yRWFjaChzb3VyY2UgPT4ge1xuICAgICAgaWYgKHJlZ2V4LnRlc3Qoc291cmNlLnRleHQpKVxuICAgICAgd3JpdGVGaWxlKHBhdGguam9pbihcIm91dFwiLCBzb3VyY2Uubm9ybWFsaXplZFBhdGgpLCB1dGlscy50b1N0cmluZyhzb3VyY2UpLCBiYXNlRGlyKTtcbiAgICB9KVxuICAgIFxuICAgIC8vIFZpc2l0IGVhY2ggZmlsZVxuICAgIC8vIGZpbGVzLmZvckVhY2goKHNvdXJjZSkgPT4ge1xuICAgIC8vICAgLy8gUmVtb3ZlIGZyb20gbG9ncyBpbiBwYXJzZXJcbiAgICAvLyAgIHBhcnNlci5kb25lbG9nLmRlbGV0ZShzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAvLyAgIHBhcnNlci5zZWVubG9nLmRlbGV0ZShzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAvLyAgIC8vIFJlbW92ZSBmcm9tIHByb2dyYW1zIHNvdXJjZXNcbiAgICAvLyAgIHRoaXMucGFyc2VyLnNvdXJjZXMgPSB0aGlzLnBhcnNlci5zb3VyY2VzLmZpbHRlcihcbiAgICAvLyAgICAgKF9zb3VyY2U6IFNvdXJjZSkgPT4gX3NvdXJjZSAhPT0gc291cmNlXG4gICAgLy8gICApO1xuICAgIC8vICAgdGhpcy5wcm9ncmFtLnNvdXJjZXMgPSB0aGlzLnByb2dyYW0uc291cmNlcy5maWx0ZXIoXG4gICAgLy8gICAgIChfc291cmNlOiBTb3VyY2UpID0+IF9zb3VyY2UgIT09IHNvdXJjZVxuICAgIC8vICAgKTtcbiAgICAvLyAgIC8vIEV4cG9ydCBtYWluIHNpbmdsZXRvbiBjbGFzcyBpZiBvbmUgaXMgcHJlc2VudFxuXG4gICAgLy8gICAvLyBCdWlsZCBuZXcgU291cmNlXG4gICAgLy8gICBsZXQgc291cmNlVGV4dCA9IEpTT05CaW5kaW5nc0J1aWxkZXIuYnVpbGQoc291cmNlKTtcbiAgICAvLyAgIGlmICh3cml0ZU91dCkge1xuICAgIC8vICAgIFxuICAgIC8vICAgfVxuICAgIC8vICAgLy8gUGFyc2VzIGZpbGUgYW5kIGFueSBuZXcgaW1wb3J0cyBhZGRlZCB0byB0aGUgc291cmNlXG4gICAgLy8gICBuZXdQYXJzZXIucGFyc2VGaWxlKFxuICAgIC8vICAgICBzb3VyY2VUZXh0LFxuICAgIC8vICAgICBwYXRoLmpvaW4oaXNFbnRyeShzb3VyY2UpID8gXCJcIiA6IFwiLi9cIiwgc291cmNlLm5vcm1hbGl6ZWRQYXRoKSxcbiAgICAvLyAgICAgaXNFbnRyeShzb3VyY2UpXG4gICAgLy8gICApO1xuICAgIC8vICAgbGV0IG5ld1NvdXJjZSA9IG5ld1BhcnNlci5zb3VyY2VzLnBvcCgpITtcbiAgICAvLyAgIHRoaXMucHJvZ3JhbS5zb3VyY2VzLnB1c2gobmV3U291cmNlKTtcbiAgICAvLyAgIHBhcnNlci5kb25lbG9nLmFkZChzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAvLyAgIHBhcnNlci5zZWVubG9nLmFkZChzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAvLyAgIHBhcnNlci5zb3VyY2VzLnB1c2gobmV3U291cmNlKTtcbiAgICAvLyB9KTtcblxuICAgIENsYXNzRXhwb3J0ZXIuY2xhc3NTZWVuID0gbnVsbCE7XG4gIH1cbn1cblxuZXhwb3J0IHsgSlNPTlRyYW5zZm9ybWVyIH07XG4iXX0=