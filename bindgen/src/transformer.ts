import { Transform, Parser, Source, Module, SourceKind } from "visitor-as/as";
import { JSONBindingsBuilder, isEntry } from "./JSONBuilder";
import { TypeChecker } from "./typeChecker";
import { ClassExporter } from "./classExporter";
import { utils } from "visitor-as";
import * as path from "path";

class JSONTransformer extends Transform {
  parser: Parser;

  afterParse(parser: Parser): void {
    this.parser = parser;
    const writeFile = this.writeFile;
    const baseDir = this.baseDir;
    let newParser = new Parser(parser.diagnostics);

    // Filter for near files
    let files = JSONBindingsBuilder.nearFiles(this.parser.sources);
    JSONBindingsBuilder.checkTestBuild(parser.sources);
    // Visit each file
    files.forEach((source) => {
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
      // Export main singleton class if one is present
      ClassExporter.visit(source);
      // Build new Source
      let sourceText = JSONBindingsBuilder.build(source);
      if (writeOut) {
        writeFile(path.join("out", source.normalizedPath), sourceText, baseDir);
      }
      // Parses file and any new imports added to the source
      newParser.parseFile(
        sourceText,
        path.join(isEntry(source) ? "" : "./", source.normalizedPath),
        isEntry(source)
      );
      let newSource = newParser.sources.pop()!;
      this.program.sources.push(newSource);
      parser.donelog.add(source.internalPath);
      parser.seenlog.add(source.internalPath);
      parser.sources.push(newSource);
    });

    ClassExporter.classSeen = null!;
  }
}

export { JSONTransformer };
