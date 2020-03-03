"use strict";
// tslint:disable: as-internal-case
Object.defineProperty(exports, "__esModule", { value: true });
const ast_1 = require("./ast");
// declare function i64_to_string(i: I64): string;
// import { i64_to_string } from "../../../src/glue/i64"
/** An AST builder. */
class ASTBuilder {
    constructor() {
        this.sb = [];
        this.indentLevel = 0;
    }
    /** Rebuilds the textual source from the specified AST, as far as possible. */
    static build(node) {
        var builder = new ASTBuilder();
        builder.visitNode(node);
        return builder.finish();
    }
    visitNode(node) {
        switch (node.kind) {
            case ast_1.NodeKind.SOURCE: {
                this.visitSource(node);
                break;
            }
            // types
            case ast_1.NodeKind.NAMEDTYPE: {
                this.visitNamedTypeNode(node);
                break;
            }
            case ast_1.NodeKind.FUNCTIONTYPE: {
                this.visitFunctionTypeNode(node);
                break;
            }
            case ast_1.NodeKind.TYPEPARAMETER: {
                this.visitTypeParameter(node);
                break;
            }
            // expressions
            case ast_1.NodeKind.FALSE:
            case ast_1.NodeKind.NULL:
            case ast_1.NodeKind.SUPER:
            case ast_1.NodeKind.THIS:
            case ast_1.NodeKind.TRUE:
            case ast_1.NodeKind.CONSTRUCTOR:
            case ast_1.NodeKind.IDENTIFIER: {
                this.visitIdentifierExpression(node);
                break;
            }
            case ast_1.NodeKind.ASSERTION: {
                this.visitAssertionExpression(node);
                break;
            }
            case ast_1.NodeKind.BINARY: {
                this.visitBinaryExpression(node);
                break;
            }
            case ast_1.NodeKind.CALL: {
                this.visitCallExpression(node);
                break;
            }
            case ast_1.NodeKind.CLASS: {
                this.visitClassExpression(node);
                break;
            }
            case ast_1.NodeKind.COMMA: {
                this.visitCommaExpression(node);
                break;
            }
            case ast_1.NodeKind.ELEMENTACCESS: {
                this.visitElementAccessExpression(node);
                break;
            }
            case ast_1.NodeKind.FUNCTION: {
                this.visitFunctionExpression(node);
                break;
            }
            case ast_1.NodeKind.INSTANCEOF: {
                this.visitInstanceOfExpression(node);
                break;
            }
            case ast_1.NodeKind.LITERAL: {
                this.visitLiteralExpression(node);
                break;
            }
            case ast_1.NodeKind.NEW: {
                this.visitNewExpression(node);
                break;
            }
            case ast_1.NodeKind.PARENTHESIZED: {
                this.visitParenthesizedExpression(node);
                break;
            }
            case ast_1.NodeKind.PROPERTYACCESS: {
                this.visitPropertyAccessExpression(node);
                break;
            }
            case ast_1.NodeKind.TERNARY: {
                this.visitTernaryExpression(node);
                break;
            }
            case ast_1.NodeKind.UNARYPOSTFIX: {
                this.visitUnaryPostfixExpression(node);
                break;
            }
            case ast_1.NodeKind.UNARYPREFIX: {
                this.visitUnaryPrefixExpression(node);
                break;
            }
            // statements
            case ast_1.NodeKind.BLOCK: {
                this.visitBlockStatement(node);
                break;
            }
            case ast_1.NodeKind.BREAK: {
                this.visitBreakStatement(node);
                break;
            }
            case ast_1.NodeKind.CONTINUE: {
                this.visitContinueStatement(node);
                break;
            }
            case ast_1.NodeKind.DO: {
                this.visitDoStatement(node);
                break;
            }
            case ast_1.NodeKind.EMPTY: {
                this.visitEmptyStatement(node);
                break;
            }
            case ast_1.NodeKind.EXPORT: {
                this.visitExportStatement(node);
                break;
            }
            case ast_1.NodeKind.EXPORTDEFAULT: {
                this.visitExportDefaultStatement(node);
                break;
            }
            case ast_1.NodeKind.EXPORTIMPORT: {
                this.visitExportImportStatement(node);
                break;
            }
            case ast_1.NodeKind.EXPRESSION: {
                this.visitExpressionStatement(node);
                break;
            }
            case ast_1.NodeKind.FOR: {
                this.visitForStatement(node);
                break;
            }
            case ast_1.NodeKind.IF: {
                this.visitIfStatement(node);
                break;
            }
            case ast_1.NodeKind.IMPORT: {
                this.visitImportStatement(node);
                break;
            }
            case ast_1.NodeKind.RETURN: {
                this.visitReturnStatement(node);
                break;
            }
            case ast_1.NodeKind.SWITCH: {
                this.visitSwitchStatement(node);
                break;
            }
            case ast_1.NodeKind.THROW: {
                this.visitThrowStatement(node);
                break;
            }
            case ast_1.NodeKind.TRY: {
                this.visitTryStatement(node);
                break;
            }
            case ast_1.NodeKind.VARIABLE: {
                this.visitVariableStatement(node);
                break;
            }
            case ast_1.NodeKind.WHILE: {
                this.visitWhileStatement(node);
                break;
            }
            // declaration statements
            case ast_1.NodeKind.CLASSDECLARATION: {
                this.visitClassDeclaration(node);
                break;
            }
            case ast_1.NodeKind.ENUMDECLARATION: {
                this.visitEnumDeclaration(node);
                break;
            }
            case ast_1.NodeKind.ENUMVALUEDECLARATION: {
                this.visitEnumValueDeclaration(node);
                break;
            }
            case ast_1.NodeKind.FIELDDECLARATION: {
                this.visitFieldDeclaration(node);
                break;
            }
            case ast_1.NodeKind.FUNCTIONDECLARATION: {
                this.visitFunctionDeclaration(node);
                break;
            }
            case ast_1.NodeKind.IMPORTDECLARATION: {
                this.visitImportDeclaration(node);
                break;
            }
            case ast_1.NodeKind.INDEXSIGNATUREDECLARATION: {
                this.visitIndexSignatureDeclaration(node);
                break;
            }
            case ast_1.NodeKind.INTERFACEDECLARATION: {
                this.visitInterfaceDeclaration(node);
                break;
            }
            case ast_1.NodeKind.METHODDECLARATION: {
                this.visitMethodDeclaration(node);
                break;
            }
            case ast_1.NodeKind.NAMESPACEDECLARATION: {
                this.visitNamespaceDeclaration(node);
                break;
            }
            case ast_1.NodeKind.TYPEDECLARATION: {
                this.visitTypeDeclaration(node);
                break;
            }
            case ast_1.NodeKind.VARIABLEDECLARATION: {
                this.visitVariableDeclaration(node);
                break;
            }
            // other
            case ast_1.NodeKind.DECORATOR: {
                this.serializeDecorator(node);
                break;
            }
            case ast_1.NodeKind.EXPORTMEMBER: {
                this.visitExportMember(node);
                break;
            }
            case ast_1.NodeKind.PARAMETER: {
                this.serializeParameter(node);
                break;
            }
            case ast_1.NodeKind.SWITCHCASE: {
                this.visitSwitchCase(node);
                break;
            }
            default:
                assert(false);
        }
    }
    visitSource(source) {
        var statements = source.statements;
        for (let i = 0, k = statements.length; i < k; ++i) {
            this.visitNodeAndTerminate(statements[i]);
        }
    }
    // types
    visitTypeNode(node) {
        switch (node.kind) {
            case ast_1.NodeKind.NAMEDTYPE: {
                this.visitNamedTypeNode(node);
                break;
            }
            case ast_1.NodeKind.FUNCTIONTYPE: {
                this.visitFunctionTypeNode(node);
                break;
            }
            default:
                assert(false);
        }
    }
    visitTypeName(node) {
        this.visitIdentifierExpression(node.identifier);
        var sb = this.sb;
        var current = node.next;
        while (current) {
            sb.push(".");
            this.visitIdentifierExpression(current.identifier);
            current = current.next;
        }
    }
    visitNamedTypeNode(node) {
        this.visitTypeName(node.name);
        var typeArguments = node.typeArguments;
        if (typeArguments) {
            let numTypeArguments = typeArguments.length;
            let sb = this.sb;
            if (numTypeArguments) {
                sb.push("<");
                this.visitTypeNode(typeArguments[0]);
                for (let i = 1; i < numTypeArguments; ++i) {
                    sb.push(", ");
                    this.visitTypeNode(typeArguments[i]);
                }
                sb.push(">");
            }
            if (node.isNullable)
                sb.push(" | null");
        }
    }
    visitFunctionTypeNode(node) {
        var isNullable = node.isNullable;
        var sb = this.sb;
        sb.push(isNullable ? "((" : "(");
        var explicitThisType = node.explicitThisType;
        if (explicitThisType) {
            sb.push("this: ");
            this.visitTypeNode(explicitThisType);
        }
        var parameters = node.parameters;
        var numParameters = parameters.length;
        if (numParameters) {
            if (explicitThisType)
                sb.push(", ");
            this.serializeParameter(parameters[0]);
            for (let i = 1; i < numParameters; ++i) {
                sb.push(", ");
                this.serializeParameter(parameters[i]);
            }
        }
        var returnType = node.returnType;
        if (returnType) {
            sb.push(") => ");
            this.visitTypeNode(returnType);
        }
        else {
            sb.push(") => void");
        }
        if (isNullable)
            sb.push(") | null");
    }
    visitTypeParameter(node) {
        this.visitIdentifierExpression(node.name);
        var extendsType = node.extendsType;
        if (extendsType) {
            this.sb.push(" extends ");
            this.visitTypeNode(extendsType);
        }
        var defaultType = node.defaultType;
        if (defaultType) {
            this.sb.push("=");
            this.visitTypeNode(defaultType);
        }
    }
    // expressions
    visitIdentifierExpression(node) {
        if (node.isQuoted)
            this.visitStringLiteral(node.text);
        else
            this.sb.push(node.text);
    }
    visitArrayLiteralExpression(node) {
        var sb = this.sb;
        sb.push("[");
        var elements = node.elementExpressions;
        var numElements = elements.length;
        if (numElements) {
            if (elements[0])
                this.visitNode(elements[0]);
            for (let i = 1; i < numElements; ++i) {
                sb.push(", ");
                if (elements[i])
                    this.visitNode(elements[i]);
            }
        }
        sb.push("]");
    }
    visitObjectLiteralExpression(node) {
        var sb = this.sb;
        var names = node.names;
        var values = node.values;
        var numElements = names.length;
        assert(numElements == values.length);
        if (numElements) {
            sb.push("{\n");
            ast_1.indent(sb, ++this.indentLevel);
            this.visitNode(names[0]);
            sb.push(": ");
            this.visitNode(values[0]);
            for (let i = 1; i < numElements; ++i) {
                sb.push(",\n");
                ast_1.indent(sb, this.indentLevel);
                let name = names[i];
                let value = values[i];
                if (name === value) {
                    this.visitNode(name);
                }
                else {
                    this.visitNode(name);
                    sb.push(": ");
                    this.visitNode(value);
                }
            }
            sb.push("\n");
            ast_1.indent(sb, --this.indentLevel);
            sb.push("}");
        }
        else {
            sb.push("{}");
        }
    }
    visitAssertionExpression(node) {
        var sb = this.sb;
        switch (node.assertionKind) {
            case ast_1.AssertionKind.PREFIX: {
                sb.push("<");
                this.visitTypeNode(assert(node.toType));
                sb.push(">");
                this.visitNode(node.expression);
                break;
            }
            case ast_1.AssertionKind.AS: {
                this.visitNode(node.expression);
                sb.push(" as ");
                this.visitTypeNode(assert(node.toType));
                break;
            }
            case ast_1.AssertionKind.NONNULL: {
                this.visitNode(node.expression);
                sb.push("!");
                break;
            }
            default:
                assert(false);
        }
    }
    visitBinaryExpression(node) {
        var sb = this.sb;
        this.visitNode(node.left);
        sb.push(" ");
        sb.push(ast_1.operatorTokenToString(node.operator));
        sb.push(" ");
        this.visitNode(node.right);
    }
    visitCallExpression(node) {
        var sb = this.sb;
        this.visitNode(node.expression);
        var typeArguments = node.typeArguments;
        if (typeArguments) {
            let numTypeArguments = typeArguments.length;
            if (numTypeArguments) {
                sb.push("<");
                this.visitTypeNode(typeArguments[0]);
                for (let i = 1; i < numTypeArguments; ++i) {
                    sb.push(", ");
                    this.visitTypeNode(typeArguments[i]);
                }
                sb.push(">(");
            }
        }
        else {
            sb.push("(");
        }
        var args = node.arguments;
        var numArgs = args.length;
        if (numArgs) {
            this.visitNode(args[0]);
            for (let i = 1; i < numArgs; ++i) {
                sb.push(", ");
                this.visitNode(args[i]);
            }
        }
        sb.push(")");
    }
    visitArguments(typeArguments, args) {
        var sb = this.sb;
        if (typeArguments) {
            let numTypeArguments = typeArguments.length;
            if (numTypeArguments) {
                sb.push("<");
                this.visitTypeNode(typeArguments[0]);
                for (let i = 1; i < numTypeArguments; ++i) {
                    sb.push(", ");
                    this.visitTypeNode(typeArguments[i]);
                }
                sb.push(">(");
            }
        }
        else {
            sb.push("(");
        }
        var numArgs = args.length;
        if (numArgs) {
            this.visitNode(args[0]);
            for (let i = 1; i < numArgs; ++i) {
                sb.push(", ");
                this.visitNode(args[i]);
            }
        }
        sb.push(")");
    }
    visitClassExpression(node) {
        var declaration = node.declaration;
        this.visitClassDeclaration(declaration);
    }
    visitCommaExpression(node) {
        var expressions = node.expressions;
        var numExpressions = assert(expressions.length);
        this.visitNode(expressions[0]);
        var sb = this.sb;
        for (let i = 1; i < numExpressions; ++i) {
            sb.push(",");
            this.visitNode(expressions[i]);
        }
    }
    visitElementAccessExpression(node) {
        var sb = this.sb;
        this.visitNode(node.expression);
        sb.push("[");
        this.visitNode(node.elementExpression);
        sb.push("]");
    }
    visitFunctionExpression(node) {
        var declaration = node.declaration;
        if (!declaration.arrowKind) {
            if (declaration.name.text.length) {
                this.sb.push("function ");
            }
            else {
                this.sb.push("function");
            }
        }
        else {
            assert(declaration.name.text.length == 0);
        }
        this.visitFunctionCommon(declaration);
    }
    visitLiteralExpression(node) {
        switch (node.literalKind) {
            case ast_1.LiteralKind.FLOAT: {
                this.visitFloatLiteralExpression(node);
                break;
            }
            case ast_1.LiteralKind.INTEGER: {
                this.visitIntegerLiteralExpression(node);
                break;
            }
            case ast_1.LiteralKind.STRING: {
                this.visitStringLiteralExpression(node);
                break;
            }
            case ast_1.LiteralKind.REGEXP: {
                this.visitRegexpLiteralExpression(node);
                break;
            }
            case ast_1.LiteralKind.ARRAY: {
                this.visitArrayLiteralExpression(node);
                break;
            }
            case ast_1.LiteralKind.OBJECT: {
                this.visitObjectLiteralExpression(node);
                break;
            }
            default: {
                assert(false);
                break;
            }
        }
    }
    visitFloatLiteralExpression(node) {
        this.sb.push(node.value.toString(10));
    }
    visitInstanceOfExpression(node) {
        this.visitNode(node.expression);
        this.sb.push(" instanceof ");
        this.visitTypeNode(node.isType);
    }
    visitIntegerLiteralExpression(node) {
        this.sb.push(i64_to_string(node.value));
    }
    visitStringLiteral(str, singleQuoted = false) {
        var sb = this.sb;
        var off = 0;
        var quote = singleQuoted ? "'" : "\"";
        sb.push(quote);
        var i = 0;
        for (let k = str.length; i < k;) {
            switch (str.charCodeAt(i)) {
                case 0 /* NULL */: {
                    if (i > off)
                        sb.push(str.substring(off, (off = i + 1)));
                    sb.push("\\0");
                    off = ++i;
                    break;
                }
                case 8 /* BACKSPACE */: {
                    if (i > off)
                        sb.push(str.substring(off, i));
                    off = ++i;
                    sb.push("\\b");
                    break;
                }
                case 9 /* TAB */: {
                    if (i > off)
                        sb.push(str.substring(off, i));
                    off = ++i;
                    sb.push("\\t");
                    break;
                }
                case 10 /* LINEFEED */: {
                    if (i > off)
                        sb.push(str.substring(off, i));
                    off = ++i;
                    sb.push("\\n");
                    break;
                }
                case 11 /* VERTICALTAB */: {
                    if (i > off)
                        sb.push(str.substring(off, i));
                    off = ++i;
                    sb.push("\\v");
                    break;
                }
                case 12 /* FORMFEED */: {
                    if (i > off)
                        sb.push(str.substring(off, i));
                    off = ++i;
                    sb.push("\\f");
                    break;
                }
                case 13 /* CARRIAGERETURN */: {
                    if (i > off)
                        sb.push(str.substring(off, i));
                    sb.push("\\r");
                    off = ++i;
                    break;
                }
                case 34 /* DOUBLEQUOTE */: {
                    if (!singleQuoted) {
                        if (i > off)
                            sb.push(str.substring(off, i));
                        sb.push("\\\"");
                        off = ++i;
                    }
                    else {
                        ++i;
                    }
                    break;
                }
                case 39 /* SINGLEQUOTE */: {
                    if (singleQuoted) {
                        if (i > off)
                            sb.push(str.substring(off, i));
                        sb.push("\\'");
                        off = ++i;
                    }
                    else {
                        ++i;
                    }
                    break;
                }
                case 92 /* BACKSLASH */: {
                    if (i > off)
                        sb.push(str.substring(off, i));
                    sb.push("\\\\");
                    off = ++i;
                    break;
                }
                default: {
                    ++i;
                    break;
                }
            }
        }
        if (i > off)
            sb.push(str.substring(off, i));
        sb.push(quote);
    }
    visitStringLiteralExpression(node) {
        this.visitStringLiteral(node.value);
    }
    visitRegexpLiteralExpression(node) {
        var sb = this.sb;
        sb.push("/");
        sb.push(node.pattern);
        sb.push("/");
        sb.push(node.patternFlags);
    }
    visitNewExpression(node) {
        this.sb.push("new ");
        this.visitTypeName(node.typeName);
        this.visitArguments(node.typeArguments, node.arguments);
    }
    visitParenthesizedExpression(node) {
        var sb = this.sb;
        sb.push("(");
        this.visitNode(node.expression);
        sb.push(")");
    }
    visitPropertyAccessExpression(node) {
        this.visitNode(node.expression);
        this.sb.push(".");
        this.visitIdentifierExpression(node.property);
    }
    visitTernaryExpression(node) {
        var sb = this.sb;
        this.visitNode(node.condition);
        sb.push(" ? ");
        this.visitNode(node.ifThen);
        sb.push(" : ");
        this.visitNode(node.ifElse);
    }
    visitUnaryExpression(node) {
        switch (node.kind) {
            case ast_1.NodeKind.UNARYPOSTFIX: {
                this.visitUnaryPostfixExpression(node);
                break;
            }
            case ast_1.NodeKind.UNARYPREFIX: {
                this.visitUnaryPrefixExpression(node);
                break;
            }
            default:
                assert(false);
        }
    }
    visitUnaryPostfixExpression(node) {
        this.visitNode(node.operand);
        this.sb.push(ast_1.operatorTokenToString(node.operator));
    }
    visitUnaryPrefixExpression(node) {
        this.sb.push(ast_1.operatorTokenToString(node.operator));
        this.visitNode(node.operand);
    }
    // statements
    visitNodeAndTerminate(statement) {
        this.visitNode(statement);
        var sb = this.sb;
        if (!sb.length || // leading EmptyStatement
            statement.kind == ast_1.NodeKind.VARIABLE || // potentially assigns a FunctionExpression
            statement.kind == ast_1.NodeKind.EXPRESSION // potentially assigns a FunctionExpression
        ) {
            sb.push(";\n");
        }
        else {
            let last = sb[sb.length - 1];
            let lastCharPos = last.length - 1;
            if (lastCharPos >= 0 &&
                (last.charCodeAt(lastCharPos) == 125 /* CLOSEBRACE */ ||
                    last.charCodeAt(lastCharPos) == 59 /* SEMICOLON */)) {
                sb.push("\n");
            }
            else {
                sb.push(";\n");
            }
        }
    }
    visitBlockStatement(node) {
        var sb = this.sb;
        var statements = node.statements;
        var numStatements = statements.length;
        if (numStatements) {
            sb.push("{\n");
            let indentLevel = ++this.indentLevel;
            for (let i = 0; i < numStatements; ++i) {
                ast_1.indent(sb, indentLevel);
                this.visitNodeAndTerminate(statements[i]);
            }
            ast_1.indent(sb, --this.indentLevel);
            sb.push("}");
        }
        else {
            sb.push("{}");
        }
    }
    visitBreakStatement(node) {
        var label = node.label;
        if (label) {
            this.sb.push("break ");
            this.visitIdentifierExpression(label);
        }
        else {
            this.sb.push("break");
        }
    }
    visitContinueStatement(node) {
        var label = node.label;
        if (label) {
            this.sb.push("continue ");
            this.visitIdentifierExpression(label);
        }
        else {
            this.sb.push("continue");
        }
    }
    visitClassDeclaration(node, isDefault = false) {
        var decorators = node.decorators;
        if (decorators) {
            for (let i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        var sb = this.sb;
        if (isDefault) {
            sb.push("export default ");
        }
        else {
            this.serializeExternalModifiers(node);
        }
        if (node.is(ast_1.CommonFlags.ABSTRACT))
            sb.push("abstract ");
        if (node.name.text.length) {
            sb.push("class ");
            this.visitIdentifierExpression(node.name);
        }
        else {
            sb.push("class");
        }
        var typeParameters = node.typeParameters;
        if (typeParameters && typeParameters.length) {
            sb.push("<");
            this.visitTypeParameter(typeParameters[0]);
            for (let i = 1, k = typeParameters.length; i < k; ++i) {
                sb.push(", ");
                this.visitTypeParameter(typeParameters[i]);
            }
            sb.push(">");
        }
        var extendsType = node.extendsType;
        if (extendsType) {
            sb.push(" extends ");
            this.visitTypeNode(extendsType);
        }
        var implementsTypes = node.implementsTypes;
        if (implementsTypes) {
            let numImplementsTypes = implementsTypes.length;
            if (numImplementsTypes) {
                sb.push(" implements ");
                this.visitTypeNode(implementsTypes[0]);
                for (let i = 1; i < numImplementsTypes; ++i) {
                    sb.push(", ");
                    this.visitTypeNode(implementsTypes[i]);
                }
            }
        }
        var members = node.members;
        var numMembers = members.length;
        if (numMembers) {
            sb.push(" {\n");
            let indentLevel = ++this.indentLevel;
            for (let i = 0, k = members.length; i < k; ++i) {
                let member = members[i];
                if (member.kind != ast_1.NodeKind.FIELDDECLARATION ||
                    member.parameterIndex < 0) {
                    ast_1.indent(sb, indentLevel);
                    this.visitNodeAndTerminate(member);
                }
            }
            ast_1.indent(sb, --this.indentLevel);
            sb.push("}");
        }
        else {
            sb.push(" {}");
        }
    }
    visitDoStatement(node) {
        var sb = this.sb;
        sb.push("do ");
        this.visitNode(node.statement);
        if (node.statement.kind == ast_1.NodeKind.BLOCK) {
            sb.push(" while (");
        }
        else {
            sb.push(";\n");
            ast_1.indent(sb, this.indentLevel);
            sb.push("while (");
        }
        this.visitNode(node.condition);
        sb.push(")");
    }
    visitEmptyStatement(node) { }
    visitEnumDeclaration(node, isDefault = false) {
        var sb = this.sb;
        if (isDefault) {
            sb.push("export default ");
        }
        else {
            this.serializeExternalModifiers(node);
        }
        if (node.is(ast_1.CommonFlags.CONST))
            sb.push("const ");
        sb.push("enum ");
        this.visitIdentifierExpression(node.name);
        var values = node.values;
        var numValues = values.length;
        if (numValues) {
            sb.push(" {\n");
            let indentLevel = ++this.indentLevel;
            ast_1.indent(sb, indentLevel);
            this.visitEnumValueDeclaration(node.values[0]);
            for (let i = 1; i < numValues; ++i) {
                sb.push(",\n");
                ast_1.indent(sb, indentLevel);
                this.visitEnumValueDeclaration(node.values[i]);
            }
            sb.push("\n");
            ast_1.indent(sb, --this.indentLevel);
            sb.push("}");
        }
        else {
            sb.push(" {}");
        }
    }
    visitEnumValueDeclaration(node) {
        this.visitIdentifierExpression(node.name);
        if (node.value) {
            this.sb.push(" = ");
            this.visitNode(node.value);
        }
    }
    visitExportImportStatement(node) {
        var sb = this.sb;
        sb.push("export import ");
        this.visitIdentifierExpression(node.externalName);
        sb.push(" = ");
        this.visitIdentifierExpression(node.name);
    }
    visitExportMember(node) {
        this.visitIdentifierExpression(node.localName);
        if (node.exportedName.text != node.localName.text) {
            this.sb.push(" as ");
            this.visitIdentifierExpression(node.exportedName);
        }
    }
    visitExportStatement(node) {
        var sb = this.sb;
        if (node.isDeclare) {
            sb.push("declare ");
        }
        var members = node.members;
        if (members && members.length) {
            let numMembers = members.length;
            sb.push("export {\n");
            let indentLevel = ++this.indentLevel;
            ast_1.indent(sb, indentLevel);
            this.visitExportMember(members[0]);
            for (let i = 1; i < numMembers; ++i) {
                sb.push(",\n");
                ast_1.indent(sb, indentLevel);
                this.visitExportMember(members[i]);
            }
            --this.indentLevel;
            sb.push("\n}");
        }
        else {
            sb.push("export {}");
        }
        var path = node.path;
        if (path) {
            sb.push(" from ");
            this.visitStringLiteralExpression(path);
        }
        sb.push(";");
    }
    visitExportDefaultStatement(node) {
        var declaration = node.declaration;
        switch (declaration.kind) {
            case ast_1.NodeKind.ENUMDECLARATION: {
                this.visitEnumDeclaration(declaration, true);
                break;
            }
            case ast_1.NodeKind.FUNCTIONDECLARATION: {
                this.visitFunctionDeclaration(declaration, true);
                break;
            }
            case ast_1.NodeKind.CLASSDECLARATION: {
                this.visitClassDeclaration(declaration, true);
                break;
            }
            case ast_1.NodeKind.INTERFACEDECLARATION: {
                this.visitInterfaceDeclaration(declaration, true);
                break;
            }
            case ast_1.NodeKind.NAMESPACEDECLARATION: {
                this.visitNamespaceDeclaration(declaration, true);
                break;
            }
            default:
                assert(false);
        }
    }
    visitExpressionStatement(node) {
        this.visitNode(node.expression);
    }
    visitFieldDeclaration(node) {
        var decorators = node.decorators;
        if (decorators) {
            for (let i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        this.serializeAccessModifiers(node);
        this.visitIdentifierExpression(node.name);
        var sb = this.sb;
        if (node.flags & ast_1.CommonFlags.DEFINITE_ASSIGNMENT) {
            sb.push("!");
        }
        var type = node.type;
        if (type) {
            sb.push(": ");
            this.visitTypeNode(type);
        }
        var initializer = node.initializer;
        if (initializer) {
            sb.push(" = ");
            this.visitNode(initializer);
        }
    }
    visitForStatement(node) {
        var sb = this.sb;
        sb.push("for (");
        var initializer = node.initializer;
        if (initializer) {
            this.visitNode(initializer);
        }
        var condition = node.condition;
        if (condition) {
            sb.push("; ");
            this.visitNode(condition);
        }
        else {
            sb.push(";");
        }
        var incrementor = node.incrementor;
        if (incrementor) {
            sb.push("; ");
            this.visitNode(incrementor);
        }
        else {
            sb.push(";");
        }
        sb.push(") ");
        this.visitNode(node.statement);
    }
    visitFunctionDeclaration(node, isDefault = false) {
        var sb = this.sb;
        var decorators = node.decorators;
        if (decorators) {
            for (let i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        if (isDefault) {
            sb.push("export default ");
        }
        else {
            this.serializeExternalModifiers(node);
            this.serializeAccessModifiers(node);
        }
        if (node.name.text.length) {
            sb.push("function ");
        }
        else {
            sb.push("function");
        }
        this.visitFunctionCommon(node);
    }
    visitFunctionCommon(node) {
        var sb = this.sb;
        this.visitIdentifierExpression(node.name);
        var signature = node.signature;
        var typeParameters = node.typeParameters;
        if (typeParameters) {
            let numTypeParameters = typeParameters.length;
            if (numTypeParameters) {
                sb.push("<");
                this.visitTypeParameter(typeParameters[0]);
                for (let i = 1; i < numTypeParameters; ++i) {
                    sb.push(", ");
                    this.visitTypeParameter(typeParameters[i]);
                }
                sb.push(">");
            }
        }
        if (node.arrowKind == 2 /* ARROW_SINGLE */) {
            let parameters = signature.parameters;
            assert(parameters.length == 1);
            assert(!signature.explicitThisType);
            this.serializeParameter(parameters[0]);
        }
        else {
            sb.push("(");
            let parameters = signature.parameters;
            let numParameters = parameters.length;
            let explicitThisType = signature.explicitThisType;
            if (explicitThisType) {
                sb.push("this: ");
                this.visitTypeNode(explicitThisType);
            }
            if (numParameters) {
                if (explicitThisType)
                    sb.push(", ");
                this.serializeParameter(parameters[0]);
                for (let i = 1; i < numParameters; ++i) {
                    sb.push(", ");
                    this.serializeParameter(parameters[i]);
                }
            }
        }
        var body = node.body;
        var returnType = signature.returnType;
        if (node.arrowKind) {
            if (body) {
                if (node.arrowKind == 2 /* ARROW_SINGLE */) {
                    assert(ast_1.isTypeOmitted(returnType));
                }
                else {
                    if (ast_1.isTypeOmitted(returnType)) {
                        sb.push(")");
                    }
                    else {
                        sb.push("): ");
                        this.visitTypeNode(returnType);
                    }
                }
                sb.push(" => ");
                this.visitNode(body);
            }
            else {
                assert(!ast_1.isTypeOmitted(returnType));
                sb.push(" => ");
                this.visitTypeNode(returnType);
            }
        }
        else {
            if (!ast_1.isTypeOmitted(returnType) &&
                !node.isAny(ast_1.CommonFlags.CONSTRUCTOR | ast_1.CommonFlags.SET)) {
                sb.push("): ");
                this.visitTypeNode(returnType);
            }
            else {
                sb.push(")");
            }
            if (body) {
                sb.push(" ");
                this.visitNode(body);
            }
        }
    }
    visitIfStatement(node) {
        var sb = this.sb;
        sb.push("if (");
        this.visitNode(node.condition);
        sb.push(") ");
        var ifTrue = node.ifTrue;
        this.visitNode(ifTrue);
        if (ifTrue.kind != ast_1.NodeKind.BLOCK) {
            sb.push(";\n");
        }
        var ifFalse = node.ifFalse;
        if (ifFalse) {
            if (ifTrue.kind == ast_1.NodeKind.BLOCK) {
                sb.push(" else ");
            }
            else {
                sb.push("else ");
            }
            this.visitNode(ifFalse);
        }
    }
    visitImportDeclaration(node) {
        var externalName = node.foreignName;
        var name = node.name;
        this.visitIdentifierExpression(externalName);
        if (externalName.text != name.text) {
            this.sb.push(" as ");
            this.visitIdentifierExpression(name);
        }
    }
    visitImportStatement(node) {
        var sb = this.sb;
        sb.push("import ");
        var declarations = node.declarations;
        var namespaceName = node.namespaceName;
        if (declarations) {
            let numDeclarations = declarations.length;
            if (numDeclarations) {
                sb.push("{\n");
                let indentLevel = ++this.indentLevel;
                ast_1.indent(sb, indentLevel);
                this.visitImportDeclaration(declarations[0]);
                for (let i = 1; i < numDeclarations; ++i) {
                    sb.push(",\n");
                    ast_1.indent(sb, indentLevel);
                    this.visitImportDeclaration(declarations[i]);
                }
                --this.indentLevel;
                sb.push("\n} from ");
            }
            else {
                sb.push("{} from ");
            }
        }
        else if (namespaceName) {
            sb.push("* as ");
            this.visitIdentifierExpression(namespaceName);
            sb.push(" from ");
        }
        this.visitStringLiteralExpression(node.path);
    }
    visitIndexSignatureDeclaration(node) {
        var sb = this.sb;
        sb.push("[key: ");
        this.visitTypeNode(node.keyType);
        sb.push("]: ");
        this.visitTypeNode(node.valueType);
    }
    visitInterfaceDeclaration(node, isDefault = false) {
        var decorators = node.decorators;
        if (decorators) {
            for (let i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        var sb = this.sb;
        if (isDefault) {
            sb.push("export default ");
        }
        else {
            this.serializeExternalModifiers(node);
        }
        sb.push("interface ");
        this.visitIdentifierExpression(node.name);
        var typeParameters = node.typeParameters;
        if (typeParameters && typeParameters.length) {
            sb.push("<");
            this.visitTypeParameter(typeParameters[0]);
            for (let i = 1, k = typeParameters.length; i < k; ++i) {
                sb.push(", ");
                this.visitTypeParameter(typeParameters[i]);
            }
            sb.push(">");
        }
        var extendsType = node.extendsType;
        if (extendsType) {
            sb.push(" extends ");
            this.visitTypeNode(extendsType);
        }
        // must not have implementsTypes
        sb.push(" {\n");
        var indentLevel = ++this.indentLevel;
        var members = node.members;
        for (let i = 0, k = members.length; i < k; ++i) {
            ast_1.indent(sb, indentLevel);
            this.visitNodeAndTerminate(members[i]);
        }
        --this.indentLevel;
        sb.push("}");
    }
    visitMethodDeclaration(node) {
        var decorators = node.decorators;
        if (decorators) {
            for (let i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        this.serializeAccessModifiers(node);
        if (node.is(ast_1.CommonFlags.GET)) {
            this.sb.push("get ");
        }
        else if (node.is(ast_1.CommonFlags.SET)) {
            this.sb.push("set ");
        }
        this.visitFunctionCommon(node);
    }
    visitNamespaceDeclaration(node, isDefault = false) {
        var decorators = node.decorators;
        if (decorators) {
            for (let i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        var sb = this.sb;
        if (isDefault) {
            sb.push("export default ");
        }
        else {
            this.serializeExternalModifiers(node);
        }
        sb.push("namespace ");
        this.visitIdentifierExpression(node.name);
        var members = node.members;
        var numMembers = members.length;
        if (numMembers) {
            sb.push(" {\n");
            let indentLevel = ++this.indentLevel;
            for (let i = 0, k = members.length; i < k; ++i) {
                ast_1.indent(sb, indentLevel);
                this.visitNodeAndTerminate(members[i]);
            }
            ast_1.indent(sb, --this.indentLevel);
            sb.push("}");
        }
        else {
            sb.push(" {}");
        }
    }
    visitReturnStatement(node) {
        var value = node.value;
        if (value) {
            this.sb.push("return ");
            this.visitNode(value);
        }
        else {
            this.sb.push("return");
        }
    }
    visitSwitchCase(node) {
        var sb = this.sb;
        var label = node.label;
        if (label) {
            sb.push("case ");
            this.visitNode(label);
            sb.push(":\n");
        }
        else {
            sb.push("default:\n");
        }
        var statements = node.statements;
        var numStatements = statements.length;
        if (numStatements) {
            let indentLevel = ++this.indentLevel;
            ast_1.indent(sb, indentLevel);
            this.visitNodeAndTerminate(statements[0]);
            for (let i = 1; i < numStatements; ++i) {
                ast_1.indent(sb, indentLevel);
                this.visitNodeAndTerminate(statements[i]);
            }
            --this.indentLevel;
        }
    }
    visitSwitchStatement(node) {
        var sb = this.sb;
        sb.push("switch (");
        this.visitNode(node.condition);
        sb.push(") {\n");
        var indentLevel = ++this.indentLevel;
        var cases = node.cases;
        for (let i = 0, k = cases.length; i < k; ++i) {
            ast_1.indent(sb, indentLevel);
            this.visitSwitchCase(cases[i]);
            sb.push("\n");
        }
        --this.indentLevel;
        sb.push("}");
    }
    visitThrowStatement(node) {
        this.sb.push("throw ");
        this.visitNode(node.value);
    }
    visitTryStatement(node) {
        var sb = this.sb;
        sb.push("try {\n");
        var indentLevel = ++this.indentLevel;
        var statements = node.statements;
        for (let i = 0, k = statements.length; i < k; ++i) {
            ast_1.indent(sb, indentLevel);
            this.visitNodeAndTerminate(statements[i]);
        }
        var catchVariable = node.catchVariable;
        if (catchVariable) {
            ast_1.indent(sb, indentLevel - 1);
            sb.push("} catch (");
            this.visitIdentifierExpression(catchVariable);
            sb.push(") {\n");
            let catchStatements = node.catchStatements;
            if (catchStatements) {
                for (let i = 0, k = catchStatements.length; i < k; ++i) {
                    ast_1.indent(sb, indentLevel);
                    this.visitNodeAndTerminate(catchStatements[i]);
                }
            }
        }
        var finallyStatements = node.finallyStatements;
        if (finallyStatements) {
            ast_1.indent(sb, indentLevel - 1);
            sb.push("} finally {\n");
            for (let i = 0, k = finallyStatements.length; i < k; ++i) {
                ast_1.indent(sb, indentLevel);
                this.visitNodeAndTerminate(finallyStatements[i]);
            }
        }
        ast_1.indent(sb, indentLevel - 1);
        sb.push("}");
    }
    visitTypeDeclaration(node) {
        var decorators = node.decorators;
        if (decorators) {
            for (let i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        var sb = this.sb;
        this.serializeExternalModifiers(node);
        sb.push("type ");
        this.visitIdentifierExpression(node.name);
        var typeParameters = node.typeParameters;
        if (typeParameters) {
            let numTypeParameters = typeParameters.length;
            if (numTypeParameters) {
                sb.push("<");
                for (let i = 0; i < numTypeParameters; ++i) {
                    this.visitTypeParameter(typeParameters[i]);
                }
                sb.push(">");
            }
        }
        sb.push(" = ");
        this.visitTypeNode(node.type);
    }
    visitVariableDeclaration(node) {
        this.visitIdentifierExpression(node.name);
        var type = node.type;
        var sb = this.sb;
        if (node.flags & ast_1.CommonFlags.DEFINITE_ASSIGNMENT) {
            sb.push("!");
        }
        if (type) {
            sb.push(": ");
            this.visitTypeNode(type);
        }
        var initializer = node.initializer;
        if (initializer) {
            sb.push(" = ");
            this.visitNode(initializer);
        }
    }
    visitVariableStatement(node) {
        var decorators = node.decorators;
        if (decorators) {
            for (let i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        var sb = this.sb;
        var declarations = node.declarations;
        var numDeclarations = assert(declarations.length);
        var firstDeclaration = declarations[0];
        this.serializeExternalModifiers(firstDeclaration);
        sb.push(firstDeclaration.is(ast_1.CommonFlags.CONST)
            ? "const "
            : firstDeclaration.is(ast_1.CommonFlags.LET)
                ? "let "
                : "var ");
        this.visitVariableDeclaration(node.declarations[0]);
        for (let i = 1; i < numDeclarations; ++i) {
            sb.push(", ");
            this.visitVariableDeclaration(node.declarations[i]);
        }
    }
    visitWhileStatement(node) {
        var sb = this.sb;
        sb.push("while (");
        this.visitNode(node.condition);
        var statement = node.statement;
        if (statement.kind == ast_1.NodeKind.EMPTY) {
            sb.push(")");
        }
        else {
            sb.push(") ");
            this.visitNode(node.statement);
        }
    }
    // other
    serializeDecorator(node) {
        var sb = this.sb;
        sb.push("@");
        this.visitNode(node.name);
        var args = node.arguments;
        if (args) {
            sb.push("(");
            let numArgs = args.length;
            if (numArgs) {
                this.visitNode(args[0]);
                for (let i = 1; i < numArgs; ++i) {
                    sb.push(", ");
                    this.visitNode(args[i]);
                }
            }
            sb.push(")\n");
        }
        else {
            sb.push("\n");
        }
        ast_1.indent(sb, this.indentLevel);
    }
    serializeParameter(node) {
        var sb = this.sb;
        var kind = node.parameterKind;
        var implicitFieldDeclaration = node.implicitFieldDeclaration;
        if (implicitFieldDeclaration) {
            this.serializeAccessModifiers(implicitFieldDeclaration);
        }
        if (kind == ast_1.ParameterKind.REST) {
            sb.push("...");
        }
        this.visitIdentifierExpression(node.name);
        var type = node.type;
        var initializer = node.initializer;
        if (type) {
            if (kind == ast_1.ParameterKind.OPTIONAL && !initializer)
                sb.push("?");
            if (!ast_1.isTypeOmitted(type)) {
                sb.push(": ");
                this.visitTypeNode(type);
            }
        }
        if (initializer) {
            sb.push(" = ");
            this.visitNode(initializer);
        }
    }
    serializeExternalModifiers(node) {
        var sb = this.sb;
        if (node.is(ast_1.CommonFlags.EXPORT)) {
            sb.push("export ");
        }
        else if (node.is(ast_1.CommonFlags.IMPORT)) {
            sb.push("import ");
        }
        else if (node.is(ast_1.CommonFlags.DECLARE)) {
            sb.push("declare ");
        }
    }
    serializeAccessModifiers(node) {
        var sb = this.sb;
        if (node.is(ast_1.CommonFlags.PUBLIC)) {
            sb.push("public ");
        }
        else if (node.is(ast_1.CommonFlags.PRIVATE)) {
            sb.push("private ");
        }
        else if (node.is(ast_1.CommonFlags.PROTECTED)) {
            sb.push("protected ");
        }
        if (node.is(ast_1.CommonFlags.STATIC)) {
            sb.push("static ");
        }
        else if (node.is(ast_1.CommonFlags.ABSTRACT)) {
            sb.push("abstract ");
        }
        if (node.is(ast_1.CommonFlags.READONLY)) {
            sb.push("readonly ");
        }
    }
    finish() {
        var ret = this.sb.join("");
        this.sb = [];
        return ret;
    }
}
exports.ASTBuilder = ASTBuilder;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiQVNUQnVpbGRlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uL3NyYy9BU1RCdWlsZGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxtQ0FBbUM7O0FBRW5DLCtCQThFZTtBQUVmLGtEQUFrRDtBQUNsRCx3REFBd0Q7QUFFeEQsc0JBQXNCO0FBQ3RCLE1BQWEsVUFBVTtJQUF2QjtRQVFVLE9BQUUsR0FBYSxFQUFFLENBQUM7UUFDbEIsZ0JBQVcsR0FBUSxDQUFDLENBQUM7SUFnaUQvQixDQUFDO0lBeGlEQyw4RUFBOEU7SUFDOUUsTUFBTSxDQUFDLEtBQUssQ0FBQyxJQUFVO1FBQ3JCLElBQUksT0FBTyxHQUFHLElBQUksVUFBVSxFQUFFLENBQUM7UUFDL0IsT0FBTyxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUN4QixPQUFPLE9BQU8sQ0FBQyxNQUFNLEVBQUUsQ0FBQztJQUMxQixDQUFDO0lBS0QsU0FBUyxDQUFDLElBQVU7UUFDbEIsUUFBUSxJQUFJLENBQUMsSUFBSSxFQUFFO1lBQ2pCLEtBQUssY0FBUSxDQUFDLE1BQU0sQ0FBQyxDQUFDO2dCQUNwQixJQUFJLENBQUMsV0FBVyxDQUFTLElBQUksQ0FBQyxDQUFDO2dCQUMvQixNQUFNO2FBQ1A7WUFFRCxRQUFRO1lBRVIsS0FBSyxjQUFRLENBQUMsU0FBUyxDQUFDLENBQUM7Z0JBQ3ZCLElBQUksQ0FBQyxrQkFBa0IsQ0FBZ0IsSUFBSSxDQUFDLENBQUM7Z0JBQzdDLE1BQU07YUFDUDtZQUNELEtBQUssY0FBUSxDQUFDLFlBQVksQ0FBQyxDQUFDO2dCQUMxQixJQUFJLENBQUMscUJBQXFCLENBQW1CLElBQUksQ0FBQyxDQUFDO2dCQUNuRCxNQUFNO2FBQ1A7WUFDRCxLQUFLLGNBQVEsQ0FBQyxhQUFhLENBQUMsQ0FBQztnQkFDM0IsSUFBSSxDQUFDLGtCQUFrQixDQUFvQixJQUFJLENBQUMsQ0FBQztnQkFDakQsTUFBTTthQUNQO1lBRUQsY0FBYztZQUVkLEtB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U0FDdkI7UUFDRCxJQUFJLElBQUksQ0FBQyxFQUFFLENBQUMsaUJBQVcsQ0FBQyxNQUFNLENBQUMsRUFBRTtZQUMvQixFQUFFLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1NBQ3BCO2FBQU0sSUFBSSxJQUFJLENBQUMsRUFBRSxDQUFDLGlCQUFXLENBQUMsUUFBUSxDQUFDLEVBQUU7WUFDeEMsRUFBRSxDQUFDLElBQUksQ0FBQyxXQUFXLENBQUMsQ0FBQztTQUN0QjtRQUNELElBQUksSUFBSSxDQUFDLEVBQUUsQ0FBQyxpQkFBVyxDQUFDLFFBQVEsQ0FBQyxFQUFFO1lBQ2pDLEVBQUUsQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLENBQUM7U0FDdEI7SUFDSCxDQUFDO0lBRUQsTUFBTTtRQUNKLElBQUksR0FBRyxHQUFHLElBQUksQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxDQUFDO1FBQzNCLElBQUksQ0FBQyxFQUFFLEdBQUcsRUFBRSxDQUFDO1FBQ2IsT0FBTyxHQUFHLENBQUM7SUFDYixDQUFDO0NBQ0Y7QUF6aURELGdDQXlpREMiLCJzb3VyY2VzQ29udGVudCI6WyIvLyB0c2xpbnQ6ZGlzYWJsZTogYXMtaW50ZXJuYWwtY2FzZVxuXG5pbXBvcnQge1xuICBDaGFyQ29kZSxcbiAgQ29tbW9uRmxhZ3MsXG4gIFR5cGVOb2RlLFxuICBOb2RlLFxuICBOb2RlS2luZCxcbiAgU291cmNlLFxuICBOYW1lZFR5cGVOb2RlLFxuICBGdW5jdGlvblR5cGVOb2RlLFxuICBUeXBlUGFyYW1ldGVyTm9kZSxcbiAgSWRlbnRpZmllckV4cHJlc3Npb24sXG4gIENhbGxFeHByZXNzaW9uLFxuICBDbGFzc0V4cHJlc3Npb24sXG4gIEVsZW1lbnRBY2Nlc3NFeHByZXNzaW9uLFxuICBGdW5jdGlvbkV4cHJlc3Npb24sXG4gIEluc3RhbmNlT2ZFeHByZXNzaW9uLFxuICBMaXRlcmFsRXhwcmVzc2lvbixcbiAgTmV3RXhwcmVzc2lvbixcbiAgUGFyZW50aGVzaXplZEV4cHJlc3Npb24sXG4gIFByb3BlcnR5QWNjZXNzRXhwcmVzc2lvbixcbiAgVGVybmFyeUV4cHJlc3Npb24sXG4gIFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24sXG4gIFVuYXJ5UHJlZml4RXhwcmVzc2lvbixcbiAgQmxvY2tTdGF0ZW1lbnQsXG4gIEJyZWFrU3RhdGVtZW50LFxuICBDb250aW51ZVN0YXRlbWVudCxcbiAgRG9TdGF0ZW1lbnQsXG4gIEVtcHR5U3RhdGVtZW50LFxuICBFeHBvcnRTdGF0ZW1lbnQsXG4gIEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQsXG4gIEV4cG9ydEltcG9ydFN0YXRlbWVudCxcbiAgRXhwcmVzc2lvblN0YXRlbWVudCxcbiAgRm9yU3RhdGVtZW50LFxuICBJZlN0YXRlbWVudCxcbiAgSW1wb3J0U3RhdGVtZW50LFxuICBSZXR1cm5TdGF0ZW1lbnQsXG4gIFN3aXRjaFN0YXRlbWVudCxcbiAgVGhyb3dTdGF0ZW1lbnQsXG4gIFRyeVN0YXRlbWVudCxcbiAgVmFyaWFibGVTdGF0ZW1lbnQsXG4gIFdoaWxlU3RhdGVtZW50LFxuICBDbGFzc0RlY2xhcmF0aW9uLFxuICBFbnVtRGVjbGFyYXRpb24sXG4gIEVudW1WYWx1ZURlY2xhcmF0aW9uLFxuICBGaWVsZERlY2xhcmF0aW9uLFxuICBGdW5jdGlvbkRlY2xhcmF0aW9uLFxuICBJbXBvcnREZWNsYXJhdGlvbixcbiAgSW5kZXhTaWduYXR1cmVEZWNsYXJhdGlvbixcbiAgSW50ZXJmYWNlRGVjbGFyYXRpb24sXG4gIE1ldGhvZERlY2xhcmF0aW9uLFxuICBOYW1lc3BhY2VEZWNsYXJhdGlvbixcbiAgVHlwZURlY2xhcmF0aW9uLFxuICBWYXJpYWJsZURlY2xhcmF0aW9uLFxuICBEZWNvcmF0b3JOb2RlLFxuICBFeHBvcnRNZW1iZXIsXG4gIFBhcmFtZXRlck5vZGUsXG4gIFN3aXRjaENhc2UsXG4gIFR5cGVOYW1lLFxuICBBcnJheUxpdGVyYWxFeHByZXNzaW9uLFxuICBFeHByZXNzaW9uLFxuICBPYmplY3RMaXRlcmFsRXhwcmVzc2lvbixcbiAgQXNzZXJ0aW9uS2luZCxcbiAgTGl0ZXJhbEtpbmQsXG4gIEZsb2F0TGl0ZXJhbEV4cHJlc3Npb24sXG4gIFN0cmluZ0xpdGVyYWxFeHByZXNzaW9uLFxuICBSZWdleHBMaXRlcmFsRXhwcmVzc2lvbixcbiAgVW5hcnlFeHByZXNzaW9uLFxuICBTdGF0ZW1lbnQsXG4gIEFycm93S2luZCxcbiAgUGFyYW1ldGVyS2luZCxcbiAgRGVjbGFyYXRpb25TdGF0ZW1lbnQsXG4gIEFzc2VydGlvbkV4cHJlc3Npb24sXG4gIEJpbmFyeUV4cHJlc3Npb24sXG4gIENvbW1hRXhwcmVzc2lvbixcbiAgSW50ZWdlckxpdGVyYWxFeHByZXNzaW9uLFxuICBpc1R5cGVPbWl0dGVkLFxuICBvcGVyYXRvclRva2VuVG9TdHJpbmcsXG4gIGluZGVudFxufSBmcm9tIFwiLi9hc3RcIjtcblxuLy8gZGVjbGFyZSBmdW5jdGlvbiBpNjRfdG9fc3RyaW5nKGk6IEk2NCk6IHN0cmluZztcbi8vIGltcG9ydCB7IGk2NF90b19zdHJpbmcgfSBmcm9tIFwiLi4vLi4vLi4vc3JjL2dsdWUvaTY0XCJcblxuLyoqIEFuIEFTVCBidWlsZGVyLiAqL1xuZXhwb3J0IGNsYXNzIEFTVEJ1aWxkZXIge1xuICAvKiogUmVidWlsZHMgdGhlIHRleHR1YWwgc291cmNlIGZyb20gdGhlIHNwZWNpZmllZCBBU1QsIGFzIGZhciBhcyBwb3NzaWJsZS4gKi9cbiAgc3RhdGljIGJ1aWxkKG5vZGU6IE5vZGUpOiBzdHJpbmcge1xuICAgIHZhciBidWlsZGVyID0gbmV3IEFTVEJ1aWxkZXIoKTtcbiAgICBidWlsZGVyLnZpc2l0Tm9kZShub2RlKTtcbiAgICByZXR1cm4gYnVpbGRlci5maW5pc2goKTtcbiAgfVxuXG4gIHByaXZhdGUgc2I6IHN0cmluZ1tdID0gW107XG4gIHByaXZhdGUgaW5kZW50TGV2ZWw6IGkzMiA9IDA7XG5cbiAgdmlzaXROb2RlKG5vZGU6IE5vZGUpOiB2b2lkIHtcbiAgICBzd2l0Y2ggKG5vZGUua2luZCkge1xuICAgICAgY2FzZSBOb2RlS2luZC5TT1VSQ0U6IHtcbiAgICAgICAgdGhpcy52aXNpdFNvdXJjZSg8U291cmNlPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cblxuICAgICAgLy8gdHlwZXNcblxuICAgICAgY2FzZSBOb2RlS2luZC5OQU1FRFRZUEU6IHtcbiAgICAgICAgdGhpcy52aXNpdE5hbWVkVHlwZU5vZGUoPE5hbWVkVHlwZU5vZGU+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5GVU5DVElPTlRZUEU6IHtcbiAgICAgICAgdGhpcy52aXNpdEZ1bmN0aW9uVHlwZU5vZGUoPEZ1bmN0aW9uVHlwZU5vZGU+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5UWVBFUEFSQU1FVEVSOiB7XG4gICAgICAgIHRoaXMudmlzaXRUeXBlUGFyYW1ldGVyKDxUeXBlUGFyYW1ldGVyTm9kZT5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG5cbiAgICAgIC8vIGV4cHJlc3Npb25zXG5cbiAgICAgIGNhc2UgTm9kZUtpbmQuRkFMU0U6XG4gICAgICBjYXNlIE5vZGVLaW5kLk5VTEw6XG4gICAgICBjYXNlIE5vZGVLaW5kLlNVUEVSOlxuICAgICAgY2FzZSBOb2RlS2luZC5USElTOlxuICAgICAgY2FzZSBOb2RlS2luZC5UUlVFOlxuICAgICAgY2FzZSBOb2RlS2luZC5DT05TVFJVQ1RPUjpcbiAgICAgIGNhc2UgTm9kZUtpbmQuSURFTlRJRklFUjoge1xuICAgICAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24oPElkZW50aWZpZXJFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQVNTRVJUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRBc3NlcnRpb25FeHByZXNzaW9uKDxBc3NlcnRpb25FeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQklOQVJZOiB7XG4gICAgICAgIHRoaXMudmlzaXRCaW5hcnlFeHByZXNzaW9uKDxCaW5hcnlFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQ0FMTDoge1xuICAgICAgICB0aGlzLnZpc2l0Q2FsbEV4cHJlc3Npb24oPENhbGxFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQ0xBU1M6IHtcbiAgICAgICAgdGhpcy52aXNpdENsYXNzRXhwcmVzc2lvbig8Q2xhc3NFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQ09NTUE6IHtcbiAgICAgICAgdGhpcy52aXNpdENvbW1hRXhwcmVzc2lvbig8Q29tbWFFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRUxFTUVOVEFDQ0VTUzoge1xuICAgICAgICB0aGlzLnZpc2l0RWxlbWVudEFjY2Vzc0V4cHJlc3Npb24oPEVsZW1lbnRBY2Nlc3NFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRlVOQ1RJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEZ1bmN0aW9uRXhwcmVzc2lvbig8RnVuY3Rpb25FeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuSU5TVEFOQ0VPRjoge1xuICAgICAgICB0aGlzLnZpc2l0SW5zdGFuY2VPZkV4cHJlc3Npb24oPEluc3RhbmNlT2ZFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuTElURVJBTDoge1xuICAgICAgICB0aGlzLnZpc2l0TGl0ZXJhbEV4cHJlc3Npb24oPExpdGVyYWxFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuTkVXOiB7XG4gICAgICAgIHRoaXMudmlzaXROZXdFeHByZXNzaW9uKDxOZXdFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuUEFSRU5USEVTSVpFRDoge1xuICAgICAgICB0aGlzLnZpc2l0UGFyZW50aGVzaXplZEV4cHJlc3Npb24oPFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuUFJPUEVSVFlBQ0NFU1M6IHtcbiAgICAgICAgdGhpcy52aXNpdFByb3BlcnR5QWNjZXNzRXhwcmVzc2lvbig8UHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVEVSTkFSWToge1xuICAgICAgICB0aGlzLnZpc2l0VGVybmFyeUV4cHJlc3Npb24oPFRlcm5hcnlFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVU5BUllQT1NURklYOiB7XG4gICAgICAgIHRoaXMudmlzaXRVbmFyeVBvc3RmaXhFeHByZXNzaW9uKDxVbmFyeVBvc3RmaXhFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVU5BUllQUkVGSVg6IHtcbiAgICAgICAgdGhpcy52aXNpdFVuYXJ5UHJlZml4RXhwcmVzc2lvbig8VW5hcnlQcmVmaXhFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cblxuICAgICAgLy8gc3RhdGVtZW50c1xuXG4gICAgICBjYXNlIE5vZGVLaW5kLkJMT0NLOiB7XG4gICAgICAgIHRoaXMudmlzaXRCbG9ja1N0YXRlbWVudCg8QmxvY2tTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5CUkVBSzoge1xuICAgICAgICB0aGlzLnZpc2l0QnJlYWtTdGF0ZW1lbnQoPEJyZWFrU3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQ09OVElOVUU6IHtcbiAgICAgICAgdGhpcy52aXNpdENvbnRpbnVlU3RhdGVtZW50KDxDb250aW51ZVN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkRPOiB7XG4gICAgICAgIHRoaXMudmlzaXREb1N0YXRlbWVudCg8RG9TdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5FTVBUWToge1xuICAgICAgICB0aGlzLnZpc2l0RW1wdHlTdGF0ZW1lbnQoPEVtcHR5U3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRVhQT1JUOiB7XG4gICAgICAgIHRoaXMudmlzaXRFeHBvcnRTdGF0ZW1lbnQoPEV4cG9ydFN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkVYUE9SVERFRkFVTFQ6IHtcbiAgICAgICAgdGhpcy52aXNpdEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQoPEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5FWFBPUlRJTVBPUlQ6IHtcbiAgICAgICAgdGhpcy52aXNpdEV4cG9ydEltcG9ydFN0YXRlbWVudCg8RXhwb3J0SW1wb3J0U3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRVhQUkVTU0lPTjoge1xuICAgICAgICB0aGlzLnZpc2l0RXhwcmVzc2lvblN0YXRlbWVudCg8RXhwcmVzc2lvblN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkZPUjoge1xuICAgICAgICB0aGlzLnZpc2l0Rm9yU3RhdGVtZW50KDxGb3JTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5JRjoge1xuICAgICAgICB0aGlzLnZpc2l0SWZTdGF0ZW1lbnQoPElmU3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuSU1QT1JUOiB7XG4gICAgICAgIHRoaXMudmlzaXRJbXBvcnRTdGF0ZW1lbnQoPEltcG9ydFN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlJFVFVSTjoge1xuICAgICAgICB0aGlzLnZpc2l0UmV0dXJuU3RhdGVtZW50KDxSZXR1cm5TdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5TV0lUQ0g6IHtcbiAgICAgICAgdGhpcy52aXNpdFN3aXRjaFN0YXRlbWVudCg8U3dpdGNoU3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVEhST1c6IHtcbiAgICAgICAgdGhpcy52aXNpdFRocm93U3RhdGVtZW50KDxUaHJvd1N0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlRSWToge1xuICAgICAgICB0aGlzLnZpc2l0VHJ5U3RhdGVtZW50KDxUcnlTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5WQVJJQUJMRToge1xuICAgICAgICB0aGlzLnZpc2l0VmFyaWFibGVTdGF0ZW1lbnQoPFZhcmlhYmxlU3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuV0hJTEU6IHtcbiAgICAgICAgdGhpcy52aXNpdFdoaWxlU3RhdGVtZW50KDxXaGlsZVN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG5cbiAgICAgIC8vIGRlY2xhcmF0aW9uIHN0YXRlbWVudHNcblxuICAgICAgY2FzZSBOb2RlS2luZC5DTEFTU0RFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRDbGFzc0RlY2xhcmF0aW9uKDxDbGFzc0RlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRU5VTURFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRFbnVtRGVjbGFyYXRpb24oPEVudW1EZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkVOVU1WQUxVRURFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRFbnVtVmFsdWVEZWNsYXJhdGlvbig8RW51bVZhbHVlRGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5GSUVMRERFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRGaWVsZERlY2xhcmF0aW9uKDxGaWVsZERlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRlVOQ1RJT05ERUNMQVJBVElPTjoge1xuICAgICAgICB0aGlzLnZpc2l0RnVuY3Rpb25EZWNsYXJhdGlvbig8RnVuY3Rpb25EZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLklNUE9SVERFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRJbXBvcnREZWNsYXJhdGlvbig8SW1wb3J0RGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5JTkRFWFNJR05BVFVSRURFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRJbmRleFNpZ25hdHVyZURlY2xhcmF0aW9uKDxJbmRleFNpZ25hdHVyZURlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuSU5URVJGQUNFREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEludGVyZmFjZURlY2xhcmF0aW9uKDxJbnRlcmZhY2VEZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLk1FVEhPRERFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRNZXRob2REZWNsYXJhdGlvbig8TWV0aG9kRGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5OQU1FU1BBQ0VERUNMQVJBVElPTjoge1xuICAgICAgICB0aGlzLnZpc2l0TmFtZXNwYWNlRGVjbGFyYXRpb24oPE5hbWVzcGFjZURlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVFlQRURFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRUeXBlRGVjbGFyYXRpb24oPFR5cGVEZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlZBUklBQkxFREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdFZhcmlhYmxlRGVjbGFyYXRpb24oPFZhcmlhYmxlRGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuXG4gICAgICAvLyBvdGhlclxuXG4gICAgICBjYXNlIE5vZGVLaW5kLkRFQ09SQVRPUjoge1xuICAgICAgICB0aGlzLnNlcmlhbGl6ZURlY29yYXRvcig8RGVjb3JhdG9yTm9kZT5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkVYUE9SVE1FTUJFUjoge1xuICAgICAgICB0aGlzLnZpc2l0RXhwb3J0TWVtYmVyKDxFeHBvcnRNZW1iZXI+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5QQVJBTUVURVI6IHtcbiAgICAgICAgdGhpcy5zZXJpYWxpemVQYXJhbWV0ZXIoPFBhcmFtZXRlck5vZGU+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5TV0lUQ0hDQVNFOiB7XG4gICAgICAgIHRoaXMudmlzaXRTd2l0Y2hDYXNlKDxTd2l0Y2hDYXNlPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIGFzc2VydChmYWxzZSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRTb3VyY2Uoc291cmNlOiBTb3VyY2UpOiB2b2lkIHtcbiAgICB2YXIgc3RhdGVtZW50cyA9IHNvdXJjZS5zdGF0ZW1lbnRzO1xuICAgIGZvciAobGV0IGkgPSAwLCBrID0gc3RhdGVtZW50cy5sZW5ndGg7IGkgPCBrOyArK2kpIHtcbiAgICAgIHRoaXMudmlzaXROb2RlQW5kVGVybWluYXRlKHN0YXRlbWVudHNbaV0pO1xuICAgIH1cbiAgfVxuXG4gIC8vIHR5cGVzXG5cbiAgdmlzaXRUeXBlTm9kZShub2RlOiBUeXBlTm9kZSk6IHZvaWQge1xuICAgIHN3aXRjaCAobm9kZS5raW5kKSB7XG4gICAgICBjYXNlIE5vZGVLaW5kLk5BTUVEVFlQRToge1xuICAgICAgICB0aGlzLnZpc2l0TmFtZWRUeXBlTm9kZSg8TmFtZWRUeXBlTm9kZT5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkZVTkNUSU9OVFlQRToge1xuICAgICAgICB0aGlzLnZpc2l0RnVuY3Rpb25UeXBlTm9kZSg8RnVuY3Rpb25UeXBlTm9kZT5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBkZWZhdWx0OlxuICAgICAgICBhc3NlcnQoZmFsc2UpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0VHlwZU5hbWUobm9kZTogVHlwZU5hbWUpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZS5pZGVudGlmaWVyKTtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHZhciBjdXJyZW50ID0gbm9kZS5uZXh0O1xuICAgIHdoaWxlIChjdXJyZW50KSB7XG4gICAgICBzYi5wdXNoKFwiLlwiKTtcbiAgICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihjdXJyZW50LmlkZW50aWZpZXIpO1xuICAgICAgY3VycmVudCA9IGN1cnJlbnQubmV4dDtcbiAgICB9XG4gIH1cblxuICB2aXNpdE5hbWVkVHlwZU5vZGUobm9kZTogTmFtZWRUeXBlTm9kZSk6IHZvaWQge1xuICAgIHRoaXMudmlzaXRUeXBlTmFtZShub2RlLm5hbWUpO1xuICAgIHZhciB0eXBlQXJndW1lbnRzID0gbm9kZS50eXBlQXJndW1lbnRzO1xuICAgIGlmICh0eXBlQXJndW1lbnRzKSB7XG4gICAgICBsZXQgbnVtVHlwZUFyZ3VtZW50cyA9IHR5cGVBcmd1bWVudHMubGVuZ3RoO1xuICAgICAgbGV0IHNiID0gdGhpcy5zYjtcbiAgICAgIGlmIChudW1UeXBlQXJndW1lbnRzKSB7XG4gICAgICAgIHNiLnB1c2goXCI8XCIpO1xuICAgICAgICB0aGlzLnZpc2l0VHlwZU5vZGUodHlwZUFyZ3VtZW50c1swXSk7XG4gICAgICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtVHlwZUFyZ3VtZW50czsgKytpKSB7XG4gICAgICAgICAgc2IucHVzaChcIiwgXCIpO1xuICAgICAgICAgIHRoaXMudmlzaXRUeXBlTm9kZSh0eXBlQXJndW1lbnRzW2ldKTtcbiAgICAgICAgfVxuICAgICAgICBzYi5wdXNoKFwiPlwiKTtcbiAgICAgIH1cbiAgICAgIGlmIChub2RlLmlzTnVsbGFibGUpIHNiLnB1c2goXCIgfCBudWxsXCIpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25UeXBlTm9kZShub2RlOiBGdW5jdGlvblR5cGVOb2RlKTogdm9pZCB7XG4gICAgdmFyIGlzTnVsbGFibGUgPSBub2RlLmlzTnVsbGFibGU7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzYi5wdXNoKGlzTnVsbGFibGUgPyBcIigoXCIgOiBcIihcIik7XG4gICAgdmFyIGV4cGxpY2l0VGhpc1R5cGUgPSBub2RlLmV4cGxpY2l0VGhpc1R5cGU7XG4gICAgaWYgKGV4cGxpY2l0VGhpc1R5cGUpIHtcbiAgICAgIHNiLnB1c2goXCJ0aGlzOiBcIik7XG4gICAgICB0aGlzLnZpc2l0VHlwZU5vZGUoZXhwbGljaXRUaGlzVHlwZSk7XG4gICAgfVxuICAgIHZhciBwYXJhbWV0ZXJzID0gbm9kZS5wYXJhbWV0ZXJzO1xuICAgIHZhciBudW1QYXJhbWV0ZXJzID0gcGFyYW1ldGVycy5sZW5ndGg7XG4gICAgaWYgKG51bVBhcmFtZXRlcnMpIHtcbiAgICAgIGlmIChleHBsaWNpdFRoaXNUeXBlKSBzYi5wdXNoKFwiLCBcIik7XG4gICAgICB0aGlzLnNlcmlhbGl6ZVBhcmFtZXRlcihwYXJhbWV0ZXJzWzBdKTtcbiAgICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtUGFyYW1ldGVyczsgKytpKSB7XG4gICAgICAgIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgICAgdGhpcy5zZXJpYWxpemVQYXJhbWV0ZXIocGFyYW1ldGVyc1tpXSk7XG4gICAgICB9XG4gICAgfVxuICAgIHZhciByZXR1cm5UeXBlID0gbm9kZS5yZXR1cm5UeXBlO1xuICAgIGlmIChyZXR1cm5UeXBlKSB7XG4gICAgICBzYi5wdXNoKFwiKSA9PiBcIik7XG4gICAgICB0aGlzLnZpc2l0VHlwZU5vZGUocmV0dXJuVHlwZSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCIpID0+IHZvaWRcIik7XG4gICAgfVxuICAgIGlmIChpc051bGxhYmxlKSBzYi5wdXNoKFwiKSB8IG51bGxcIik7XG4gIH1cblxuICB2aXNpdFR5cGVQYXJhbWV0ZXIobm9kZTogVHlwZVBhcmFtZXRlck5vZGUpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZS5uYW1lKTtcbiAgICB2YXIgZXh0ZW5kc1R5cGUgPSBub2RlLmV4dGVuZHNUeXBlO1xuICAgIGlmIChleHRlbmRzVHlwZSkge1xuICAgICAgdGhpcy5zYi5wdXNoKFwiIGV4dGVuZHMgXCIpO1xuICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKGV4dGVuZHNUeXBlKTtcbiAgICB9XG4gICAgdmFyIGRlZmF1bHRUeXBlID0gbm9kZS5kZWZhdWx0VHlwZTtcbiAgICBpZiAoZGVmYXVsdFR5cGUpIHtcbiAgICAgIHRoaXMuc2IucHVzaChcIj1cIik7XG4gICAgICB0aGlzLnZpc2l0VHlwZU5vZGUoZGVmYXVsdFR5cGUpO1xuICAgIH1cbiAgfVxuXG4gIC8vIGV4cHJlc3Npb25zXG5cbiAgdmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlOiBJZGVudGlmaWVyRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIGlmIChub2RlLmlzUXVvdGVkKSB0aGlzLnZpc2l0U3RyaW5nTGl0ZXJhbChub2RlLnRleHQpO1xuICAgIGVsc2UgdGhpcy5zYi5wdXNoKG5vZGUudGV4dCk7XG4gIH1cblxuICB2aXNpdEFycmF5TGl0ZXJhbEV4cHJlc3Npb24obm9kZTogQXJyYXlMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgc2IucHVzaChcIltcIik7XG4gICAgdmFyIGVsZW1lbnRzID0gbm9kZS5lbGVtZW50RXhwcmVzc2lvbnM7XG4gICAgdmFyIG51bUVsZW1lbnRzID0gZWxlbWVudHMubGVuZ3RoO1xuICAgIGlmIChudW1FbGVtZW50cykge1xuICAgICAgaWYgKGVsZW1lbnRzWzBdKSB0aGlzLnZpc2l0Tm9kZSg8RXhwcmVzc2lvbj5lbGVtZW50c1swXSk7XG4gICAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bUVsZW1lbnRzOyArK2kpIHtcbiAgICAgICAgc2IucHVzaChcIiwgXCIpO1xuICAgICAgICBpZiAoZWxlbWVudHNbaV0pIHRoaXMudmlzaXROb2RlKDxFeHByZXNzaW9uPmVsZW1lbnRzW2ldKTtcbiAgICAgIH1cbiAgICB9XG4gICAgc2IucHVzaChcIl1cIik7XG4gIH1cblxuICB2aXNpdE9iamVjdExpdGVyYWxFeHByZXNzaW9uKG5vZGU6IE9iamVjdExpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICB2YXIgbmFtZXMgPSBub2RlLm5hbWVzO1xuICAgIHZhciB2YWx1ZXMgPSBub2RlLnZhbHVlcztcbiAgICB2YXIgbnVtRWxlbWVudHMgPSBuYW1lcy5sZW5ndGg7XG4gICAgYXNzZXJ0KG51bUVsZW1lbnRzID09IHZhbHVlcy5sZW5ndGgpO1xuICAgIGlmIChudW1FbGVtZW50cykge1xuICAgICAgc2IucHVzaChcIntcXG5cIik7XG4gICAgICBpbmRlbnQoc2IsICsrdGhpcy5pbmRlbnRMZXZlbCk7XG4gICAgICB0aGlzLnZpc2l0Tm9kZShuYW1lc1swXSk7XG4gICAgICBzYi5wdXNoKFwiOiBcIik7XG4gICAgICB0aGlzLnZpc2l0Tm9kZSh2YWx1ZXNbMF0pO1xuICAgICAgZm9yIChsZXQgaSA9IDE7IGkgPCBudW1FbGVtZW50czsgKytpKSB7XG4gICAgICAgIHNiLnB1c2goXCIsXFxuXCIpO1xuICAgICAgICBpbmRlbnQoc2IsIHRoaXMuaW5kZW50TGV2ZWwpO1xuICAgICAgICBsZXQgbmFtZSA9IG5hbWVzW2ldO1xuICAgICAgICBsZXQgdmFsdWUgPSB2YWx1ZXNbaV07XG4gICAgICAgIGlmIChuYW1lID09PSB2YWx1ZSkge1xuICAgICAgICAgIHRoaXMudmlzaXROb2RlKG5hbWUpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIHRoaXMudmlzaXROb2RlKG5hbWUpO1xuICAgICAgICAgIHNiLnB1c2goXCI6IFwiKTtcbiAgICAgICAgICB0aGlzLnZpc2l0Tm9kZSh2YWx1ZSk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIHNiLnB1c2goXCJcXG5cIik7XG4gICAgICBpbmRlbnQoc2IsIC0tdGhpcy5pbmRlbnRMZXZlbCk7XG4gICAgICBzYi5wdXNoKFwifVwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgc2IucHVzaChcInt9XCIpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0QXNzZXJ0aW9uRXhwcmVzc2lvbihub2RlOiBBc3NlcnRpb25FeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzd2l0Y2ggKG5vZGUuYXNzZXJ0aW9uS2luZCkge1xuICAgICAgY2FzZSBBc3NlcnRpb25LaW5kLlBSRUZJWDoge1xuICAgICAgICBzYi5wdXNoKFwiPFwiKTtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKGFzc2VydChub2RlLnRvVHlwZSkpO1xuICAgICAgICBzYi5wdXNoKFwiPlwiKTtcbiAgICAgICAgdGhpcy52aXNpdE5vZGUobm9kZS5leHByZXNzaW9uKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIEFzc2VydGlvbktpbmQuQVM6IHtcbiAgICAgICAgdGhpcy52aXNpdE5vZGUobm9kZS5leHByZXNzaW9uKTtcbiAgICAgICAgc2IucHVzaChcIiBhcyBcIik7XG4gICAgICAgIHRoaXMudmlzaXRUeXBlTm9kZShhc3NlcnQobm9kZS50b1R5cGUpKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIEFzc2VydGlvbktpbmQuTk9OTlVMTDoge1xuICAgICAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmV4cHJlc3Npb24pO1xuICAgICAgICBzYi5wdXNoKFwiIVwiKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBkZWZhdWx0OlxuICAgICAgICBhc3NlcnQoZmFsc2UpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0QmluYXJ5RXhwcmVzc2lvbihub2RlOiBCaW5hcnlFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmxlZnQpO1xuICAgIHNiLnB1c2goXCIgXCIpO1xuICAgIHNiLnB1c2gob3BlcmF0b3JUb2tlblRvU3RyaW5nKG5vZGUub3BlcmF0b3IpKTtcbiAgICBzYi5wdXNoKFwiIFwiKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLnJpZ2h0KTtcbiAgfVxuXG4gIHZpc2l0Q2FsbEV4cHJlc3Npb24obm9kZTogQ2FsbEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuZXhwcmVzc2lvbik7XG4gICAgdmFyIHR5cGVBcmd1bWVudHMgPSBub2RlLnR5cGVBcmd1bWVudHM7XG4gICAgaWYgKHR5cGVBcmd1bWVudHMpIHtcbiAgICAgIGxldCBudW1UeXBlQXJndW1lbnRzID0gdHlwZUFyZ3VtZW50cy5sZW5ndGg7XG4gICAgICBpZiAobnVtVHlwZUFyZ3VtZW50cykge1xuICAgICAgICBzYi5wdXNoKFwiPFwiKTtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKHR5cGVBcmd1bWVudHNbMF0pO1xuICAgICAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bVR5cGVBcmd1bWVudHM7ICsraSkge1xuICAgICAgICAgIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgICAgICB0aGlzLnZpc2l0VHlwZU5vZGUodHlwZUFyZ3VtZW50c1tpXSk7XG4gICAgICAgIH1cbiAgICAgICAgc2IucHVzaChcIj4oXCIpO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiKFwiKTtcbiAgICB9XG4gICAgdmFyIGFyZ3MgPSBub2RlLmFyZ3VtZW50cztcbiAgICB2YXIgbnVtQXJncyA9IGFyZ3MubGVuZ3RoO1xuICAgIGlmIChudW1BcmdzKSB7XG4gICAgICB0aGlzLnZpc2l0Tm9kZShhcmdzWzBdKTtcbiAgICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtQXJnczsgKytpKSB7XG4gICAgICAgIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgICAgdGhpcy52aXNpdE5vZGUoYXJnc1tpXSk7XG4gICAgICB9XG4gICAgfVxuICAgIHNiLnB1c2goXCIpXCIpO1xuICB9XG5cbiAgcHJpdmF0ZSB2aXNpdEFyZ3VtZW50cyh0eXBlQXJndW1lbnRzOiBUeXBlTm9kZVtdIHwgbnVsbCwgYXJnczogRXhwcmVzc2lvbltdKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBpZiAodHlwZUFyZ3VtZW50cykge1xuICAgICAgbGV0IG51bVR5cGVBcmd1bWVudHMgPSB0eXBlQXJndW1lbnRzLmxlbmd0aDtcbiAgICAgIGlmIChudW1UeXBlQXJndW1lbnRzKSB7XG4gICAgICAgIHNiLnB1c2goXCI8XCIpO1xuICAgICAgICB0aGlzLnZpc2l0VHlwZU5vZGUodHlwZUFyZ3VtZW50c1swXSk7XG4gICAgICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtVHlwZUFyZ3VtZW50czsgKytpKSB7XG4gICAgICAgICAgc2IucHVzaChcIiwgXCIpO1xuICAgICAgICAgIHRoaXMudmlzaXRUeXBlTm9kZSh0eXBlQXJndW1lbnRzW2ldKTtcbiAgICAgICAgfVxuICAgICAgICBzYi5wdXNoKFwiPihcIik7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCIoXCIpO1xuICAgIH1cbiAgICB2YXIgbnVtQXJncyA9IGFyZ3MubGVuZ3RoO1xuICAgIGlmIChudW1BcmdzKSB7XG4gICAgICB0aGlzLnZpc2l0Tm9kZShhcmdzWzBdKTtcbiAgICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtQXJnczsgKytpKSB7XG4gICAgICAgIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgICAgdGhpcy52aXNpdE5vZGUoYXJnc1tpXSk7XG4gICAgICB9XG4gICAgfVxuICAgIHNiLnB1c2goXCIpXCIpO1xuICB9XG5cbiAgdmlzaXRDbGFzc0V4cHJlc3Npb24obm9kZTogQ2xhc3NFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdmFyIGRlY2xhcmF0aW9uID0gbm9kZS5kZWNsYXJhdGlvbjtcbiAgICB0aGlzLnZpc2l0Q2xhc3NEZWNsYXJhdGlvbihkZWNsYXJhdGlvbik7XG4gIH1cblxuICB2aXNpdENvbW1hRXhwcmVzc2lvbihub2RlOiBDb21tYUV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB2YXIgZXhwcmVzc2lvbnMgPSBub2RlLmV4cHJlc3Npb25zO1xuICAgIHZhciBudW1FeHByZXNzaW9ucyA9IGFzc2VydChleHByZXNzaW9ucy5sZW5ndGgpO1xuICAgIHRoaXMudmlzaXROb2RlKGV4cHJlc3Npb25zWzBdKTtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtRXhwcmVzc2lvbnM7ICsraSkge1xuICAgICAgc2IucHVzaChcIixcIik7XG4gICAgICB0aGlzLnZpc2l0Tm9kZShleHByZXNzaW9uc1tpXSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRFbGVtZW50QWNjZXNzRXhwcmVzc2lvbihub2RlOiBFbGVtZW50QWNjZXNzRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5leHByZXNzaW9uKTtcbiAgICBzYi5wdXNoKFwiW1wiKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmVsZW1lbnRFeHByZXNzaW9uKTtcbiAgICBzYi5wdXNoKFwiXVwiKTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25FeHByZXNzaW9uKG5vZGU6IEZ1bmN0aW9uRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHZhciBkZWNsYXJhdGlvbiA9IG5vZGUuZGVjbGFyYXRpb247XG4gICAgaWYgKCFkZWNsYXJhdGlvbi5hcnJvd0tpbmQpIHtcbiAgICAgIGlmIChkZWNsYXJhdGlvbi5uYW1lLnRleHQubGVuZ3RoKSB7XG4gICAgICAgIHRoaXMuc2IucHVzaChcImZ1bmN0aW9uIFwiKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHRoaXMuc2IucHVzaChcImZ1bmN0aW9uXCIpO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICBhc3NlcnQoZGVjbGFyYXRpb24ubmFtZS50ZXh0Lmxlbmd0aCA9PSAwKTtcbiAgICB9XG4gICAgdGhpcy52aXNpdEZ1bmN0aW9uQ29tbW9uKGRlY2xhcmF0aW9uKTtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbEV4cHJlc3Npb24obm9kZTogTGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICBzd2l0Y2ggKG5vZGUubGl0ZXJhbEtpbmQpIHtcbiAgICAgIGNhc2UgTGl0ZXJhbEtpbmQuRkxPQVQ6IHtcbiAgICAgICAgdGhpcy52aXNpdEZsb2F0TGl0ZXJhbEV4cHJlc3Npb24oPEZsb2F0TGl0ZXJhbEV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBMaXRlcmFsS2luZC5JTlRFR0VSOiB7XG4gICAgICAgIHRoaXMudmlzaXRJbnRlZ2VyTGl0ZXJhbEV4cHJlc3Npb24oPEludGVnZXJMaXRlcmFsRXhwcmVzc2lvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIExpdGVyYWxLaW5kLlNUUklORzoge1xuICAgICAgICB0aGlzLnZpc2l0U3RyaW5nTGl0ZXJhbEV4cHJlc3Npb24oPFN0cmluZ0xpdGVyYWxFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTGl0ZXJhbEtpbmQuUkVHRVhQOiB7XG4gICAgICAgIHRoaXMudmlzaXRSZWdleHBMaXRlcmFsRXhwcmVzc2lvbig8UmVnZXhwTGl0ZXJhbEV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBMaXRlcmFsS2luZC5BUlJBWToge1xuICAgICAgICB0aGlzLnZpc2l0QXJyYXlMaXRlcmFsRXhwcmVzc2lvbig8QXJyYXlMaXRlcmFsRXhwcmVzc2lvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIExpdGVyYWxLaW5kLk9CSkVDVDoge1xuICAgICAgICB0aGlzLnZpc2l0T2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24oPE9iamVjdExpdGVyYWxFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGRlZmF1bHQ6IHtcbiAgICAgICAgYXNzZXJ0KGZhbHNlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgdmlzaXRGbG9hdExpdGVyYWxFeHByZXNzaW9uKG5vZGU6IEZsb2F0TGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLnNiLnB1c2gobm9kZS52YWx1ZS50b1N0cmluZygxMCkpO1xuICB9XG5cbiAgdmlzaXRJbnN0YW5jZU9mRXhwcmVzc2lvbihub2RlOiBJbnN0YW5jZU9mRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuZXhwcmVzc2lvbik7XG4gICAgdGhpcy5zYi5wdXNoKFwiIGluc3RhbmNlb2YgXCIpO1xuICAgIHRoaXMudmlzaXRUeXBlTm9kZShub2RlLmlzVHlwZSk7XG4gIH1cblxuICB2aXNpdEludGVnZXJMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBJbnRlZ2VyTGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLnNiLnB1c2goaTY0X3RvX3N0cmluZyhub2RlLnZhbHVlKSk7XG4gIH1cblxuICB2aXNpdFN0cmluZ0xpdGVyYWwoc3RyOiBzdHJpbmcsIHNpbmdsZVF1b3RlZDogYm9vbCA9IGZhbHNlKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICB2YXIgb2ZmID0gMDtcbiAgICB2YXIgcXVvdGUgPSBzaW5nbGVRdW90ZWQgPyBcIidcIiA6IFwiXFxcIlwiO1xuICAgIHNiLnB1c2gocXVvdGUpO1xuICAgIHZhciBpID0gMDtcbiAgICBmb3IgKGxldCBrID0gc3RyLmxlbmd0aDsgaSA8IGs7ICkge1xuICAgICAgc3dpdGNoIChzdHIuY2hhckNvZGVBdChpKSkge1xuICAgICAgICBjYXNlIENoYXJDb2RlLk5VTEw6IHtcbiAgICAgICAgICBpZiAoaSA+IG9mZikgc2IucHVzaChzdHIuc3Vic3RyaW5nKG9mZiwgKG9mZiA9IGkgKyAxKSkpO1xuICAgICAgICAgIHNiLnB1c2goXCJcXFxcMFwiKTtcbiAgICAgICAgICBvZmYgPSArK2k7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgICAgY2FzZSBDaGFyQ29kZS5CQUNLU1BBQ0U6IHtcbiAgICAgICAgICBpZiAoaSA+IG9mZikgc2IucHVzaChzdHIuc3Vic3RyaW5nKG9mZiwgaSkpO1xuICAgICAgICAgIG9mZiA9ICsraTtcbiAgICAgICAgICBzYi5wdXNoKFwiXFxcXGJcIik7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgICAgY2FzZSBDaGFyQ29kZS5UQUI6IHtcbiAgICAgICAgICBpZiAoaSA+IG9mZikgc2IucHVzaChzdHIuc3Vic3RyaW5nKG9mZiwgaSkpO1xuICAgICAgICAgIG9mZiA9ICsraTtcbiAgICAgICAgICBzYi5wdXNoKFwiXFxcXHRcIik7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgICAgY2FzZSBDaGFyQ29kZS5MSU5FRkVFRDoge1xuICAgICAgICAgIGlmIChpID4gb2ZmKSBzYi5wdXNoKHN0ci5zdWJzdHJpbmcob2ZmLCBpKSk7XG4gICAgICAgICAgb2ZmID0gKytpO1xuICAgICAgICAgIHNiLnB1c2goXCJcXFxcblwiKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgICBjYXNlIENoYXJDb2RlLlZFUlRJQ0FMVEFCOiB7XG4gICAgICAgICAgaWYgKGkgPiBvZmYpIHNiLnB1c2goc3RyLnN1YnN0cmluZyhvZmYsIGkpKTtcbiAgICAgICAgICBvZmYgPSArK2k7XG4gICAgICAgICAgc2IucHVzaChcIlxcXFx2XCIpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICAgIGNhc2UgQ2hhckNvZGUuRk9STUZFRUQ6IHtcbiAgICAgICAgICBpZiAoaSA+IG9mZikgc2IucHVzaChzdHIuc3Vic3RyaW5nKG9mZiwgaSkpO1xuICAgICAgICAgIG9mZiA9ICsraTtcbiAgICAgICAgICBzYi5wdXNoKFwiXFxcXGZcIik7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgICAgY2FzZSBDaGFyQ29kZS5DQVJSSUFHRVJFVFVSTjoge1xuICAgICAgICAgIGlmIChpID4gb2ZmKSBzYi5wdXNoKHN0ci5zdWJzdHJpbmcob2ZmLCBpKSk7XG4gICAgICAgICAgc2IucHVzaChcIlxcXFxyXCIpO1xuICAgICAgICAgIG9mZiA9ICsraTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgICBjYXNlIENoYXJDb2RlLkRPVUJMRVFVT1RFOiB7XG4gICAgICAgICAgaWYgKCFzaW5nbGVRdW90ZWQpIHtcbiAgICAgICAgICAgIGlmIChpID4gb2ZmKSBzYi5wdXNoKHN0ci5zdWJzdHJpbmcob2ZmLCBpKSk7XG4gICAgICAgICAgICBzYi5wdXNoKFwiXFxcXFxcXCJcIik7XG4gICAgICAgICAgICBvZmYgPSArK2k7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICsraTtcbiAgICAgICAgICB9XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgICAgY2FzZSBDaGFyQ29kZS5TSU5HTEVRVU9URToge1xuICAgICAgICAgIGlmIChzaW5nbGVRdW90ZWQpIHtcbiAgICAgICAgICAgIGlmIChpID4gb2ZmKSBzYi5wdXNoKHN0ci5zdWJzdHJpbmcob2ZmLCBpKSk7XG4gICAgICAgICAgICBzYi5wdXNoKFwiXFxcXCdcIik7XG4gICAgICAgICAgICBvZmYgPSArK2k7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICsraTtcbiAgICAgICAgICB9XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgICAgY2FzZSBDaGFyQ29kZS5CQUNLU0xBU0g6IHtcbiAgICAgICAgICBpZiAoaSA+IG9mZikgc2IucHVzaChzdHIuc3Vic3RyaW5nKG9mZiwgaSkpO1xuICAgICAgICAgIHNiLnB1c2goXCJcXFxcXFxcXFwiKTtcbiAgICAgICAgICBvZmYgPSArK2k7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgICAgZGVmYXVsdDoge1xuICAgICAgICAgICsraTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgICBpZiAoaSA+IG9mZikgc2IucHVzaChzdHIuc3Vic3RyaW5nKG9mZiwgaSkpO1xuICAgIHNiLnB1c2gocXVvdGUpO1xuICB9XG5cbiAgdmlzaXRTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXRTdHJpbmdMaXRlcmFsKG5vZGUudmFsdWUpO1xuICB9XG5cbiAgdmlzaXRSZWdleHBMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBSZWdleHBMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgc2IucHVzaChcIi9cIik7XG4gICAgc2IucHVzaChub2RlLnBhdHRlcm4pO1xuICAgIHNiLnB1c2goXCIvXCIpO1xuICAgIHNiLnB1c2gobm9kZS5wYXR0ZXJuRmxhZ3MpO1xuICB9XG5cbiAgdmlzaXROZXdFeHByZXNzaW9uKG5vZGU6IE5ld0V4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLnNiLnB1c2goXCJuZXcgXCIpO1xuICAgIHRoaXMudmlzaXRUeXBlTmFtZShub2RlLnR5cGVOYW1lKTtcbiAgICB0aGlzLnZpc2l0QXJndW1lbnRzKG5vZGUudHlwZUFyZ3VtZW50cywgbm9kZS5hcmd1bWVudHMpOyAgXG4gIH1cblxuICB2aXNpdFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uKG5vZGU6IFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzYi5wdXNoKFwiKFwiKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmV4cHJlc3Npb24pO1xuICAgIHNiLnB1c2goXCIpXCIpO1xuICB9XG5cbiAgdmlzaXRQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24obm9kZTogUHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5leHByZXNzaW9uKTtcbiAgICB0aGlzLnNiLnB1c2goXCIuXCIpO1xuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLnByb3BlcnR5KTtcbiAgfVxuXG4gIHZpc2l0VGVybmFyeUV4cHJlc3Npb24obm9kZTogVGVybmFyeUV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuY29uZGl0aW9uKTtcbiAgICBzYi5wdXNoKFwiID8gXCIpO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuaWZUaGVuKTtcbiAgICBzYi5wdXNoKFwiIDogXCIpO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuaWZFbHNlKTtcbiAgfVxuXG4gIHZpc2l0VW5hcnlFeHByZXNzaW9uKG5vZGU6IFVuYXJ5RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHN3aXRjaCAobm9kZS5raW5kKSB7XG4gICAgICBjYXNlIE5vZGVLaW5kLlVOQVJZUE9TVEZJWDoge1xuICAgICAgICB0aGlzLnZpc2l0VW5hcnlQb3N0Zml4RXhwcmVzc2lvbig8VW5hcnlQb3N0Zml4RXhwcmVzc2lvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlVOQVJZUFJFRklYOiB7XG4gICAgICAgIHRoaXMudmlzaXRVbmFyeVByZWZpeEV4cHJlc3Npb24oPFVuYXJ5UHJlZml4RXhwcmVzc2lvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBkZWZhdWx0OlxuICAgICAgICBhc3NlcnQoZmFsc2UpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0VW5hcnlQb3N0Zml4RXhwcmVzc2lvbihub2RlOiBVbmFyeVBvc3RmaXhFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5vcGVyYW5kKTtcbiAgICB0aGlzLnNiLnB1c2gob3BlcmF0b3JUb2tlblRvU3RyaW5nKG5vZGUub3BlcmF0b3IpKTtcbiAgfVxuXG4gIHZpc2l0VW5hcnlQcmVmaXhFeHByZXNzaW9uKG5vZGU6IFVuYXJ5UHJlZml4RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMuc2IucHVzaChvcGVyYXRvclRva2VuVG9TdHJpbmcobm9kZS5vcGVyYXRvcikpO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUub3BlcmFuZCk7XG4gIH1cblxuICAvLyBzdGF0ZW1lbnRzXG5cbiAgdmlzaXROb2RlQW5kVGVybWluYXRlKHN0YXRlbWVudDogU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy52aXNpdE5vZGUoc3RhdGVtZW50KTtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIGlmIChcbiAgICAgICFzYi5sZW5ndGggfHwgLy8gbGVhZGluZyBFbXB0eVN0YXRlbWVudFxuICAgICAgc3RhdGVtZW50LmtpbmQgPT0gTm9kZUtpbmQuVkFSSUFCTEUgfHwgLy8gcG90ZW50aWFsbHkgYXNzaWducyBhIEZ1bmN0aW9uRXhwcmVzc2lvblxuICAgICAgc3RhdGVtZW50LmtpbmQgPT0gTm9kZUtpbmQuRVhQUkVTU0lPTiAvLyBwb3RlbnRpYWxseSBhc3NpZ25zIGEgRnVuY3Rpb25FeHByZXNzaW9uXG4gICAgKSB7XG4gICAgICBzYi5wdXNoKFwiO1xcblwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgbGV0IGxhc3QgPSBzYltzYi5sZW5ndGggLSAxXTtcbiAgICAgIGxldCBsYXN0Q2hhclBvcyA9IGxhc3QubGVuZ3RoIC0gMTtcbiAgICAgIGlmIChcbiAgICAgICAgbGFzdENoYXJQb3MgPj0gMCAmJlxuICAgICAgICAobGFzdC5jaGFyQ29kZUF0KGxhc3RDaGFyUG9zKSA9PSBDaGFyQ29kZS5DTE9TRUJSQUNFIHx8XG4gICAgICAgICAgbGFzdC5jaGFyQ29kZUF0KGxhc3RDaGFyUG9zKSA9PSBDaGFyQ29kZS5TRU1JQ09MT04pXG4gICAgICApIHtcbiAgICAgICAgc2IucHVzaChcIlxcblwiKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHNiLnB1c2goXCI7XFxuXCIpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHZpc2l0QmxvY2tTdGF0ZW1lbnQobm9kZTogQmxvY2tTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHZhciBzdGF0ZW1lbnRzID0gbm9kZS5zdGF0ZW1lbnRzO1xuICAgIHZhciBudW1TdGF0ZW1lbnRzID0gc3RhdGVtZW50cy5sZW5ndGg7XG4gICAgaWYgKG51bVN0YXRlbWVudHMpIHtcbiAgICAgIHNiLnB1c2goXCJ7XFxuXCIpO1xuICAgICAgbGV0IGluZGVudExldmVsID0gKyt0aGlzLmluZGVudExldmVsO1xuICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBudW1TdGF0ZW1lbnRzOyArK2kpIHtcbiAgICAgICAgaW5kZW50KHNiLCBpbmRlbnRMZXZlbCk7XG4gICAgICAgIHRoaXMudmlzaXROb2RlQW5kVGVybWluYXRlKHN0YXRlbWVudHNbaV0pO1xuICAgICAgfVxuICAgICAgaW5kZW50KHNiLCAtLXRoaXMuaW5kZW50TGV2ZWwpO1xuICAgICAgc2IucHVzaChcIn1cIik7XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCJ7fVwiKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdEJyZWFrU3RhdGVtZW50KG5vZGU6IEJyZWFrU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIGxhYmVsID0gbm9kZS5sYWJlbDtcbiAgICBpZiAobGFiZWwpIHtcbiAgICAgIHRoaXMuc2IucHVzaChcImJyZWFrIFwiKTtcbiAgICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihsYWJlbCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuc2IucHVzaChcImJyZWFrXCIpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0Q29udGludWVTdGF0ZW1lbnQobm9kZTogQ29udGludWVTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB2YXIgbGFiZWwgPSBub2RlLmxhYmVsO1xuICAgIGlmIChsYWJlbCkge1xuICAgICAgdGhpcy5zYi5wdXNoKFwiY29udGludWUgXCIpO1xuICAgICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKGxhYmVsKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5zYi5wdXNoKFwiY29udGludWVcIik7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRDbGFzc0RlY2xhcmF0aW9uKG5vZGU6IENsYXNzRGVjbGFyYXRpb24sIGlzRGVmYXVsdDogYm9vbCA9IGZhbHNlKTogdm9pZCB7XG4gICAgdmFyIGRlY29yYXRvcnMgPSBub2RlLmRlY29yYXRvcnM7XG4gICAgaWYgKGRlY29yYXRvcnMpIHtcbiAgICAgIGZvciAobGV0IGkgPSAwLCBrID0gZGVjb3JhdG9ycy5sZW5ndGg7IGkgPCBrOyArK2kpIHtcbiAgICAgICAgdGhpcy5zZXJpYWxpemVEZWNvcmF0b3IoZGVjb3JhdG9yc1tpXSk7XG4gICAgICB9XG4gICAgfVxuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgaWYgKGlzRGVmYXVsdCkge1xuICAgICAgc2IucHVzaChcImV4cG9ydCBkZWZhdWx0IFwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5zZXJpYWxpemVFeHRlcm5hbE1vZGlmaWVycyhub2RlKTtcbiAgICB9XG4gICAgaWYgKG5vZGUuaXMoQ29tbW9uRmxhZ3MuQUJTVFJBQ1QpKSBzYi5wdXNoKFwiYWJzdHJhY3QgXCIpO1xuICAgIGlmIChub2RlLm5hbWUudGV4dC5sZW5ndGgpIHtcbiAgICAgIHNiLnB1c2goXCJjbGFzcyBcIik7XG4gICAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZS5uYW1lKTtcbiAgICB9IGVsc2Uge1xuICAgICAgc2IucHVzaChcImNsYXNzXCIpO1xuICAgIH1cbiAgICB2YXIgdHlwZVBhcmFtZXRlcnMgPSBub2RlLnR5cGVQYXJhbWV0ZXJzO1xuICAgIGlmICh0eXBlUGFyYW1ldGVycyAmJiB0eXBlUGFyYW1ldGVycy5sZW5ndGgpIHtcbiAgICAgIHNiLnB1c2goXCI8XCIpO1xuICAgICAgdGhpcy52aXNpdFR5cGVQYXJhbWV0ZXIodHlwZVBhcmFtZXRlcnNbMF0pO1xuICAgICAgZm9yIChsZXQgaSA9IDEsIGsgPSB0eXBlUGFyYW1ldGVycy5sZW5ndGg7IGkgPCBrOyArK2kpIHtcbiAgICAgICAgc2IucHVzaChcIiwgXCIpO1xuICAgICAgICB0aGlzLnZpc2l0VHlwZVBhcmFtZXRlcih0eXBlUGFyYW1ldGVyc1tpXSk7XG4gICAgICB9XG4gICAgICBzYi5wdXNoKFwiPlwiKTtcbiAgICB9XG4gICAgdmFyIGV4dGVuZHNUeXBlID0gbm9kZS5leHRlbmRzVHlwZTtcbiAgICBpZiAoZXh0ZW5kc1R5cGUpIHtcbiAgICAgIHNiLnB1c2goXCIgZXh0ZW5kcyBcIik7XG4gICAgICB0aGlzLnZpc2l0VHlwZU5vZGUoZXh0ZW5kc1R5cGUpO1xuICAgIH1cbiAgICB2YXIgaW1wbGVtZW50c1R5cGVzID0gbm9kZS5pbXBsZW1lbnRzVHlwZXM7XG4gICAgaWYgKGltcGxlbWVudHNUeXBlcykge1xuICAgICAgbGV0IG51bUltcGxlbWVudHNUeXBlcyA9IGltcGxlbWVudHNUeXBlcy5sZW5ndGg7XG4gICAgICBpZiAobnVtSW1wbGVtZW50c1R5cGVzKSB7XG4gICAgICAgIHNiLnB1c2goXCIgaW1wbGVtZW50cyBcIik7XG4gICAgICAgIHRoaXMudmlzaXRUeXBlTm9kZShpbXBsZW1lbnRzVHlwZXNbMF0pO1xuICAgICAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bUltcGxlbWVudHNUeXBlczsgKytpKSB7XG4gICAgICAgICAgc2IucHVzaChcIiwgXCIpO1xuICAgICAgICAgIHRoaXMudmlzaXRUeXBlTm9kZShpbXBsZW1lbnRzVHlwZXNbaV0pO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgIHZhciBtZW1iZXJzID0gbm9kZS5tZW1iZXJzO1xuICAgIHZhciBudW1NZW1iZXJzID0gbWVtYmVycy5sZW5ndGg7XG4gICAgaWYgKG51bU1lbWJlcnMpIHtcbiAgICAgIHNiLnB1c2goXCIge1xcblwiKTtcbiAgICAgIGxldCBpbmRlbnRMZXZlbCA9ICsrdGhpcy5pbmRlbnRMZXZlbDtcbiAgICAgIGZvciAobGV0IGkgPSAwLCBrID0gbWVtYmVycy5sZW5ndGg7IGkgPCBrOyArK2kpIHtcbiAgICAgICAgbGV0IG1lbWJlciA9IG1lbWJlcnNbaV07XG4gICAgICAgIGlmIChcbiAgICAgICAgICBtZW1iZXIua2luZCAhPSBOb2RlS2luZC5GSUVMRERFQ0xBUkFUSU9OIHx8XG4gICAgICAgICAgKDxGaWVsZERlY2xhcmF0aW9uPm1lbWJlcikucGFyYW1ldGVySW5kZXggPCAwXG4gICAgICAgICkge1xuICAgICAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgICAgIHRoaXMudmlzaXROb2RlQW5kVGVybWluYXRlKG1lbWJlcik7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIGluZGVudChzYiwgLS10aGlzLmluZGVudExldmVsKTtcbiAgICAgIHNiLnB1c2goXCJ9XCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiIHt9XCIpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0RG9TdGF0ZW1lbnQobm9kZTogRG9TdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHNiLnB1c2goXCJkbyBcIik7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5zdGF0ZW1lbnQpO1xuICAgIGlmIChub2RlLnN0YXRlbWVudC5raW5kID09IE5vZGVLaW5kLkJMT0NLKSB7XG4gICAgICBzYi5wdXNoKFwiIHdoaWxlIChcIik7XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCI7XFxuXCIpO1xuICAgICAgaW5kZW50KHNiLCB0aGlzLmluZGVudExldmVsKTtcbiAgICAgIHNiLnB1c2goXCJ3aGlsZSAoXCIpO1xuICAgIH1cbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmNvbmRpdGlvbik7XG4gICAgc2IucHVzaChcIilcIik7XG4gIH1cblxuICB2aXNpdEVtcHR5U3RhdGVtZW50KG5vZGU6IEVtcHR5U3RhdGVtZW50KTogdm9pZCB7fVxuXG4gIHZpc2l0RW51bURlY2xhcmF0aW9uKG5vZGU6IEVudW1EZWNsYXJhdGlvbiwgaXNEZWZhdWx0OiBib29sID0gZmFsc2UpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIGlmIChpc0RlZmF1bHQpIHtcbiAgICAgIHNiLnB1c2goXCJleHBvcnQgZGVmYXVsdCBcIik7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuc2VyaWFsaXplRXh0ZXJuYWxNb2RpZmllcnMobm9kZSk7XG4gICAgfVxuICAgIGlmIChub2RlLmlzKENvbW1vbkZsYWdzLkNPTlNUKSkgc2IucHVzaChcImNvbnN0IFwiKTtcbiAgICBzYi5wdXNoKFwiZW51bSBcIik7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGUubmFtZSk7XG4gICAgdmFyIHZhbHVlcyA9IG5vZGUudmFsdWVzO1xuICAgIHZhciBudW1WYWx1ZXMgPSB2YWx1ZXMubGVuZ3RoO1xuICAgIGlmIChudW1WYWx1ZXMpIHtcbiAgICAgIHNiLnB1c2goXCIge1xcblwiKTtcbiAgICAgIGxldCBpbmRlbnRMZXZlbCA9ICsrdGhpcy5pbmRlbnRMZXZlbDtcbiAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgdGhpcy52aXNpdEVudW1WYWx1ZURlY2xhcmF0aW9uKG5vZGUudmFsdWVzWzBdKTtcbiAgICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtVmFsdWVzOyArK2kpIHtcbiAgICAgICAgc2IucHVzaChcIixcXG5cIik7XG4gICAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgICB0aGlzLnZpc2l0RW51bVZhbHVlRGVjbGFyYXRpb24obm9kZS52YWx1ZXNbaV0pO1xuICAgICAgfVxuICAgICAgc2IucHVzaChcIlxcblwiKTtcbiAgICAgIGluZGVudChzYiwgLS10aGlzLmluZGVudExldmVsKTtcbiAgICAgIHNiLnB1c2goXCJ9XCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiIHt9XCIpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0RW51bVZhbHVlRGVjbGFyYXRpb24obm9kZTogRW51bVZhbHVlRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZS5uYW1lKTtcbiAgICBpZiAobm9kZS52YWx1ZSkge1xuICAgICAgdGhpcy5zYi5wdXNoKFwiID0gXCIpO1xuICAgICAgdGhpcy52aXNpdE5vZGUobm9kZS52YWx1ZSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRFeHBvcnRJbXBvcnRTdGF0ZW1lbnQobm9kZTogRXhwb3J0SW1wb3J0U3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzYi5wdXNoKFwiZXhwb3J0IGltcG9ydCBcIik7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGUuZXh0ZXJuYWxOYW1lKTtcbiAgICBzYi5wdXNoKFwiID0gXCIpO1xuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLm5hbWUpO1xuICB9XG5cbiAgdmlzaXRFeHBvcnRNZW1iZXIobm9kZTogRXhwb3J0TWVtYmVyKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGUubG9jYWxOYW1lKTtcbiAgICBpZiAobm9kZS5leHBvcnRlZE5hbWUudGV4dCAhPSBub2RlLmxvY2FsTmFtZS50ZXh0KSB7XG4gICAgICB0aGlzLnNiLnB1c2goXCIgYXMgXCIpO1xuICAgICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGUuZXhwb3J0ZWROYW1lKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdEV4cG9ydFN0YXRlbWVudChub2RlOiBFeHBvcnRTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIGlmIChub2RlLmlzRGVjbGFyZSkge1xuICAgICAgc2IucHVzaChcImRlY2xhcmUgXCIpO1xuICAgIH1cbiAgICB2YXIgbWVtYmVycyA9IG5vZGUubWVtYmVycztcbiAgICBpZiAobWVtYmVycyAmJiBtZW1iZXJzLmxlbmd0aCkge1xuICAgICAgbGV0IG51bU1lbWJlcnMgPSBtZW1iZXJzLmxlbmd0aDtcbiAgICAgIHNiLnB1c2goXCJleHBvcnQge1xcblwiKTtcbiAgICAgIGxldCBpbmRlbnRMZXZlbCA9ICsrdGhpcy5pbmRlbnRMZXZlbDtcbiAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgdGhpcy52aXNpdEV4cG9ydE1lbWJlcihtZW1iZXJzWzBdKTtcbiAgICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtTWVtYmVyczsgKytpKSB7XG4gICAgICAgIHNiLnB1c2goXCIsXFxuXCIpO1xuICAgICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsKTtcbiAgICAgICAgdGhpcy52aXNpdEV4cG9ydE1lbWJlcihtZW1iZXJzW2ldKTtcbiAgICAgIH1cbiAgICAgIC0tdGhpcy5pbmRlbnRMZXZlbDtcbiAgICAgIHNiLnB1c2goXCJcXG59XCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiZXhwb3J0IHt9XCIpO1xuICAgIH1cbiAgICB2YXIgcGF0aCA9IG5vZGUucGF0aDtcbiAgICBpZiAocGF0aCkge1xuICAgICAgc2IucHVzaChcIiBmcm9tIFwiKTtcbiAgICAgIHRoaXMudmlzaXRTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbihwYXRoKTtcbiAgICB9XG4gICAgc2IucHVzaChcIjtcIik7XG4gIH1cblxuICB2aXNpdEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQobm9kZTogRXhwb3J0RGVmYXVsdFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHZhciBkZWNsYXJhdGlvbiA9IG5vZGUuZGVjbGFyYXRpb247XG4gICAgc3dpdGNoIChkZWNsYXJhdGlvbi5raW5kKSB7XG4gICAgICBjYXNlIE5vZGVLaW5kLkVOVU1ERUNMQVJBVElPTjoge1xuICAgICAgICB0aGlzLnZpc2l0RW51bURlY2xhcmF0aW9uKDxFbnVtRGVjbGFyYXRpb24+ZGVjbGFyYXRpb24sIHRydWUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRlVOQ1RJT05ERUNMQVJBVElPTjoge1xuICAgICAgICB0aGlzLnZpc2l0RnVuY3Rpb25EZWNsYXJhdGlvbig8RnVuY3Rpb25EZWNsYXJhdGlvbj5kZWNsYXJhdGlvbiwgdHJ1ZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5DTEFTU0RFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRDbGFzc0RlY2xhcmF0aW9uKDxDbGFzc0RlY2xhcmF0aW9uPmRlY2xhcmF0aW9uLCB0cnVlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLklOVEVSRkFDRURFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRJbnRlcmZhY2VEZWNsYXJhdGlvbig8SW50ZXJmYWNlRGVjbGFyYXRpb24+ZGVjbGFyYXRpb24sIHRydWUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuTkFNRVNQQUNFREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdE5hbWVzcGFjZURlY2xhcmF0aW9uKDxOYW1lc3BhY2VEZWNsYXJhdGlvbj5kZWNsYXJhdGlvbiwgdHJ1ZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgZGVmYXVsdDpcbiAgICAgICAgYXNzZXJ0KGZhbHNlKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdEV4cHJlc3Npb25TdGF0ZW1lbnQobm9kZTogRXhwcmVzc2lvblN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuZXhwcmVzc2lvbik7XG4gIH1cblxuICB2aXNpdEZpZWxkRGVjbGFyYXRpb24obm9kZTogRmllbGREZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHZhciBkZWNvcmF0b3JzID0gbm9kZS5kZWNvcmF0b3JzO1xuICAgIGlmIChkZWNvcmF0b3JzKSB7XG4gICAgICBmb3IgKGxldCBpID0gMCwgayA9IGRlY29yYXRvcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIHRoaXMuc2VyaWFsaXplRGVjb3JhdG9yKGRlY29yYXRvcnNbaV0pO1xuICAgICAgfVxuICAgIH1cbiAgICB0aGlzLnNlcmlhbGl6ZUFjY2Vzc01vZGlmaWVycyhub2RlKTtcbiAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZS5uYW1lKTtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIGlmIChub2RlLmZsYWdzICYgQ29tbW9uRmxhZ3MuREVGSU5JVEVfQVNTSUdOTUVOVCkge1xuICAgICAgc2IucHVzaChcIiFcIik7XG4gICAgfVxuICAgIHZhciB0eXBlID0gbm9kZS50eXBlO1xuICAgIGlmICh0eXBlKSB7XG4gICAgICBzYi5wdXNoKFwiOiBcIik7XG4gICAgICB0aGlzLnZpc2l0VHlwZU5vZGUodHlwZSk7XG4gICAgfVxuICAgIHZhciBpbml0aWFsaXplciA9IG5vZGUuaW5pdGlhbGl6ZXI7XG4gICAgaWYgKGluaXRpYWxpemVyKSB7XG4gICAgICBzYi5wdXNoKFwiID0gXCIpO1xuICAgICAgdGhpcy52aXNpdE5vZGUoaW5pdGlhbGl6ZXIpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0Rm9yU3RhdGVtZW50KG5vZGU6IEZvclN0YXRlbWVudCk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgc2IucHVzaChcImZvciAoXCIpO1xuICAgIHZhciBpbml0aWFsaXplciA9IG5vZGUuaW5pdGlhbGl6ZXI7XG4gICAgaWYgKGluaXRpYWxpemVyKSB7XG4gICAgICB0aGlzLnZpc2l0Tm9kZShpbml0aWFsaXplcik7XG4gICAgfVxuICAgIHZhciBjb25kaXRpb24gPSBub2RlLmNvbmRpdGlvbjtcbiAgICBpZiAoY29uZGl0aW9uKSB7XG4gICAgICBzYi5wdXNoKFwiOyBcIik7XG4gICAgICB0aGlzLnZpc2l0Tm9kZShjb25kaXRpb24pO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiO1wiKTtcbiAgICB9XG4gICAgdmFyIGluY3JlbWVudG9yID0gbm9kZS5pbmNyZW1lbnRvcjtcbiAgICBpZiAoaW5jcmVtZW50b3IpIHtcbiAgICAgIHNiLnB1c2goXCI7IFwiKTtcbiAgICAgIHRoaXMudmlzaXROb2RlKGluY3JlbWVudG9yKTtcbiAgICB9IGVsc2Uge1xuICAgICAgc2IucHVzaChcIjtcIik7XG4gICAgfVxuICAgIHNiLnB1c2goXCIpIFwiKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLnN0YXRlbWVudCk7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uRGVjbGFyYXRpb24oXG4gICAgbm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbixcbiAgICBpc0RlZmF1bHQ6IGJvb2wgPSBmYWxzZVxuICApOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHZhciBkZWNvcmF0b3JzID0gbm9kZS5kZWNvcmF0b3JzO1xuICAgIGlmIChkZWNvcmF0b3JzKSB7XG4gICAgICBmb3IgKGxldCBpID0gMCwgayA9IGRlY29yYXRvcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIHRoaXMuc2VyaWFsaXplRGVjb3JhdG9yKGRlY29yYXRvcnNbaV0pO1xuICAgICAgfVxuICAgIH1cbiAgICBpZiAoaXNEZWZhdWx0KSB7XG4gICAgICBzYi5wdXNoKFwiZXhwb3J0IGRlZmF1bHQgXCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLnNlcmlhbGl6ZUV4dGVybmFsTW9kaWZpZXJzKG5vZGUpO1xuICAgICAgdGhpcy5zZXJpYWxpemVBY2Nlc3NNb2RpZmllcnMobm9kZSk7XG4gICAgfVxuICAgIGlmIChub2RlLm5hbWUudGV4dC5sZW5ndGgpIHtcbiAgICAgIHNiLnB1c2goXCJmdW5jdGlvbiBcIik7XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCJmdW5jdGlvblwiKTtcbiAgICB9XG4gICAgdGhpcy52aXNpdEZ1bmN0aW9uQ29tbW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRGdW5jdGlvbkNvbW1vbihub2RlOiBGdW5jdGlvbkRlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZS5uYW1lKTtcbiAgICB2YXIgc2lnbmF0dXJlID0gbm9kZS5zaWduYXR1cmU7XG4gICAgdmFyIHR5cGVQYXJhbWV0ZXJzID0gbm9kZS50eXBlUGFyYW1ldGVycztcbiAgICBpZiAodHlwZVBhcmFtZXRlcnMpIHtcbiAgICAgIGxldCBudW1UeXBlUGFyYW1ldGVycyA9IHR5cGVQYXJhbWV0ZXJzLmxlbmd0aDtcbiAgICAgIGlmIChudW1UeXBlUGFyYW1ldGVycykge1xuICAgICAgICBzYi5wdXNoKFwiPFwiKTtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVQYXJhbWV0ZXIodHlwZVBhcmFtZXRlcnNbMF0pO1xuICAgICAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bVR5cGVQYXJhbWV0ZXJzOyArK2kpIHtcbiAgICAgICAgICBzYi5wdXNoKFwiLCBcIik7XG4gICAgICAgICAgdGhpcy52aXNpdFR5cGVQYXJhbWV0ZXIodHlwZVBhcmFtZXRlcnNbaV0pO1xuICAgICAgICB9XG4gICAgICAgIHNiLnB1c2goXCI+XCIpO1xuICAgICAgfVxuICAgIH1cbiAgICBpZiAobm9kZS5hcnJvd0tpbmQgPT0gQXJyb3dLaW5kLkFSUk9XX1NJTkdMRSkge1xuICAgICAgbGV0IHBhcmFtZXRlcnMgPSBzaWduYXR1cmUucGFyYW1ldGVycztcbiAgICAgIGFzc2VydChwYXJhbWV0ZXJzLmxlbmd0aCA9PSAxKTtcbiAgICAgIGFzc2VydCghc2lnbmF0dXJlLmV4cGxpY2l0VGhpc1R5cGUpO1xuICAgICAgdGhpcy5zZXJpYWxpemVQYXJhbWV0ZXIocGFyYW1ldGVyc1swXSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCIoXCIpO1xuICAgICAgbGV0IHBhcmFtZXRlcnMgPSBzaWduYXR1cmUucGFyYW1ldGVycztcbiAgICAgIGxldCBudW1QYXJhbWV0ZXJzID0gcGFyYW1ldGVycy5sZW5ndGg7XG4gICAgICBsZXQgZXhwbGljaXRUaGlzVHlwZSA9IHNpZ25hdHVyZS5leHBsaWNpdFRoaXNUeXBlO1xuICAgICAgaWYgKGV4cGxpY2l0VGhpc1R5cGUpIHtcbiAgICAgICAgc2IucHVzaChcInRoaXM6IFwiKTtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKGV4cGxpY2l0VGhpc1R5cGUpO1xuICAgICAgfVxuICAgICAgaWYgKG51bVBhcmFtZXRlcnMpIHtcbiAgICAgICAgaWYgKGV4cGxpY2l0VGhpc1R5cGUpIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgICAgdGhpcy5zZXJpYWxpemVQYXJhbWV0ZXIocGFyYW1ldGVyc1swXSk7XG4gICAgICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtUGFyYW1ldGVyczsgKytpKSB7XG4gICAgICAgICAgc2IucHVzaChcIiwgXCIpO1xuICAgICAgICAgIHRoaXMuc2VyaWFsaXplUGFyYW1ldGVyKHBhcmFtZXRlcnNbaV0pO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgIHZhciBib2R5ID0gbm9kZS5ib2R5O1xuICAgIHZhciByZXR1cm5UeXBlID0gc2lnbmF0dXJlLnJldHVyblR5cGU7XG4gICAgaWYgKG5vZGUuYXJyb3dLaW5kKSB7XG4gICAgICBpZiAoYm9keSkge1xuICAgICAgICBpZiAobm9kZS5hcnJvd0tpbmQgPT0gQXJyb3dLaW5kLkFSUk9XX1NJTkdMRSkge1xuICAgICAgICAgIGFzc2VydChpc1R5cGVPbWl0dGVkKHJldHVyblR5cGUpKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBpZiAoaXNUeXBlT21pdHRlZChyZXR1cm5UeXBlKSkge1xuICAgICAgICAgICAgc2IucHVzaChcIilcIik7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHNiLnB1c2goXCIpOiBcIik7XG4gICAgICAgICAgICB0aGlzLnZpc2l0VHlwZU5vZGUocmV0dXJuVHlwZSk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICAgIHNiLnB1c2goXCIgPT4gXCIpO1xuICAgICAgICB0aGlzLnZpc2l0Tm9kZShib2R5KTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGFzc2VydCghaXNUeXBlT21pdHRlZChyZXR1cm5UeXBlKSk7XG4gICAgICAgIHNiLnB1c2goXCIgPT4gXCIpO1xuICAgICAgICB0aGlzLnZpc2l0VHlwZU5vZGUocmV0dXJuVHlwZSk7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIGlmIChcbiAgICAgICAgIWlzVHlwZU9taXR0ZWQocmV0dXJuVHlwZSkgJiZcbiAgICAgICAgIW5vZGUuaXNBbnkoQ29tbW9uRmxhZ3MuQ09OU1RSVUNUT1IgfCBDb21tb25GbGFncy5TRVQpXG4gICAgICApIHtcbiAgICAgICAgc2IucHVzaChcIik6IFwiKTtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKHJldHVyblR5cGUpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgc2IucHVzaChcIilcIik7XG4gICAgICB9XG4gICAgICBpZiAoYm9keSkge1xuICAgICAgICBzYi5wdXNoKFwiIFwiKTtcbiAgICAgICAgdGhpcy52aXNpdE5vZGUoYm9keSk7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgdmlzaXRJZlN0YXRlbWVudChub2RlOiBJZlN0YXRlbWVudCk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgc2IucHVzaChcImlmIChcIik7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5jb25kaXRpb24pO1xuICAgIHNiLnB1c2goXCIpIFwiKTtcbiAgICB2YXIgaWZUcnVlID0gbm9kZS5pZlRydWU7XG4gICAgdGhpcy52aXNpdE5vZGUoaWZUcnVlKTtcbiAgICBpZiAoaWZUcnVlLmtpbmQgIT0gTm9kZUtpbmQuQkxPQ0spIHtcbiAgICAgIHNiLnB1c2goXCI7XFxuXCIpO1xuICAgIH1cbiAgICB2YXIgaWZGYWxzZSA9IG5vZGUuaWZGYWxzZTtcbiAgICBpZiAoaWZGYWxzZSkge1xuICAgICAgaWYgKGlmVHJ1ZS5raW5kID09IE5vZGVLaW5kLkJMT0NLKSB7XG4gICAgICAgIHNiLnB1c2goXCIgZWxzZSBcIik7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBzYi5wdXNoKFwiZWxzZSBcIik7XG4gICAgICB9XG4gICAgICB0aGlzLnZpc2l0Tm9kZShpZkZhbHNlKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdEltcG9ydERlY2xhcmF0aW9uKG5vZGU6IEltcG9ydERlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdmFyIGV4dGVybmFsTmFtZSA9IG5vZGUuZm9yZWlnbk5hbWU7XG4gICAgdmFyIG5hbWUgPSBub2RlLm5hbWU7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKGV4dGVybmFsTmFtZSk7XG4gICAgaWYgKGV4dGVybmFsTmFtZS50ZXh0ICE9IG5hbWUudGV4dCkge1xuICAgICAgdGhpcy5zYi5wdXNoKFwiIGFzIFwiKTtcbiAgICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihuYW1lKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdEltcG9ydFN0YXRlbWVudChub2RlOiBJbXBvcnRTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHNiLnB1c2goXCJpbXBvcnQgXCIpO1xuICAgIHZhciBkZWNsYXJhdGlvbnMgPSBub2RlLmRlY2xhcmF0aW9ucztcbiAgICB2YXIgbmFtZXNwYWNlTmFtZSA9IG5vZGUubmFtZXNwYWNlTmFtZTtcbiAgICBpZiAoZGVjbGFyYXRpb25zKSB7XG4gICAgICBsZXQgbnVtRGVjbGFyYXRpb25zID0gZGVjbGFyYXRpb25zLmxlbmd0aDtcbiAgICAgIGlmIChudW1EZWNsYXJhdGlvbnMpIHtcbiAgICAgICAgc2IucHVzaChcIntcXG5cIik7XG4gICAgICAgIGxldCBpbmRlbnRMZXZlbCA9ICsrdGhpcy5pbmRlbnRMZXZlbDtcbiAgICAgICAgaW5kZW50KHNiLCBpbmRlbnRMZXZlbCk7XG4gICAgICAgIHRoaXMudmlzaXRJbXBvcnREZWNsYXJhdGlvbihkZWNsYXJhdGlvbnNbMF0pO1xuICAgICAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bURlY2xhcmF0aW9uczsgKytpKSB7XG4gICAgICAgICAgc2IucHVzaChcIixcXG5cIik7XG4gICAgICAgICAgaW5kZW50KHNiLCBpbmRlbnRMZXZlbCk7XG4gICAgICAgICAgdGhpcy52aXNpdEltcG9ydERlY2xhcmF0aW9uKGRlY2xhcmF0aW9uc1tpXSk7XG4gICAgICAgIH1cbiAgICAgICAgLS10aGlzLmluZGVudExldmVsO1xuICAgICAgICBzYi5wdXNoKFwiXFxufSBmcm9tIFwiKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHNiLnB1c2goXCJ7fSBmcm9tIFwiKTtcbiAgICAgIH1cbiAgICB9IGVsc2UgaWYgKG5hbWVzcGFjZU5hbWUpIHtcbiAgICAgIHNiLnB1c2goXCIqIGFzIFwiKTtcbiAgICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihuYW1lc3BhY2VOYW1lKTtcbiAgICAgIHNiLnB1c2goXCIgZnJvbSBcIik7XG4gICAgfVxuICAgIHRoaXMudmlzaXRTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbihub2RlLnBhdGgpO1xuICB9XG5cbiAgdmlzaXRJbmRleFNpZ25hdHVyZURlY2xhcmF0aW9uKG5vZGU6IEluZGV4U2lnbmF0dXJlRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHNiLnB1c2goXCJba2V5OiBcIik7XG4gICAgdGhpcy52aXNpdFR5cGVOb2RlKG5vZGUua2V5VHlwZSk7XG4gICAgc2IucHVzaChcIl06IFwiKTtcbiAgICB0aGlzLnZpc2l0VHlwZU5vZGUobm9kZS52YWx1ZVR5cGUpO1xuICB9XG5cbiAgdmlzaXRJbnRlcmZhY2VEZWNsYXJhdGlvbihcbiAgICBub2RlOiBJbnRlcmZhY2VEZWNsYXJhdGlvbixcbiAgICBpc0RlZmF1bHQ6IGJvb2wgPSBmYWxzZVxuICApOiB2b2lkIHtcbiAgICB2YXIgZGVjb3JhdG9ycyA9IG5vZGUuZGVjb3JhdG9ycztcbiAgICBpZiAoZGVjb3JhdG9ycykge1xuICAgICAgZm9yIChsZXQgaSA9IDAsIGsgPSBkZWNvcmF0b3JzLmxlbmd0aDsgaSA8IGs7ICsraSkge1xuICAgICAgICB0aGlzLnNlcmlhbGl6ZURlY29yYXRvcihkZWNvcmF0b3JzW2ldKTtcbiAgICAgIH1cbiAgICB9XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBpZiAoaXNEZWZhdWx0KSB7XG4gICAgICBzYi5wdXNoKFwiZXhwb3J0IGRlZmF1bHQgXCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLnNlcmlhbGl6ZUV4dGVybmFsTW9kaWZpZXJzKG5vZGUpO1xuICAgIH1cbiAgICBzYi5wdXNoKFwiaW50ZXJmYWNlIFwiKTtcbiAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZS5uYW1lKTtcbiAgICB2YXIgdHlwZVBhcmFtZXRlcnMgPSBub2RlLnR5cGVQYXJhbWV0ZXJzO1xuICAgIGlmICh0eXBlUGFyYW1ldGVycyAmJiB0eXBlUGFyYW1ldGVycy5sZW5ndGgpIHtcbiAgICAgIHNiLnB1c2goXCI8XCIpO1xuICAgICAgdGhpcy52aXNpdFR5cGVQYXJhbWV0ZXIodHlwZVBhcmFtZXRlcnNbMF0pO1xuICAgICAgZm9yIChsZXQgaSA9IDEsIGsgPSB0eXBlUGFyYW1ldGVycy5sZW5ndGg7IGkgPCBrOyArK2kpIHtcbiAgICAgICAgc2IucHVzaChcIiwgXCIpO1xuICAgICAgICB0aGlzLnZpc2l0VHlwZVBhcmFtZXRlcih0eXBlUGFyYW1ldGVyc1tpXSk7XG4gICAgICB9XG4gICAgICBzYi5wdXNoKFwiPlwiKTtcbiAgICB9XG4gICAgdmFyIGV4dGVuZHNUeXBlID0gbm9kZS5leHRlbmRzVHlwZTtcbiAgICBpZiAoZXh0ZW5kc1R5cGUpIHtcbiAgICAgIHNiLnB1c2goXCIgZXh0ZW5kcyBcIik7XG4gICAgICB0aGlzLnZpc2l0VHlwZU5vZGUoZXh0ZW5kc1R5cGUpO1xuICAgIH1cbiAgICAvLyBtdXN0IG5vdCBoYXZlIGltcGxlbWVudHNUeXBlc1xuICAgIHNiLnB1c2goXCIge1xcblwiKTtcbiAgICB2YXIgaW5kZW50TGV2ZWwgPSArK3RoaXMuaW5kZW50TGV2ZWw7XG4gICAgdmFyIG1lbWJlcnMgPSBub2RlLm1lbWJlcnM7XG4gICAgZm9yIChsZXQgaSA9IDAsIGsgPSBtZW1iZXJzLmxlbmd0aDsgaSA8IGs7ICsraSkge1xuICAgICAgaW5kZW50KHNiLCBpbmRlbnRMZXZlbCk7XG4gICAgICB0aGlzLnZpc2l0Tm9kZUFuZFRlcm1pbmF0ZShtZW1iZXJzW2ldKTtcbiAgICB9XG4gICAgLS10aGlzLmluZGVudExldmVsO1xuICAgIHNiLnB1c2goXCJ9XCIpO1xuICB9XG5cbiAgdmlzaXRNZXRob2REZWNsYXJhdGlvbihub2RlOiBNZXRob2REZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHZhciBkZWNvcmF0b3JzID0gbm9kZS5kZWNvcmF0b3JzO1xuICAgIGlmIChkZWNvcmF0b3JzKSB7XG4gICAgICBmb3IgKGxldCBpID0gMCwgayA9IGRlY29yYXRvcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIHRoaXMuc2VyaWFsaXplRGVjb3JhdG9yKGRlY29yYXRvcnNbaV0pO1xuICAgICAgfVxuICAgIH1cbiAgICB0aGlzLnNlcmlhbGl6ZUFjY2Vzc01vZGlmaWVycyhub2RlKTtcbiAgICBpZiAobm9kZS5pcyhDb21tb25GbGFncy5HRVQpKSB7XG4gICAgICB0aGlzLnNiLnB1c2goXCJnZXQgXCIpO1xuICAgIH0gZWxzZSBpZiAobm9kZS5pcyhDb21tb25GbGFncy5TRVQpKSB7XG4gICAgICB0aGlzLnNiLnB1c2goXCJzZXQgXCIpO1xuICAgIH1cbiAgICB0aGlzLnZpc2l0RnVuY3Rpb25Db21tb24obm9kZSk7XG4gIH1cblxuICB2aXNpdE5hbWVzcGFjZURlY2xhcmF0aW9uKFxuICAgIG5vZGU6IE5hbWVzcGFjZURlY2xhcmF0aW9uLFxuICAgIGlzRGVmYXVsdDogYm9vbCA9IGZhbHNlXG4gICk6IHZvaWQge1xuICAgIHZhciBkZWNvcmF0b3JzID0gbm9kZS5kZWNvcmF0b3JzO1xuICAgIGlmIChkZWNvcmF0b3JzKSB7XG4gICAgICBmb3IgKGxldCBpID0gMCwgayA9IGRlY29yYXRvcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIHRoaXMuc2VyaWFsaXplRGVjb3JhdG9yKGRlY29yYXRvcnNbaV0pO1xuICAgICAgfVxuICAgIH1cbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIGlmIChpc0RlZmF1bHQpIHtcbiAgICAgIHNiLnB1c2goXCJleHBvcnQgZGVmYXVsdCBcIik7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuc2VyaWFsaXplRXh0ZXJuYWxNb2RpZmllcnMobm9kZSk7XG4gICAgfVxuICAgIHNiLnB1c2goXCJuYW1lc3BhY2UgXCIpO1xuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLm5hbWUpO1xuICAgIHZhciBtZW1iZXJzID0gbm9kZS5tZW1iZXJzO1xuICAgIHZhciBudW1NZW1iZXJzID0gbWVtYmVycy5sZW5ndGg7XG4gICAgaWYgKG51bU1lbWJlcnMpIHtcbiAgICAgIHNiLnB1c2goXCIge1xcblwiKTtcbiAgICAgIGxldCBpbmRlbnRMZXZlbCA9ICsrdGhpcy5pbmRlbnRMZXZlbDtcbiAgICAgIGZvciAobGV0IGkgPSAwLCBrID0gbWVtYmVycy5sZW5ndGg7IGkgPCBrOyArK2kpIHtcbiAgICAgICAgaW5kZW50KHNiLCBpbmRlbnRMZXZlbCk7XG4gICAgICAgIHRoaXMudmlzaXROb2RlQW5kVGVybWluYXRlKG1lbWJlcnNbaV0pO1xuICAgICAgfVxuICAgICAgaW5kZW50KHNiLCAtLXRoaXMuaW5kZW50TGV2ZWwpO1xuICAgICAgc2IucHVzaChcIn1cIik7XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCIge31cIik7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRSZXR1cm5TdGF0ZW1lbnQobm9kZTogUmV0dXJuU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIHZhbHVlID0gbm9kZS52YWx1ZTtcbiAgICBpZiAodmFsdWUpIHtcbiAgICAgIHRoaXMuc2IucHVzaChcInJldHVybiBcIik7XG4gICAgICB0aGlzLnZpc2l0Tm9kZSh2YWx1ZSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuc2IucHVzaChcInJldHVyblwiKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdFN3aXRjaENhc2Uobm9kZTogU3dpdGNoQ2FzZSk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgdmFyIGxhYmVsID0gbm9kZS5sYWJlbDtcbiAgICBpZiAobGFiZWwpIHtcbiAgICAgIHNiLnB1c2goXCJjYXNlIFwiKTtcbiAgICAgIHRoaXMudmlzaXROb2RlKGxhYmVsKTtcbiAgICAgIHNiLnB1c2goXCI6XFxuXCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiZGVmYXVsdDpcXG5cIik7XG4gICAgfVxuICAgIHZhciBzdGF0ZW1lbnRzID0gbm9kZS5zdGF0ZW1lbnRzO1xuICAgIHZhciBudW1TdGF0ZW1lbnRzID0gc3RhdGVtZW50cy5sZW5ndGg7XG4gICAgaWYgKG51bVN0YXRlbWVudHMpIHtcbiAgICAgIGxldCBpbmRlbnRMZXZlbCA9ICsrdGhpcy5pbmRlbnRMZXZlbDtcbiAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgdGhpcy52aXNpdE5vZGVBbmRUZXJtaW5hdGUoc3RhdGVtZW50c1swXSk7XG4gICAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bVN0YXRlbWVudHM7ICsraSkge1xuICAgICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsKTtcbiAgICAgICAgdGhpcy52aXNpdE5vZGVBbmRUZXJtaW5hdGUoc3RhdGVtZW50c1tpXSk7XG4gICAgICB9XG4gICAgICAtLXRoaXMuaW5kZW50TGV2ZWw7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRTd2l0Y2hTdGF0ZW1lbnQobm9kZTogU3dpdGNoU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzYi5wdXNoKFwic3dpdGNoIChcIik7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5jb25kaXRpb24pO1xuICAgIHNiLnB1c2goXCIpIHtcXG5cIik7XG4gICAgdmFyIGluZGVudExldmVsID0gKyt0aGlzLmluZGVudExldmVsO1xuICAgIHZhciBjYXNlcyA9IG5vZGUuY2FzZXM7XG4gICAgZm9yIChsZXQgaSA9IDAsIGsgPSBjYXNlcy5sZW5ndGg7IGkgPCBrOyArK2kpIHtcbiAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgdGhpcy52aXNpdFN3aXRjaENhc2UoY2FzZXNbaV0pO1xuICAgICAgc2IucHVzaChcIlxcblwiKTtcbiAgICB9XG4gICAgLS10aGlzLmluZGVudExldmVsO1xuICAgIHNiLnB1c2goXCJ9XCIpO1xuICB9XG5cbiAgdmlzaXRUaHJvd1N0YXRlbWVudChub2RlOiBUaHJvd1N0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMuc2IucHVzaChcInRocm93IFwiKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLnZhbHVlKTtcbiAgfVxuXG4gIHZpc2l0VHJ5U3RhdGVtZW50KG5vZGU6IFRyeVN0YXRlbWVudCk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgc2IucHVzaChcInRyeSB7XFxuXCIpO1xuICAgIHZhciBpbmRlbnRMZXZlbCA9ICsrdGhpcy5pbmRlbnRMZXZlbDtcbiAgICB2YXIgc3RhdGVtZW50cyA9IG5vZGUuc3RhdGVtZW50cztcbiAgICBmb3IgKGxldCBpID0gMCwgayA9IHN0YXRlbWVudHMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsKTtcbiAgICAgIHRoaXMudmlzaXROb2RlQW5kVGVybWluYXRlKHN0YXRlbWVudHNbaV0pO1xuICAgIH1cbiAgICB2YXIgY2F0Y2hWYXJpYWJsZSA9IG5vZGUuY2F0Y2hWYXJpYWJsZTtcbiAgICBpZiAoY2F0Y2hWYXJpYWJsZSkge1xuICAgICAgaW5kZW50KHNiLCBpbmRlbnRMZXZlbCAtIDEpO1xuICAgICAgc2IucHVzaChcIn0gY2F0Y2ggKFwiKTtcbiAgICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihjYXRjaFZhcmlhYmxlKTtcbiAgICAgIHNiLnB1c2goXCIpIHtcXG5cIik7XG4gICAgICBsZXQgY2F0Y2hTdGF0ZW1lbnRzID0gbm9kZS5jYXRjaFN0YXRlbWVudHM7XG4gICAgICBpZiAoY2F0Y2hTdGF0ZW1lbnRzKSB7XG4gICAgICAgIGZvciAobGV0IGkgPSAwLCBrID0gY2F0Y2hTdGF0ZW1lbnRzLmxlbmd0aDsgaSA8IGs7ICsraSkge1xuICAgICAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgICAgIHRoaXMudmlzaXROb2RlQW5kVGVybWluYXRlKGNhdGNoU3RhdGVtZW50c1tpXSk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgdmFyIGZpbmFsbHlTdGF0ZW1lbnRzID0gbm9kZS5maW5hbGx5U3RhdGVtZW50cztcbiAgICBpZiAoZmluYWxseVN0YXRlbWVudHMpIHtcbiAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwgLSAxKTtcbiAgICAgIHNiLnB1c2goXCJ9IGZpbmFsbHkge1xcblwiKTtcbiAgICAgIGZvciAobGV0IGkgPSAwLCBrID0gZmluYWxseVN0YXRlbWVudHMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgICB0aGlzLnZpc2l0Tm9kZUFuZFRlcm1pbmF0ZShmaW5hbGx5U3RhdGVtZW50c1tpXSk7XG4gICAgICB9XG4gICAgfVxuICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwgLSAxKTtcbiAgICBzYi5wdXNoKFwifVwiKTtcbiAgfVxuXG4gIHZpc2l0VHlwZURlY2xhcmF0aW9uKG5vZGU6IFR5cGVEZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHZhciBkZWNvcmF0b3JzID0gbm9kZS5kZWNvcmF0b3JzO1xuICAgIGlmIChkZWNvcmF0b3JzKSB7XG4gICAgICBmb3IgKGxldCBpID0gMCwgayA9IGRlY29yYXRvcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIHRoaXMuc2VyaWFsaXplRGVjb3JhdG9yKGRlY29yYXRvcnNbaV0pO1xuICAgICAgfVxuICAgIH1cbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHRoaXMuc2VyaWFsaXplRXh0ZXJuYWxNb2RpZmllcnMobm9kZSk7XG4gICAgc2IucHVzaChcInR5cGUgXCIpO1xuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLm5hbWUpO1xuICAgIHZhciB0eXBlUGFyYW1ldGVycyA9IG5vZGUudHlwZVBhcmFtZXRlcnM7XG4gICAgaWYgKHR5cGVQYXJhbWV0ZXJzKSB7XG4gICAgICBsZXQgbnVtVHlwZVBhcmFtZXRlcnMgPSB0eXBlUGFyYW1ldGVycy5sZW5ndGg7XG4gICAgICBpZiAobnVtVHlwZVBhcmFtZXRlcnMpIHtcbiAgICAgICAgc2IucHVzaChcIjxcIik7XG4gICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgbnVtVHlwZVBhcmFtZXRlcnM7ICsraSkge1xuICAgICAgICAgIHRoaXMudmlzaXRUeXBlUGFyYW1ldGVyKHR5cGVQYXJhbWV0ZXJzW2ldKTtcbiAgICAgICAgfVxuICAgICAgICBzYi5wdXNoKFwiPlwiKTtcbiAgICAgIH1cbiAgICB9XG4gICAgc2IucHVzaChcIiA9IFwiKTtcbiAgICB0aGlzLnZpc2l0VHlwZU5vZGUobm9kZS50eXBlKTtcbiAgfVxuXG4gIHZpc2l0VmFyaWFibGVEZWNsYXJhdGlvbihub2RlOiBWYXJpYWJsZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGUubmFtZSk7XG4gICAgdmFyIHR5cGUgPSBub2RlLnR5cGU7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBpZiAobm9kZS5mbGFncyAmIENvbW1vbkZsYWdzLkRFRklOSVRFX0FTU0lHTk1FTlQpIHtcbiAgICAgIHNiLnB1c2goXCIhXCIpO1xuICAgIH1cbiAgICBpZiAodHlwZSkge1xuICAgICAgc2IucHVzaChcIjogXCIpO1xuICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKHR5cGUpO1xuICAgIH1cbiAgICB2YXIgaW5pdGlhbGl6ZXIgPSBub2RlLmluaXRpYWxpemVyO1xuICAgIGlmIChpbml0aWFsaXplcikge1xuICAgICAgc2IucHVzaChcIiA9IFwiKTtcbiAgICAgIHRoaXMudmlzaXROb2RlKGluaXRpYWxpemVyKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdFZhcmlhYmxlU3RhdGVtZW50KG5vZGU6IFZhcmlhYmxlU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIGRlY29yYXRvcnMgPSBub2RlLmRlY29yYXRvcnM7XG4gICAgaWYgKGRlY29yYXRvcnMpIHtcbiAgICAgIGZvciAobGV0IGkgPSAwLCBrID0gZGVjb3JhdG9ycy5sZW5ndGg7IGkgPCBrOyArK2kpIHtcbiAgICAgICAgdGhpcy5zZXJpYWxpemVEZWNvcmF0b3IoZGVjb3JhdG9yc1tpXSk7XG4gICAgICB9XG4gICAgfVxuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgdmFyIGRlY2xhcmF0aW9ucyA9IG5vZGUuZGVjbGFyYXRpb25zO1xuICAgIHZhciBudW1EZWNsYXJhdGlvbnMgPSBhc3NlcnQoZGVjbGFyYXRpb25zLmxlbmd0aCk7XG4gICAgdmFyIGZpcnN0RGVjbGFyYXRpb24gPSBkZWNsYXJhdGlvbnNbMF07XG4gICAgdGhpcy5zZXJpYWxpemVFeHRlcm5hbE1vZGlmaWVycyhmaXJzdERlY2xhcmF0aW9uKTtcbiAgICBzYi5wdXNoKFxuICAgICAgZmlyc3REZWNsYXJhdGlvbi5pcyhDb21tb25GbGFncy5DT05TVClcbiAgICAgICAgPyBcImNvbnN0IFwiXG4gICAgICAgIDogZmlyc3REZWNsYXJhdGlvbi5pcyhDb21tb25GbGFncy5MRVQpXG4gICAgICAgID8gXCJsZXQgXCJcbiAgICAgICAgOiBcInZhciBcIlxuICAgICk7XG4gICAgdGhpcy52aXNpdFZhcmlhYmxlRGVjbGFyYXRpb24obm9kZS5kZWNsYXJhdGlvbnNbMF0pO1xuICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtRGVjbGFyYXRpb25zOyArK2kpIHtcbiAgICAgIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgIHRoaXMudmlzaXRWYXJpYWJsZURlY2xhcmF0aW9uKG5vZGUuZGVjbGFyYXRpb25zW2ldKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdFdoaWxlU3RhdGVtZW50KG5vZGU6IFdoaWxlU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzYi5wdXNoKFwid2hpbGUgKFwiKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmNvbmRpdGlvbik7XG4gICAgdmFyIHN0YXRlbWVudCA9IG5vZGUuc3RhdGVtZW50O1xuICAgIGlmIChzdGF0ZW1lbnQua2luZCA9PSBOb2RlS2luZC5FTVBUWSkge1xuICAgICAgc2IucHVzaChcIilcIik7XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCIpIFwiKTtcbiAgICAgIHRoaXMudmlzaXROb2RlKG5vZGUuc3RhdGVtZW50KTtcbiAgICB9XG4gIH1cblxuICAvLyBvdGhlclxuXG4gIHNlcmlhbGl6ZURlY29yYXRvcihub2RlOiBEZWNvcmF0b3JOb2RlKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzYi5wdXNoKFwiQFwiKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLm5hbWUpO1xuICAgIHZhciBhcmdzID0gbm9kZS5hcmd1bWVudHM7XG4gICAgaWYgKGFyZ3MpIHtcbiAgICAgIHNiLnB1c2goXCIoXCIpO1xuICAgICAgbGV0IG51bUFyZ3MgPSBhcmdzLmxlbmd0aDtcbiAgICAgIGlmIChudW1BcmdzKSB7XG4gICAgICAgIHRoaXMudmlzaXROb2RlKGFyZ3NbMF0pO1xuICAgICAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bUFyZ3M7ICsraSkge1xuICAgICAgICAgIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgICAgICB0aGlzLnZpc2l0Tm9kZShhcmdzW2ldKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgICAgc2IucHVzaChcIilcXG5cIik7XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCJcXG5cIik7XG4gICAgfVxuICAgIGluZGVudChzYiwgdGhpcy5pbmRlbnRMZXZlbCk7XG4gIH1cblxuICBzZXJpYWxpemVQYXJhbWV0ZXIobm9kZTogUGFyYW1ldGVyTm9kZSk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgdmFyIGtpbmQgPSBub2RlLnBhcmFtZXRlcktpbmQ7XG4gICAgdmFyIGltcGxpY2l0RmllbGREZWNsYXJhdGlvbiA9IG5vZGUuaW1wbGljaXRGaWVsZERlY2xhcmF0aW9uO1xuICAgIGlmIChpbXBsaWNpdEZpZWxkRGVjbGFyYXRpb24pIHtcbiAgICAgIHRoaXMuc2VyaWFsaXplQWNjZXNzTW9kaWZpZXJzKGltcGxpY2l0RmllbGREZWNsYXJhdGlvbik7XG4gICAgfVxuICAgIGlmIChraW5kID09IFBhcmFtZXRlcktpbmQuUkVTVCkge1xuICAgICAgc2IucHVzaChcIi4uLlwiKTtcbiAgICB9XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGUubmFtZSk7XG4gICAgdmFyIHR5cGUgPSBub2RlLnR5cGU7XG4gICAgdmFyIGluaXRpYWxpemVyID0gbm9kZS5pbml0aWFsaXplcjtcbiAgICBpZiAodHlwZSkge1xuICAgICAgaWYgKGtpbmQgPT0gUGFyYW1ldGVyS2luZC5PUFRJT05BTCAmJiAhaW5pdGlhbGl6ZXIpIHNiLnB1c2goXCI/XCIpO1xuICAgICAgaWYgKCFpc1R5cGVPbWl0dGVkKHR5cGUpKSB7XG4gICAgICAgIHNiLnB1c2goXCI6IFwiKTtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKHR5cGUpO1xuICAgICAgfVxuICAgIH1cbiAgICBpZiAoaW5pdGlhbGl6ZXIpIHtcbiAgICAgIHNiLnB1c2goXCIgPSBcIik7XG4gICAgICB0aGlzLnZpc2l0Tm9kZShpbml0aWFsaXplcik7XG4gICAgfVxuICB9XG5cbiAgc2VyaWFsaXplRXh0ZXJuYWxNb2RpZmllcnMobm9kZTogRGVjbGFyYXRpb25TdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIGlmIChub2RlLmlzKENvbW1vbkZsYWdzLkVYUE9SVCkpIHtcbiAgICAgIHNiLnB1c2goXCJleHBvcnQgXCIpO1xuICAgIH0gZWxzZSBpZiAobm9kZS5pcyhDb21tb25GbGFncy5JTVBPUlQpKSB7XG4gICAgICBzYi5wdXNoKFwiaW1wb3J0IFwiKTtcbiAgICB9IGVsc2UgaWYgKG5vZGUuaXMoQ29tbW9uRmxhZ3MuREVDTEFSRSkpIHtcbiAgICAgIHNiLnB1c2goXCJkZWNsYXJlIFwiKTtcbiAgICB9XG4gIH1cblxuICBzZXJpYWxpemVBY2Nlc3NNb2RpZmllcnMobm9kZTogRGVjbGFyYXRpb25TdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIGlmIChub2RlLmlzKENvbW1vbkZsYWdzLlBVQkxJQykpIHtcbiAgICAgIHNiLnB1c2goXCJwdWJsaWMgXCIpO1xuICAgIH0gZWxzZSBpZiAobm9kZS5pcyhDb21tb25GbGFncy5QUklWQVRFKSkge1xuICAgICAgc2IucHVzaChcInByaXZhdGUgXCIpO1xuICAgIH0gZWxzZSBpZiAobm9kZS5pcyhDb21tb25GbGFncy5QUk9URUNURUQpKSB7XG4gICAgICBzYi5wdXNoKFwicHJvdGVjdGVkIFwiKTtcbiAgICB9XG4gICAgaWYgKG5vZGUuaXMoQ29tbW9uRmxhZ3MuU1RBVElDKSkge1xuICAgICAgc2IucHVzaChcInN0YXRpYyBcIik7XG4gICAgfSBlbHNlIGlmIChub2RlLmlzKENvbW1vbkZsYWdzLkFCU1RSQUNUKSkge1xuICAgICAgc2IucHVzaChcImFic3RyYWN0IFwiKTtcbiAgICB9XG4gICAgaWYgKG5vZGUuaXMoQ29tbW9uRmxhZ3MuUkVBRE9OTFkpKSB7XG4gICAgICBzYi5wdXNoKFwicmVhZG9ubHkgXCIpO1xuICAgIH1cbiAgfVxuXG4gIGZpbmlzaCgpOiBzdHJpbmcge1xuICAgIHZhciByZXQgPSB0aGlzLnNiLmpvaW4oXCJcIik7XG4gICAgdGhpcy5zYiA9IFtdO1xuICAgIHJldHVybiByZXQ7XG4gIH1cbn1cbiJdfQ==