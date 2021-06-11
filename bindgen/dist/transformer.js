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
const regex = /\/\/.*@nearfile .*out/;
class JSONTransformer extends as_1.Transform {
    afterParse(parser) {
        this.parser = parser;
        const writeFile = this.writeFile;
        const baseDir = this.baseDir;
        // Filter for near files
        const sources = common_1.nearFiles(this.parser.sources);
        classExporter_1.ClassExporter.visit(sources);
        JSONBuilder_1.JSONBindingsBuilder.visit(sources);
        functionWrapper_1.FunctionExportWrapper.visit(sources);
        sources.forEach((source) => {
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
    afterInitialize(program) {
        // FunctionExportWrapper.queueExorts.forEach(e => {
        //   console.log(`about to check export ${e.from} ${e.to}`)
        //   e.addExport(program);
        // })
    }
}
exports.JSONTransformer = JSONTransformer;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvdHJhbnNmb3JtZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBQUEsc0NBQStFO0FBQy9FLCtDQUFvRDtBQUNwRCxtREFBZ0Q7QUFDaEQsMkNBQW1DO0FBQ25DLDZCQUE2QjtBQUM3QixxQ0FBcUM7QUFDckMsdURBQTBEO0FBRTFELE1BQU0sS0FBSyxHQUFHLHVCQUF1QixDQUFDO0FBQ3RDLE1BQU0sZUFBZ0IsU0FBUSxjQUFTO0lBR3JDLFVBQVUsQ0FBQyxNQUFjO1FBQ3ZCLElBQUksQ0FBQyxNQUFNLEdBQUcsTUFBTSxDQUFDO1FBQ3JCLE1BQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUM7UUFDakMsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQztRQUU3Qix3QkFBd0I7UUFDeEIsTUFBTSxPQUFPLEdBQUcsa0JBQVMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQy9DLDZCQUFhLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQzdCLGlDQUFtQixDQUFDLEtBQUssQ0FBQyxPQUFPLENBQUMsQ0FBQztRQUNuQyx1Q0FBcUIsQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLENBQUM7UUFFckMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxDQUFDLE1BQU0sRUFBRSxFQUFFO1lBQ3pCLElBQUksS0FBSyxDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDO2dCQUN6QixTQUFTLENBQ1AsSUFBSSxDQUFDLElBQUksQ0FBQyxLQUFLLEVBQUUsTUFBTSxDQUFDLGNBQWMsQ0FBQyxFQUN2QyxrQkFBSyxDQUFDLFFBQVEsQ0FBQyxNQUFNLENBQUMsRUFDdEIsT0FBTyxDQUNSLENBQUM7UUFDTixDQUFDLENBQUMsQ0FBQztRQUVILGtCQUFrQjtRQUNsQiw4QkFBOEI7UUFDOUIsa0NBQWtDO1FBQ2xDLGdEQUFnRDtRQUNoRCxnREFBZ0Q7UUFDaEQsb0NBQW9DO1FBQ3BDLHNEQUFzRDtRQUN0RCw4Q0FBOEM7UUFDOUMsT0FBTztRQUNQLHdEQUF3RDtRQUN4RCw4Q0FBOEM7UUFDOUMsT0FBTztRQUNQLHFEQUFxRDtRQUVyRCx3QkFBd0I7UUFDeEIsd0RBQXdEO1FBQ3hELG9CQUFvQjtRQUNwQixFQUFFO1FBQ0YsTUFBTTtRQUNOLDJEQUEyRDtRQUMzRCx5QkFBeUI7UUFDekIsa0JBQWtCO1FBQ2xCLHFFQUFxRTtRQUNyRSxzQkFBc0I7UUFDdEIsT0FBTztRQUNQLDhDQUE4QztRQUM5QywwQ0FBMEM7UUFDMUMsNkNBQTZDO1FBQzdDLDZDQUE2QztRQUM3QyxvQ0FBb0M7UUFDcEMsTUFBTTtRQUVOLDZCQUFhLENBQUMsU0FBUyxHQUFHLElBQUssQ0FBQztJQUNsQyxDQUFDO0lBRUQsZUFBZSxDQUFDLE9BQWdCO1FBQzlCLG1EQUFtRDtRQUNuRCwyREFBMkQ7UUFDM0QsMEJBQTBCO1FBQzFCLEtBQUs7SUFDUCxDQUFDO0NBQ0Y7QUFFUSwwQ0FBZSIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IFRyYW5zZm9ybSwgUGFyc2VyLCBQcm9ncmFtLCBNb2R1bGUsIFNvdXJjZUtpbmQgfSBmcm9tIFwidmlzaXRvci1hcy9hc1wiO1xuaW1wb3J0IHsgSlNPTkJpbmRpbmdzQnVpbGRlciB9IGZyb20gXCIuL0pTT05CdWlsZGVyXCI7XG5pbXBvcnQgeyBDbGFzc0V4cG9ydGVyIH0gZnJvbSBcIi4vY2xhc3NFeHBvcnRlclwiO1xuaW1wb3J0IHsgdXRpbHMgfSBmcm9tIFwidmlzaXRvci1hc1wiO1xuaW1wb3J0ICogYXMgcGF0aCBmcm9tIFwicGF0aFwiO1xuaW1wb3J0IHsgbmVhckZpbGVzIH0gZnJvbSBcIi4vY29tbW9uXCI7XG5pbXBvcnQgeyBGdW5jdGlvbkV4cG9ydFdyYXBwZXIgfSBmcm9tIFwiLi9mdW5jdGlvbldyYXBwZXJcIjtcblxuY29uc3QgcmVnZXggPSAvXFwvXFwvLipAbmVhcmZpbGUgLipvdXQvO1xuY2xhc3MgSlNPTlRyYW5zZm9ybWVyIGV4dGVuZHMgVHJhbnNmb3JtIHtcbiAgcGFyc2VyOiBQYXJzZXI7XG5cbiAgYWZ0ZXJQYXJzZShwYXJzZXI6IFBhcnNlcik6IHZvaWQge1xuICAgIHRoaXMucGFyc2VyID0gcGFyc2VyO1xuICAgIGNvbnN0IHdyaXRlRmlsZSA9IHRoaXMud3JpdGVGaWxlO1xuICAgIGNvbnN0IGJhc2VEaXIgPSB0aGlzLmJhc2VEaXI7XG5cbiAgICAvLyBGaWx0ZXIgZm9yIG5lYXIgZmlsZXNcbiAgICBjb25zdCBzb3VyY2VzID0gbmVhckZpbGVzKHRoaXMucGFyc2VyLnNvdXJjZXMpO1xuICAgIENsYXNzRXhwb3J0ZXIudmlzaXQoc291cmNlcyk7XG4gICAgSlNPTkJpbmRpbmdzQnVpbGRlci52aXNpdChzb3VyY2VzKTtcbiAgICBGdW5jdGlvbkV4cG9ydFdyYXBwZXIudmlzaXQoc291cmNlcyk7XG5cbiAgICBzb3VyY2VzLmZvckVhY2goKHNvdXJjZSkgPT4ge1xuICAgICAgaWYgKHJlZ2V4LnRlc3Qoc291cmNlLnRleHQpKVxuICAgICAgICB3cml0ZUZpbGUoXG4gICAgICAgICAgcGF0aC5qb2luKFwib3V0XCIsIHNvdXJjZS5ub3JtYWxpemVkUGF0aCksXG4gICAgICAgICAgdXRpbHMudG9TdHJpbmcoc291cmNlKSxcbiAgICAgICAgICBiYXNlRGlyXG4gICAgICAgICk7XG4gICAgfSk7XG5cbiAgICAvLyBWaXNpdCBlYWNoIGZpbGVcbiAgICAvLyBmaWxlcy5mb3JFYWNoKChzb3VyY2UpID0+IHtcbiAgICAvLyAgIC8vIFJlbW92ZSBmcm9tIGxvZ3MgaW4gcGFyc2VyXG4gICAgLy8gICBwYXJzZXIuZG9uZWxvZy5kZWxldGUoc291cmNlLmludGVybmFsUGF0aCk7XG4gICAgLy8gICBwYXJzZXIuc2VlbmxvZy5kZWxldGUoc291cmNlLmludGVybmFsUGF0aCk7XG4gICAgLy8gICAvLyBSZW1vdmUgZnJvbSBwcm9ncmFtcyBzb3VyY2VzXG4gICAgLy8gICB0aGlzLnBhcnNlci5zb3VyY2VzID0gdGhpcy5wYXJzZXIuc291cmNlcy5maWx0ZXIoXG4gICAgLy8gICAgIChfc291cmNlOiBTb3VyY2UpID0+IF9zb3VyY2UgIT09IHNvdXJjZVxuICAgIC8vICAgKTtcbiAgICAvLyAgIHRoaXMucHJvZ3JhbS5zb3VyY2VzID0gdGhpcy5wcm9ncmFtLnNvdXJjZXMuZmlsdGVyKFxuICAgIC8vICAgICAoX3NvdXJjZTogU291cmNlKSA9PiBfc291cmNlICE9PSBzb3VyY2VcbiAgICAvLyAgICk7XG4gICAgLy8gICAvLyBFeHBvcnQgbWFpbiBzaW5nbGV0b24gY2xhc3MgaWYgb25lIGlzIHByZXNlbnRcblxuICAgIC8vICAgLy8gQnVpbGQgbmV3IFNvdXJjZVxuICAgIC8vICAgbGV0IHNvdXJjZVRleHQgPSBKU09OQmluZGluZ3NCdWlsZGVyLmJ1aWxkKHNvdXJjZSk7XG4gICAgLy8gICBpZiAod3JpdGVPdXQpIHtcbiAgICAvL1xuICAgIC8vICAgfVxuICAgIC8vICAgLy8gUGFyc2VzIGZpbGUgYW5kIGFueSBuZXcgaW1wb3J0cyBhZGRlZCB0byB0aGUgc291cmNlXG4gICAgLy8gICBuZXdQYXJzZXIucGFyc2VGaWxlKFxuICAgIC8vICAgICBzb3VyY2VUZXh0LFxuICAgIC8vICAgICBwYXRoLmpvaW4oaXNFbnRyeShzb3VyY2UpID8gXCJcIiA6IFwiLi9cIiwgc291cmNlLm5vcm1hbGl6ZWRQYXRoKSxcbiAgICAvLyAgICAgaXNFbnRyeShzb3VyY2UpXG4gICAgLy8gICApO1xuICAgIC8vICAgbGV0IG5ld1NvdXJjZSA9IG5ld1BhcnNlci5zb3VyY2VzLnBvcCgpITtcbiAgICAvLyAgIHRoaXMucHJvZ3JhbS5zb3VyY2VzLnB1c2gobmV3U291cmNlKTtcbiAgICAvLyAgIHBhcnNlci5kb25lbG9nLmFkZChzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAvLyAgIHBhcnNlci5zZWVubG9nLmFkZChzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAvLyAgIHBhcnNlci5zb3VyY2VzLnB1c2gobmV3U291cmNlKTtcbiAgICAvLyB9KTtcblxuICAgIENsYXNzRXhwb3J0ZXIuY2xhc3NTZWVuID0gbnVsbCE7XG4gIH1cblxuICBhZnRlckluaXRpYWxpemUocHJvZ3JhbTogUHJvZ3JhbSk6IHZvaWQge1xuICAgIC8vIEZ1bmN0aW9uRXhwb3J0V3JhcHBlci5xdWV1ZUV4b3J0cy5mb3JFYWNoKGUgPT4ge1xuICAgIC8vICAgY29uc29sZS5sb2coYGFib3V0IHRvIGNoZWNrIGV4cG9ydCAke2UuZnJvbX0gJHtlLnRvfWApXG4gICAgLy8gICBlLmFkZEV4cG9ydChwcm9ncmFtKTtcbiAgICAvLyB9KVxuICB9XG59XG5cbmV4cG9ydCB7IEpTT05UcmFuc2Zvcm1lciB9O1xuIl19