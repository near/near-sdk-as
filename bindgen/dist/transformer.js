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
        JSONBuilder_1.JSONBindingsBuilder.checkTestBuild(parser.sources);
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvdHJhbnNmb3JtZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBQUEsc0NBQThFO0FBQzlFLCtDQUE2RDtBQUU3RCxtREFBZ0Q7QUFFaEQsNkJBQTZCO0FBRTdCLE1BQU0sZUFBZ0IsU0FBUSxjQUFTO0lBR3JDLFVBQVUsQ0FBQyxNQUFjO1FBQ3ZCLElBQUksQ0FBQyxNQUFNLEdBQUcsTUFBTSxDQUFDO1FBQ3JCLE1BQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUM7UUFDakMsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQztRQUM3QixJQUFJLFNBQVMsR0FBRyxJQUFJLFdBQU0sQ0FBQyxNQUFNLENBQUMsV0FBVyxDQUFDLENBQUM7UUFFL0Msd0JBQXdCO1FBQ3hCLElBQUksS0FBSyxHQUFHLGlDQUFtQixDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQy9ELGlDQUFtQixDQUFDLGNBQWMsQ0FBQyxNQUFNLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDbkQsa0JBQWtCO1FBQ2xCLEtBQUssQ0FBQyxPQUFPLENBQUMsQ0FBQyxNQUFNLEVBQUUsRUFBRTtZQUN2QixJQUFJLFFBQVEsR0FBRyx1QkFBdUIsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQ3pELDZCQUE2QjtZQUM3QixNQUFNLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUMsWUFBWSxDQUFDLENBQUM7WUFDM0MsTUFBTSxDQUFDLE9BQU8sQ0FBQyxNQUFNLENBQUMsTUFBTSxDQUFDLFlBQVksQ0FBQyxDQUFDO1lBQzNDLCtCQUErQjtZQUMvQixJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sR0FBRyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxNQUFNLENBQzlDLENBQUMsT0FBZSxFQUFFLEVBQUUsQ0FBQyxPQUFPLEtBQUssTUFBTSxDQUN4QyxDQUFDO1lBQ0YsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUNoRCxDQUFDLE9BQWUsRUFBRSxFQUFFLENBQUMsT0FBTyxLQUFLLE1BQU0sQ0FDeEMsQ0FBQztZQUNGLGdEQUFnRDtZQUNoRCw2QkFBYSxDQUFDLEtBQUssQ0FBQyxNQUFNLENBQUMsQ0FBQztZQUM1QixtQkFBbUI7WUFDbkIsSUFBSSxVQUFVLEdBQUcsaUNBQW1CLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1lBQ25ELElBQUksUUFBUSxFQUFFO2dCQUNaLFNBQVMsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssRUFBRSxNQUFNLENBQUMsY0FBYyxDQUFDLEVBQUUsVUFBVSxFQUFFLE9BQU8sQ0FBQyxDQUFDO2FBQ3pFO1lBQ0Qsc0RBQXNEO1lBQ3RELFNBQVMsQ0FBQyxTQUFTLENBQ2pCLFVBQVUsRUFDVixJQUFJLENBQUMsSUFBSSxDQUFDLHFCQUFPLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsSUFBSSxFQUFFLE1BQU0sQ0FBQyxjQUFjLENBQUMsRUFDN0QscUJBQU8sQ0FBQyxNQUFNLENBQUMsQ0FDaEIsQ0FBQztZQUNGLElBQUksU0FBUyxHQUFHLFNBQVMsQ0FBQyxPQUFPLENBQUMsR0FBRyxFQUFHLENBQUM7WUFDekMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1lBQ3JDLE1BQU0sQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxZQUFZLENBQUMsQ0FBQztZQUN4QyxNQUFNLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxNQUFNLENBQUMsWUFBWSxDQUFDLENBQUM7WUFDeEMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7UUFDakMsQ0FBQyxDQUFDLENBQUM7UUFFSCw2QkFBYSxDQUFDLFNBQVMsR0FBRyxJQUFLLENBQUM7SUFDbEMsQ0FBQztDQUNGO0FBRVEsMENBQWUiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBUcmFuc2Zvcm0sIFBhcnNlciwgU291cmNlLCBNb2R1bGUsIFNvdXJjZUtpbmQgfSBmcm9tIFwidmlzaXRvci1hcy9hc1wiO1xuaW1wb3J0IHsgSlNPTkJpbmRpbmdzQnVpbGRlciwgaXNFbnRyeSB9IGZyb20gXCIuL0pTT05CdWlsZGVyXCI7XG5pbXBvcnQgeyBUeXBlQ2hlY2tlciB9IGZyb20gXCIuL3R5cGVDaGVja2VyXCI7XG5pbXBvcnQgeyBDbGFzc0V4cG9ydGVyIH0gZnJvbSBcIi4vY2xhc3NFeHBvcnRlclwiO1xuaW1wb3J0IHsgdXRpbHMgfSBmcm9tIFwidmlzaXRvci1hc1wiO1xuaW1wb3J0ICogYXMgcGF0aCBmcm9tIFwicGF0aFwiO1xuXG5jbGFzcyBKU09OVHJhbnNmb3JtZXIgZXh0ZW5kcyBUcmFuc2Zvcm0ge1xuICBwYXJzZXI6IFBhcnNlcjtcblxuICBhZnRlclBhcnNlKHBhcnNlcjogUGFyc2VyKTogdm9pZCB7XG4gICAgdGhpcy5wYXJzZXIgPSBwYXJzZXI7XG4gICAgY29uc3Qgd3JpdGVGaWxlID0gdGhpcy53cml0ZUZpbGU7XG4gICAgY29uc3QgYmFzZURpciA9IHRoaXMuYmFzZURpcjtcbiAgICBsZXQgbmV3UGFyc2VyID0gbmV3IFBhcnNlcihwYXJzZXIuZGlhZ25vc3RpY3MpO1xuXG4gICAgLy8gRmlsdGVyIGZvciBuZWFyIGZpbGVzXG4gICAgbGV0IGZpbGVzID0gSlNPTkJpbmRpbmdzQnVpbGRlci5uZWFyRmlsZXModGhpcy5wYXJzZXIuc291cmNlcyk7XG4gICAgSlNPTkJpbmRpbmdzQnVpbGRlci5jaGVja1Rlc3RCdWlsZChwYXJzZXIuc291cmNlcyk7XG4gICAgLy8gVmlzaXQgZWFjaCBmaWxlXG4gICAgZmlsZXMuZm9yRWFjaCgoc291cmNlKSA9PiB7XG4gICAgICBsZXQgd3JpdGVPdXQgPSAvXFwvXFwvLipAbmVhcmZpbGUgLipvdXQvLnRlc3Qoc291cmNlLnRleHQpO1xuICAgICAgLy8gUmVtb3ZlIGZyb20gbG9ncyBpbiBwYXJzZXJcbiAgICAgIHBhcnNlci5kb25lbG9nLmRlbGV0ZShzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIHBhcnNlci5zZWVubG9nLmRlbGV0ZShzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIC8vIFJlbW92ZSBmcm9tIHByb2dyYW1zIHNvdXJjZXNcbiAgICAgIHRoaXMucGFyc2VyLnNvdXJjZXMgPSB0aGlzLnBhcnNlci5zb3VyY2VzLmZpbHRlcihcbiAgICAgICAgKF9zb3VyY2U6IFNvdXJjZSkgPT4gX3NvdXJjZSAhPT0gc291cmNlXG4gICAgICApO1xuICAgICAgdGhpcy5wcm9ncmFtLnNvdXJjZXMgPSB0aGlzLnByb2dyYW0uc291cmNlcy5maWx0ZXIoXG4gICAgICAgIChfc291cmNlOiBTb3VyY2UpID0+IF9zb3VyY2UgIT09IHNvdXJjZVxuICAgICAgKTtcbiAgICAgIC8vIEV4cG9ydCBtYWluIHNpbmdsZXRvbiBjbGFzcyBpZiBvbmUgaXMgcHJlc2VudFxuICAgICAgQ2xhc3NFeHBvcnRlci52aXNpdChzb3VyY2UpO1xuICAgICAgLy8gQnVpbGQgbmV3IFNvdXJjZVxuICAgICAgbGV0IHNvdXJjZVRleHQgPSBKU09OQmluZGluZ3NCdWlsZGVyLmJ1aWxkKHNvdXJjZSk7XG4gICAgICBpZiAod3JpdGVPdXQpIHtcbiAgICAgICAgd3JpdGVGaWxlKHBhdGguam9pbihcIm91dFwiLCBzb3VyY2Uubm9ybWFsaXplZFBhdGgpLCBzb3VyY2VUZXh0LCBiYXNlRGlyKTtcbiAgICAgIH1cbiAgICAgIC8vIFBhcnNlcyBmaWxlIGFuZCBhbnkgbmV3IGltcG9ydHMgYWRkZWQgdG8gdGhlIHNvdXJjZVxuICAgICAgbmV3UGFyc2VyLnBhcnNlRmlsZShcbiAgICAgICAgc291cmNlVGV4dCxcbiAgICAgICAgcGF0aC5qb2luKGlzRW50cnkoc291cmNlKSA/IFwiXCIgOiBcIi4vXCIsIHNvdXJjZS5ub3JtYWxpemVkUGF0aCksXG4gICAgICAgIGlzRW50cnkoc291cmNlKVxuICAgICAgKTtcbiAgICAgIGxldCBuZXdTb3VyY2UgPSBuZXdQYXJzZXIuc291cmNlcy5wb3AoKSE7XG4gICAgICB0aGlzLnByb2dyYW0uc291cmNlcy5wdXNoKG5ld1NvdXJjZSk7XG4gICAgICBwYXJzZXIuZG9uZWxvZy5hZGQoc291cmNlLmludGVybmFsUGF0aCk7XG4gICAgICBwYXJzZXIuc2VlbmxvZy5hZGQoc291cmNlLmludGVybmFsUGF0aCk7XG4gICAgICBwYXJzZXIuc291cmNlcy5wdXNoKG5ld1NvdXJjZSk7XG4gICAgfSk7XG5cbiAgICBDbGFzc0V4cG9ydGVyLmNsYXNzU2VlbiA9IG51bGwhO1xuICB9XG59XG5cbmV4cG9ydCB7IEpTT05UcmFuc2Zvcm1lciB9O1xuIl19