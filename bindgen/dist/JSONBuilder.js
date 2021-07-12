"use strict";
// import {
//   Source,
//   ClassDeclaration,
//   FieldDeclaration,
//   ParameterNode,
//   Node,
// } from "visitor-as/as";
// import { BaseVisitor, utils, SimpleParser } from "visitor-as";
// import { getName, toString } from "./utils";
// import {
//   createDecodeStatements,
//   createEncodeStatements,
//   hasNearDecorator,
//   isClass,
//   isEncodable,
//   isField,
//   NEAR_DECORATOR,
// } from "./common";
// // TODO: Extract this into separate module, preferrable pluggable
// export class JSONBindingsBuilder extends BaseVisitor {
//   isNearFile: boolean = false;
//   currentClass?: ClassDeclaration;
//   fields: FieldDeclaration[] = [];
//   get className(): string {
//     return getName(this.currentClass!);
//   }
//   visitSource(node: Source): void {
//     this.isNearFile = node.text.includes("@nearfile");
//     super.visitSource(node);
//   }
//   visitClassDeclaration(node: ClassDeclaration): void {
//     if (!(utils.hasDecorator(node, NEAR_DECORATOR) || this.isNearFile)) {
//       MethodInjector.visit(node);
//       return;
//     }
//     this.currentClass = node;
//     if (!utils.hasDecorator(node, NEAR_DECORATOR)) {
//       console.error(
//         "\x1b[31m",
//         `@nearfile is deprecated use @${NEAR_DECORATOR} decorator on ${this.className}`,
//         "\x1b[0m"
//       );
//     }
//   }
//   static visit(sources: Source[]): Source[] {
//     const builder = new JSONBindingsBuilder();
//     builder.visit(sources);
//     return sources;
//   }
// }
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiSlNPTkJ1aWxkZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvSlNPTkJ1aWxkZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLFdBQVc7QUFDWCxZQUFZO0FBQ1osc0JBQXNCO0FBQ3RCLHNCQUFzQjtBQUN0QixtQkFBbUI7QUFDbkIsVUFBVTtBQUNWLDBCQUEwQjtBQUMxQixpRUFBaUU7QUFDakUsK0NBQStDO0FBQy9DLFdBQVc7QUFDWCw0QkFBNEI7QUFDNUIsNEJBQTRCO0FBQzVCLHNCQUFzQjtBQUN0QixhQUFhO0FBQ2IsaUJBQWlCO0FBQ2pCLGFBQWE7QUFDYixvQkFBb0I7QUFDcEIscUJBQXFCO0FBR3JCLG9FQUFvRTtBQUNwRSx5REFBeUQ7QUFFekQsaUNBQWlDO0FBQ2pDLHFDQUFxQztBQUNyQyxxQ0FBcUM7QUFFckMsOEJBQThCO0FBQzlCLDBDQUEwQztBQUMxQyxNQUFNO0FBRU4sc0NBQXNDO0FBQ3RDLHlEQUF5RDtBQUN6RCwrQkFBK0I7QUFDL0IsTUFBTTtBQUVOLDBEQUEwRDtBQUMxRCw0RUFBNEU7QUFDNUUsb0NBQW9DO0FBQ3BDLGdCQUFnQjtBQUNoQixRQUFRO0FBQ1IsZ0NBQWdDO0FBQ2hDLHVEQUF1RDtBQUN2RCx1QkFBdUI7QUFDdkIsc0JBQXNCO0FBQ3RCLDJGQUEyRjtBQUMzRixvQkFBb0I7QUFDcEIsV0FBVztBQUNYLFFBQVE7QUFDUixNQUFNO0FBRU4sZ0RBQWdEO0FBQ2hELGlEQUFpRDtBQUNqRCw4QkFBOEI7QUFDOUIsc0JBQXNCO0FBQ3RCLE1BQU07QUFDTixJQUFJIiwic291cmNlc0NvbnRlbnQiOlsiLy8gaW1wb3J0IHtcbi8vICAgU291cmNlLFxuLy8gICBDbGFzc0RlY2xhcmF0aW9uLFxuLy8gICBGaWVsZERlY2xhcmF0aW9uLFxuLy8gICBQYXJhbWV0ZXJOb2RlLFxuLy8gICBOb2RlLFxuLy8gfSBmcm9tIFwidmlzaXRvci1hcy9hc1wiO1xuLy8gaW1wb3J0IHsgQmFzZVZpc2l0b3IsIHV0aWxzLCBTaW1wbGVQYXJzZXIgfSBmcm9tIFwidmlzaXRvci1hc1wiO1xuLy8gaW1wb3J0IHsgZ2V0TmFtZSwgdG9TdHJpbmcgfSBmcm9tIFwiLi91dGlsc1wiO1xuLy8gaW1wb3J0IHtcbi8vICAgY3JlYXRlRGVjb2RlU3RhdGVtZW50cyxcbi8vICAgY3JlYXRlRW5jb2RlU3RhdGVtZW50cyxcbi8vICAgaGFzTmVhckRlY29yYXRvcixcbi8vICAgaXNDbGFzcyxcbi8vICAgaXNFbmNvZGFibGUsXG4vLyAgIGlzRmllbGQsXG4vLyAgIE5FQVJfREVDT1JBVE9SLFxuLy8gfSBmcm9tIFwiLi9jb21tb25cIjtcblxuXG4vLyAvLyBUT0RPOiBFeHRyYWN0IHRoaXMgaW50byBzZXBhcmF0ZSBtb2R1bGUsIHByZWZlcnJhYmxlIHBsdWdnYWJsZVxuLy8gZXhwb3J0IGNsYXNzIEpTT05CaW5kaW5nc0J1aWxkZXIgZXh0ZW5kcyBCYXNlVmlzaXRvciB7XG5cbi8vICAgaXNOZWFyRmlsZTogYm9vbGVhbiA9IGZhbHNlO1xuLy8gICBjdXJyZW50Q2xhc3M/OiBDbGFzc0RlY2xhcmF0aW9uO1xuLy8gICBmaWVsZHM6IEZpZWxkRGVjbGFyYXRpb25bXSA9IFtdO1xuXG4vLyAgIGdldCBjbGFzc05hbWUoKTogc3RyaW5nIHtcbi8vICAgICByZXR1cm4gZ2V0TmFtZSh0aGlzLmN1cnJlbnRDbGFzcyEpO1xuLy8gICB9XG5cbi8vICAgdmlzaXRTb3VyY2Uobm9kZTogU291cmNlKTogdm9pZCB7XG4vLyAgICAgdGhpcy5pc05lYXJGaWxlID0gbm9kZS50ZXh0LmluY2x1ZGVzKFwiQG5lYXJmaWxlXCIpO1xuLy8gICAgIHN1cGVyLnZpc2l0U291cmNlKG5vZGUpO1xuLy8gICB9XG5cbi8vICAgdmlzaXRDbGFzc0RlY2xhcmF0aW9uKG5vZGU6IENsYXNzRGVjbGFyYXRpb24pOiB2b2lkIHtcbi8vICAgICBpZiAoISh1dGlscy5oYXNEZWNvcmF0b3Iobm9kZSwgTkVBUl9ERUNPUkFUT1IpIHx8IHRoaXMuaXNOZWFyRmlsZSkpIHtcbi8vICAgICAgIE1ldGhvZEluamVjdG9yLnZpc2l0KG5vZGUpO1xuLy8gICAgICAgcmV0dXJuO1xuLy8gICAgIH1cbi8vICAgICB0aGlzLmN1cnJlbnRDbGFzcyA9IG5vZGU7XG4vLyAgICAgaWYgKCF1dGlscy5oYXNEZWNvcmF0b3Iobm9kZSwgTkVBUl9ERUNPUkFUT1IpKSB7XG4vLyAgICAgICBjb25zb2xlLmVycm9yKFxuLy8gICAgICAgICBcIlxceDFiWzMxbVwiLFxuLy8gICAgICAgICBgQG5lYXJmaWxlIGlzIGRlcHJlY2F0ZWQgdXNlIEAke05FQVJfREVDT1JBVE9SfSBkZWNvcmF0b3Igb24gJHt0aGlzLmNsYXNzTmFtZX1gLFxuLy8gICAgICAgICBcIlxceDFiWzBtXCJcbi8vICAgICAgICk7XG4vLyAgICAgfVxuLy8gICB9XG5cbi8vICAgc3RhdGljIHZpc2l0KHNvdXJjZXM6IFNvdXJjZVtdKTogU291cmNlW10ge1xuLy8gICAgIGNvbnN0IGJ1aWxkZXIgPSBuZXcgSlNPTkJpbmRpbmdzQnVpbGRlcigpO1xuLy8gICAgIGJ1aWxkZXIudmlzaXQoc291cmNlcyk7XG4vLyAgICAgcmV0dXJuIHNvdXJjZXM7XG4vLyAgIH1cbi8vIH1cbiJdfQ==