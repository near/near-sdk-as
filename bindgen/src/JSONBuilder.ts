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
