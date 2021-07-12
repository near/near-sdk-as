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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiSlNPTkJ1aWxkZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvSlNPTkJ1aWxkZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLFdBQVc7QUFDWCxZQUFZO0FBQ1osc0JBQXNCO0FBQ3RCLHNCQUFzQjtBQUN0QixtQkFBbUI7QUFDbkIsVUFBVTtBQUNWLDBCQUEwQjtBQUMxQixpRUFBaUU7QUFDakUsK0NBQStDO0FBQy9DLFdBQVc7QUFDWCw0QkFBNEI7QUFDNUIsNEJBQTRCO0FBQzVCLHNCQUFzQjtBQUN0QixhQUFhO0FBQ2IsaUJBQWlCO0FBQ2pCLGFBQWE7QUFDYixvQkFBb0I7QUFDcEIscUJBQXFCO0FBRXJCLG9FQUFvRTtBQUNwRSx5REFBeUQ7QUFFekQsaUNBQWlDO0FBQ2pDLHFDQUFxQztBQUNyQyxxQ0FBcUM7QUFFckMsOEJBQThCO0FBQzlCLDBDQUEwQztBQUMxQyxNQUFNO0FBRU4sc0NBQXNDO0FBQ3RDLHlEQUF5RDtBQUN6RCwrQkFBK0I7QUFDL0IsTUFBTTtBQUVOLDBEQUEwRDtBQUMxRCw0RUFBNEU7QUFDNUUsb0NBQW9DO0FBQ3BDLGdCQUFnQjtBQUNoQixRQUFRO0FBQ1IsZ0NBQWdDO0FBQ2hDLHVEQUF1RDtBQUN2RCx1QkFBdUI7QUFDdkIsc0JBQXNCO0FBQ3RCLDJGQUEyRjtBQUMzRixvQkFBb0I7QUFDcEIsV0FBVztBQUNYLFFBQVE7QUFDUixNQUFNO0FBRU4sZ0RBQWdEO0FBQ2hELGlEQUFpRDtBQUNqRCw4QkFBOEI7QUFDOUIsc0JBQXNCO0FBQ3RCLE1BQU07QUFDTixJQUFJIiwic291cmNlc0NvbnRlbnQiOlsiLy8gaW1wb3J0IHtcbi8vICAgU291cmNlLFxuLy8gICBDbGFzc0RlY2xhcmF0aW9uLFxuLy8gICBGaWVsZERlY2xhcmF0aW9uLFxuLy8gICBQYXJhbWV0ZXJOb2RlLFxuLy8gICBOb2RlLFxuLy8gfSBmcm9tIFwidmlzaXRvci1hcy9hc1wiO1xuLy8gaW1wb3J0IHsgQmFzZVZpc2l0b3IsIHV0aWxzLCBTaW1wbGVQYXJzZXIgfSBmcm9tIFwidmlzaXRvci1hc1wiO1xuLy8gaW1wb3J0IHsgZ2V0TmFtZSwgdG9TdHJpbmcgfSBmcm9tIFwiLi91dGlsc1wiO1xuLy8gaW1wb3J0IHtcbi8vICAgY3JlYXRlRGVjb2RlU3RhdGVtZW50cyxcbi8vICAgY3JlYXRlRW5jb2RlU3RhdGVtZW50cyxcbi8vICAgaGFzTmVhckRlY29yYXRvcixcbi8vICAgaXNDbGFzcyxcbi8vICAgaXNFbmNvZGFibGUsXG4vLyAgIGlzRmllbGQsXG4vLyAgIE5FQVJfREVDT1JBVE9SLFxuLy8gfSBmcm9tIFwiLi9jb21tb25cIjtcblxuLy8gLy8gVE9ETzogRXh0cmFjdCB0aGlzIGludG8gc2VwYXJhdGUgbW9kdWxlLCBwcmVmZXJyYWJsZSBwbHVnZ2FibGVcbi8vIGV4cG9ydCBjbGFzcyBKU09OQmluZGluZ3NCdWlsZGVyIGV4dGVuZHMgQmFzZVZpc2l0b3Ige1xuXG4vLyAgIGlzTmVhckZpbGU6IGJvb2xlYW4gPSBmYWxzZTtcbi8vICAgY3VycmVudENsYXNzPzogQ2xhc3NEZWNsYXJhdGlvbjtcbi8vICAgZmllbGRzOiBGaWVsZERlY2xhcmF0aW9uW10gPSBbXTtcblxuLy8gICBnZXQgY2xhc3NOYW1lKCk6IHN0cmluZyB7XG4vLyAgICAgcmV0dXJuIGdldE5hbWUodGhpcy5jdXJyZW50Q2xhc3MhKTtcbi8vICAgfVxuXG4vLyAgIHZpc2l0U291cmNlKG5vZGU6IFNvdXJjZSk6IHZvaWQge1xuLy8gICAgIHRoaXMuaXNOZWFyRmlsZSA9IG5vZGUudGV4dC5pbmNsdWRlcyhcIkBuZWFyZmlsZVwiKTtcbi8vICAgICBzdXBlci52aXNpdFNvdXJjZShub2RlKTtcbi8vICAgfVxuXG4vLyAgIHZpc2l0Q2xhc3NEZWNsYXJhdGlvbihub2RlOiBDbGFzc0RlY2xhcmF0aW9uKTogdm9pZCB7XG4vLyAgICAgaWYgKCEodXRpbHMuaGFzRGVjb3JhdG9yKG5vZGUsIE5FQVJfREVDT1JBVE9SKSB8fCB0aGlzLmlzTmVhckZpbGUpKSB7XG4vLyAgICAgICBNZXRob2RJbmplY3Rvci52aXNpdChub2RlKTtcbi8vICAgICAgIHJldHVybjtcbi8vICAgICB9XG4vLyAgICAgdGhpcy5jdXJyZW50Q2xhc3MgPSBub2RlO1xuLy8gICAgIGlmICghdXRpbHMuaGFzRGVjb3JhdG9yKG5vZGUsIE5FQVJfREVDT1JBVE9SKSkge1xuLy8gICAgICAgY29uc29sZS5lcnJvcihcbi8vICAgICAgICAgXCJcXHgxYlszMW1cIixcbi8vICAgICAgICAgYEBuZWFyZmlsZSBpcyBkZXByZWNhdGVkIHVzZSBAJHtORUFSX0RFQ09SQVRPUn0gZGVjb3JhdG9yIG9uICR7dGhpcy5jbGFzc05hbWV9YCxcbi8vICAgICAgICAgXCJcXHgxYlswbVwiXG4vLyAgICAgICApO1xuLy8gICAgIH1cbi8vICAgfVxuXG4vLyAgIHN0YXRpYyB2aXNpdChzb3VyY2VzOiBTb3VyY2VbXSk6IFNvdXJjZVtdIHtcbi8vICAgICBjb25zdCBidWlsZGVyID0gbmV3IEpTT05CaW5kaW5nc0J1aWxkZXIoKTtcbi8vICAgICBidWlsZGVyLnZpc2l0KHNvdXJjZXMpO1xuLy8gICAgIHJldHVybiBzb3VyY2VzO1xuLy8gICB9XG4vLyB9XG4iXX0=