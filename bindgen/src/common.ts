import {
  CommonFlags,
  DeclarationStatement,
  FunctionDeclaration,
  NodeKind,
  Source,
  SourceKind,
  Node,
  ClassDeclaration,
  FieldDeclaration,
  ParameterNode,
  Statement,
  BlockStatement,
} from "visitor-as/as";

import { SimpleParser, utils } from "visitor-as";

export const NEAR_DECORATOR = "nearBindgen";
export const PRIVATE_DECORATOR = "contractPrivate";
export const WRAPPER_PREFIX = "__wrapper_";

export function hasNearDecorator(stmt: Source): boolean {
  return (
    (isEntry(stmt) ||
      stmt.text.includes("@nearfile") ||
      stmt.statements.some(
        (s) =>
          s instanceof DeclarationStatement &&
          utils.hasDecorator(s, NEAR_DECORATOR)
      )) &&
    !stmt.text.includes("@notNearfile")
  );
}

export function isEntry(source: Source | Node): boolean {
  return source.range.source.sourceKind == SourceKind.USER_ENTRY;
}

export function isClass(type: Node): boolean {
  return type.kind == NodeKind.CLASSDECLARATION;
}

export function isField(mem: DeclarationStatement) {
  return mem.kind == NodeKind.FIELDDECLARATION;
}

export function isStatic(mem: DeclarationStatement) {
  return mem.is(CommonFlags.STATIC);
}

export function isEncodable(mem: DeclarationStatement) {
  return isField(mem) && !isStatic(mem);
}

export function isPayable(func: FunctionDeclaration): boolean {
  return (
    func.decorators != null &&
    func.decorators.some((s) => utils.toString(s.name) != "payable")
  );
}

export function nearFiles(sources: Source[]): Source[] {
  return sources.filter(hasNearDecorator);
}

export function createDecodeStatements(_class: ClassDeclaration): string[] {
  return _class.members
    .filter(isEncodable)
    .map((field: FieldDeclaration): string => {
      const name = utils.toString(field.name);
      return (
        createDecodeStatement(field, `this.${name} = obj.has("${name}") ? `) +
        `: ${
          field.initializer != null
            ? utils.toString(field.initializer)
            : `this.${name}`
        };`
      );
    });
}

export function createDecodeStatement(
  field: FieldDeclaration | ParameterNode,
  setterPrefix = ""
): string {
  let T = utils.toString(field.type!);
  let name = utils.toString(field.name);
  return `${setterPrefix}decode<${T}, JSON.Obj>(obj, "${name}")`;
}

export function createEncodeStatements(_class: ClassDeclaration): string[] {
  return _class.members
    .filter(isEncodable)
    .map((field: FieldDeclaration): string => {
      let T = utils.toString(field.type!);
      let name = utils.toString(field.name);
      return `encode<${T}, JSONEncoder>(this.${name}, "${name}", encoder);`;
    });
}

export function returnsVoid(node: FunctionDeclaration): boolean {
  return utils.toString(node.signature.returnType) === "void";
}

export function numOfParameters(node: FunctionDeclaration): number {
  return node.signature.parameters.length;
}

export function parseTopLevelStatements(sourceCode: string): Statement[] {
  const block = SimpleParser.parseTopLevelStatement(sourceCode);
  if (block instanceof BlockStatement) {
    return block.statements;
  }
  return [block];
}
