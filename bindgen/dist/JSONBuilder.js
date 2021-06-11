"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.JSONBindingsBuilder = void 0;
const visitor_as_1 = require("visitor-as");
const utils_1 = require("./utils");
const common_1 = require("./common");
const methodInjector_1 = require("@serial-as/transform/dist/methodInjector");
// TODO: Extract this into separate module, preferrable pluggable
class JSONBindingsBuilder extends visitor_as_1.BaseVisitor {
    // private sb: string[] = [];
    // private exportedClasses: Map<string, ClassDeclaration> = new Map();
    isNearFile = false;
    currentClass;
    fields = [];
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiSlNPTkJ1aWxkZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvSlNPTkJ1aWxkZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBT0EsMkNBQThEO0FBQzlELG1DQUE0QztBQUM1QyxxQ0FRa0I7QUFFbEIsNkVBQTBFO0FBRTFFLGlFQUFpRTtBQUNqRSxNQUFhLG1CQUFvQixTQUFRLHdCQUFXO0lBQ2xELDZCQUE2QjtJQUM3QixzRUFBc0U7SUFDdEUsVUFBVSxHQUFZLEtBQUssQ0FBQztJQUM1QixZQUFZLENBQW9CO0lBQ2hDLE1BQU0sR0FBdUIsRUFBRSxDQUFDO0lBRWhDLElBQUksU0FBUztRQUNYLE9BQU8sZUFBTyxDQUFDLElBQUksQ0FBQyxZQUFhLENBQUMsQ0FBQztJQUNyQyxDQUFDO0lBRUQsV0FBVyxDQUFDLElBQVk7UUFDdEIsSUFBSSxDQUFDLFVBQVUsR0FBRyxJQUFJLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxXQUFXLENBQUMsQ0FBQztRQUNsRCxLQUFLLENBQUMsV0FBVyxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQzFCLENBQUM7SUFFRCx3REFBd0Q7SUFDeEQsWUFBWTtJQUNaLHlCQUF5QjtJQUN6QixnRkFBZ0Y7SUFDaEYsT0FBTztJQUNQLG9DQUFvQztJQUNwQyx1REFBdUQ7SUFDdkQsbURBQW1EO0lBQ25ELFNBQVM7SUFDVCxNQUFNO0lBQ04sNEJBQTRCO0lBQzVCLElBQUk7SUFFSixxQkFBcUIsQ0FBQyxJQUFzQjtRQUMxQyxPQUFPLENBQUMsR0FBRyxDQUFDLFlBQVksZUFBTyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUN6QyxJQUFJLENBQUMsQ0FBQyxrQkFBSyxDQUFDLFlBQVksQ0FBQyxJQUFJLEVBQUUsdUJBQWMsQ0FBQyxJQUFJLElBQUksQ0FBQyxVQUFVLENBQUMsRUFBRTtZQUNsRSxPQUFPO1NBQ1I7UUFDRCw0QkFBNEI7UUFDNUIsb0JBQW9CO1FBQ3BCLElBQUksQ0FBQyxrQkFBSyxDQUFDLFlBQVksQ0FBQyxJQUFJLEVBQUUsdUJBQWMsQ0FBQyxFQUFFO1lBQzdDLE9BQU8sQ0FBQyxLQUFLLENBQ1gsVUFBVSxFQUNWLGdDQUFnQyx1QkFBYyxpQkFBaUIsSUFBSSxDQUFDLFNBQVMsRUFBRSxFQUMvRSxTQUFTLENBQ1YsQ0FBQztTQUNIO1FBQ0QsK0JBQWMsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDM0IsZUFBZTtRQUNmLHFDQUFxQztRQUVyQyxtQ0FBbUM7UUFDbkMsb0NBQW9DO1FBRXBDLG9CQUFvQjtRQUNwQixtREFBbUQ7UUFDbkQsd0JBQXdCO1FBQ3hCLHFDQUFxQztRQUNyQyw4QkFBOEI7UUFDOUIsYUFBYTtRQUNiLHFGQUFxRjtRQUNyRiw2QkFBNkI7UUFDN0IsTUFBTTtRQUNOLCtCQUErQjtRQUMvQixJQUFJO1FBQ0osTUFBTTtRQUNOLG9CQUFvQjtRQUNwQixpREFBaUQ7UUFDakQsc0NBQXNDO1FBQ3RDLElBQUk7UUFDSixNQUFNO1FBRU4sb0JBQW9CO1FBQ3BCLGlEQUFpRDtRQUNqRCxtREFBbUQ7UUFDbkQsaUJBQWlCO1FBQ2pCLElBQUk7UUFDSixNQUFNO1FBRU4sb0JBQW9CO1FBQ3BCLHdGQUF3RjtRQUN4RixtRUFBbUU7UUFDbkUsOEJBQThCO1FBQzlCLG1EQUFtRDtRQUNuRCx5QkFBeUI7UUFDekIsb0JBQW9CO1FBQ3BCLElBQUk7UUFDSixNQUFNO1FBRU4sb0JBQW9CO1FBQ3BCLHlCQUF5QjtRQUN6Qix1Q0FBdUM7UUFDdkMsSUFBSTtRQUNKLE1BQU07UUFFTixvQkFBb0I7UUFDcEIsNEJBQTRCO1FBQzVCLDBCQUEwQjtRQUMxQixJQUFJO1FBQ0osTUFBTTtRQUVOLG9CQUFvQjtRQUNwQixxQkFBcUI7UUFDckIsc0NBQXNDO1FBQ3RDLElBQUk7UUFDSixNQUFNO1FBQ04sd0NBQXdDO1FBQ3hDLDJDQUEyQztRQUMzQyxLQUFLO1FBQ0wsbUNBQW1DO1FBQ25DLCtCQUErQjtJQUNqQyxDQUFDO0lBRUQsTUFBTSxDQUFDLEtBQUssQ0FBQyxPQUFpQjtRQUM1QixNQUFNLE9BQU8sR0FBRyxJQUFJLG1CQUFtQixFQUFFLENBQUM7UUFDMUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO1FBQzlCLE9BQU8sQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDdkIsT0FBTyxPQUFPLENBQUM7SUFDakIsQ0FBQztDQUNGO0FBbkhELGtEQW1IQyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7XG4gIFNvdXJjZSxcbiAgQ2xhc3NEZWNsYXJhdGlvbixcbiAgRmllbGREZWNsYXJhdGlvbixcbiAgUGFyYW1ldGVyTm9kZSxcbiAgTm9kZSxcbn0gZnJvbSBcInZpc2l0b3ItYXMvYXNcIjtcbmltcG9ydCB7IEJhc2VWaXNpdG9yLCB1dGlscywgU2ltcGxlUGFyc2VyIH0gZnJvbSBcInZpc2l0b3ItYXNcIjtcbmltcG9ydCB7IGdldE5hbWUsIHRvU3RyaW5nIH0gZnJvbSBcIi4vdXRpbHNcIjtcbmltcG9ydCB7XG4gIGNyZWF0ZURlY29kZVN0YXRlbWVudHMsXG4gIGNyZWF0ZUVuY29kZVN0YXRlbWVudHMsXG4gIGhhc05lYXJEZWNvcmF0b3IsXG4gIGlzQ2xhc3MsXG4gIGlzRW5jb2RhYmxlLFxuICBpc0ZpZWxkLFxuICBORUFSX0RFQ09SQVRPUixcbn0gZnJvbSBcIi4vY29tbW9uXCI7XG5cbmltcG9ydCB7IE1ldGhvZEluamVjdG9yIH0gZnJvbSBcIkBzZXJpYWwtYXMvdHJhbnNmb3JtL2Rpc3QvbWV0aG9kSW5qZWN0b3JcIjtcblxuLy8gVE9ETzogRXh0cmFjdCB0aGlzIGludG8gc2VwYXJhdGUgbW9kdWxlLCBwcmVmZXJyYWJsZSBwbHVnZ2FibGVcbmV4cG9ydCBjbGFzcyBKU09OQmluZGluZ3NCdWlsZGVyIGV4dGVuZHMgQmFzZVZpc2l0b3Ige1xuICAvLyBwcml2YXRlIHNiOiBzdHJpbmdbXSA9IFtdO1xuICAvLyBwcml2YXRlIGV4cG9ydGVkQ2xhc3NlczogTWFwPHN0cmluZywgQ2xhc3NEZWNsYXJhdGlvbj4gPSBuZXcgTWFwKCk7XG4gIGlzTmVhckZpbGU6IGJvb2xlYW4gPSBmYWxzZTtcbiAgY3VycmVudENsYXNzPzogQ2xhc3NEZWNsYXJhdGlvbjtcbiAgZmllbGRzOiBGaWVsZERlY2xhcmF0aW9uW10gPSBbXTtcblxuICBnZXQgY2xhc3NOYW1lKCk6IHN0cmluZyB7XG4gICAgcmV0dXJuIGdldE5hbWUodGhpcy5jdXJyZW50Q2xhc3MhKTtcbiAgfVxuXG4gIHZpc2l0U291cmNlKG5vZGU6IFNvdXJjZSk6IHZvaWQge1xuICAgIHRoaXMuaXNOZWFyRmlsZSA9IG5vZGUudGV4dC5pbmNsdWRlcyhcIkBuZWFyZmlsZVwiKTtcbiAgICBzdXBlci52aXNpdFNvdXJjZShub2RlKTtcbiAgfVxuXG4gIC8vIHZpc2l0RmllbGREZWNsYXJhdGlvbihub2RlOiBGaWVsZERlY2xhcmF0aW9uKTogdm9pZCB7XG4gIC8vICAgYXNzZXJ0KFxuICAvLyAgICAgbm9kZS50eXBlICE9IG51bGwsXG4gIC8vICAgICBgJHt0aGlzLmNsYXNzTmFtZX0uJHtnZXROYW1lKG5vZGUpfSBtdXN0IGhhdmUgZXhwbGljaXQgdHlwZSBkZWNsYXJhdGlvbi5gXG4gIC8vICAgKTtcbiAgLy8gICBpZiAobm9kZS5pbml0aWFsaXplciA9PSBudWxsKSB7XG4gIC8vICAgICBub2RlLmluaXRpYWxpemVyID0gU2ltcGxlUGFyc2VyLnBhcnNlRXhwcmVzc2lvbihcbiAgLy8gICAgICAgYGRlZmF1bHRWYWx1ZTwke3RvU3RyaW5nKG5vZGUudHlwZSEpfT4oKSlgXG4gIC8vICAgICApO1xuICAvLyAgIH1cbiAgLy8gICB0aGlzLmZpZWxkcy5wdXNoKG5vZGUpO1xuICAvLyB9XG5cbiAgdmlzaXRDbGFzc0RlY2xhcmF0aW9uKG5vZGU6IENsYXNzRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICBjb25zb2xlLmxvZyhgdmlzaXRpbmcgJHtnZXROYW1lKG5vZGUpfWApO1xuICAgIGlmICghKHV0aWxzLmhhc0RlY29yYXRvcihub2RlLCBORUFSX0RFQ09SQVRPUikgfHwgdGhpcy5pc05lYXJGaWxlKSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cbiAgICAvLyB0aGlzLmN1cnJlbnRDbGFzcyA9IG5vZGU7XG4gICAgLy8gdGhpcy5maWVsZHMgPSBbXTtcbiAgICBpZiAoIXV0aWxzLmhhc0RlY29yYXRvcihub2RlLCBORUFSX0RFQ09SQVRPUikpIHtcbiAgICAgIGNvbnNvbGUuZXJyb3IoXG4gICAgICAgIFwiXFx4MWJbMzFtXCIsXG4gICAgICAgIGBAbmVhcmZpbGUgaXMgZGVwcmVjYXRlZCB1c2UgQCR7TkVBUl9ERUNPUkFUT1J9IGRlY29yYXRvciBvbiAke3RoaXMuY2xhc3NOYW1lfWAsXG4gICAgICAgIFwiXFx4MWJbMG1cIlxuICAgICAgKTtcbiAgICB9XG4gICAgTWV0aG9kSW5qZWN0b3IudmlzaXQobm9kZSk7XG4gICAgLy8gVmlzaXQgRmllbGRzXG4gICAgLy8gc3VwZXIudmlzaXRDbGFzc0RlY2xhcmF0aW9uKG5vZGUpO1xuXG4gICAgLy8gY29uc3QgbmV3TWV0aG9kczogc3RyaW5nW10gPSBbXTtcbiAgICAvLyBjb25zdCBjbGFzc05hbWUgPSB0aGlzLmNsYXNzTmFtZTtcblxuICAgIC8vIG5ld01ldGhvZHMucHVzaChgXG4gICAgLy8gZGVjb2RlPF9WID0gVWludDhBcnJheT4oYnVmOiBfVik6ICR7Y2xhc3NOYW1lfSB7XG4gICAgLy8gICBsZXQganNvbjogSlNPTi5PYmo7XG4gICAgLy8gICBpZiAoYnVmIGluc3RhbmNlb2YgVWludDhBcnJheSkge1xuICAgIC8vICAgICBqc29uID0gSlNPTi5wYXJzZShidWYpO1xuICAgIC8vICAgfSBlbHNlIHtcbiAgICAvLyAgICAgYXNzZXJ0KGJ1ZiBpbnN0YW5jZW9mIEpTT04uT2JqLCBcImFyZ3VtZW50IG11c3QgYmUgVWludDhBcnJheSBvciBKc29uIE9iamVjdFwiKTtcbiAgICAvLyAgICAganNvbiA9IDxKU09OLk9iaj4gYnVmO1xuICAgIC8vICAgfVxuICAgIC8vICAgcmV0dXJuIHRoaXMuX2RlY29kZShqc29uKTtcbiAgICAvLyB9XG4gICAgLy8gYCk7XG4gICAgLy8gbmV3TWV0aG9kcy5wdXNoKGBcbiAgICAvLyBzdGF0aWMgZGVjb2RlKGJ1ZjogVWludDhBcnJheSk6ICR7Y2xhc3NOYW1lfSB7XG4gICAgLy8gICByZXR1cm4gZGVjb2RlPCR7Y2xhc3NOYW1lfT4oYnVmKTtcbiAgICAvLyB9XG4gICAgLy8gYCk7XG5cbiAgICAvLyBuZXdNZXRob2RzLnB1c2goYFxuICAgIC8vIHByaXZhdGUgX2RlY29kZShvYmo6IEpTT04uT2JqKTogJHtjbGFzc05hbWV9IHtcbiAgICAvLyAgICR7Y3JlYXRlRGVjb2RlU3RhdGVtZW50cyhub2RlKS5qb2luKFwiXFxuICAgIFwiKX1cbiAgICAvLyAgIHJldHVybiB0aGlzO1xuICAgIC8vIH1cbiAgICAvLyBgKTtcblxuICAgIC8vIG5ld01ldGhvZHMucHVzaChgXG4gICAgLy8gX2VuY29kZShuYW1lOiBzdHJpbmcgfCBudWxsID0gXCJcIiwgX2VuY29kZXI6IEpTT05FbmNvZGVyIHwgbnVsbCA9IG51bGwpOiBKU09ORW5jb2RlciB7XG4gICAgLy8gICBsZXQgZW5jb2RlciA9IF9lbmNvZGVyID09IG51bGwgPyBuZXcgSlNPTkVuY29kZXIoKSA6IF9lbmNvZGVyO1xuICAgIC8vICAgZW5jb2Rlci5wdXNoT2JqZWN0KG5hbWUpO1xuICAgIC8vICAgJHtjcmVhdGVFbmNvZGVTdGF0ZW1lbnRzKG5vZGUpLmpvaW4oXCJcXG4gICAgXCIpfVxuICAgIC8vICAgZW5jb2Rlci5wb3BPYmplY3QoKTtcbiAgICAvLyAgIHJldHVybiBlbmNvZGVyO1xuICAgIC8vIH1cbiAgICAvLyBgKTtcblxuICAgIC8vIG5ld01ldGhvZHMucHVzaChgXG4gICAgLy8gZW5jb2RlKCk6IFVpbnQ4QXJyYXkge1xuICAgIC8vICAgcmV0dXJuIHRoaXMuX2VuY29kZSgpLnNlcmlhbGl6ZSgpO1xuICAgIC8vIH1cbiAgICAvLyBgKTtcblxuICAgIC8vIG5ld01ldGhvZHMucHVzaChgXG4gICAgLy8gc2VyaWFsaXplKCk6IFVpbnQ4QXJyYXkge1xuICAgIC8vICAgcmV0dXJuIHRoaXMuZW5jb2RlKCk7XG4gICAgLy8gfVxuICAgIC8vIGApO1xuXG4gICAgLy8gbmV3TWV0aG9kcy5wdXNoKGBcbiAgICAvLyB0b0pTT04oKTogc3RyaW5nIHtcbiAgICAvLyAgIHJldHVybiB0aGlzLl9lbmNvZGUoKS50b1N0cmluZygpO1xuICAgIC8vIH1cbiAgICAvLyBgKTtcbiAgICAvLyBsZXQgc3RhdGVtbnRzID0gbmV3TWV0aG9kcy5tYXAoKHMpID0+XG4gICAgLy8gICBTaW1wbGVQYXJzZXIucGFyc2VDbGFzc01lbWJlcihzLCBub2RlKVxuICAgIC8vICk7XG4gICAgLy8gbm9kZS5tZW1iZXJzLnB1c2goLi4uc3RhdGVtbnRzKTtcbiAgICAvLyBjb25zb2xlLmxvZyh0b1N0cmluZyhub2RlKSk7XG4gIH1cblxuICBzdGF0aWMgdmlzaXQoc291cmNlczogU291cmNlW10pOiBTb3VyY2VbXSB7XG4gICAgY29uc3QgYnVpbGRlciA9IG5ldyBKU09OQmluZGluZ3NCdWlsZGVyKCk7XG4gICAgY29uc29sZS5sb2coXCJpbiBKU09OQnVpbGRlclwiKTtcbiAgICBidWlsZGVyLnZpc2l0KHNvdXJjZXMpO1xuICAgIHJldHVybiBzb3VyY2VzO1xuICB9XG59XG4iXX0=