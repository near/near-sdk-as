"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.toString = exports.posixRelativePath = exports.SimpleParser = void 0;
//@ts-ignore
let path = require("path");
const as_1 = require("visitor-as/as");
class SimpleParser {
    static getTokenizer(s) {
        return new as_1.Tokenizer(new as_1.Source(as_1.SourceKind.USER, "index.ts", s));
    }
    static parseExpression(s) {
        let res = this.parser.parseExpression(this.getTokenizer(s));
        if (res == null) {
            throw new Error("Failed to parse the expression: '" + s + "'");
        }
        return res;
    }
    static parseStatement(s, topLevel = false) {
        let res = this.parser.parseStatement(this.getTokenizer(s), topLevel);
        if (res == null) {
            throw new Error("Failed to parse the expression: '" + s + "'");
        }
        return res;
    }
    static parseTopLevel(s) {
        let tn = this.getTokenizer(s);
        let statements = [];
        while (!tn.skip(as_1.Token.ENDOFFILE)) {
            let statement = this.parser.parseTopLevelStatement(tn);
            if (statement) {
                statements.push(statement);
            }
            else {
                this.parser.skipStatement(tn);
            }
        }
        return statements;
    }
    static parseMethodDeclaration(s, parent) {
        let tn = this.getTokenizer(s);
        let res = this.parser.parseClassMember(tn, parent);
        if (res == null) {
            throw new Error("Failed to parse class member: '" + s + "'");
        }
        if (!(res instanceof as_1.MethodDeclaration)) {
            throw new Error("'" + s + "' is not a method declaration");
        }
        return res;
    }
}
exports.SimpleParser = SimpleParser;
SimpleParser.parser = new as_1.Parser();
function posixRelativePath(from, to) {
    const relativePath = path.relative(from, to);
    return relativePath.split(path.sep).join(path.posix.sep);
}
exports.posixRelativePath = posixRelativePath;
function toString(node) {
    return as_1.ASTBuilder.build(node);
}
exports.toString = toString;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvdXRpbHMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBQUEsWUFBWTtBQUNaLElBQUksSUFBSSxHQUFHLE9BQU8sQ0FBQyxNQUFNLENBQUMsQ0FBQztBQUUzQixzQ0FZdUI7QUFFdkIsTUFBYSxZQUFZO0lBR2YsTUFBTSxDQUFDLFlBQVksQ0FBQyxDQUFTO1FBQ25DLE9BQU8sSUFBSSxjQUFTLENBQUMsSUFBSSxXQUFNLENBQUMsZUFBVSxDQUFDLElBQUksRUFBRSxVQUFVLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUNuRSxDQUFDO0lBRUQsTUFBTSxDQUFDLGVBQWUsQ0FBQyxDQUFTO1FBQzlCLElBQUksR0FBRyxHQUFHLElBQUksQ0FBQyxNQUFNLENBQUMsZUFBZSxDQUFDLElBQUksQ0FBQyxZQUFZLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUM1RCxJQUFJLEdBQUcsSUFBSSxJQUFJLEVBQUU7WUFDZixNQUFNLElBQUksS0FBSyxDQUFDLG1DQUFtQyxHQUFHLENBQUMsR0FBRyxHQUFHLENBQUMsQ0FBQztTQUNoRTtRQUNELE9BQU8sR0FBRyxDQUFDO0lBQ2IsQ0FBQztJQUVELE1BQU0sQ0FBQyxjQUFjLENBQUMsQ0FBUyxFQUFFLFdBQW9CLEtBQUs7UUFDeEQsSUFBSSxHQUFHLEdBQUcsSUFBSSxDQUFDLE1BQU0sQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLFlBQVksQ0FBQyxDQUFDLENBQUMsRUFBRSxRQUFRLENBQUMsQ0FBQztRQUNyRSxJQUFJLEdBQUcsSUFBSSxJQUFJLEVBQUU7WUFDZixNQUFNLElBQUksS0FBSyxDQUFDLG1DQUFtQyxHQUFHLENBQUMsR0FBRyxHQUFHLENBQUMsQ0FBQztTQUNoRTtRQUNELE9BQU8sR0FBRyxDQUFDO0lBQ2IsQ0FBQztJQUVELE1BQU0sQ0FBQyxhQUFhLENBQUMsQ0FBUztRQUM1QixJQUFJLEVBQUUsR0FBRyxJQUFJLENBQUMsWUFBWSxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQzlCLElBQUksVUFBVSxHQUFnQixFQUFFLENBQUM7UUFDakMsT0FBTyxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsVUFBSyxDQUFDLFNBQVMsQ0FBQyxFQUFFO1lBQ2hDLElBQUksU0FBUyxHQUFHLElBQUksQ0FBQyxNQUFNLENBQUMsc0JBQXNCLENBQUMsRUFBRSxDQUFDLENBQUM7WUFDdkQsSUFBSSxTQUFTLEVBQUU7Z0JBQ2IsVUFBVSxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQzthQUM1QjtpQkFBTTtnQkFDTCxJQUFJLENBQUMsTUFBTSxDQUFDLGFBQWEsQ0FBQyxFQUFFLENBQUMsQ0FBQzthQUMvQjtTQUNGO1FBQ0QsT0FBTyxVQUFVLENBQUM7SUFDcEIsQ0FBQztJQUVELE1BQU0sQ0FBQyxzQkFBc0IsQ0FDM0IsQ0FBUyxFQUNULE1BQXdCO1FBRXhCLElBQUksRUFBRSxHQUFHLElBQUksQ0FBQyxZQUFZLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDOUIsSUFBSSxHQUFHLEdBQUcsSUFBSSxDQUFDLE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxFQUFFLEVBQUUsTUFBTSxDQUFDLENBQUM7UUFDbkQsSUFBSSxHQUFHLElBQUksSUFBSSxFQUFFO1lBQ2YsTUFBTSxJQUFJLEtBQUssQ0FBQyxpQ0FBaUMsR0FBRyxDQUFDLEdBQUcsR0FBRyxDQUFDLENBQUM7U0FDOUQ7UUFDRCxJQUFJLENBQUMsQ0FBQyxHQUFHLFlBQVksc0JBQWlCLENBQUMsRUFBRTtZQUN2QyxNQUFNLElBQUksS0FBSyxDQUFDLEdBQUcsR0FBRyxDQUFDLEdBQUcsK0JBQStCLENBQUMsQ0FBQztTQUM1RDtRQUNELE9BQU8sR0FBRyxDQUFDO0lBQ2IsQ0FBQzs7QUFsREgsb0NBbURDO0FBbERnQixtQkFBTSxHQUFHLElBQUksV0FBTSxFQUFFLENBQUM7QUFvRHZDLFNBQWdCLGlCQUFpQixDQUFDLElBQVksRUFBRSxFQUFVO0lBQ3hELE1BQU0sWUFBWSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsSUFBSSxFQUFFLEVBQUUsQ0FBQyxDQUFDO0lBQzdDLE9BQU8sWUFBWSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLENBQUM7QUFDM0QsQ0FBQztBQUhELDhDQUdDO0FBRUQsU0FBZ0IsUUFBUSxDQUFDLElBQVU7SUFDakMsT0FBTyxlQUFVLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO0FBQ2hDLENBQUM7QUFGRCw0QkFFQyIsInNvdXJjZXNDb250ZW50IjpbIi8vQHRzLWlnbm9yZVxyXG5sZXQgcGF0aCA9IHJlcXVpcmUoXCJwYXRoXCIpO1xyXG5cclxuaW1wb3J0IHtcclxuICBUb2tlbixcclxuICBFeHByZXNzaW9uLFxyXG4gIFRva2VuaXplcixcclxuICBQYXJzZXIsXHJcbiAgU291cmNlLFxyXG4gIFNvdXJjZUtpbmQsXHJcbiAgU3RhdGVtZW50LFxyXG4gIEFTVEJ1aWxkZXIsXHJcbiAgTm9kZSxcclxuICBNZXRob2REZWNsYXJhdGlvbixcclxuICBDbGFzc0RlY2xhcmF0aW9uLFxyXG59IGZyb20gXCJ2aXNpdG9yLWFzL2FzXCI7XHJcblxyXG5leHBvcnQgY2xhc3MgU2ltcGxlUGFyc2VyIHtcclxuICBwcml2YXRlIHN0YXRpYyBwYXJzZXIgPSBuZXcgUGFyc2VyKCk7XHJcblxyXG4gIHByaXZhdGUgc3RhdGljIGdldFRva2VuaXplcihzOiBzdHJpbmcpOiBUb2tlbml6ZXIge1xyXG4gICAgcmV0dXJuIG5ldyBUb2tlbml6ZXIobmV3IFNvdXJjZShTb3VyY2VLaW5kLlVTRVIsIFwiaW5kZXgudHNcIiwgcykpO1xyXG4gIH1cclxuXHJcbiAgc3RhdGljIHBhcnNlRXhwcmVzc2lvbihzOiBzdHJpbmcpOiBFeHByZXNzaW9uIHtcclxuICAgIGxldCByZXMgPSB0aGlzLnBhcnNlci5wYXJzZUV4cHJlc3Npb24odGhpcy5nZXRUb2tlbml6ZXIocykpO1xyXG4gICAgaWYgKHJlcyA9PSBudWxsKSB7XHJcbiAgICAgIHRocm93IG5ldyBFcnJvcihcIkZhaWxlZCB0byBwYXJzZSB0aGUgZXhwcmVzc2lvbjogJ1wiICsgcyArIFwiJ1wiKTtcclxuICAgIH1cclxuICAgIHJldHVybiByZXM7XHJcbiAgfVxyXG5cclxuICBzdGF0aWMgcGFyc2VTdGF0ZW1lbnQoczogc3RyaW5nLCB0b3BMZXZlbDogYm9vbGVhbiA9IGZhbHNlKTogU3RhdGVtZW50IHtcclxuICAgIGxldCByZXMgPSB0aGlzLnBhcnNlci5wYXJzZVN0YXRlbWVudCh0aGlzLmdldFRva2VuaXplcihzKSwgdG9wTGV2ZWwpO1xyXG4gICAgaWYgKHJlcyA9PSBudWxsKSB7XHJcbiAgICAgIHRocm93IG5ldyBFcnJvcihcIkZhaWxlZCB0byBwYXJzZSB0aGUgZXhwcmVzc2lvbjogJ1wiICsgcyArIFwiJ1wiKTtcclxuICAgIH1cclxuICAgIHJldHVybiByZXM7XHJcbiAgfVxyXG5cclxuICBzdGF0aWMgcGFyc2VUb3BMZXZlbChzOiBzdHJpbmcpOiBTdGF0ZW1lbnRbXSB7XHJcbiAgICBsZXQgdG4gPSB0aGlzLmdldFRva2VuaXplcihzKTtcclxuICAgIGxldCBzdGF0ZW1lbnRzOiBTdGF0ZW1lbnRbXSA9IFtdO1xyXG4gICAgd2hpbGUgKCF0bi5za2lwKFRva2VuLkVORE9GRklMRSkpIHtcclxuICAgICAgbGV0IHN0YXRlbWVudCA9IHRoaXMucGFyc2VyLnBhcnNlVG9wTGV2ZWxTdGF0ZW1lbnQodG4pO1xyXG4gICAgICBpZiAoc3RhdGVtZW50KSB7XHJcbiAgICAgICAgc3RhdGVtZW50cy5wdXNoKHN0YXRlbWVudCk7XHJcbiAgICAgIH0gZWxzZSB7XHJcbiAgICAgICAgdGhpcy5wYXJzZXIuc2tpcFN0YXRlbWVudCh0bik7XHJcbiAgICAgIH1cclxuICAgIH1cclxuICAgIHJldHVybiBzdGF0ZW1lbnRzO1xyXG4gIH1cclxuXHJcbiAgc3RhdGljIHBhcnNlTWV0aG9kRGVjbGFyYXRpb24oXHJcbiAgICBzOiBzdHJpbmcsXHJcbiAgICBwYXJlbnQ6IENsYXNzRGVjbGFyYXRpb25cclxuICApOiBNZXRob2REZWNsYXJhdGlvbiB7XHJcbiAgICBsZXQgdG4gPSB0aGlzLmdldFRva2VuaXplcihzKTtcclxuICAgIGxldCByZXMgPSB0aGlzLnBhcnNlci5wYXJzZUNsYXNzTWVtYmVyKHRuLCBwYXJlbnQpO1xyXG4gICAgaWYgKHJlcyA9PSBudWxsKSB7XHJcbiAgICAgIHRocm93IG5ldyBFcnJvcihcIkZhaWxlZCB0byBwYXJzZSBjbGFzcyBtZW1iZXI6ICdcIiArIHMgKyBcIidcIik7XHJcbiAgICB9XHJcbiAgICBpZiAoIShyZXMgaW5zdGFuY2VvZiBNZXRob2REZWNsYXJhdGlvbikpIHtcclxuICAgICAgdGhyb3cgbmV3IEVycm9yKFwiJ1wiICsgcyArIFwiJyBpcyBub3QgYSBtZXRob2QgZGVjbGFyYXRpb25cIik7XHJcbiAgICB9XHJcbiAgICByZXR1cm4gcmVzO1xyXG4gIH1cclxufVxyXG5cclxuZXhwb3J0IGZ1bmN0aW9uIHBvc2l4UmVsYXRpdmVQYXRoKGZyb206IHN0cmluZywgdG86IHN0cmluZyk6IHN0cmluZyB7XHJcbiAgY29uc3QgcmVsYXRpdmVQYXRoID0gcGF0aC5yZWxhdGl2ZShmcm9tLCB0byk7XHJcbiAgcmV0dXJuIHJlbGF0aXZlUGF0aC5zcGxpdChwYXRoLnNlcCkuam9pbihwYXRoLnBvc2l4LnNlcCk7XHJcbn1cclxuXHJcbmV4cG9ydCBmdW5jdGlvbiB0b1N0cmluZyhub2RlOiBOb2RlKTogc3RyaW5nIHtcclxuICByZXR1cm4gQVNUQnVpbGRlci5idWlsZChub2RlKTtcclxufVxyXG4iXX0=