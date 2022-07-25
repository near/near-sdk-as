const TypeDoc = require("typedoc");

async function main() {
    const app = new TypeDoc.Application();

    // Load tsconfig.json / typedoc.json files
    app.options.addReader(new TypeDoc.TSConfigReader());
    app.options.addReader(new TypeDoc.TypeDocReader());

    app.bootstrap({});

    const project = app.converter.convert(app.getEntryPoints() ?? []);

    if (project) {
        const outputDir = "docs";
        await app.generateDocs(project, outputDir);
    }
}

main().catch(console.error);