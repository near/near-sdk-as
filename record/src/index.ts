import {
  ClassDeclaration,
  CommonFlags,
  FieldDeclaration,
  MethodDeclaration,
  LiteralKind,
  StringLiteralExpression,
  NodeKind,
  DeclarationStatement,
} from "visitor-as/as";
import { registerDecorator, ClassDecorator, SimpleParser } from "visitor-as";

import { getDecorator, getName, isMethodNamed } from "visitor-as/dist/utils";

function isField(node: DeclarationStatement): boolean {
  return node.kind == NodeKind.FIELDDECLARATION;
}

function isInstanceField(node: DeclarationStatement): boolean {
  return isField(node) && node.is(CommonFlags.INSTANCE);
}

function getRecordId(element: ClassDeclaration): string {
  let decorator = getDecorator(element, "record");
  if (decorator.args == null) {
    return element.name.text;
  }
  if (decorator.args.length > 1) {
    throw new Error(
      `record expects 0 or 1 argument but got ${decorator.args.length}`
    );
  }
  if (!decorator.args[0].isLiteralKind(LiteralKind.STRING)) {
    throw new Error("record expects a string argument");
  }
  return (<StringLiteralExpression>decorator.args[0]).value;
}

class RecordDecorator extends ClassDecorator {
  pkDecoratorName: string = "primaryKey";
  pkSmt?: string;

  visitFieldDeclaration(node: FieldDeclaration): void {
    if (!node.name) return;
    if (
      node.decorators?.find(
        (d) => d.name.range.toString() === `@${this.pkDecoratorName}`
      )
    ) {
      this.pkSmt = `return this.${node.name.text}.toString();`;
    }
  }

  visitMethodDeclaration(node: MethodDeclaration): void {}

  visitClassDeclaration(node: ClassDeclaration): void {
    const fields = node.members.filter(isInstanceField);
    if (fields.length === 0) {
      return;
    }
    this.visit(fields);

    const name = getName(node);
    const recordId = getRecordId(node);
    const methodsStr = getRecordMethods(recordId, name);

    if (this.pkSmt) {
      // we find some field with @primaryKey decorator
      methodsStr.push(getPkMethod(this.pkSmt));
    } else {
      if (!node.members.some(isMethodNamed("primaryKey"))) {
        throw new Error(
          "record require either a field decorated with '@primaryKey' or method 'primaryKey(): string'"
        );
      }
    }

    methodsStr.forEach((e) => {
      const m = SimpleParser.parseClassMember(e, node);
      const mName = m.name.text;
      if (!node.members.some(isMethodNamed(mName))) {
        node.members.push(m);
      }
    });
  }

  get name(): string {
    return "record";
  }
}

const getPkMethod = (smt: string) => `
  primaryKey(): string {
    ${smt}
  }
`;

const getRecordMethods = (recordId: string, className: string) => [
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

export = registerDecorator(new RecordDecorator());
