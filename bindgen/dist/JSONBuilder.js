"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.JSONBindingsBuilder = void 0;
const visitor_as_1 = require("visitor-as");
const utils_1 = require("./utils");
const common_1 = require("./common");
// TODO: Extract this into separate module, preferrable pluggable
class JSONBindingsBuilder extends visitor_as_1.BaseVisitor {
    constructor() {
        super(...arguments);
        this.sb = [];
        this.exportedClasses = new Map();
        this.isNearFile = false;
        this.fields = [];
    }
    get className() {
        return utils_1.getName(this.currentClass);
    }
    visitSource(node) {
        this.isNearFile = node.text.includes("@nearfile");
        super.visitSource(node);
    }
    visitFieldDeclaration(node) {
        assert(node.type != null, `${this.className}.${utils_1.getName(node)} must have explicit type declaration.`);
        if (node.initializer == null) {
            node.initializer = visitor_as_1.SimpleParser.parseExpression(`defaultValue<${utils_1.toString(node.type)}>())`);
        }
        this.fields.push(node);
    }
    visitClassDeclaration(node) {
        console.log(`visiting ${utils_1.getName(node)}`);
        if (visitor_as_1.utils.hasDecorator(node, common_1.NEAR_DECORATOR) || this.isNearFile) {
            return;
        }
        this.currentClass = node;
        this.fields = [];
        if (!visitor_as_1.utils.hasDecorator(node, common_1.NEAR_DECORATOR)) {
            console.error("\x1b[31m", `@nearfile is deprecated use @${common_1.NEAR_DECORATOR} decorator on ${this.className}`, "\x1b[0m");
        }
        // Visit Fields
        super.visitClassDeclaration(node);
        const newMethods = [];
        const className = this.className;
        newMethods.push(`
    decode<_V = Uint8Array>(buf: _V): ${className} {
      let json: JSON.Obj;
      if (buf instanceof Uint8Array) {
        json = JSON.parse(buf);
      } else {
        assert(buf instanceof JSON.Obj, "argument must be Uint8Array or Json Object");
        json = <JSON.Obj> buf;
      }
      return this._decode(json);
    }
    `);
        newMethods.push(`
    static decode(buf: Uint8Array): ${className} {
      return decode<${className}>(buf);
    }
    `);
        newMethods.push(`
    private _decode(obj: JSON.Obj): ${className} {
      ${common_1.createDecodeStatements(node).join("\n    ")}
      return this;
    }
    `);
        newMethods.push(`
    _encode(name: string | null = "", _encoder: JSONEncoder | null = null): JSONEncoder {
      let encoder = _encoder == null ? new JSONEncoder() : _encoder;
      encoder.pushObject(name);
      ${common_1.createEncodeStatements(node).join("\n    ")}
      encoder.popObject();
      return encoder;
    }
    `);
        newMethods.push(`
    encode(): Uint8Array {
      return this._encode().serialize();
    }
    `);
        newMethods.push(`
    serialize(): Uint8Array {
      return this.encode();
    }
    `);
        newMethods.push(`
    toJSON(): string {
      return this._encode().toString();
    }
    `);
        let statemnts = newMethods.map((s) => visitor_as_1.SimpleParser.parseClassMember(s, node));
        node.members.push(...statemnts);
        console.log(utils_1.toString(node));
    }
    static visit(sources) {
        const builder = new JSONBindingsBuilder();
        console.log("in JSONBuilder");
        builder.visit(sources);
        return sources;
    }
}
exports.JSONBindingsBuilder = JSONBindingsBuilder;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiSlNPTkJ1aWxkZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvSlNPTkJ1aWxkZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBT0EsMkNBQThEO0FBQzlELG1DQUE0QztBQUM1QyxxQ0FBMkk7QUFRM0ksaUVBQWlFO0FBQ2pFLE1BQWEsbUJBQW9CLFNBQVEsd0JBQVc7SUFBcEQ7O1FBQ1UsT0FBRSxHQUFhLEVBQUUsQ0FBQztRQUNsQixvQkFBZSxHQUFrQyxJQUFJLEdBQUcsRUFBRSxDQUFDO1FBQ25FLGVBQVUsR0FBWSxLQUFLLENBQUM7UUFFNUIsV0FBTSxHQUF1QixFQUFFLENBQUM7SUEyR2xDLENBQUM7SUF6R0MsSUFBSSxTQUFTO1FBQ1gsT0FBTyxlQUFPLENBQUMsSUFBSSxDQUFDLFlBQWEsQ0FBQyxDQUFDO0lBQ3JDLENBQUM7SUFFRCxXQUFXLENBQUMsSUFBWTtRQUN0QixJQUFJLENBQUMsVUFBVSxHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLFdBQVcsQ0FBQyxDQUFDO1FBQ2xELEtBQUssQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDMUIsQ0FBQztJQUVELHFCQUFxQixDQUFDLElBQXNCO1FBQzFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsSUFBSSxJQUFJLElBQUksRUFBRSxHQUFHLElBQUksQ0FBQyxTQUFTLElBQUksZUFBTyxDQUFDLElBQUksQ0FBQyx1Q0FBdUMsQ0FBQyxDQUFDO1FBQ3JHLElBQUksSUFBSSxDQUFDLFdBQVcsSUFBSSxJQUFJLEVBQUU7WUFDNUIsSUFBSSxDQUFDLFdBQVcsR0FBRyx5QkFBWSxDQUFDLGVBQWUsQ0FDN0MsZ0JBQWdCLGdCQUFRLENBQUMsSUFBSSxDQUFDLElBQUssQ0FBQyxNQUFNLENBQzNDLENBQUM7U0FDSDtRQUNELElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQ3pCLENBQUM7SUFFRCxxQkFBcUIsQ0FBQyxJQUFzQjtRQUMxQyxPQUFPLENBQUMsR0FBRyxDQUFDLFlBQVksZUFBTyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUN6QyxJQUFJLGtCQUFLLENBQUMsWUFBWSxDQUFDLElBQUksRUFBRSx1QkFBYyxDQUFDLElBQUcsSUFBSSxDQUFDLFVBQVUsRUFBRTtZQUM5RCxPQUFPO1NBQ1I7UUFDRCxJQUFJLENBQUMsWUFBWSxHQUFHLElBQUksQ0FBQztRQUN6QixJQUFJLENBQUMsTUFBTSxHQUFHLEVBQUUsQ0FBQztRQUNqQixJQUFJLENBQUMsa0JBQUssQ0FBQyxZQUFZLENBQUMsSUFBSSxFQUFFLHVCQUFjLENBQUMsRUFBRTtZQUM3QyxPQUFPLENBQUMsS0FBSyxDQUNYLFVBQVUsRUFDVixnQ0FBZ0MsdUJBQWMsaUJBQWlCLElBQUksQ0FBQyxTQUFTLEVBQUUsRUFDL0UsU0FBUyxDQUNWLENBQUM7U0FDSDtRQUNELGVBQWU7UUFDZixLQUFLLENBQUMscUJBQXFCLENBQUMsSUFBSSxDQUFDLENBQUM7UUFFbEMsTUFBTSxVQUFVLEdBQWEsRUFBRSxDQUFDO1FBQ2hDLE1BQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUM7UUFFakMsVUFBVSxDQUFDLElBQUksQ0FBQzt3Q0FDb0IsU0FBUzs7Ozs7Ozs7OztLQVU1QyxDQUNBLENBQUE7UUFDRCxVQUFVLENBQUMsSUFBSSxDQUFDO3NDQUNrQixTQUFTO3NCQUN6QixTQUFTOztLQUUxQixDQUNBLENBQUE7UUFFRCxVQUFVLENBQUMsSUFBSSxDQUFDO3NDQUNrQixTQUFTO1FBQ3ZDLCtCQUFzQixDQUFDLElBQUksQ0FBQyxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUM7OztLQUc5QyxDQUFDLENBQUE7UUFFRixVQUFVLENBQUMsSUFBSSxDQUFDOzs7O1FBSVosK0JBQXNCLENBQUMsSUFBSSxDQUFDLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQzs7OztLQUk5QyxDQUFDLENBQUE7UUFFRixVQUFVLENBQUMsSUFBSSxDQUFDOzs7O0tBSWYsQ0FBQyxDQUFBO1FBRUYsVUFBVSxDQUFDLElBQUksQ0FBQzs7OztLQUlmLENBQUMsQ0FBQTtRQUVGLFVBQVUsQ0FBQyxJQUFJLENBQUM7Ozs7S0FJZixDQUFDLENBQUE7UUFDRixJQUFJLFNBQVMsR0FBRyxVQUFVLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxFQUFFLEVBQUUsQ0FBQyx5QkFBWSxDQUFDLGdCQUFnQixDQUFDLENBQUMsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDO1FBQzlFLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLEdBQUcsU0FBUyxDQUFDLENBQUM7UUFDaEMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxnQkFBUSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7SUFDOUIsQ0FBQztJQUVELE1BQU0sQ0FBQyxLQUFLLENBQUMsT0FBaUI7UUFDNUIsTUFBTSxPQUFPLEdBQUcsSUFBSSxtQkFBbUIsRUFBRSxDQUFDO1FBQzFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsZ0JBQWdCLENBQUMsQ0FBQTtRQUM3QixPQUFPLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQ3ZCLE9BQU8sT0FBTyxDQUFDO0lBQ2pCLENBQUM7Q0FFRjtBQWhIRCxrREFnSEMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1xuICBTb3VyY2UsXG4gIENsYXNzRGVjbGFyYXRpb24sXG4gIEZpZWxkRGVjbGFyYXRpb24sXG4gIFBhcmFtZXRlck5vZGUsXG4gIE5vZGUsXG59IGZyb20gXCJ2aXNpdG9yLWFzL2FzXCI7XG5pbXBvcnQgeyBCYXNlVmlzaXRvciwgdXRpbHMsIFNpbXBsZVBhcnNlciB9IGZyb20gXCJ2aXNpdG9yLWFzXCI7XG5pbXBvcnQgeyBnZXROYW1lLCB0b1N0cmluZyB9IGZyb20gXCIuL3V0aWxzXCI7XG5pbXBvcnQgeyBjcmVhdGVEZWNvZGVTdGF0ZW1lbnRzLCBjcmVhdGVFbmNvZGVTdGF0ZW1lbnRzLCBoYXNOZWFyRGVjb3JhdG9yLCBpc0NsYXNzLCBpc0VuY29kYWJsZSwgaXNGaWVsZCwgTkVBUl9ERUNPUkFUT1IgfSBmcm9tIFwiLi9jb21tb25cIjtcblxuXG5cblxuXG5cblxuLy8gVE9ETzogRXh0cmFjdCB0aGlzIGludG8gc2VwYXJhdGUgbW9kdWxlLCBwcmVmZXJyYWJsZSBwbHVnZ2FibGVcbmV4cG9ydCBjbGFzcyBKU09OQmluZGluZ3NCdWlsZGVyIGV4dGVuZHMgQmFzZVZpc2l0b3Ige1xuICBwcml2YXRlIHNiOiBzdHJpbmdbXSA9IFtdO1xuICBwcml2YXRlIGV4cG9ydGVkQ2xhc3NlczogTWFwPHN0cmluZywgQ2xhc3NEZWNsYXJhdGlvbj4gPSBuZXcgTWFwKCk7XG4gIGlzTmVhckZpbGU6IGJvb2xlYW4gPSBmYWxzZTtcbiAgY3VycmVudENsYXNzPzogQ2xhc3NEZWNsYXJhdGlvbjtcbiAgZmllbGRzOiBGaWVsZERlY2xhcmF0aW9uW10gPSBbXTtcblxuICBnZXQgY2xhc3NOYW1lKCk6IHN0cmluZyB7XG4gICAgcmV0dXJuIGdldE5hbWUodGhpcy5jdXJyZW50Q2xhc3MhKTtcbiAgfVxuXG4gIHZpc2l0U291cmNlKG5vZGU6IFNvdXJjZSk6IHZvaWQge1xuICAgIHRoaXMuaXNOZWFyRmlsZSA9IG5vZGUudGV4dC5pbmNsdWRlcyhcIkBuZWFyZmlsZVwiKTtcbiAgICBzdXBlci52aXNpdFNvdXJjZShub2RlKTtcbiAgfVxuXG4gIHZpc2l0RmllbGREZWNsYXJhdGlvbihub2RlOiBGaWVsZERlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgYXNzZXJ0KG5vZGUudHlwZSAhPSBudWxsLCBgJHt0aGlzLmNsYXNzTmFtZX0uJHtnZXROYW1lKG5vZGUpfSBtdXN0IGhhdmUgZXhwbGljaXQgdHlwZSBkZWNsYXJhdGlvbi5gKTtcbiAgICBpZiAobm9kZS5pbml0aWFsaXplciA9PSBudWxsKSB7XG4gICAgICBub2RlLmluaXRpYWxpemVyID0gU2ltcGxlUGFyc2VyLnBhcnNlRXhwcmVzc2lvbihcbiAgICAgICAgYGRlZmF1bHRWYWx1ZTwke3RvU3RyaW5nKG5vZGUudHlwZSEpfT4oKSlgXG4gICAgICApO1xuICAgIH1cbiAgICB0aGlzLmZpZWxkcy5wdXNoKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRDbGFzc0RlY2xhcmF0aW9uKG5vZGU6IENsYXNzRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICBjb25zb2xlLmxvZyhgdmlzaXRpbmcgJHtnZXROYW1lKG5vZGUpfWApO1xuICAgIGlmICh1dGlscy5oYXNEZWNvcmF0b3Iobm9kZSwgTkVBUl9ERUNPUkFUT1IpIHx8dGhpcy5pc05lYXJGaWxlKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIHRoaXMuY3VycmVudENsYXNzID0gbm9kZTtcbiAgICB0aGlzLmZpZWxkcyA9IFtdO1xuICAgIGlmICghdXRpbHMuaGFzRGVjb3JhdG9yKG5vZGUsIE5FQVJfREVDT1JBVE9SKSkge1xuICAgICAgY29uc29sZS5lcnJvcihcbiAgICAgICAgXCJcXHgxYlszMW1cIixcbiAgICAgICAgYEBuZWFyZmlsZSBpcyBkZXByZWNhdGVkIHVzZSBAJHtORUFSX0RFQ09SQVRPUn0gZGVjb3JhdG9yIG9uICR7dGhpcy5jbGFzc05hbWV9YCxcbiAgICAgICAgXCJcXHgxYlswbVwiXG4gICAgICApO1xuICAgIH1cbiAgICAvLyBWaXNpdCBGaWVsZHNcbiAgICBzdXBlci52aXNpdENsYXNzRGVjbGFyYXRpb24obm9kZSk7XG5cbiAgICBjb25zdCBuZXdNZXRob2RzOiBzdHJpbmdbXSA9IFtdO1xuICAgIGNvbnN0IGNsYXNzTmFtZSA9IHRoaXMuY2xhc3NOYW1lO1xuXG4gICAgbmV3TWV0aG9kcy5wdXNoKGBcbiAgICBkZWNvZGU8X1YgPSBVaW50OEFycmF5PihidWY6IF9WKTogJHtjbGFzc05hbWV9IHtcbiAgICAgIGxldCBqc29uOiBKU09OLk9iajtcbiAgICAgIGlmIChidWYgaW5zdGFuY2VvZiBVaW50OEFycmF5KSB7XG4gICAgICAgIGpzb24gPSBKU09OLnBhcnNlKGJ1Zik7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBhc3NlcnQoYnVmIGluc3RhbmNlb2YgSlNPTi5PYmosIFwiYXJndW1lbnQgbXVzdCBiZSBVaW50OEFycmF5IG9yIEpzb24gT2JqZWN0XCIpO1xuICAgICAgICBqc29uID0gPEpTT04uT2JqPiBidWY7XG4gICAgICB9XG4gICAgICByZXR1cm4gdGhpcy5fZGVjb2RlKGpzb24pO1xuICAgIH1cbiAgICBgXG4gICAgKVxuICAgIG5ld01ldGhvZHMucHVzaChgXG4gICAgc3RhdGljIGRlY29kZShidWY6IFVpbnQ4QXJyYXkpOiAke2NsYXNzTmFtZX0ge1xuICAgICAgcmV0dXJuIGRlY29kZTwke2NsYXNzTmFtZX0+KGJ1Zik7XG4gICAgfVxuICAgIGBcbiAgICApXG5cbiAgICBuZXdNZXRob2RzLnB1c2goYFxuICAgIHByaXZhdGUgX2RlY29kZShvYmo6IEpTT04uT2JqKTogJHtjbGFzc05hbWV9IHtcbiAgICAgICR7Y3JlYXRlRGVjb2RlU3RhdGVtZW50cyhub2RlKS5qb2luKFwiXFxuICAgIFwiKX1cbiAgICAgIHJldHVybiB0aGlzO1xuICAgIH1cbiAgICBgKVxuXG4gICAgbmV3TWV0aG9kcy5wdXNoKGBcbiAgICBfZW5jb2RlKG5hbWU6IHN0cmluZyB8IG51bGwgPSBcIlwiLCBfZW5jb2RlcjogSlNPTkVuY29kZXIgfCBudWxsID0gbnVsbCk6IEpTT05FbmNvZGVyIHtcbiAgICAgIGxldCBlbmNvZGVyID0gX2VuY29kZXIgPT0gbnVsbCA/IG5ldyBKU09ORW5jb2RlcigpIDogX2VuY29kZXI7XG4gICAgICBlbmNvZGVyLnB1c2hPYmplY3QobmFtZSk7XG4gICAgICAke2NyZWF0ZUVuY29kZVN0YXRlbWVudHMobm9kZSkuam9pbihcIlxcbiAgICBcIil9XG4gICAgICBlbmNvZGVyLnBvcE9iamVjdCgpO1xuICAgICAgcmV0dXJuIGVuY29kZXI7XG4gICAgfVxuICAgIGApXG5cbiAgICBuZXdNZXRob2RzLnB1c2goYFxuICAgIGVuY29kZSgpOiBVaW50OEFycmF5IHtcbiAgICAgIHJldHVybiB0aGlzLl9lbmNvZGUoKS5zZXJpYWxpemUoKTtcbiAgICB9XG4gICAgYClcblxuICAgIG5ld01ldGhvZHMucHVzaChgXG4gICAgc2VyaWFsaXplKCk6IFVpbnQ4QXJyYXkge1xuICAgICAgcmV0dXJuIHRoaXMuZW5jb2RlKCk7XG4gICAgfVxuICAgIGApXG5cbiAgICBuZXdNZXRob2RzLnB1c2goYFxuICAgIHRvSlNPTigpOiBzdHJpbmcge1xuICAgICAgcmV0dXJuIHRoaXMuX2VuY29kZSgpLnRvU3RyaW5nKCk7XG4gICAgfVxuICAgIGApXG4gICAgbGV0IHN0YXRlbW50cyA9IG5ld01ldGhvZHMubWFwKChzKSA9PiBTaW1wbGVQYXJzZXIucGFyc2VDbGFzc01lbWJlcihzLCBub2RlKSk7XG4gICAgbm9kZS5tZW1iZXJzLnB1c2goLi4uc3RhdGVtbnRzKTtcbiAgICBjb25zb2xlLmxvZyh0b1N0cmluZyhub2RlKSk7XG4gIH1cblxuICBzdGF0aWMgdmlzaXQoc291cmNlczogU291cmNlW10pOiBTb3VyY2VbXSB7XG4gICAgY29uc3QgYnVpbGRlciA9IG5ldyBKU09OQmluZGluZ3NCdWlsZGVyKCk7XG4gICAgY29uc29sZS5sb2coXCJpbiBKU09OQnVpbGRlclwiKVxuICAgIGJ1aWxkZXIudmlzaXQoc291cmNlcyk7XG4gICAgcmV0dXJuIHNvdXJjZXM7XG4gIH1cblxufVxuXG4iXX0=