"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.JSONBindingsBuilder = void 0;
const visitor_as_1 = require("visitor-as");
const utils_1 = require("./utils");
const common_1 = require("./common");
const methodInjector_1 = require("@serial-as/transform/dist/methodInjector");
// TODO: Extract this into separate module, preferrable pluggable
class JSONBindingsBuilder extends visitor_as_1.BaseVisitor {
    constructor() {
        super(...arguments);
        // private sb: string[] = [];
        // private exportedClasses: Map<string, ClassDeclaration> = new Map();
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
    // visitFieldDeclaration(node: FieldDeclaration): void {
    //   assert(
    //     node.type != null,
    //     `${this.className}.${getName(node)} must have explicit type declaration.`
    //   );
    //   if (node.initializer == null) {
    //     node.initializer = SimpleParser.parseExpression(
    //       `defaultValue<${toString(node.type!)}>())`
    //     );
    //   }
    //   this.fields.push(node);
    // }
    visitClassDeclaration(node) {
        console.log(`visiting ${utils_1.getName(node)}`);
        if (!(visitor_as_1.utils.hasDecorator(node, common_1.NEAR_DECORATOR) || this.isNearFile)) {
            return;
        }
        // this.currentClass = node;
        // this.fields = [];
        if (!visitor_as_1.utils.hasDecorator(node, common_1.NEAR_DECORATOR)) {
            console.error("\x1b[31m", `@nearfile is deprecated use @${common_1.NEAR_DECORATOR} decorator on ${this.className}`, "\x1b[0m");
        }
        methodInjector_1.MethodInjector.visit(node);
        // Visit Fields
        // super.visitClassDeclaration(node);
        // const newMethods: string[] = [];
        // const className = this.className;
        // newMethods.push(`
        // decode<_V = Uint8Array>(buf: _V): ${className} {
        //   let json: JSON.Obj;
        //   if (buf instanceof Uint8Array) {
        //     json = JSON.parse(buf);
        //   } else {
        //     assert(buf instanceof JSON.Obj, "argument must be Uint8Array or Json Object");
        //     json = <JSON.Obj> buf;
        //   }
        //   return this._decode(json);
        // }
        // `);
        // newMethods.push(`
        // static decode(buf: Uint8Array): ${className} {
        //   return decode<${className}>(buf);
        // }
        // `);
        // newMethods.push(`
        // private _decode(obj: JSON.Obj): ${className} {
        //   ${createDecodeStatements(node).join("\n    ")}
        //   return this;
        // }
        // `);
        // newMethods.push(`
        // _encode(name: string | null = "", _encoder: JSONEncoder | null = null): JSONEncoder {
        //   let encoder = _encoder == null ? new JSONEncoder() : _encoder;
        //   encoder.pushObject(name);
        //   ${createEncodeStatements(node).join("\n    ")}
        //   encoder.popObject();
        //   return encoder;
        // }
        // `);
        // newMethods.push(`
        // encode(): Uint8Array {
        //   return this._encode().serialize();
        // }
        // `);
        // newMethods.push(`
        // serialize(): Uint8Array {
        //   return this.encode();
        // }
        // `);
        // newMethods.push(`
        // toJSON(): string {
        //   return this._encode().toString();
        // }
        // `);
        // let statemnts = newMethods.map((s) =>
        //   SimpleParser.parseClassMember(s, node)
        // );
        // node.members.push(...statemnts);
        // console.log(toString(node));
    }
    static visit(sources) {
        const builder = new JSONBindingsBuilder();
        console.log("in JSONBuilder");
        builder.visit(sources);
        return sources;
    }
}
exports.JSONBindingsBuilder = JSONBindingsBuilder;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiSlNPTkJ1aWxkZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvSlNPTkJ1aWxkZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBT0EsMkNBQThEO0FBQzlELG1DQUE0QztBQUM1QyxxQ0FRa0I7QUFFbEIsNkVBQTBFO0FBRTFFLGlFQUFpRTtBQUNqRSxNQUFhLG1CQUFvQixTQUFRLHdCQUFXO0lBQXBEOztRQUNFLDZCQUE2QjtRQUM3QixzRUFBc0U7UUFDdEUsZUFBVSxHQUFZLEtBQUssQ0FBQztRQUU1QixXQUFNLEdBQXVCLEVBQUUsQ0FBQztJQThHbEMsQ0FBQztJQTVHQyxJQUFJLFNBQVM7UUFDWCxPQUFPLGVBQU8sQ0FBQyxJQUFJLENBQUMsWUFBYSxDQUFDLENBQUM7SUFDckMsQ0FBQztJQUVELFdBQVcsQ0FBQyxJQUFZO1FBQ3RCLElBQUksQ0FBQyxVQUFVLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsV0FBVyxDQUFDLENBQUM7UUFDbEQsS0FBSyxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUMxQixDQUFDO0lBRUQsd0RBQXdEO0lBQ3hELFlBQVk7SUFDWix5QkFBeUI7SUFDekIsZ0ZBQWdGO0lBQ2hGLE9BQU87SUFDUCxvQ0FBb0M7SUFDcEMsdURBQXVEO0lBQ3ZELG1EQUFtRDtJQUNuRCxTQUFTO0lBQ1QsTUFBTTtJQUNOLDRCQUE0QjtJQUM1QixJQUFJO0lBRUoscUJBQXFCLENBQUMsSUFBc0I7UUFDMUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxZQUFZLGVBQU8sQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLENBQUM7UUFDekMsSUFBSSxDQUFDLENBQUMsa0JBQUssQ0FBQyxZQUFZLENBQUMsSUFBSSxFQUFFLHVCQUFjLENBQUMsSUFBSSxJQUFJLENBQUMsVUFBVSxDQUFDLEVBQUU7WUFDbEUsT0FBTztTQUNSO1FBQ0QsNEJBQTRCO1FBQzVCLG9CQUFvQjtRQUNwQixJQUFJLENBQUMsa0JBQUssQ0FBQyxZQUFZLENBQUMsSUFBSSxFQUFFLHVCQUFjLENBQUMsRUFBRTtZQUM3QyxPQUFPLENBQUMsS0FBSyxDQUNYLFVBQVUsRUFDVixnQ0FBZ0MsdUJBQWMsaUJBQWlCLElBQUksQ0FBQyxTQUFTLEVBQUUsRUFDL0UsU0FBUyxDQUNWLENBQUM7U0FDSDtRQUNELCtCQUFjLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQzNCLGVBQWU7UUFDZixxQ0FBcUM7UUFFckMsbUNBQW1DO1FBQ25DLG9DQUFvQztRQUVwQyxvQkFBb0I7UUFDcEIsbURBQW1EO1FBQ25ELHdCQUF3QjtRQUN4QixxQ0FBcUM7UUFDckMsOEJBQThCO1FBQzlCLGFBQWE7UUFDYixxRkFBcUY7UUFDckYsNkJBQTZCO1FBQzdCLE1BQU07UUFDTiwrQkFBK0I7UUFDL0IsSUFBSTtRQUNKLE1BQU07UUFDTixvQkFBb0I7UUFDcEIsaURBQWlEO1FBQ2pELHNDQUFzQztRQUN0QyxJQUFJO1FBQ0osTUFBTTtRQUVOLG9CQUFvQjtRQUNwQixpREFBaUQ7UUFDakQsbURBQW1EO1FBQ25ELGlCQUFpQjtRQUNqQixJQUFJO1FBQ0osTUFBTTtRQUVOLG9CQUFvQjtRQUNwQix3RkFBd0Y7UUFDeEYsbUVBQW1FO1FBQ25FLDhCQUE4QjtRQUM5QixtREFBbUQ7UUFDbkQseUJBQXlCO1FBQ3pCLG9CQUFvQjtRQUNwQixJQUFJO1FBQ0osTUFBTTtRQUVOLG9CQUFvQjtRQUNwQix5QkFBeUI7UUFDekIsdUNBQXVDO1FBQ3ZDLElBQUk7UUFDSixNQUFNO1FBRU4sb0JBQW9CO1FBQ3BCLDRCQUE0QjtRQUM1QiwwQkFBMEI7UUFDMUIsSUFBSTtRQUNKLE1BQU07UUFFTixvQkFBb0I7UUFDcEIscUJBQXFCO1FBQ3JCLHNDQUFzQztRQUN0QyxJQUFJO1FBQ0osTUFBTTtRQUNOLHdDQUF3QztRQUN4QywyQ0FBMkM7UUFDM0MsS0FBSztRQUNMLG1DQUFtQztRQUNuQywrQkFBK0I7SUFDakMsQ0FBQztJQUVELE1BQU0sQ0FBQyxLQUFLLENBQUMsT0FBaUI7UUFDNUIsTUFBTSxPQUFPLEdBQUcsSUFBSSxtQkFBbUIsRUFBRSxDQUFDO1FBQzFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsZ0JBQWdCLENBQUMsQ0FBQztRQUM5QixPQUFPLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQ3ZCLE9BQU8sT0FBTyxDQUFDO0lBQ2pCLENBQUM7Q0FDRjtBQW5IRCxrREFtSEMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1xuICBTb3VyY2UsXG4gIENsYXNzRGVjbGFyYXRpb24sXG4gIEZpZWxkRGVjbGFyYXRpb24sXG4gIFBhcmFtZXRlck5vZGUsXG4gIE5vZGUsXG59IGZyb20gXCJ2aXNpdG9yLWFzL2FzXCI7XG5pbXBvcnQgeyBCYXNlVmlzaXRvciwgdXRpbHMsIFNpbXBsZVBhcnNlciB9IGZyb20gXCJ2aXNpdG9yLWFzXCI7XG5pbXBvcnQgeyBnZXROYW1lLCB0b1N0cmluZyB9IGZyb20gXCIuL3V0aWxzXCI7XG5pbXBvcnQge1xuICBjcmVhdGVEZWNvZGVTdGF0ZW1lbnRzLFxuICBjcmVhdGVFbmNvZGVTdGF0ZW1lbnRzLFxuICBoYXNOZWFyRGVjb3JhdG9yLFxuICBpc0NsYXNzLFxuICBpc0VuY29kYWJsZSxcbiAgaXNGaWVsZCxcbiAgTkVBUl9ERUNPUkFUT1IsXG59IGZyb20gXCIuL2NvbW1vblwiO1xuXG5pbXBvcnQgeyBNZXRob2RJbmplY3RvciB9IGZyb20gXCJAc2VyaWFsLWFzL3RyYW5zZm9ybS9kaXN0L21ldGhvZEluamVjdG9yXCI7XG5cbi8vIFRPRE86IEV4dHJhY3QgdGhpcyBpbnRvIHNlcGFyYXRlIG1vZHVsZSwgcHJlZmVycmFibGUgcGx1Z2dhYmxlXG5leHBvcnQgY2xhc3MgSlNPTkJpbmRpbmdzQnVpbGRlciBleHRlbmRzIEJhc2VWaXNpdG9yIHtcbiAgLy8gcHJpdmF0ZSBzYjogc3RyaW5nW10gPSBbXTtcbiAgLy8gcHJpdmF0ZSBleHBvcnRlZENsYXNzZXM6IE1hcDxzdHJpbmcsIENsYXNzRGVjbGFyYXRpb24+ID0gbmV3IE1hcCgpO1xuICBpc05lYXJGaWxlOiBib29sZWFuID0gZmFsc2U7XG4gIGN1cnJlbnRDbGFzcz86IENsYXNzRGVjbGFyYXRpb247XG4gIGZpZWxkczogRmllbGREZWNsYXJhdGlvbltdID0gW107XG5cbiAgZ2V0IGNsYXNzTmFtZSgpOiBzdHJpbmcge1xuICAgIHJldHVybiBnZXROYW1lKHRoaXMuY3VycmVudENsYXNzISk7XG4gIH1cblxuICB2aXNpdFNvdXJjZShub2RlOiBTb3VyY2UpOiB2b2lkIHtcbiAgICB0aGlzLmlzTmVhckZpbGUgPSBub2RlLnRleHQuaW5jbHVkZXMoXCJAbmVhcmZpbGVcIik7XG4gICAgc3VwZXIudmlzaXRTb3VyY2Uobm9kZSk7XG4gIH1cblxuICAvLyB2aXNpdEZpZWxkRGVjbGFyYXRpb24obm9kZTogRmllbGREZWNsYXJhdGlvbik6IHZvaWQge1xuICAvLyAgIGFzc2VydChcbiAgLy8gICAgIG5vZGUudHlwZSAhPSBudWxsLFxuICAvLyAgICAgYCR7dGhpcy5jbGFzc05hbWV9LiR7Z2V0TmFtZShub2RlKX0gbXVzdCBoYXZlIGV4cGxpY2l0IHR5cGUgZGVjbGFyYXRpb24uYFxuICAvLyAgICk7XG4gIC8vICAgaWYgKG5vZGUuaW5pdGlhbGl6ZXIgPT0gbnVsbCkge1xuICAvLyAgICAgbm9kZS5pbml0aWFsaXplciA9IFNpbXBsZVBhcnNlci5wYXJzZUV4cHJlc3Npb24oXG4gIC8vICAgICAgIGBkZWZhdWx0VmFsdWU8JHt0b1N0cmluZyhub2RlLnR5cGUhKX0+KCkpYFxuICAvLyAgICAgKTtcbiAgLy8gICB9XG4gIC8vICAgdGhpcy5maWVsZHMucHVzaChub2RlKTtcbiAgLy8gfVxuXG4gIHZpc2l0Q2xhc3NEZWNsYXJhdGlvbihub2RlOiBDbGFzc0RlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgY29uc29sZS5sb2coYHZpc2l0aW5nICR7Z2V0TmFtZShub2RlKX1gKTtcbiAgICBpZiAoISh1dGlscy5oYXNEZWNvcmF0b3Iobm9kZSwgTkVBUl9ERUNPUkFUT1IpIHx8IHRoaXMuaXNOZWFyRmlsZSkpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgLy8gdGhpcy5jdXJyZW50Q2xhc3MgPSBub2RlO1xuICAgIC8vIHRoaXMuZmllbGRzID0gW107XG4gICAgaWYgKCF1dGlscy5oYXNEZWNvcmF0b3Iobm9kZSwgTkVBUl9ERUNPUkFUT1IpKSB7XG4gICAgICBjb25zb2xlLmVycm9yKFxuICAgICAgICBcIlxceDFiWzMxbVwiLFxuICAgICAgICBgQG5lYXJmaWxlIGlzIGRlcHJlY2F0ZWQgdXNlIEAke05FQVJfREVDT1JBVE9SfSBkZWNvcmF0b3Igb24gJHt0aGlzLmNsYXNzTmFtZX1gLFxuICAgICAgICBcIlxceDFiWzBtXCJcbiAgICAgICk7XG4gICAgfVxuICAgIE1ldGhvZEluamVjdG9yLnZpc2l0KG5vZGUpO1xuICAgIC8vIFZpc2l0IEZpZWxkc1xuICAgIC8vIHN1cGVyLnZpc2l0Q2xhc3NEZWNsYXJhdGlvbihub2RlKTtcblxuICAgIC8vIGNvbnN0IG5ld01ldGhvZHM6IHN0cmluZ1tdID0gW107XG4gICAgLy8gY29uc3QgY2xhc3NOYW1lID0gdGhpcy5jbGFzc05hbWU7XG5cbiAgICAvLyBuZXdNZXRob2RzLnB1c2goYFxuICAgIC8vIGRlY29kZTxfViA9IFVpbnQ4QXJyYXk+KGJ1ZjogX1YpOiAke2NsYXNzTmFtZX0ge1xuICAgIC8vICAgbGV0IGpzb246IEpTT04uT2JqO1xuICAgIC8vICAgaWYgKGJ1ZiBpbnN0YW5jZW9mIFVpbnQ4QXJyYXkpIHtcbiAgICAvLyAgICAganNvbiA9IEpTT04ucGFyc2UoYnVmKTtcbiAgICAvLyAgIH0gZWxzZSB7XG4gICAgLy8gICAgIGFzc2VydChidWYgaW5zdGFuY2VvZiBKU09OLk9iaiwgXCJhcmd1bWVudCBtdXN0IGJlIFVpbnQ4QXJyYXkgb3IgSnNvbiBPYmplY3RcIik7XG4gICAgLy8gICAgIGpzb24gPSA8SlNPTi5PYmo+IGJ1ZjtcbiAgICAvLyAgIH1cbiAgICAvLyAgIHJldHVybiB0aGlzLl9kZWNvZGUoanNvbik7XG4gICAgLy8gfVxuICAgIC8vIGApO1xuICAgIC8vIG5ld01ldGhvZHMucHVzaChgXG4gICAgLy8gc3RhdGljIGRlY29kZShidWY6IFVpbnQ4QXJyYXkpOiAke2NsYXNzTmFtZX0ge1xuICAgIC8vICAgcmV0dXJuIGRlY29kZTwke2NsYXNzTmFtZX0+KGJ1Zik7XG4gICAgLy8gfVxuICAgIC8vIGApO1xuXG4gICAgLy8gbmV3TWV0aG9kcy5wdXNoKGBcbiAgICAvLyBwcml2YXRlIF9kZWNvZGUob2JqOiBKU09OLk9iaik6ICR7Y2xhc3NOYW1lfSB7XG4gICAgLy8gICAke2NyZWF0ZURlY29kZVN0YXRlbWVudHMobm9kZSkuam9pbihcIlxcbiAgICBcIil9XG4gICAgLy8gICByZXR1cm4gdGhpcztcbiAgICAvLyB9XG4gICAgLy8gYCk7XG5cbiAgICAvLyBuZXdNZXRob2RzLnB1c2goYFxuICAgIC8vIF9lbmNvZGUobmFtZTogc3RyaW5nIHwgbnVsbCA9IFwiXCIsIF9lbmNvZGVyOiBKU09ORW5jb2RlciB8IG51bGwgPSBudWxsKTogSlNPTkVuY29kZXIge1xuICAgIC8vICAgbGV0IGVuY29kZXIgPSBfZW5jb2RlciA9PSBudWxsID8gbmV3IEpTT05FbmNvZGVyKCkgOiBfZW5jb2RlcjtcbiAgICAvLyAgIGVuY29kZXIucHVzaE9iamVjdChuYW1lKTtcbiAgICAvLyAgICR7Y3JlYXRlRW5jb2RlU3RhdGVtZW50cyhub2RlKS5qb2luKFwiXFxuICAgIFwiKX1cbiAgICAvLyAgIGVuY29kZXIucG9wT2JqZWN0KCk7XG4gICAgLy8gICByZXR1cm4gZW5jb2RlcjtcbiAgICAvLyB9XG4gICAgLy8gYCk7XG5cbiAgICAvLyBuZXdNZXRob2RzLnB1c2goYFxuICAgIC8vIGVuY29kZSgpOiBVaW50OEFycmF5IHtcbiAgICAvLyAgIHJldHVybiB0aGlzLl9lbmNvZGUoKS5zZXJpYWxpemUoKTtcbiAgICAvLyB9XG4gICAgLy8gYCk7XG5cbiAgICAvLyBuZXdNZXRob2RzLnB1c2goYFxuICAgIC8vIHNlcmlhbGl6ZSgpOiBVaW50OEFycmF5IHtcbiAgICAvLyAgIHJldHVybiB0aGlzLmVuY29kZSgpO1xuICAgIC8vIH1cbiAgICAvLyBgKTtcblxuICAgIC8vIG5ld01ldGhvZHMucHVzaChgXG4gICAgLy8gdG9KU09OKCk6IHN0cmluZyB7XG4gICAgLy8gICByZXR1cm4gdGhpcy5fZW5jb2RlKCkudG9TdHJpbmcoKTtcbiAgICAvLyB9XG4gICAgLy8gYCk7XG4gICAgLy8gbGV0IHN0YXRlbW50cyA9IG5ld01ldGhvZHMubWFwKChzKSA9PlxuICAgIC8vICAgU2ltcGxlUGFyc2VyLnBhcnNlQ2xhc3NNZW1iZXIocywgbm9kZSlcbiAgICAvLyApO1xuICAgIC8vIG5vZGUubWVtYmVycy5wdXNoKC4uLnN0YXRlbW50cyk7XG4gICAgLy8gY29uc29sZS5sb2codG9TdHJpbmcobm9kZSkpO1xuICB9XG5cbiAgc3RhdGljIHZpc2l0KHNvdXJjZXM6IFNvdXJjZVtdKTogU291cmNlW10ge1xuICAgIGNvbnN0IGJ1aWxkZXIgPSBuZXcgSlNPTkJpbmRpbmdzQnVpbGRlcigpO1xuICAgIGNvbnNvbGUubG9nKFwiaW4gSlNPTkJ1aWxkZXJcIik7XG4gICAgYnVpbGRlci52aXNpdChzb3VyY2VzKTtcbiAgICByZXR1cm4gc291cmNlcztcbiAgfVxufVxuIl19