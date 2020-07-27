//@ts-ignore
let path = require("path");

import {
  Expression,
  Tokenizer,
  Parser,
  Source,
  SourceKind,
  Statement,
  ASTBuilder,
  Node,
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
}

export function posixRelativePath(from: string, to: string): string {
  const relativePath = path.relative(from, to);
  return relativePath.split(path.sep).join(path.posix.sep);
}

export function toString(node: Node): string {
  return ASTBuilder.build(node);
}
