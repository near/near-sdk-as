import { Transform, Parser, Source, Module } from "visitor-as/as";
import { JSONBindingsBuilder, isEntry } from "./JSONBuilder";
import { TypeChecker } from "./typeChecker";
import { ClassExporter } from "./classExporter";

class JSONTransformer extends Transform {
  parser: Parser;
  static isTest: boolean = false;

  afterParse(parser: Parser): void {
    this.parser = parser;
    const writeFile = this.writeFile;
    const baseDir = this.baseDir;
    let newParser = new Parser(parser.diagnostics);

    // Filter for near files
    let files = JSONBindingsBuilder.nearFiles(this.parser.sources);
    JSONTransformer.isTest = files
      .map((source) => source.normalizedPath)
      .some((path) => path.includes("spec"));
    // Visit each file
    files.forEach((source) => {
      ClassExporter.visit(source);
      let writeOut = /\/\/.*@nearfile .*out/.test(source.text);
      // Remove from logs in parser
      parser.donelog.delete(source.internalPath);
      parser.seenlog.delete(source.internalPath);
      // Remove from programs sources
      this.parser.sources = this.parser.sources.filter(
        (_source: Source) => _source !== source
      );
      this.program.sources = this.program.sources.filter(
        (_source: Source) => _source !== source
      );
      // Build new Source
      let sourceText = JSONBindingsBuilder.build(source);
      if (writeOut) {
        writeFile("out/" + source.normalizedPath, sourceText, baseDir);
      }
      // Parses file and any new imports added to the source
      newParser.parseFile(
        sourceText,
        (isEntry(source) ? "" : "./") + source.normalizedPath,
        isEntry(source)
      );
      let newSource = newParser.sources.pop()!;
      this.program.sources.push(newSource);
      parser.donelog.add(source.internalPath);
      parser.seenlog.add(source.internalPath);
      parser.sources.push(newSource);
    });

    if (!JSONTransformer.isTest) {
      TypeChecker.check(parser);
    }
  }

  /** Check for floats */
  afterCompile(module: Module): void {
    if (!JSONTransformer.isTest) {
      TypeChecker.checkBinary(module);
    }
  }
}

export { JSONTransformer };
