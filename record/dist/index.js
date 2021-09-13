"use strict";
const as_1 = require("visitor-as/as");
const visitor_as_1 = require("visitor-as");
const utils_1 = require("visitor-as/dist/utils");
function isField(node) {
    return node.kind == as_1.NodeKind.FIELDDECLARATION;
}
function isInstanceField(node) {
    return isField(node) && node.is(as_1.CommonFlags.INSTANCE);
}
function getRecordId(element) {
    let decorator = (0, utils_1.getDecorator)(element, "record");
    if (decorator.args == null) {
        return element.name.text;
    }
    if (decorator.args.length > 1) {
        throw new Error(`record expects 0 or 1 argument but got ${decorator.args.length}`);
    }
    if (!decorator.args[0].isLiteralKind(as_1.LiteralKind.STRING)) {
        throw new Error("record expects a string argument");
    }
    return decorator.args[0].value;
}
class RecordDecorator extends visitor_as_1.ClassDecorator {
    constructor() {
        super(...arguments);
        this.pkDecoratorName = "primaryKey";
    }
    visitFieldDeclaration(node) {
        var _a;
        if (!node.name)
            return;
        if ((_a = node.decorators) === null || _a === void 0 ? void 0 : _a.find((d) => d.name.range.toString() === `@${this.pkDecoratorName}`)) {
            this.pkSmt = `return this.${node.name.text}.toString();`;
        }
    }
    visitMethodDeclaration(node) { }
    visitClassDeclaration(node) {
        const fields = node.members.filter(isInstanceField);
        if (!fields) {
            return;
        }
        this.visit(node.members);
        const name = (0, utils_1.getName)(node);
        const recordId = getRecordId(node);
        const methodsStr = getRecordMethods(recordId, name);
        if (this.pkSmt) {
            // we find some field with @primaryKey decorator
            methodsStr.push(getPkMethod(this.pkSmt));
        }
        else {
            if (!node.members.some((0, utils_1.isMethodNamed)("primaryKey"))) {
                throw new Error("record require either a field decorated with '@primaryKey' or method 'primaryKey(): string'");
            }
        }
        methodsStr.forEach((e) => {
            const m = visitor_as_1.SimpleParser.parseClassMember(e, node);
            const mName = m.name.text;
            if (!node.members.some((0, utils_1.isMethodNamed)(mName))) {
                node.members.push(m);
            }
        });
    }
    get name() {
        return "record";
    }
}
const getPkMethod = (smt) => `
  primaryKey(): string {
    ${smt}
  }
`;
const getRecordMethods = (recordId, className) => [
    `
  static recordId(): string {
    return "${recordId}";
  }
  `,
    `
  exists(): bool {
    return ActiveRecord.getOrCreateRecord<${className}>(${className}.recordId()).exists(this.primaryKey());
  }
  `,
    `
  save(): void {
    ActiveRecord.getOrCreateRecord<${className}>(${className}.recordId()).add(
      this.primaryKey(),
      this
    );
  }
  `,
    `
  delete(): void {
    ActiveRecord.getOrCreateRecord<${className}>(${className}.recordId()).delete(this.primaryKey());
  }
  `,
    `
  static findOne(pk: string): ${className} | null {
    return ActiveRecord.getOrCreateRecord<${className}>(${className}.recordId()).findOne(pk);
  }
  `,
    `
  static find(pks?: string[]): Array<${className} | null> {
    return ActiveRecord.getOrCreateRecord<${className}>(${className}.recordId()).find(pks);
  }
  `,
    `
  static getAll(): ${className}[] {
    return ActiveRecord.getOrCreateRecord<${className}>(${className}.recordId()).getAll();
  }
 `,
];
module.exports = (0, visitor_as_1.registerDecorator)(new RecordDecorator());
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLHNDQVN1QjtBQUN2QiwyQ0FBNkU7QUFFN0UsaURBQTZFO0FBRTdFLFNBQVMsT0FBTyxDQUFDLElBQTBCO0lBQ3pDLE9BQU8sSUFBSSxDQUFDLElBQUksSUFBSSxhQUFRLENBQUMsZ0JBQWdCLENBQUM7QUFDaEQsQ0FBQztBQUVELFNBQVMsZUFBZSxDQUFDLElBQTBCO0lBQ2pELE9BQU8sT0FBTyxDQUFDLElBQUksQ0FBQyxJQUFJLElBQUksQ0FBQyxFQUFFLENBQUMsZ0JBQVcsQ0FBQyxRQUFRLENBQUMsQ0FBQztBQUN4RCxDQUFDO0FBRUQsU0FBUyxXQUFXLENBQUMsT0FBeUI7SUFDNUMsSUFBSSxTQUFTLEdBQUcsSUFBQSxvQkFBWSxFQUFDLE9BQU8sRUFBRSxRQUFRLENBQUMsQ0FBQztJQUNoRCxJQUFJLFNBQVMsQ0FBQyxJQUFJLElBQUksSUFBSSxFQUFFO1FBQzFCLE9BQU8sT0FBTyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUM7S0FDMUI7SUFDRCxJQUFJLFNBQVMsQ0FBQyxJQUFJLENBQUMsTUFBTSxHQUFHLENBQUMsRUFBRTtRQUM3QixNQUFNLElBQUksS0FBSyxDQUNiLDBDQUEwQyxTQUFTLENBQUMsSUFBSSxDQUFDLE1BQU0sRUFBRSxDQUNsRSxDQUFDO0tBQ0g7SUFDRCxJQUFJLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxhQUFhLENBQUMsZ0JBQVcsQ0FBQyxNQUFNLENBQUMsRUFBRTtRQUN4RCxNQUFNLElBQUksS0FBSyxDQUFDLGtDQUFrQyxDQUFDLENBQUM7S0FDckQ7SUFDRCxPQUFpQyxTQUFTLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBRSxDQUFDLEtBQUssQ0FBQztBQUM1RCxDQUFDO0FBRUQsTUFBTSxlQUFnQixTQUFRLDJCQUFjO0lBQTVDOztRQUNFLG9CQUFl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b3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1xuICBDbGFzc0RlY2xhcmF0aW9uLFxuICBDb21tb25GbGFncyxcbiAgRmllbGREZWNsYXJhdGlvbixcbiAgTWV0aG9kRGVjbGFyYXRpb24sXG4gIExpdGVyYWxLaW5kLFxuICBTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbixcbiAgTm9kZUtpbmQsXG4gIERlY2xhcmF0aW9uU3RhdGVtZW50LFxufSBmcm9tIFwidmlzaXRvci1hcy9hc1wiO1xuaW1wb3J0IHsgcmVnaXN0ZXJEZWNvcmF0b3IsIENsYXNzRGVjb3JhdG9yLCBTaW1wbGVQYXJzZXIgfSBmcm9tIFwidmlzaXRvci1hc1wiO1xuXG5pbXBvcnQgeyBnZXREZWNvcmF0b3IsIGdldE5hbWUsIGlzTWV0aG9kTmFtZWQgfSBmcm9tIFwidmlzaXRvci1hcy9kaXN0L3V0aWxzXCI7XG5cbmZ1bmN0aW9uIGlzRmllbGQobm9kZTogRGVjbGFyYXRpb25TdGF0ZW1lbnQpOiBib29sZWFuIHtcbiAgcmV0dXJuIG5vZGUua2luZCA9PSBOb2RlS2luZC5GSUVMRERFQ0xBUkFUSU9OO1xufVxuXG5mdW5jdGlvbiBpc0luc3RhbmNlRmllbGQobm9kZTogRGVjbGFyYXRpb25TdGF0ZW1lbnQpOiBib29sZWFuIHtcbiAgcmV0dXJuIGlzRmllbGQobm9kZSkgJiYgbm9kZS5pcyhDb21tb25GbGFncy5JTlNUQU5DRSk7XG59XG5cbmZ1bmN0aW9uIGdldFJlY29yZElkKGVsZW1lbnQ6IENsYXNzRGVjbGFyYXRpb24pOiBzdHJpbmcge1xuICBsZXQgZGVjb3JhdG9yID0gZ2V0RGVjb3JhdG9yKGVsZW1lbnQsIFwicmVjb3JkXCIpO1xuICBpZiAoZGVjb3JhdG9yLmFyZ3MgPT0gbnVsbCkge1xuICAgIHJldHVybiBlbGVtZW50Lm5hbWUudGV4dDtcbiAgfVxuICBpZiAoZGVjb3JhdG9yLmFyZ3MubGVuZ3RoID4gMSkge1xuICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgIGByZWNvcmQgZXhwZWN0cyAwIG9yIDEgYXJndW1lbnQgYnV0IGdvdCAke2RlY29yYXRvci5hcmdzLmxlbmd0aH1gXG4gICAgKTtcbiAgfVxuICBpZiAoIWRlY29yYXRvci5hcmdzWzBdLmlzTGl0ZXJhbEtpbmQoTGl0ZXJhbEtpbmQuU1RSSU5HKSkge1xuICAgIHRocm93IG5ldyBFcnJvcihcInJlY29yZCBleHBlY3RzIGEgc3RyaW5nIGFyZ3VtZW50XCIpO1xuICB9XG4gIHJldHVybiAoPFN0cmluZ0xpdGVyYWxFeHByZXNzaW9uPmRlY29yYXRvci5hcmdzWzBdKS52YWx1ZTtcbn1cblxuY2xhc3MgUmVjb3JkRGVjb3JhdG9yIGV4dGVuZHMgQ2xhc3NEZWNvcmF0b3Ige1xuICBwa0RlY29yYXRvck5hbWU6IHN0cmluZyA9IFwicHJpbWFyeUtleVwiO1xuICBwa1NtdD86IHN0cmluZztcblxuICB2aXNpdEZpZWxkRGVjbGFyYXRpb24obm9kZTogRmllbGREZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIGlmICghbm9kZS5uYW1lKSByZXR1cm47XG4gICAgaWYgKFxuICAgICAgbm9kZS5kZWNvcmF0b3JzPy5maW5kKFxuICAgICAgICAoZCkgPT4gZC5uYW1lLnJhbmdlLnRvU3RyaW5nKCkgPT09IGBAJHt0aGlzLnBrRGVjb3JhdG9yTmFtZX1gXG4gICAgICApXG4gICAgKSB7XG4gICAgICB0aGlzLnBrU210ID0gYHJldHVybiB0aGlzLiR7bm9kZS5uYW1lLnRleHR9LnRvU3RyaW5nKCk7YDtcbiAgICB9XG4gIH1cblxuICB2aXNpdE1ldGhvZERlY2xhcmF0aW9uKG5vZGU6IE1ldGhvZERlY2xhcmF0aW9uKTogdm9pZCB7fVxuXG4gIHZpc2l0Q2xhc3NEZWNsYXJhdGlvbihub2RlOiBDbGFzc0RlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgY29uc3QgZmllbGRzID0gbm9kZS5tZW1iZXJzLmZpbHRlcihpc0luc3RhbmNlRmllbGQpO1xuICAgIGlmICghZmllbGRzKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcblxuICAgIGNvbnN0IG5hbWUgPSBnZXROYW1lKG5vZGUpO1xuICAgIGNvbnN0IHJlY29yZElkID0gZ2V0UmVjb3JkSWQobm9kZSk7XG4gICAgY29uc3QgbWV0aG9kc1N0ciA9IGdldFJlY29yZE1ldGhvZHMocmVjb3JkSWQsIG5hbWUpO1xuXG4gICAgaWYgKHRoaXMucGtTbXQpIHtcbiAgICAgIC8vIHdlIGZpbmQgc29tZSBmaWVsZCB3aXRoIEBwcmltYXJ5S2V5IGRlY29yYXRvclxuICAgICAgbWV0aG9kc1N0ci5wdXNoKGdldFBrTWV0aG9kKHRoaXMucGtTbXQpKTtcbiAgICB9IGVsc2Uge1xuICAgICAgaWYgKCFub2RlLm1lbWJlcnMuc29tZShpc01ldGhvZE5hbWVkKFwicHJpbWFyeUtleVwiKSkpIHtcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICAgIFwicmVjb3JkIHJlcXVpcmUgZWl0aGVyIGEgZmllbGQgZGVjb3JhdGVkIHdpdGggJ0BwcmltYXJ5S2V5JyBvciBtZXRob2QgJ3ByaW1hcnlLZXkoKTogc3RyaW5nJ1wiXG4gICAgICAgICk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgbWV0aG9kc1N0ci5mb3JFYWNoKChlKSA9PiB7XG4gICAgICBjb25zdCBtID0gU2ltcGxlUGFyc2VyLnBhcnNlQ2xhc3NNZW1iZXIoZSwgbm9kZSk7XG4gICAgICBjb25zdCBtTmFtZSA9IG0ubmFtZS50ZXh0O1xuICAgICAgaWYgKCFub2RlLm1lbWJlcnMuc29tZShpc01ldGhvZE5hbWVkKG1OYW1lKSkpIHtcbiAgICAgICAgbm9kZS5tZW1iZXJzLnB1c2gobSk7XG4gICAgICB9XG4gICAgfSk7XG4gIH1cblxuICBnZXQgbmFtZSgpOiBzdHJpbmcge1xuICAgIHJldHVybiBcInJlY29yZFwiO1xuICB9XG59XG5cbmNvbnN0IGdldFBrTWV0aG9kID0gKHNtdDogc3RyaW5nKSA9PiBgXG4gIHByaW1hcnlLZXkoKTogc3RyaW5nIHtcbiAgICAke3NtdH1cbiAgfVxuYDtcblxuY29uc3QgZ2V0UmVjb3JkTWV0aG9kcyA9IChyZWNvcmRJZDogc3RyaW5nLCBjbGFzc05hbWU6IHN0cmluZykgPT4gW1xuICBgXG4gIHN0YXRpYyByZWNvcmRJZCgpOiBzdHJpbmcge1xuICAgIHJldHVybiBcIiR7cmVjb3JkSWR9XCI7XG4gIH1cbiAgYCxcbiAgYFxuICBleGlzdHMoKTogYm9vbCB7XG4gICAgcmV0dXJuIEFjdGl2ZVJlY29yZC5nZXRPckNyZWF0ZVJlY29yZDwke2NsYXNzTmFtZX0+KCR7Y2xhc3NOYW1lfS5yZWNvcmRJZCgpKS5leGlzdHModGhpcy5wcmltYXJ5S2V5KCkpO1xuICB9XG4gIGAsXG4gIGBcbiAgc2F2ZSgpOiB2b2lkIHtcbiAgICBBY3RpdmVSZWNvcmQuZ2V0T3JDcmVhdGVSZWNvcmQ8JHtjbGFzc05hbWV9Pigke2NsYXNzTmFtZX0ucmVjb3JkSWQoKSkuYWRkKFxuICAgICAgdGhpcy5wcmltYXJ5S2V5KCksXG4gICAgICB0aGlzXG4gICAgKTtcbiAgfVxuICBgLFxuICBgXG4gIGRlbGV0ZSgpOiB2b2lkIHtcbiAgICBBY3RpdmVSZWNvcmQuZ2V0T3JDcmVhdGVSZWNvcmQ8JHtjbGFzc05hbWV9Pigke2NsYXNzTmFtZX0ucmVjb3JkSWQoKSkuZGVsZXRlKHRoaXMucHJpbWFyeUtleSgpKTtcbiAgfVxuICBgLFxuICBgXG4gIHN0YXRpYyBmaW5kT25lKHBrOiBzdHJpbmcpOiAke2NsYXNzTmFtZX0gfCBudWxsIHtcbiAgICByZXR1cm4gQWN0aXZlUmVjb3JkLmdldE9yQ3JlYXRlUmVjb3JkPCR7Y2xhc3NOYW1lfT4oJHtjbGFzc05hbWV9LnJlY29yZElkKCkpLmZpbmRPbmUocGspO1xuICB9XG4gIGAsXG4gIGBcbiAgc3RhdGljIGZpbmQocGtzPzogc3RyaW5nW10pOiBBcnJheTwke2NsYXNzTmFtZX0gfCBudWxsPiB7XG4gICAgcmV0dXJuIEFjdGl2ZVJlY29yZC5nZXRPckNyZWF0ZVJlY29yZDwke2NsYXNzTmFtZX0+KCR7Y2xhc3NOYW1lfS5yZWNvcmRJZCgpKS5maW5kKHBrcyk7XG4gIH1cbiAgYCxcbiAgYFxuICBzdGF0aWMgZ2V0QWxsKCk6ICR7Y2xhc3NOYW1lfVtdIHtcbiAgICByZXR1cm4gQWN0aXZlUmVjb3JkLmdldE9yQ3JlYXRlUmVjb3JkPCR7Y2xhc3NOYW1lfT4oJHtjbGFzc05hbWV9LnJlY29yZElkKCkpLmdldEFsbCgpO1xuICB9XG4gYCxcbl07XG5cbmV4cG9ydCA9IHJlZ2lzdGVyRGVjb3JhdG9yKG5ldyBSZWNvcmREZWNvcmF0b3IoKSk7XG4iXX0=