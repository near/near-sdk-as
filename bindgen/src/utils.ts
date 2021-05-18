//@ts-ignore
let path = require("path");

import {
  Token,
  Expression,
  Tokenizer,
  Parser,
  Source,
  SourceKind,
  Statement,
  ASTBuilder,
  Node,
  MethodDeclaration,
  ClassDeclaration,
} from "visitor-as/as";

export class SimpleParser {
  private static parser = new Parser();

  private static getTokenizer(s: string): Tokenizer {
    return new Tokenizer(new Source(SourceKind.USER, "index.ts", s));
  }

  static parseExpression(s: string): Expression {
    let res = this.parser.parseExpression(this.getTokenizer(s));
    if (res == null) {
      throw new Error("Failed to parse the expression: '" + s + "'");
    }
    return res;
  }

  static parseStatement(s: string, topLevel: boolean = false): Statement {
    let res = this.parser.parseStatement(this.getTokenizer(s), topLevel);
    if (res == null) {
      throw new Error("Failed to parse the expression: '" + s + "'");
    }
    return res;
  }

  static parseTopLevel(s: string): Statement[] {
    let tn = this.getTokenizer(s);
    let statements: Statement[] = [];
    while (!tn.skip(Token.ENDOFFILE)) {
      let statement = this.parser.parseTopLevelStatement(tn);
      if (statement) {
        statements.push(statement);
      } else {
        this.parser.skipStatement(tn);
      }
    }
    return statements;
  }

  static parseMethodDeclaration(
    s: string,
    parent: ClassDeclaration
  ): MethodDeclaration {
    let tn = this.getTokenizer(s);
    let res = this.parser.parseClassMember(tn, parent);
    if (res == null) {
      throw new Error("Failed to parse class member: '" + s + "'");
    }
    if (!(res instanceof MethodDeclaration)) {
      throw new Error("'" + s + "' is not a method declaration");
    }
    return res;
  }
}

export function posixRelativePath(from: string, to: string): string {
  const relativePath = path.relative(from, to);
  return relativePath.split(path.sep).join(path.posix.sep);
}

export function toString(node: Node): string {
  return ASTBuilder.build(node);
}

const capitalPattern = /([a-z])([A-Z])/g;
const doubleCapital = /([A-Z])([A-Z][a-z])/g;

export function makeSnakeCase(s: string): string {
  return s
    .replace(capitalPattern, "$1_$2")
    .replace(doubleCapital, "$1_$2")
    .toLowerCase();
}
