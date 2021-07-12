import { Transform, Parser, Program, Module, SourceKind } from "visitor-as/as";
// import { JSONBindingsBuilder } from "./JSONBuilder";
import { ClassExporter } from "./classExporter";
import { utils } from "visitor-as";
import * as path from "path";
import { nearFiles } from "./common";
import { FunctionExportWrapper } from "./functionWrapper";
import { MethodInjector } from "@serial-as/transform/dist/methodInjector";

const regex = /\/\/.*@nearfile .*out/;
class JSONTransformer extends Transform {
  parser: Parser;

  afterParse(parser: Parser): void {
    this.parser = parser;
    const writeFile = this.writeFile;
    const baseDir = this.baseDir;

    // Filter for near files
    const sources = nearFiles(this.parser.sources);
    ClassExporter.visit(sources);
    FunctionExportWrapper.visit(sources);
    this.parser.sources.forEach(MethodInjector.visit);

    sources.forEach((source) => {
      if (regex.test(source.text))
        writeFile(
          path.join("out", source.normalizedPath),
          utils.toString(source),
          baseDir
        );
    });

    ClassExporter.classSeen = null!;
  }
}

export { JSONTransformer };
