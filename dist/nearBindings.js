(function webpackUniversalModuleDefinition(root, factory) {
	if(typeof exports === 'object' && typeof module === 'object')
		module.exports = factory();
	else if(typeof define === 'function' && define.amd)
		define([], factory);
	else if(typeof exports === 'object')
		exports["transformer"] = factory();
	else
		root["transformer"] = factory();
})(typeof self !== 'undefined' ? self : this, function() {
return /******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./src/index.ts");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./node_modules/assemblyscript/lib/transformer/src/ASTBuilder.ts":
/*!***********************************************************************!*\
  !*** ./node_modules/assemblyscript/lib/transformer/src/ASTBuilder.ts ***!
  \***********************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

Object.defineProperty(exports, "__esModule", { value: true });
// tslint:disable: as-internal-case
var util_1 = __webpack_require__(/*! ./util */ "./node_modules/assemblyscript/lib/transformer/src/util.ts");
var parsing_1 = __webpack_require__(/*! ./parsing */ "./node_modules/assemblyscript/lib/transformer/src/parsing.ts");
var ast_1 = __webpack_require__(/*! ./ast */ "./node_modules/assemblyscript/lib/transformer/src/ast.ts");
// declare function i64_to_string(i: I64): string;
// import { i64_to_string } from "../../../src/glue/i64"
/** An AST builder. */
var ASTBuilder = /** @class */ (function () {
    function ASTBuilder() {
        this.sb = [];
        this.indentLevel = 0;
    }
    /** Rebuilds the textual source from the specified AST, as far as possible. */
    ASTBuilder.build = function (node) {
        var builder = new ASTBuilder();
        builder.visitNode(node);
        return builder.finish();
    };
    ASTBuilder.prototype.visitNode = function (node) {
        switch (node.kind) {
            case 0 /* SOURCE */: {
                this.visitSource(node);
                break;
            }
            // types
            case 1 /* NAMEDTYPE */: {
                this.visitNamedTypeNode(node);
                break;
            }
            case 2 /* FUNCTIONTYPE */: {
                this.visitFunctionTypeNode(node);
                break;
            }
            case 4 /* TYPEPARAMETER */: {
                this.visitTypeParameter(node);
                break;
            }
            // expressions
            case 13 /* FALSE */:
            case 18 /* NULL */:
            case 22 /* SUPER */:
            case 23 /* THIS */:
            case 24 /* TRUE */:
            case 25 /* CONSTRUCTOR */:
            case 6 /* IDENTIFIER */: {
                this.visitIdentifierExpression(node);
                break;
            }
            case 7 /* ASSERTION */: {
                this.visitAssertionExpression(node);
                break;
            }
            case 8 /* BINARY */: {
                this.visitBinaryExpression(node);
                break;
            }
            case 9 /* CALL */: {
                this.visitCallExpression(node);
                break;
            }
            case 10 /* CLASS */: {
                this.visitClassExpression(node);
                break;
            }
            case 11 /* COMMA */: {
                this.visitCommaExpression(node);
                break;
            }
            case 12 /* ELEMENTACCESS */: {
                this.visitElementAccessExpression(node);
                break;
            }
            case 14 /* FUNCTION */: {
                this.visitFunctionExpression(node);
                break;
            }
            case 15 /* INSTANCEOF */: {
                this.visitInstanceOfExpression(node);
                break;
            }
            case 16 /* LITERAL */: {
                this.visitLiteralExpression(node);
                break;
            }
            case 17 /* NEW */: {
                this.visitNewExpression(node);
                break;
            }
            case 19 /* PARENTHESIZED */: {
                this.visitParenthesizedExpression(node);
                break;
            }
            case 20 /* PROPERTYACCESS */: {
                this.visitPropertyAccessExpression(node);
                break;
            }
            case 21 /* TERNARY */: {
                this.visitTernaryExpression(node);
                break;
            }
            case 26 /* UNARYPOSTFIX */: {
                this.visitUnaryPostfixExpression(node);
                break;
            }
            case 27 /* UNARYPREFIX */: {
                this.visitUnaryPrefixExpression(node);
                break;
            }
            // statements
            case 28 /* BLOCK */: {
                this.visitBlockStatement(node);
                break;
            }
            case 29 /* BREAK */: {
                this.visitBreakStatement(node);
                break;
            }
            case 30 /* CONTINUE */: {
                this.visitContinueStatement(node);
                break;
            }
            case 31 /* DO */: {
                this.visitDoStatement(node);
                break;
            }
            case 32 /* EMPTY */: {
                this.visitEmptyStatement(node);
                break;
            }
            case 33 /* EXPORT */: {
                this.visitExportStatement(node);
                break;
            }
            case 34 /* EXPORTDEFAULT */: {
                this.visitExportDefaultStatement(node);
                break;
            }
            case 35 /* EXPORTIMPORT */: {
                this.visitExportImportStatement(node);
                break;
            }
            case 36 /* EXPRESSION */: {
                this.visitExpressionStatement(node);
                break;
            }
            case 37 /* FOR */: {
                this.visitForStatement(node);
                break;
            }
            case 38 /* IF */: {
                this.visitIfStatement(node);
                break;
            }
            case 39 /* IMPORT */: {
                this.visitImportStatement(node);
                break;
            }
            case 40 /* RETURN */: {
                this.visitReturnStatement(node);
                break;
            }
            case 41 /* SWITCH */: {
                this.visitSwitchStatement(node);
                break;
            }
            case 42 /* THROW */: {
                this.visitThrowStatement(node);
                break;
            }
            case 43 /* TRY */: {
                this.visitTryStatement(node);
                break;
            }
            case 44 /* VARIABLE */: {
                this.visitVariableStatement(node);
                break;
            }
            case 46 /* WHILE */: {
                this.visitWhileStatement(node);
                break;
            }
            // declaration statements
            case 47 /* CLASSDECLARATION */: {
                this.visitClassDeclaration(node);
                break;
            }
            case 48 /* ENUMDECLARATION */: {
                this.visitEnumDeclaration(node);
                break;
            }
            case 49 /* ENUMVALUEDECLARATION */: {
                this.visitEnumValueDeclaration(node);
                break;
            }
            case 50 /* FIELDDECLARATION */: {
                this.visitFieldDeclaration(node);
                break;
            }
            case 51 /* FUNCTIONDECLARATION */: {
                this.visitFunctionDeclaration(node);
                break;
            }
            case 52 /* IMPORTDECLARATION */: {
                this.visitImportDeclaration(node);
                break;
            }
            case 53 /* INDEXSIGNATUREDECLARATION */: {
                this.visitIndexSignatureDeclaration(node);
                break;
            }
            case 54 /* INTERFACEDECLARATION */: {
                this.visitInterfaceDeclaration(node);
                break;
            }
            case 55 /* METHODDECLARATION */: {
                this.visitMethodDeclaration(node);
                break;
            }
            case 56 /* NAMESPACEDECLARATION */: {
                this.visitNamespaceDeclaration(node);
                break;
            }
            case 57 /* TYPEDECLARATION */: {
                this.visitTypeDeclaration(node);
                break;
            }
            case 58 /* VARIABLEDECLARATION */: {
                this.visitVariableDeclaration(node);
                break;
            }
            // other
            case 59 /* DECORATOR */: {
                this.serializeDecorator(node);
                break;
            }
            case 60 /* EXPORTMEMBER */: {
                this.visitExportMember(node);
                break;
            }
            case 5 /* PARAMETER */: {
                this.serializeParameter(node);
                break;
            }
            case 61 /* SWITCHCASE */: {
                this.visitSwitchCase(node);
                break;
            }
            default:
                assert(false);
        }
    };
    ASTBuilder.prototype.visitSource = function (source) {
        var statements = source.statements;
        for (var i = 0, k = statements.length; i < k; ++i) {
            this.visitNodeAndTerminate(statements[i]);
        }
    };
    // types
    ASTBuilder.prototype.visitTypeNode = function (node) {
        switch (node.kind) {
            case 1 /* NAMEDTYPE */: {
                this.visitNamedTypeNode(node);
                break;
            }
            case 2 /* FUNCTIONTYPE */: {
                this.visitFunctionTypeNode(node);
                break;
            }
            default:
                assert(false);
        }
    };
    ASTBuilder.prototype.visitTypeName = function (node) {
        this.visitIdentifierExpression(node.identifier);
        var sb = this.sb;
        var current = node.next;
        while (current) {
            sb.push(".");
            this.visitIdentifierExpression(current.identifier);
            current = current.next;
        }
    };
    ASTBuilder.prototype.visitNamedTypeNode = function (node) {
        this.visitTypeName(node.name);
        var typeArguments = node.typeArguments;
        if (typeArguments) {
            var numTypeArguments = typeArguments.length;
            var sb = this.sb;
            if (numTypeArguments) {
                sb.push("<");
                this.visitTypeNode(typeArguments[0]);
                for (var i = 1; i < numTypeArguments; ++i) {
                    sb.push(", ");
                    this.visitTypeNode(typeArguments[i]);
                }
                sb.push(">");
            }
            if (node.isNullable)
                sb.push(" | null");
        }
    };
    ASTBuilder.prototype.visitFunctionTypeNode = function (node) {
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
            for (var i = 1; i < numParameters; ++i) {
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
    };
    ASTBuilder.prototype.visitTypeParameter = function (node) {
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
    };
    // expressions
    ASTBuilder.prototype.visitIdentifierExpression = function (node) {
        if (node.isQuoted)
            this.visitStringLiteral(node.text);
        else
            this.sb.push(node.text);
    };
    ASTBuilder.prototype.visitArrayLiteralExpression = function (node) {
        var sb = this.sb;
        sb.push("[");
        var elements = node.elementExpressions;
        var numElements = elements.length;
        if (numElements) {
            if (elements[0])
                this.visitNode(elements[0]);
            for (var i = 1; i < numElements; ++i) {
                sb.push(", ");
                if (elements[i])
                    this.visitNode(elements[i]);
            }
        }
        sb.push("]");
    };
    ASTBuilder.prototype.visitObjectLiteralExpression = function (node) {
        var sb = this.sb;
        var names = node.names;
        var values = node.values;
        var numElements = names.length;
        assert(numElements == values.length);
        if (numElements) {
            sb.push("{\n");
            util_1.indent(sb, ++this.indentLevel);
            this.visitNode(names[0]);
            sb.push(": ");
            this.visitNode(values[0]);
            for (var i = 1; i < numElements; ++i) {
                sb.push(",\n");
                util_1.indent(sb, this.indentLevel);
                var name = names[i];
                var value = values[i];
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
            util_1.indent(sb, --this.indentLevel);
            sb.push("}");
        }
        else {
            sb.push("{}");
        }
    };
    ASTBuilder.prototype.visitAssertionExpression = function (node) {
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
    };
    ASTBuilder.prototype.visitBinaryExpression = function (node) {
        var sb = this.sb;
        this.visitNode(node.left);
        sb.push(" ");
        sb.push(parsing_1.operatorTokenToString(node.operator));
        sb.push(" ");
        this.visitNode(node.right);
    };
    ASTBuilder.prototype.visitCallExpression = function (node) {
        var sb = this.sb;
        this.visitNode(node.expression);
        var typeArguments = node.typeArguments;
        if (typeArguments) {
            var numTypeArguments = typeArguments.length;
            if (numTypeArguments) {
                sb.push("<");
                this.visitTypeNode(typeArguments[0]);
                for (var i = 1; i < numTypeArguments; ++i) {
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
            for (var i = 1; i < numArgs; ++i) {
                sb.push(", ");
                this.visitNode(args[i]);
            }
        }
        sb.push(")");
    };
    ASTBuilder.prototype.visitClassExpression = function (node) {
        var declaration = node.declaration;
        this.visitClassDeclaration(declaration);
    };
    ASTBuilder.prototype.visitCommaExpression = function (node) {
        var expressions = node.expressions;
        var numExpressions = assert(expressions.length);
        this.visitNode(expressions[0]);
        var sb = this.sb;
        for (var i = 1; i < numExpressions; ++i) {
            sb.push(",");
            this.visitNode(expressions[i]);
        }
    };
    ASTBuilder.prototype.visitElementAccessExpression = function (node) {
        var sb = this.sb;
        this.visitNode(node.expression);
        sb.push("[");
        this.visitNode(node.elementExpression);
        sb.push("]");
    };
    ASTBuilder.prototype.visitFunctionExpression = function (node) {
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
    };
    ASTBuilder.prototype.visitLiteralExpression = function (node) {
        switch (node.literalKind) {
            case 0 /* FLOAT */: {
                this.visitFloatLiteralExpression(node);
                break;
            }
            case 1 /* INTEGER */: {
                this.visitIntegerLiteralExpression(node);
                break;
            }
            case 2 /* STRING */: {
                this.visitStringLiteralExpression(node);
                break;
            }
            case 3 /* REGEXP */: {
                this.visitRegexpLiteralExpression(node);
                break;
            }
            case 4 /* ARRAY */: {
                this.visitArrayLiteralExpression(node);
                break;
            }
            case 5 /* OBJECT */: {
                this.visitObjectLiteralExpression(node);
                break;
            }
            default: {
                assert(false);
                break;
            }
        }
    };
    ASTBuilder.prototype.visitFloatLiteralExpression = function (node) {
        this.sb.push(node.value.toString(10));
    };
    ASTBuilder.prototype.visitInstanceOfExpression = function (node) {
        this.visitNode(node.expression);
        this.sb.push(" instanceof ");
        this.visitTypeNode(node.isType);
    };
    ASTBuilder.prototype.visitIntegerLiteralExpression = function (node) {
        this.sb.push(i64_to_string(node.value));
    };
    ASTBuilder.prototype.visitStringLiteral = function (str, singleQuoted) {
        if (singleQuoted === void 0) { singleQuoted = false; }
        var sb = this.sb;
        var off = 0;
        var quote = singleQuoted ? "'" : "\"";
        sb.push(quote);
        var i = 0;
        for (var k = str.length; i < k;) {
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
    };
    ASTBuilder.prototype.visitStringLiteralExpression = function (node) {
        this.visitStringLiteral(node.value);
    };
    ASTBuilder.prototype.visitRegexpLiteralExpression = function (node) {
        var sb = this.sb;
        sb.push("/");
        sb.push(node.pattern);
        sb.push("/");
        sb.push(node.patternFlags);
    };
    ASTBuilder.prototype.visitNewExpression = function (node) {
        this.sb.push("new ");
        this.visitCallExpression(node);
    };
    ASTBuilder.prototype.visitParenthesizedExpression = function (node) {
        var sb = this.sb;
        sb.push("(");
        this.visitNode(node.expression);
        sb.push(")");
    };
    ASTBuilder.prototype.visitPropertyAccessExpression = function (node) {
        this.visitNode(node.expression);
        this.sb.push(".");
        this.visitIdentifierExpression(node.property);
    };
    ASTBuilder.prototype.visitTernaryExpression = function (node) {
        var sb = this.sb;
        this.visitNode(node.condition);
        sb.push(" ? ");
        this.visitNode(node.ifThen);
        sb.push(" : ");
        this.visitNode(node.ifElse);
    };
    ASTBuilder.prototype.visitUnaryExpression = function (node) {
        switch (node.kind) {
            case 26 /* UNARYPOSTFIX */: {
                this.visitUnaryPostfixExpression(node);
                break;
            }
            case 27 /* UNARYPREFIX */: {
                this.visitUnaryPrefixExpression(node);
                break;
            }
            default:
                assert(false);
        }
    };
    ASTBuilder.prototype.visitUnaryPostfixExpression = function (node) {
        this.visitNode(node.operand);
        this.sb.push(parsing_1.operatorTokenToString(node.operator));
    };
    ASTBuilder.prototype.visitUnaryPrefixExpression = function (node) {
        this.sb.push(parsing_1.operatorTokenToString(node.operator));
        this.visitNode(node.operand);
    };
    // statements
    ASTBuilder.prototype.visitNodeAndTerminate = function (statement) {
        this.visitNode(statement);
        var sb = this.sb;
        if (!sb.length || // leading EmptyStatement
            statement.kind == 44 /* VARIABLE */ || // potentially assigns a FunctionExpression
            statement.kind == 36 /* EXPRESSION */ // potentially assigns a FunctionExpression
        ) {
            sb.push(";\n");
        }
        else {
            var last = sb[sb.length - 1];
            var lastCharPos = last.length - 1;
            if (lastCharPos >= 0 &&
                (last.charCodeAt(lastCharPos) == 125 /* CLOSEBRACE */ ||
                    last.charCodeAt(lastCharPos) == 59 /* SEMICOLON */)) {
                sb.push("\n");
            }
            else {
                sb.push(";\n");
            }
        }
    };
    ASTBuilder.prototype.visitBlockStatement = function (node) {
        var sb = this.sb;
        var statements = node.statements;
        var numStatements = statements.length;
        if (numStatements) {
            sb.push("{\n");
            var indentLevel = ++this.indentLevel;
            for (var i = 0; i < numStatements; ++i) {
                util_1.indent(sb, indentLevel);
                this.visitNodeAndTerminate(statements[i]);
            }
            util_1.indent(sb, --this.indentLevel);
            sb.push("}");
        }
        else {
            sb.push("{}");
        }
    };
    ASTBuilder.prototype.visitBreakStatement = function (node) {
        var label = node.label;
        if (label) {
            this.sb.push("break ");
            this.visitIdentifierExpression(label);
        }
        else {
            this.sb.push("break");
        }
    };
    ASTBuilder.prototype.visitContinueStatement = function (node) {
        var label = node.label;
        if (label) {
            this.sb.push("continue ");
            this.visitIdentifierExpression(label);
        }
        else {
            this.sb.push("continue");
        }
    };
    ASTBuilder.prototype.visitClassDeclaration = function (node, isDefault) {
        if (isDefault === void 0) { isDefault = false; }
        var decorators = node.decorators;
        if (decorators) {
            for (var i = 0, k = decorators.length; i < k; ++i) {
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
        if (node.is(128 /* ABSTRACT */))
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
            for (var i = 1, k = typeParameters.length; i < k; ++i) {
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
            var numImplementsTypes = implementsTypes.length;
            if (numImplementsTypes) {
                sb.push(" implements ");
                this.visitTypeNode(implementsTypes[0]);
                for (var i = 1; i < numImplementsTypes; ++i) {
                    sb.push(", ");
                    this.visitTypeNode(implementsTypes[i]);
                }
            }
        }
        var members = node.members;
        var numMembers = members.length;
        if (numMembers) {
            sb.push(" {\n");
            var indentLevel = ++this.indentLevel;
            for (var i = 0, k = members.length; i < k; ++i) {
                var member = members[i];
                if (member.kind != 50 /* FIELDDECLARATION */ ||
                    member.parameterIndex < 0) {
                    util_1.indent(sb, indentLevel);
                    this.visitNodeAndTerminate(member);
                }
            }
            util_1.indent(sb, --this.indentLevel);
            sb.push("}");
        }
        else {
            sb.push(" {}");
        }
    };
    ASTBuilder.prototype.visitDoStatement = function (node) {
        var sb = this.sb;
        sb.push("do ");
        this.visitNode(node.statement);
        if (node.statement.kind == 28 /* BLOCK */) {
            sb.push(" while (");
        }
        else {
            sb.push(";\n");
            util_1.indent(sb, this.indentLevel);
            sb.push("while (");
        }
        this.visitNode(node.condition);
        sb.push(")");
    };
    ASTBuilder.prototype.visitEmptyStatement = function (node) { };
    ASTBuilder.prototype.visitEnumDeclaration = function (node, isDefault) {
        if (isDefault === void 0) { isDefault = false; }
        var sb = this.sb;
        if (isDefault) {
            sb.push("export default ");
        }
        else {
            this.serializeExternalModifiers(node);
        }
        if (node.is(8 /* CONST */))
            sb.push("const ");
        sb.push("enum ");
        this.visitIdentifierExpression(node.name);
        var values = node.values;
        var numValues = values.length;
        if (numValues) {
            sb.push(" {\n");
            var indentLevel = ++this.indentLevel;
            util_1.indent(sb, indentLevel);
            this.visitEnumValueDeclaration(node.values[0]);
            for (var i = 1; i < numValues; ++i) {
                sb.push(",\n");
                util_1.indent(sb, indentLevel);
                this.visitEnumValueDeclaration(node.values[i]);
            }
            sb.push("\n");
            util_1.indent(sb, --this.indentLevel);
            sb.push("}");
        }
        else {
            sb.push(" {}");
        }
    };
    ASTBuilder.prototype.visitEnumValueDeclaration = function (node) {
        this.visitIdentifierExpression(node.name);
        if (node.value) {
            this.sb.push(" = ");
            this.visitNode(node.value);
        }
    };
    ASTBuilder.prototype.visitExportImportStatement = function (node) {
        var sb = this.sb;
        sb.push("export import ");
        this.visitIdentifierExpression(node.externalName);
        sb.push(" = ");
        this.visitIdentifierExpression(node.name);
    };
    ASTBuilder.prototype.visitExportMember = function (node) {
        this.visitIdentifierExpression(node.localName);
        if (node.exportedName.text != node.localName.text) {
            this.sb.push(" as ");
            this.visitIdentifierExpression(node.exportedName);
        }
    };
    ASTBuilder.prototype.visitExportStatement = function (node) {
        var sb = this.sb;
        if (node.isDeclare) {
            sb.push("declare ");
        }
        var members = node.members;
        if (members && members.length) {
            var numMembers = members.length;
            sb.push("export {\n");
            var indentLevel = ++this.indentLevel;
            util_1.indent(sb, indentLevel);
            this.visitExportMember(members[0]);
            for (var i = 1; i < numMembers; ++i) {
                sb.push(",\n");
                util_1.indent(sb, indentLevel);
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
    };
    ASTBuilder.prototype.visitExportDefaultStatement = function (node) {
        var declaration = node.declaration;
        switch (declaration.kind) {
            case 48 /* ENUMDECLARATION */: {
                this.visitEnumDeclaration(declaration, true);
                break;
            }
            case 51 /* FUNCTIONDECLARATION */: {
                this.visitFunctionDeclaration(declaration, true);
                break;
            }
            case 47 /* CLASSDECLARATION */: {
                this.visitClassDeclaration(declaration, true);
                break;
            }
            case 54 /* INTERFACEDECLARATION */: {
                this.visitInterfaceDeclaration(declaration, true);
                break;
            }
            case 56 /* NAMESPACEDECLARATION */: {
                this.visitNamespaceDeclaration(declaration, true);
                break;
            }
            default:
                assert(false);
        }
    };
    ASTBuilder.prototype.visitExpressionStatement = function (node) {
        this.visitNode(node.expression);
    };
    ASTBuilder.prototype.visitFieldDeclaration = function (node) {
        var decorators = node.decorators;
        if (decorators) {
            for (var i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        this.serializeAccessModifiers(node);
        this.visitIdentifierExpression(node.name);
        var sb = this.sb;
        if (node.flags & 8192 /* DEFINITE_ASSIGNMENT */) {
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
    };
    ASTBuilder.prototype.visitForStatement = function (node) {
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
    };
    ASTBuilder.prototype.visitFunctionDeclaration = function (node, isDefault) {
        if (isDefault === void 0) { isDefault = false; }
        var sb = this.sb;
        var decorators = node.decorators;
        if (decorators) {
            for (var i = 0, k = decorators.length; i < k; ++i) {
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
    };
    ASTBuilder.prototype.visitFunctionCommon = function (node) {
        var sb = this.sb;
        this.visitIdentifierExpression(node.name);
        var signature = node.signature;
        var typeParameters = node.typeParameters;
        if (typeParameters) {
            var numTypeParameters = typeParameters.length;
            if (numTypeParameters) {
                sb.push("<");
                this.visitTypeParameter(typeParameters[0]);
                for (var i = 1; i < numTypeParameters; ++i) {
                    sb.push(", ");
                    this.visitTypeParameter(typeParameters[i]);
                }
                sb.push(">");
            }
        }
        if (node.arrowKind == 2 /* ARROW_SINGLE */) {
            var parameters = signature.parameters;
            assert(parameters.length == 1);
            assert(!signature.explicitThisType);
            this.serializeParameter(parameters[0]);
        }
        else {
            sb.push("(");
            var parameters = signature.parameters;
            var numParameters = parameters.length;
            var explicitThisType = signature.explicitThisType;
            if (explicitThisType) {
                sb.push("this: ");
                this.visitTypeNode(explicitThisType);
            }
            if (numParameters) {
                if (explicitThisType)
                    sb.push(", ");
                this.serializeParameter(parameters[0]);
                for (var i = 1; i < numParameters; ++i) {
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
                !node.isAny(262144 /* CONSTRUCTOR */ | 4096 /* SET */)) {
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
    };
    ASTBuilder.prototype.visitIfStatement = function (node) {
        var sb = this.sb;
        sb.push("if (");
        this.visitNode(node.condition);
        sb.push(") ");
        var ifTrue = node.ifTrue;
        this.visitNode(ifTrue);
        if (ifTrue.kind != 28 /* BLOCK */) {
            sb.push(";\n");
        }
        var ifFalse = node.ifFalse;
        if (ifFalse) {
            if (ifTrue.kind == 28 /* BLOCK */) {
                sb.push(" else ");
            }
            else {
                sb.push("else ");
            }
            this.visitNode(ifFalse);
        }
    };
    ASTBuilder.prototype.visitImportDeclaration = function (node) {
        var externalName = node.foreignName;
        var name = node.name;
        this.visitIdentifierExpression(externalName);
        if (externalName.text != name.text) {
            this.sb.push(" as ");
            this.visitIdentifierExpression(name);
        }
    };
    ASTBuilder.prototype.visitImportStatement = function (node) {
        var sb = this.sb;
        sb.push("import ");
        var declarations = node.declarations;
        var namespaceName = node.namespaceName;
        if (declarations) {
            var numDeclarations = declarations.length;
            if (numDeclarations) {
                sb.push("{\n");
                var indentLevel = ++this.indentLevel;
                util_1.indent(sb, indentLevel);
                this.visitImportDeclaration(declarations[0]);
                for (var i = 1; i < numDeclarations; ++i) {
                    sb.push(",\n");
                    util_1.indent(sb, indentLevel);
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
    };
    ASTBuilder.prototype.visitIndexSignatureDeclaration = function (node) {
        var sb = this.sb;
        sb.push("[key: ");
        this.visitTypeNode(node.keyType);
        sb.push("]: ");
        this.visitTypeNode(node.valueType);
    };
    ASTBuilder.prototype.visitInterfaceDeclaration = function (node, isDefault) {
        if (isDefault === void 0) { isDefault = false; }
        var decorators = node.decorators;
        if (decorators) {
            for (var i = 0, k = decorators.length; i < k; ++i) {
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
            for (var i = 1, k = typeParameters.length; i < k; ++i) {
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
        for (var i = 0, k = members.length; i < k; ++i) {
            util_1.indent(sb, indentLevel);
            this.visitNodeAndTerminate(members[i]);
        }
        --this.indentLevel;
        sb.push("}");
    };
    ASTBuilder.prototype.visitMethodDeclaration = function (node) {
        var decorators = node.decorators;
        if (decorators) {
            for (var i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        this.serializeAccessModifiers(node);
        if (node.is(2048 /* GET */)) {
            this.sb.push("get ");
        }
        else if (node.is(4096 /* SET */)) {
            this.sb.push("set ");
        }
        this.visitFunctionCommon(node);
    };
    ASTBuilder.prototype.visitNamespaceDeclaration = function (node, isDefault) {
        if (isDefault === void 0) { isDefault = false; }
        var decorators = node.decorators;
        if (decorators) {
            for (var i = 0, k = decorators.length; i < k; ++i) {
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
            var indentLevel = ++this.indentLevel;
            for (var i = 0, k = members.length; i < k; ++i) {
                util_1.indent(sb, indentLevel);
                this.visitNodeAndTerminate(members[i]);
            }
            util_1.indent(sb, --this.indentLevel);
            sb.push("}");
        }
        else {
            sb.push(" {}");
        }
    };
    ASTBuilder.prototype.visitReturnStatement = function (node) {
        var value = node.value;
        if (value) {
            this.sb.push("return ");
            this.visitNode(value);
        }
        else {
            this.sb.push("return");
        }
    };
    ASTBuilder.prototype.visitSwitchCase = function (node) {
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
            var indentLevel = ++this.indentLevel;
            util_1.indent(sb, indentLevel);
            this.visitNodeAndTerminate(statements[0]);
            for (var i = 1; i < numStatements; ++i) {
                util_1.indent(sb, indentLevel);
                this.visitNodeAndTerminate(statements[i]);
            }
            --this.indentLevel;
        }
    };
    ASTBuilder.prototype.visitSwitchStatement = function (node) {
        var sb = this.sb;
        sb.push("switch (");
        this.visitNode(node.condition);
        sb.push(") {\n");
        var indentLevel = ++this.indentLevel;
        var cases = node.cases;
        for (var i = 0, k = cases.length; i < k; ++i) {
            util_1.indent(sb, indentLevel);
            this.visitSwitchCase(cases[i]);
            sb.push("\n");
        }
        --this.indentLevel;
        sb.push("}");
    };
    ASTBuilder.prototype.visitThrowStatement = function (node) {
        this.sb.push("throw ");
        this.visitNode(node.value);
    };
    ASTBuilder.prototype.visitTryStatement = function (node) {
        var sb = this.sb;
        sb.push("try {\n");
        var indentLevel = ++this.indentLevel;
        var statements = node.statements;
        for (var i = 0, k = statements.length; i < k; ++i) {
            util_1.indent(sb, indentLevel);
            this.visitNodeAndTerminate(statements[i]);
        }
        var catchVariable = node.catchVariable;
        if (catchVariable) {
            util_1.indent(sb, indentLevel - 1);
            sb.push("} catch (");
            this.visitIdentifierExpression(catchVariable);
            sb.push(") {\n");
            var catchStatements = node.catchStatements;
            if (catchStatements) {
                for (var i = 0, k = catchStatements.length; i < k; ++i) {
                    util_1.indent(sb, indentLevel);
                    this.visitNodeAndTerminate(catchStatements[i]);
                }
            }
        }
        var finallyStatements = node.finallyStatements;
        if (finallyStatements) {
            util_1.indent(sb, indentLevel - 1);
            sb.push("} finally {\n");
            for (var i = 0, k = finallyStatements.length; i < k; ++i) {
                util_1.indent(sb, indentLevel);
                this.visitNodeAndTerminate(finallyStatements[i]);
            }
        }
        util_1.indent(sb, indentLevel - 1);
        sb.push("}");
    };
    ASTBuilder.prototype.visitTypeDeclaration = function (node) {
        var decorators = node.decorators;
        if (decorators) {
            for (var i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        var sb = this.sb;
        this.serializeExternalModifiers(node);
        sb.push("type ");
        this.visitIdentifierExpression(node.name);
        var typeParameters = node.typeParameters;
        if (typeParameters) {
            var numTypeParameters = typeParameters.length;
            if (numTypeParameters) {
                sb.push("<");
                for (var i = 0; i < numTypeParameters; ++i) {
                    this.visitTypeParameter(typeParameters[i]);
                }
                sb.push(">");
            }
        }
        sb.push(" = ");
        this.visitTypeNode(node.type);
    };
    ASTBuilder.prototype.visitVariableDeclaration = function (node) {
        this.visitIdentifierExpression(node.name);
        var type = node.type;
        var sb = this.sb;
        if (node.flags & 8192 /* DEFINITE_ASSIGNMENT */) {
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
    };
    ASTBuilder.prototype.visitVariableStatement = function (node) {
        var decorators = node.decorators;
        if (decorators) {
            for (var i = 0, k = decorators.length; i < k; ++i) {
                this.serializeDecorator(decorators[i]);
            }
        }
        var sb = this.sb;
        var declarations = node.declarations;
        var numDeclarations = assert(declarations.length);
        var firstDeclaration = declarations[0];
        this.serializeExternalModifiers(firstDeclaration);
        sb.push(firstDeclaration.is(8 /* CONST */)
            ? "const "
            : firstDeclaration.is(16 /* LET */)
                ? "let "
                : "var ");
        this.visitVariableDeclaration(node.declarations[0]);
        for (var i = 1; i < numDeclarations; ++i) {
            sb.push(", ");
            this.visitVariableDeclaration(node.declarations[i]);
        }
    };
    ASTBuilder.prototype.visitWhileStatement = function (node) {
        var sb = this.sb;
        sb.push("while (");
        this.visitNode(node.condition);
        var statement = node.statement;
        if (statement.kind == 32 /* EMPTY */) {
            sb.push(")");
        }
        else {
            sb.push(") ");
            this.visitNode(node.statement);
        }
    };
    // other
    ASTBuilder.prototype.serializeDecorator = function (node) {
        var sb = this.sb;
        sb.push("@");
        this.visitNode(node.name);
        var args = node.arguments;
        if (args) {
            sb.push("(");
            var numArgs = args.length;
            if (numArgs) {
                this.visitNode(args[0]);
                for (var i = 1; i < numArgs; ++i) {
                    sb.push(", ");
                    this.visitNode(args[i]);
                }
            }
            sb.push(")\n");
        }
        else {
            sb.push("\n");
        }
        util_1.indent(sb, this.indentLevel);
    };
    ASTBuilder.prototype.serializeParameter = function (node) {
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
    };
    ASTBuilder.prototype.serializeExternalModifiers = function (node) {
        var sb = this.sb;
        if (node.is(2 /* EXPORT */)) {
            sb.push("export ");
        }
        else if (node.is(1 /* IMPORT */)) {
            sb.push("import ");
        }
        else if (node.is(4 /* DECLARE */)) {
            sb.push("declare ");
        }
    };
    ASTBuilder.prototype.serializeAccessModifiers = function (node) {
        var sb = this.sb;
        if (node.is(256 /* PUBLIC */)) {
            sb.push("public ");
        }
        else if (node.is(512 /* PRIVATE */)) {
            sb.push("private ");
        }
        else if (node.is(1024 /* PROTECTED */)) {
            sb.push("protected ");
        }
        if (node.is(32 /* STATIC */)) {
            sb.push("static ");
        }
        else if (node.is(128 /* ABSTRACT */)) {
            sb.push("abstract ");
        }
        if (node.is(64 /* READONLY */)) {
            sb.push("readonly ");
        }
    };
    ASTBuilder.prototype.finish = function () {
        var ret = this.sb.join("");
        this.sb = [];
        return ret;
    };
    return ASTBuilder;
}());
exports.ASTBuilder = ASTBuilder;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiQVNUQnVpbGRlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9BU1RCdWlsZGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7O0FBQUEsbUNBQW1DO0FBQ25DLCtCQUEyQztBQUMzQyxxQ0FBa0Q7QUFFbEQsNkJBMkVlO0FBRWYsa0RBQWtEO0FBQ2xELHdEQUF3RDtBQUV4RCxzQkFBc0I7QUFDdEI7SUFBQTtRQVFVLE9BQUUsR0FBYSxFQUFFLENBQUM7UUFDbEIsZ0JBQVcsR0FBUSxDQUFDLENBQUM7SUFvZ0QvQixDQUFDO0lBNWdEQyw4RUFBOEU7SUFDdkUsZ0JBQUssR0FBWixVQUFhLElBQVU7UUFDckIsSUFBSSxPQUFPLEdBQUcsSUFBSSxVQUFVLEVBQUUsQ0FBQztRQUMvQixPQUFPLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ3hCLE9BQU8sT0FBTyxDQUFDLE1BQU0sRUFBRSxDQUFDO0lBQzFCLENBQUM7SUFLRCw4QkFBUyxHQUFULFVBQVUsSUFBVTtRQUNsQixRQUFRLElBQUksQ0FBQyxJQUFJLEVBQUU7WUFDakIsbUJBQW9CLENBQUMsQ0FBQztnQkFDcEIsSUFBSSxDQUFDLFdBQVcsQ0FBUyxJQUFJLENBQUMsQ0FBQztnQkFDL0IsTUFBTTthQUNQO1lBRUQsUUFBUTtZQUVSLHNCQUF1QixDQUFDLENBQUM7Z0JBQ3ZCLElBQUksQ0FBQyxrQkFBa0IsQ0FBZ0IsSUFBSSxDQUFDLENBQUM7Z0JBQzdDLE1BQU07YUFDUDtZQUNELHlCQUEwQixDQUFDLENBQUM7Z0JBQzFCLElBQUksQ0FBQyxxQkFBcUIsQ0FBbUIsSUFBSSxDQUFDLENBQUM7Z0JBQ25ELE1BQU07YUFDUDtZQUNELDBCQUEyQixDQUFDLENBQUM7Z0JBQzNCLElBQUksQ0FBQyxrQkFBa0IsQ0FBb0IsSUFBSSxDQUFDLENBQUM7Z0JBQ2pELE1BQU07YUFDUDtZQUVELGNBQWM7WUFFZCxvQkFBb0I7WUFDcEIsbUJBQW1CO1lB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SUFBSSxDQUFDLFlBQVksQ0FBQyxDQUFDO1NBQ3ZCO1FBQ0QsSUFBSSxJQUFJLENBQUMsRUFBRSxpQkFBb0IsRUFBRTtZQUMvQixFQUFFLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1NBQ3BCO2FBQU0sSUFBSSxJQUFJLENBQUMsRUFBRSxvQkFBc0IsRUFBRTtZQUN4QyxFQUFFLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDO1NBQ3RCO1FBQ0QsSUFBSSxJQUFJLENBQUMsRUFBRSxtQkFBc0IsRUFBRTtZQUNqQyxFQUFFLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDO1NBQ3RCO0lBQ0gsQ0FBQztJQUVELDJCQUFNLEdBQU47UUFDRSxJQUFJLEdBQUcsR0FBRyxJQUFJLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUMzQixJQUFJLENBQUMsRUFBRSxHQUFHLEVBQUUsQ0FBQztRQUNiLE9BQU8sR0FBRyxDQUFDO0lBQ2IsQ0FBQztJQUNILGlCQUFDO0FBQUQsQ0FBQyxBQTdnREQsSUE2Z0RDO0FBN2dEWSxnQ0FBVSIsInNvdXJjZXNDb250ZW50IjpbIi8vIHRzbGludDpkaXNhYmxlOiBhcy1pbnRlcm5hbC1jYXNlXG5pbXBvcnQgeyBpbmRlbnQgLCBDaGFyQ29kZSB9IGZyb20gXCIuL3V0aWxcIjtcbmltcG9ydCB7IG9wZXJhdG9yVG9rZW5Ub1N0cmluZyB9IGZyb20gXCIuL3BhcnNpbmdcIjtcblxuaW1wb3J0IHtcbiAgQ29tbW9uRmxhZ3MsXG4gIFR5cGVOb2RlLFxuICBOb2RlLFxuICBOb2RlS2luZCxcbiAgU291cmNlLFxuICBOYW1lZFR5cGVOb2RlLFxuICBGdW5jdGlvblR5cGVOb2RlLFxuICBUeXBlUGFyYW1ldGVyTm9kZSxcbiAgSWRlbnRpZmllckV4cHJlc3Npb24sXG4gIENhbGxFeHByZXNzaW9uLFxuICBDbGFzc0V4cHJlc3Npb24sXG4gIEVsZW1lbnRBY2Nlc3NFeHByZXNzaW9uLFxuICBGdW5jdGlvbkV4cHJlc3Npb24sXG4gIEluc3RhbmNlT2ZFeHByZXNzaW9uLFxuICBMaXRlcmFsRXhwcmVzc2lvbixcbiAgTmV3RXhwcmVzc2lvbixcbiAgUGFyZW50aGVzaXplZEV4cHJlc3Npb24sXG4gIFByb3BlcnR5QWNjZXNzRXhwcmVzc2lvbixcbiAgVGVybmFyeUV4cHJlc3Npb24sXG4gIFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24sXG4gIFVuYXJ5UHJlZml4RXhwcmVzc2lvbixcbiAgQmxvY2tTdGF0ZW1lbnQsXG4gIEJyZWFrU3RhdGVtZW50LFxuICBDb250aW51ZVN0YXRlbWVudCxcbiAgRG9TdGF0ZW1lbnQsXG4gIEVtcHR5U3RhdGVtZW50LFxuICBFeHBvcnRTdGF0ZW1lbnQsXG4gIEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQsXG4gIEV4cG9ydEltcG9ydFN0YXRlbWVudCxcbiAgRXhwcmVzc2lvblN0YXRlbWVudCxcbiAgRm9yU3RhdGVtZW50LFxuICBJZlN0YXRlbWVudCxcbiAgSW1wb3J0U3RhdGVtZW50LFxuICBSZXR1cm5TdGF0ZW1lbnQsXG4gIFN3aXRjaFN0YXRlbWVudCxcbiAgVGhyb3dTdGF0ZW1lbnQsXG4gIFRyeVN0YXRlbWVudCxcbiAgVmFyaWFibGVTdGF0ZW1lbnQsXG4gIFdoaWxlU3RhdGVtZW50LFxuICBDbGFzc0RlY2xhcmF0aW9uLFxuICBFbnVtRGVjbGFyYXRpb24sXG4gIEVudW1WYWx1ZURlY2xhcmF0aW9uLFxuICBGaWVsZERlY2xhcmF0aW9uLFxuICBGdW5jdGlvbkRlY2xhcmF0aW9uLFxuICBJbXBvcnREZWNsYXJhdGlvbixcbiAgSW5kZXhTaWduYXR1cmVEZWNsYXJhdGlvbixcbiAgSW50ZXJmYWNlRGVjbGFyYXRpb24sXG4gIE1ldGhvZERlY2xhcmF0aW9uLFxuICBOYW1lc3BhY2VEZWNsYXJhdGlvbixcbiAgVHlwZURlY2xhcmF0aW9uLFxuICBWYXJpYWJsZURlY2xhcmF0aW9uLFxuICBEZWNvcmF0b3JOb2RlLFxuICBFeHBvcnRNZW1iZXIsXG4gIFBhcmFtZXRlck5vZGUsXG4gIFN3aXRjaENhc2UsXG4gIFR5cGVOYW1lLFxuICBBcnJheUxpdGVyYWxFeHByZXNzaW9uLFxuICBFeHByZXNzaW9uLFxuICBPYmplY3RMaXRlcmFsRXhwcmVzc2lvbixcbiAgQXNzZXJ0aW9uS2luZCxcbiAgTGl0ZXJhbEtpbmQsXG4gIEZsb2F0TGl0ZXJhbEV4cHJlc3Npb24sXG4gIFN0cmluZ0xpdGVyYWxFeHByZXNzaW9uLFxuICBSZWdleHBMaXRlcmFsRXhwcmVzc2lvbixcbiAgVW5hcnlFeHByZXNzaW9uLFxuICBTdGF0ZW1lbnQsXG4gIEFycm93S2luZCxcbiAgUGFyYW1ldGVyS2luZCxcbiAgRGVjbGFyYXRpb25TdGF0ZW1lbnQsXG4gIEFzc2VydGlvbkV4cHJlc3Npb24sXG4gIEJpbmFyeUV4cHJlc3Npb24sXG4gIENvbW1hRXhwcmVzc2lvbixcbiAgSW50ZWdlckxpdGVyYWxFeHByZXNzaW9uLFxuICBpc1R5cGVPbWl0dGVkXG59IGZyb20gXCIuL2FzdFwiO1xuXG4vLyBkZWNsYXJlIGZ1bmN0aW9uIGk2NF90b19zdHJpbmcoaTogSTY0KTogc3RyaW5nO1xuLy8gaW1wb3J0IHsgaTY0X3RvX3N0cmluZyB9IGZyb20gXCIuLi8uLi8uLi9zcmMvZ2x1ZS9pNjRcIlxuXG4vKiogQW4gQVNUIGJ1aWxkZXIuICovXG5leHBvcnQgY2xhc3MgQVNUQnVpbGRlciB7XG4gIC8qKiBSZWJ1aWxkcyB0aGUgdGV4dHVhbCBzb3VyY2UgZnJvbSB0aGUgc3BlY2lmaWVkIEFTVCwgYXMgZmFyIGFzIHBvc3NpYmxlLiAqL1xuICBzdGF0aWMgYnVpbGQobm9kZTogTm9kZSk6IHN0cmluZyB7XG4gICAgdmFyIGJ1aWxkZXIgPSBuZXcgQVNUQnVpbGRlcigpO1xuICAgIGJ1aWxkZXIudmlzaXROb2RlKG5vZGUpO1xuICAgIHJldHVybiBidWlsZGVyLmZpbmlzaCgpO1xuICB9XG5cbiAgcHJpdmF0ZSBzYjogc3RyaW5nW10gPSBbXTtcbiAgcHJpdmF0ZSBpbmRlbnRMZXZlbDogaTMyID0gMDtcblxuICB2aXNpdE5vZGUobm9kZTogTm9kZSk6IHZvaWQge1xuICAgIHN3aXRjaCAobm9kZS5raW5kKSB7XG4gICAgICBjYXNlIE5vZGVLaW5kLlNPVVJDRToge1xuICAgICAgICB0aGlzLnZpc2l0U291cmNlKDxTb3VyY2U+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuXG4gICAgICAvLyB0eXBlc1xuXG4gICAgICBjYXNlIE5vZGVLaW5kLk5BTUVEVFlQRToge1xuICAgICAgICB0aGlzLnZpc2l0TmFtZWRUeXBlTm9kZSg8TmFtZWRUeXBlTm9kZT5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkZVTkNUSU9OVFlQRToge1xuICAgICAgICB0aGlzLnZpc2l0RnVuY3Rpb25UeXBlTm9kZSg8RnVuY3Rpb25UeXBlTm9kZT5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlRZUEVQQVJBTUVURVI6IHtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVQYXJhbWV0ZXIoPFR5cGVQYXJhbWV0ZXJOb2RlPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cblxuICAgICAgLy8gZXhwcmVzc2lvbnNcblxuICAgICAgY2FzZSBOb2RlS2luZC5GQUxTRTpcbiAgICAgIGNhc2UgTm9kZUtpbmQuTlVMTDpcbiAgICAgIGNhc2UgTm9kZUtpbmQuU1VQRVI6XG4gICAgICBjYXNlIE5vZGVLaW5kLlRISVM6XG4gICAgICBjYXNlIE5vZGVLaW5kLlRSVUU6XG4gICAgICBjYXNlIE5vZGVLaW5kLkNPTlNUUlVDVE9SOlxuICAgICAgY2FzZSBOb2RlS2luZC5JREVOVElGSUVSOiB7XG4gICAgICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbig8SWRlbnRpZmllckV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5BU1NFUlRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEFzc2VydGlvbkV4cHJlc3Npb24oPEFzc2VydGlvbkV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5CSU5BUlk6IHtcbiAgICAgICAgdGhpcy52aXNpdEJpbmFyeUV4cHJlc3Npb24oPEJpbmFyeUV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5DQUxMOiB7XG4gICAgICAgIHRoaXMudmlzaXRDYWxsRXhwcmVzc2lvbig8Q2FsbEV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5DTEFTUzoge1xuICAgICAgICB0aGlzLnZpc2l0Q2xhc3NFeHByZXNzaW9uKDxDbGFzc0V4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5DT01NQToge1xuICAgICAgICB0aGlzLnZpc2l0Q29tbWFFeHByZXNzaW9uKDxDb21tYUV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5FTEVNRU5UQUNDRVNTOiB7XG4gICAgICAgIHRoaXMudmlzaXRFbGVtZW50QWNjZXNzRXhwcmVzc2lvbig8RWxlbWVudEFjY2Vzc0V4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5GVU5DVElPTjoge1xuICAgICAgICB0aGlzLnZpc2l0RnVuY3Rpb25FeHByZXNzaW9uKDxGdW5jdGlvbkV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5JTlNUQU5DRU9GOiB7XG4gICAgICAgIHRoaXMudmlzaXRJbnN0YW5jZU9mRXhwcmVzc2lvbig8SW5zdGFuY2VPZkV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5MSVRFUkFMOiB7XG4gICAgICAgIHRoaXMudmlzaXRMaXRlcmFsRXhwcmVzc2lvbig8TGl0ZXJhbEV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5ORVc6IHtcbiAgICAgICAgdGhpcy52aXNpdE5ld0V4cHJlc3Npb24oPE5ld0V4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5QQVJFTlRIRVNJWkVEOiB7XG4gICAgICAgIHRoaXMudmlzaXRQYXJlbnRoZXNpemVkRXhwcmVzc2lvbig8UGFyZW50aGVzaXplZEV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5QUk9QRVJUWUFDQ0VTUzoge1xuICAgICAgICB0aGlzLnZpc2l0UHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uKDxQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5URVJOQVJZOiB7XG4gICAgICAgIHRoaXMudmlzaXRUZXJuYXJ5RXhwcmVzc2lvbig8VGVybmFyeUV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5VTkFSWVBPU1RGSVg6IHtcbiAgICAgICAgdGhpcy52aXNpdFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24oPFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5VTkFSWVBSRUZJWDoge1xuICAgICAgICB0aGlzLnZpc2l0VW5hcnlQcmVmaXhFeHByZXNzaW9uKDxVbmFyeVByZWZpeEV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuXG4gICAgICAvLyBzdGF0ZW1lbnRzXG5cbiAgICAgIGNhc2UgTm9kZUtpbmQuQkxPQ0s6IHtcbiAgICAgICAgdGhpcy52aXNpdEJsb2NrU3RhdGVtZW50KDxCbG9ja1N0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkJSRUFLOiB7XG4gICAgICAgIHRoaXMudmlzaXRCcmVha1N0YXRlbWVudCg8QnJlYWtTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5DT05USU5VRToge1xuICAgICAgICB0aGlzLnZpc2l0Q29udGludWVTdGF0ZW1lbnQoPENvbnRpbnVlU3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRE86IHtcbiAgICAgICAgdGhpcy52aXNpdERvU3RhdGVtZW50KDxEb1N0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkVNUFRZOiB7XG4gICAgICAgIHRoaXMudmlzaXRFbXB0eVN0YXRlbWVudCg8RW1wdHlTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5FWFBPUlQ6IHtcbiAgICAgICAgdGhpcy52aXNpdEV4cG9ydFN0YXRlbWVudCg8RXhwb3J0U3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRVhQT1JUREVGQVVMVDoge1xuICAgICAgICB0aGlzLnZpc2l0RXhwb3J0RGVmYXVsdFN0YXRlbWVudCg8RXhwb3J0RGVmYXVsdFN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkVYUE9SVElNUE9SVDoge1xuICAgICAgICB0aGlzLnZpc2l0RXhwb3J0SW1wb3J0U3RhdGVtZW50KDxFeHBvcnRJbXBvcnRTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5FWFBSRVNTSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRFeHByZXNzaW9uU3RhdGVtZW50KDxFeHByZXNzaW9uU3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRk9SOiB7XG4gICAgICAgIHRoaXMudmlzaXRGb3JTdGF0ZW1lbnQoPEZvclN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLklGOiB7XG4gICAgICAgIHRoaXMudmlzaXRJZlN0YXRlbWVudCg8SWZTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5JTVBPUlQ6IHtcbiAgICAgICAgdGhpcy52aXNpdEltcG9ydFN0YXRlbWVudCg8SW1wb3J0U3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuUkVUVVJOOiB7XG4gICAgICAgIHRoaXMudmlzaXRSZXR1cm5TdGF0ZW1lbnQoPFJldHVyblN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlNXSVRDSDoge1xuICAgICAgICB0aGlzLnZpc2l0U3dpdGNoU3RhdGVtZW50KDxTd2l0Y2hTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5USFJPVzoge1xuICAgICAgICB0aGlzLnZpc2l0VGhyb3dTdGF0ZW1lbnQoPFRocm93U3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVFJZOiB7XG4gICAgICAgIHRoaXMudmlzaXRUcnlTdGF0ZW1lbnQoPFRyeVN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlZBUklBQkxFOiB7XG4gICAgICAgIHRoaXMudmlzaXRWYXJpYWJsZVN0YXRlbWVudCg8VmFyaWFibGVTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5XSElMRToge1xuICAgICAgICB0aGlzLnZpc2l0V2hpbGVTdGF0ZW1lbnQoPFdoaWxlU3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cblxuICAgICAgLy8gZGVjbGFyYXRpb24gc3RhdGVtZW50c1xuXG4gICAgICBjYXNlIE5vZGVLaW5kLkNMQVNTREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdENsYXNzRGVjbGFyYXRpb24oPENsYXNzRGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5FTlVNREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEVudW1EZWNsYXJhdGlvbig8RW51bURlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRU5VTVZBTFVFREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEVudW1WYWx1ZURlY2xhcmF0aW9uKDxFbnVtVmFsdWVEZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkZJRUxEREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEZpZWxkRGVjbGFyYXRpb24oPEZpZWxkRGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5GVU5DVElPTkRFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRGdW5jdGlvbkRlY2xhcmF0aW9uKDxGdW5jdGlvbkRlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuSU1QT1JUREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEltcG9ydERlY2xhcmF0aW9uKDxJbXBvcnREZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLklOREVYU0lHTkFUVVJFREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEluZGV4U2lnbmF0dXJlRGVjbGFyYXRpb24oPEluZGV4U2lnbmF0dXJlRGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5JTlRFUkZBQ0VERUNMQVJBVElPTjoge1xuICAgICAgICB0aGlzLnZpc2l0SW50ZXJmYWNlRGVjbGFyYXRpb24oPEludGVyZmFjZURlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuTUVUSE9EREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdE1ldGhvZERlY2xhcmF0aW9uKDxNZXRob2REZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLk5BTUVTUEFDRURFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXROYW1lc3BhY2VEZWNsYXJhdGlvbig8TmFtZXNwYWNlRGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5UWVBFREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVEZWNsYXJhdGlvbig8VHlwZURlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVkFSSUFCTEVERUNMQVJBVElPTjoge1xuICAgICAgICB0aGlzLnZpc2l0VmFyaWFibGVEZWNsYXJhdGlvbig8VmFyaWFibGVEZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG5cbiAgICAgIC8vIG90aGVyXG5cbiAgICAgIGNhc2UgTm9kZUtpbmQuREVDT1JBVE9SOiB7XG4gICAgICAgIHRoaXMuc2VyaWFsaXplRGVjb3JhdG9yKDxEZWNvcmF0b3JOb2RlPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRVhQT1JUTUVNQkVSOiB7XG4gICAgICAgIHRoaXMudmlzaXRFeHBvcnRNZW1iZXIoPEV4cG9ydE1lbWJlcj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlBBUkFNRVRFUjoge1xuICAgICAgICB0aGlzLnNlcmlhbGl6ZVBhcmFtZXRlcig8UGFyYW1ldGVyTm9kZT5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlNXSVRDSENBU0U6IHtcbiAgICAgICAgdGhpcy52aXNpdFN3aXRjaENhc2UoPFN3aXRjaENhc2U+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgZGVmYXVsdDpcbiAgICAgICAgYXNzZXJ0KGZhbHNlKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdFNvdXJjZShzb3VyY2U6IFNvdXJjZSk6IHZvaWQge1xuICAgIHZhciBzdGF0ZW1lbnRzID0gc291cmNlLnN0YXRlbWVudHM7XG4gICAgZm9yIChsZXQgaSA9IDAsIGsgPSBzdGF0ZW1lbnRzLmxlbmd0aDsgaSA8IGs7ICsraSkge1xuICAgICAgdGhpcy52aXNpdE5vZGVBbmRUZXJtaW5hdGUoc3RhdGVtZW50c1tpXSk7XG4gICAgfVxuICB9XG5cbiAgLy8gdHlwZXNcblxuICB2aXNpdFR5cGVOb2RlKG5vZGU6IFR5cGVOb2RlKTogdm9pZCB7XG4gICAgc3dpdGNoIChub2RlLmtpbmQpIHtcbiAgICAgIGNhc2UgTm9kZUtpbmQuTkFNRURUWVBFOiB7XG4gICAgICAgIHRoaXMudmlzaXROYW1lZFR5cGVOb2RlKDxOYW1lZFR5cGVOb2RlPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRlVOQ1RJT05UWVBFOiB7XG4gICAgICAgIHRoaXMudmlzaXRGdW5jdGlvblR5cGVOb2RlKDxGdW5jdGlvblR5cGVOb2RlPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIGFzc2VydChmYWxzZSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRUeXBlTmFtZShub2RlOiBUeXBlTmFtZSk6IHZvaWQge1xuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLmlkZW50aWZpZXIpO1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgdmFyIGN1cnJlbnQgPSBub2RlLm5leHQ7XG4gICAgd2hpbGUgKGN1cnJlbnQpIHtcbiAgICAgIHNiLnB1c2goXCIuXCIpO1xuICAgICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKGN1cnJlbnQuaWRlbnRpZmllcik7XG4gICAgICBjdXJyZW50ID0gY3VycmVudC5uZXh0O1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0TmFtZWRUeXBlTm9kZShub2RlOiBOYW1lZFR5cGVOb2RlKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdFR5cGVOYW1lKG5vZGUubmFtZSk7XG4gICAgdmFyIHR5cGVBcmd1bWVudHMgPSBub2RlLnR5cGVBcmd1bWVudHM7XG4gICAgaWYgKHR5cGVBcmd1bWVudHMpIHtcbiAgICAgIGxldCBudW1UeXBlQXJndW1lbnRzID0gdHlwZUFyZ3VtZW50cy5sZW5ndGg7XG4gICAgICBsZXQgc2IgPSB0aGlzLnNiO1xuICAgICAgaWYgKG51bVR5cGVBcmd1bWVudHMpIHtcbiAgICAgICAgc2IucHVzaChcIjxcIik7XG4gICAgICAgIHRoaXMudmlzaXRUeXBlTm9kZSh0eXBlQXJndW1lbnRzWzBdKTtcbiAgICAgICAgZm9yIChsZXQgaSA9IDE7IGkgPCBudW1UeXBlQXJndW1lbnRzOyArK2kpIHtcbiAgICAgICAgICBzYi5wdXNoKFwiLCBcIik7XG4gICAgICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKHR5cGVBcmd1bWVudHNbaV0pO1xuICAgICAgICB9XG4gICAgICAgIHNiLnB1c2goXCI+XCIpO1xuICAgICAgfVxuICAgICAgaWYgKG5vZGUuaXNOdWxsYWJsZSkgc2IucHVzaChcIiB8IG51bGxcIik7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRGdW5jdGlvblR5cGVOb2RlKG5vZGU6IEZ1bmN0aW9uVHlwZU5vZGUpOiB2b2lkIHtcbiAgICB2YXIgaXNOdWxsYWJsZSA9IG5vZGUuaXNOdWxsYWJsZTtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHNiLnB1c2goaXNOdWxsYWJsZSA/IFwiKChcIiA6IFwiKFwiKTtcbiAgICB2YXIgZXhwbGljaXRUaGlzVHlwZSA9IG5vZGUuZXhwbGljaXRUaGlzVHlwZTtcbiAgICBpZiAoZXhwbGljaXRUaGlzVHlwZSkge1xuICAgICAgc2IucHVzaChcInRoaXM6IFwiKTtcbiAgICAgIHRoaXMudmlzaXRUeXBlTm9kZShleHBsaWNpdFRoaXNUeXBlKTtcbiAgICB9XG4gICAgdmFyIHBhcmFtZXRlcnMgPSBub2RlLnBhcmFtZXRlcnM7XG4gICAgdmFyIG51bVBhcmFtZXRlcnMgPSBwYXJhbWV0ZXJzLmxlbmd0aDtcbiAgICBpZiAobnVtUGFyYW1ldGVycykge1xuICAgICAgaWYgKGV4cGxpY2l0VGhpc1R5cGUpIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgIHRoaXMuc2VyaWFsaXplUGFyYW1ldGVyKHBhcmFtZXRlcnNbMF0pO1xuICAgICAgZm9yIChsZXQgaSA9IDE7IGkgPCBudW1QYXJhbWV0ZXJzOyArK2kpIHtcbiAgICAgICAgc2IucHVzaChcIiwgXCIpO1xuICAgICAgICB0aGlzLnNlcmlhbGl6ZVBhcmFtZXRlcihwYXJhbWV0ZXJzW2ldKTtcbiAgICAgIH1cbiAgICB9XG4gICAgdmFyIHJldHVyblR5cGUgPSBub2RlLnJldHVyblR5cGU7XG4gICAgaWYgKHJldHVyblR5cGUpIHtcbiAgICAgIHNiLnB1c2goXCIpID0+IFwiKTtcbiAgICAgIHRoaXMudmlzaXRUeXBlTm9kZShyZXR1cm5UeXBlKTtcbiAgICB9IGVsc2Uge1xuICAgICAgc2IucHVzaChcIikgPT4gdm9pZFwiKTtcbiAgICB9XG4gICAgaWYgKGlzTnVsbGFibGUpIHNiLnB1c2goXCIpIHwgbnVsbFwiKTtcbiAgfVxuXG4gIHZpc2l0VHlwZVBhcmFtZXRlcihub2RlOiBUeXBlUGFyYW1ldGVyTm9kZSk6IHZvaWQge1xuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLm5hbWUpO1xuICAgIHZhciBleHRlbmRzVHlwZSA9IG5vZGUuZXh0ZW5kc1R5cGU7XG4gICAgaWYgKGV4dGVuZHNUeXBlKSB7XG4gICAgICB0aGlzLnNiLnB1c2goXCIgZXh0ZW5kcyBcIik7XG4gICAgICB0aGlzLnZpc2l0VHlwZU5vZGUoZXh0ZW5kc1R5cGUpO1xuICAgIH1cbiAgICB2YXIgZGVmYXVsdFR5cGUgPSBub2RlLmRlZmF1bHRUeXBlO1xuICAgIGlmIChkZWZhdWx0VHlwZSkge1xuICAgICAgdGhpcy5zYi5wdXNoKFwiPVwiKTtcbiAgICAgIHRoaXMudmlzaXRUeXBlTm9kZShkZWZhdWx0VHlwZSk7XG4gICAgfVxuICB9XG5cbiAgLy8gZXhwcmVzc2lvbnNcblxuICB2aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGU6IElkZW50aWZpZXJFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgaWYgKG5vZGUuaXNRdW90ZWQpIHRoaXMudmlzaXRTdHJpbmdMaXRlcmFsKG5vZGUudGV4dCk7XG4gICAgZWxzZSB0aGlzLnNiLnB1c2gobm9kZS50ZXh0KTtcbiAgfVxuXG4gIHZpc2l0QXJyYXlMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBBcnJheUxpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzYi5wdXNoKFwiW1wiKTtcbiAgICB2YXIgZWxlbWVudHMgPSBub2RlLmVsZW1lbnRFeHByZXNzaW9ucztcbiAgICB2YXIgbnVtRWxlbWVudHMgPSBlbGVtZW50cy5sZW5ndGg7XG4gICAgaWYgKG51bUVsZW1lbnRzKSB7XG4gICAgICBpZiAoZWxlbWVudHNbMF0pIHRoaXMudmlzaXROb2RlKDxFeHByZXNzaW9uPmVsZW1lbnRzWzBdKTtcbiAgICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtRWxlbWVudHM7ICsraSkge1xuICAgICAgICBzYi5wdXNoKFwiLCBcIik7XG4gICAgICAgIGlmIChlbGVtZW50c1tpXSkgdGhpcy52aXNpdE5vZGUoPEV4cHJlc3Npb24+ZWxlbWVudHNbaV0pO1xuICAgICAgfVxuICAgIH1cbiAgICBzYi5wdXNoKFwiXVwiKTtcbiAgfVxuXG4gIHZpc2l0T2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24obm9kZTogT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHZhciBuYW1lcyA9IG5vZGUubmFtZXM7XG4gICAgdmFyIHZhbHVlcyA9IG5vZGUudmFsdWVzO1xuICAgIHZhciBudW1FbGVtZW50cyA9IG5hbWVzLmxlbmd0aDtcbiAgICBhc3NlcnQobnVtRWxlbWVudHMgPT0gdmFsdWVzLmxlbmd0aCk7XG4gICAgaWYgKG51bUVsZW1lbnRzKSB7XG4gICAgICBzYi5wdXNoKFwie1xcblwiKTtcbiAgICAgIGluZGVudChzYiwgKyt0aGlzLmluZGVudExldmVsKTtcbiAgICAgIHRoaXMudmlzaXROb2RlKG5hbWVzWzBdKTtcbiAgICAgIHNiLnB1c2goXCI6IFwiKTtcbiAgICAgIHRoaXMudmlzaXROb2RlKHZhbHVlc1swXSk7XG4gICAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bUVsZW1lbnRzOyArK2kpIHtcbiAgICAgICAgc2IucHVzaChcIixcXG5cIik7XG4gICAgICAgIGluZGVudChzYiwgdGhpcy5pbmRlbnRMZXZlbCk7XG4gICAgICAgIGxldCBuYW1lID0gbmFtZXNbaV07XG4gICAgICAgIGxldCB2YWx1ZSA9IHZhbHVlc1tpXTtcbiAgICAgICAgaWYgKG5hbWUgPT09IHZhbHVlKSB7XG4gICAgICAgICAgdGhpcy52aXNpdE5vZGUobmFtZSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy52aXNpdE5vZGUobmFtZSk7XG4gICAgICAgICAgc2IucHVzaChcIjogXCIpO1xuICAgICAgICAgIHRoaXMudmlzaXROb2RlKHZhbHVlKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgICAgc2IucHVzaChcIlxcblwiKTtcbiAgICAgIGluZGVudChzYiwgLS10aGlzLmluZGVudExldmVsKTtcbiAgICAgIHNiLnB1c2goXCJ9XCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwie31cIik7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRBc3NlcnRpb25FeHByZXNzaW9uKG5vZGU6IEFzc2VydGlvbkV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHN3aXRjaCAobm9kZS5hc3NlcnRpb25LaW5kKSB7XG4gICAgICBjYXNlIEFzc2VydGlvbktpbmQuUFJFRklYOiB7XG4gICAgICAgIHNiLnB1c2goXCI8XCIpO1xuICAgICAgICB0aGlzLnZpc2l0VHlwZU5vZGUoYXNzZXJ0KG5vZGUudG9UeXBlKSk7XG4gICAgICAgIHNiLnB1c2goXCI+XCIpO1xuICAgICAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmV4cHJlc3Npb24pO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgQXNzZXJ0aW9uS2luZC5BUzoge1xuICAgICAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmV4cHJlc3Npb24pO1xuICAgICAgICBzYi5wdXNoKFwiIGFzIFwiKTtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKGFzc2VydChub2RlLnRvVHlwZSkpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgQXNzZXJ0aW9uS2luZC5OT05OVUxMOiB7XG4gICAgICAgIHRoaXMudmlzaXROb2RlKG5vZGUuZXhwcmVzc2lvbik7XG4gICAgICAgIHNiLnB1c2goXCIhXCIpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIGFzc2VydChmYWxzZSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRCaW5hcnlFeHByZXNzaW9uKG5vZGU6IEJpbmFyeUV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUubGVmdCk7XG4gICAgc2IucHVzaChcIiBcIik7XG4gICAgc2IucHVzaChvcGVyYXRvclRva2VuVG9TdHJpbmcobm9kZS5vcGVyYXRvcikpO1xuICAgIHNiLnB1c2goXCIgXCIpO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUucmlnaHQpO1xuICB9XG5cbiAgdmlzaXRDYWxsRXhwcmVzc2lvbihub2RlOiBDYWxsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5leHByZXNzaW9uKTtcbiAgICB2YXIgdHlwZUFyZ3VtZW50cyA9IG5vZGUudHlwZUFyZ3VtZW50cztcbiAgICBpZiAodHlwZUFyZ3VtZW50cykge1xuICAgICAgbGV0IG51bVR5cGVBcmd1bWVudHMgPSB0eXBlQXJndW1lbnRzLmxlbmd0aDtcbiAgICAgIGlmIChudW1UeXBlQXJndW1lbnRzKSB7XG4gICAgICAgIHNiLnB1c2goXCI8XCIpO1xuICAgICAgICB0aGlzLnZpc2l0VHlwZU5vZGUodHlwZUFyZ3VtZW50c1swXSk7XG4gICAgICAgIGZvciAobGV0IGkgPSAxOyBpIDwgbnVtVHlwZUFyZ3VtZW50czsgKytpKSB7XG4gICAgICAgICAgc2IucHVzaChcIiwgXCIpO1xuICAgICAgICAgIHRoaXMudmlzaXRUeXBlTm9kZSh0eXBlQXJndW1lbnRzW2ldKTtcbiAgICAgICAgfVxuICAgICAgICBzYi5wdXNoKFwiPihcIik7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCIoXCIpO1xuICAgIH1cbiAgICB2YXIgYXJncyA9IG5vZGUuYXJndW1lbnRzO1xuICAgIHZhciBudW1BcmdzID0gYXJncy5sZW5ndGg7XG4gICAgaWYgKG51bUFyZ3MpIHtcbiAgICAgIHRoaXMudmlzaXROb2RlKGFyZ3NbMF0pO1xuICAgICAgZm9yIChsZXQgaSA9IDE7IGkgPCBudW1BcmdzOyArK2kpIHtcbiAgICAgICAgc2IucHVzaChcIiwgXCIpO1xuICAgICAgICB0aGlzLnZpc2l0Tm9kZShhcmdzW2ldKTtcbiAgICAgIH1cbiAgICB9XG4gICAgc2IucHVzaChcIilcIik7XG4gIH1cblxuICB2aXNpdENsYXNzRXhwcmVzc2lvbihub2RlOiBDbGFzc0V4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB2YXIgZGVjbGFyYXRpb24gPSBub2RlLmRlY2xhcmF0aW9uO1xuICAgIHRoaXMudmlzaXRDbGFzc0RlY2xhcmF0aW9uKGRlY2xhcmF0aW9uKTtcbiAgfVxuXG4gIHZpc2l0Q29tbWFFeHByZXNzaW9uKG5vZGU6IENvbW1hRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHZhciBleHByZXNzaW9ucyA9IG5vZGUuZXhwcmVzc2lvbnM7XG4gICAgdmFyIG51bUV4cHJlc3Npb25zID0gYXNzZXJ0KGV4cHJlc3Npb25zLmxlbmd0aCk7XG4gICAgdGhpcy52aXNpdE5vZGUoZXhwcmVzc2lvbnNbMF0pO1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgZm9yIChsZXQgaSA9IDE7IGkgPCBudW1FeHByZXNzaW9uczsgKytpKSB7XG4gICAgICBzYi5wdXNoKFwiLFwiKTtcbiAgICAgIHRoaXMudmlzaXROb2RlKGV4cHJlc3Npb25zW2ldKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdEVsZW1lbnRBY2Nlc3NFeHByZXNzaW9uKG5vZGU6IEVsZW1lbnRBY2Nlc3NFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmV4cHJlc3Npb24pO1xuICAgIHNiLnB1c2goXCJbXCIpO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuZWxlbWVudEV4cHJlc3Npb24pO1xuICAgIHNiLnB1c2goXCJdXCIpO1xuICB9XG5cbiAgdmlzaXRGdW5jdGlvbkV4cHJlc3Npb24obm9kZTogRnVuY3Rpb25FeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdmFyIGRlY2xhcmF0aW9uID0gbm9kZS5kZWNsYXJhdGlvbjtcbiAgICBpZiAoIWRlY2xhcmF0aW9uLmFycm93S2luZCkge1xuICAgICAgaWYgKGRlY2xhcmF0aW9uLm5hbWUudGV4dC5sZW5ndGgpIHtcbiAgICAgICAgdGhpcy5zYi5wdXNoKFwiZnVuY3Rpb24gXCIpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdGhpcy5zYi5wdXNoKFwiZnVuY3Rpb25cIik7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIGFzc2VydChkZWNsYXJhdGlvbi5uYW1lLnRleHQubGVuZ3RoID09IDApO1xuICAgIH1cbiAgICB0aGlzLnZpc2l0RnVuY3Rpb25Db21tb24oZGVjbGFyYXRpb24pO1xuICB9XG5cbiAgdmlzaXRMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHN3aXRjaCAobm9kZS5saXRlcmFsS2luZCkge1xuICAgICAgY2FzZSBMaXRlcmFsS2luZC5GTE9BVDoge1xuICAgICAgICB0aGlzLnZpc2l0RmxvYXRMaXRlcmFsRXhwcmVzc2lvbig8RmxvYXRMaXRlcmFsRXhwcmVzc2lvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIExpdGVyYWxLaW5kLklOVEVHRVI6IHtcbiAgICAgICAgdGhpcy52aXNpdEludGVnZXJMaXRlcmFsRXhwcmVzc2lvbig8SW50ZWdlckxpdGVyYWxFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTGl0ZXJhbEtpbmQuU1RSSU5HOiB7XG4gICAgICAgIHRoaXMudmlzaXRTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbig8U3RyaW5nTGl0ZXJhbEV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBMaXRlcmFsS2luZC5SRUdFWFA6IHtcbiAgICAgICAgdGhpcy52aXNpdFJlZ2V4cExpdGVyYWxFeHByZXNzaW9uKDxSZWdleHBMaXRlcmFsRXhwcmVzc2lvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIExpdGVyYWxLaW5kLkFSUkFZOiB7XG4gICAgICAgIHRoaXMudmlzaXRBcnJheUxpdGVyYWxFeHByZXNzaW9uKDxBcnJheUxpdGVyYWxFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTGl0ZXJhbEtpbmQuT0JKRUNUOiB7XG4gICAgICAgIHRoaXMudmlzaXRPYmplY3RMaXRlcmFsRXhwcmVzc2lvbig8T2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgZGVmYXVsdDoge1xuICAgICAgICBhc3NlcnQoZmFsc2UpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICB2aXNpdEZsb2F0TGl0ZXJhbEV4cHJlc3Npb24obm9kZTogRmxvYXRMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMuc2IucHVzaChub2RlLnZhbHVlLnRvU3RyaW5nKDEwKSk7XG4gIH1cblxuICB2aXNpdEluc3RhbmNlT2ZFeHByZXNzaW9uKG5vZGU6IEluc3RhbmNlT2ZFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5leHByZXNzaW9uKTtcbiAgICB0aGlzLnNiLnB1c2goXCIgaW5zdGFuY2VvZiBcIik7XG4gICAgdGhpcy52aXNpdFR5cGVOb2RlKG5vZGUuaXNUeXBlKTtcbiAgfVxuXG4gIHZpc2l0SW50ZWdlckxpdGVyYWxFeHByZXNzaW9uKG5vZGU6IEludGVnZXJMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMuc2IucHVzaChpNjRfdG9fc3RyaW5nKG5vZGUudmFsdWUpKTtcbiAgfVxuXG4gIHZpc2l0U3RyaW5nTGl0ZXJhbChzdHI6IHN0cmluZywgc2luZ2xlUXVvdGVkOiBib29sID0gZmFsc2UpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHZhciBvZmYgPSAwO1xuICAgIHZhciBxdW90ZSA9IHNpbmdsZVF1b3RlZCA/IFwiJ1wiIDogXCJcXFwiXCI7XG4gICAgc2IucHVzaChxdW90ZSk7XG4gICAgdmFyIGkgPSAwO1xuICAgIGZvciAobGV0IGsgPSBzdHIubGVuZ3RoOyBpIDwgazsgKSB7XG4gICAgICBzd2l0Y2ggKHN0ci5jaGFyQ29kZUF0KGkpKSB7XG4gICAgICAgIGNhc2UgQ2hhckNvZGUuTlVMTDoge1xuICAgICAgICAgIGlmIChpID4gb2ZmKSBzYi5wdXNoKHN0ci5zdWJzdHJpbmcob2ZmLCAob2ZmID0gaSArIDEpKSk7XG4gICAgICAgICAgc2IucHVzaChcIlxcXFwwXCIpO1xuICAgICAgICAgIG9mZiA9ICsraTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgICBjYXNlIENoYXJDb2RlLkJBQ0tTUEFDRToge1xuICAgICAgICAgIGlmIChpID4gb2ZmKSBzYi5wdXNoKHN0ci5zdWJzdHJpbmcob2ZmLCBpKSk7XG4gICAgICAgICAgb2ZmID0gKytpO1xuICAgICAgICAgIHNiLnB1c2goXCJcXFxcYlwiKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgICBjYXNlIENoYXJDb2RlLlRBQjoge1xuICAgICAgICAgIGlmIChpID4gb2ZmKSBzYi5wdXNoKHN0ci5zdWJzdHJpbmcob2ZmLCBpKSk7XG4gICAgICAgICAgb2ZmID0gKytpO1xuICAgICAgICAgIHNiLnB1c2goXCJcXFxcdFwiKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgICBjYXNlIENoYXJDb2RlLkxJTkVGRUVEOiB7XG4gICAgICAgICAgaWYgKGkgPiBvZmYpIHNiLnB1c2goc3RyLnN1YnN0cmluZyhvZmYsIGkpKTtcbiAgICAgICAgICBvZmYgPSArK2k7XG4gICAgICAgICAgc2IucHVzaChcIlxcXFxuXCIpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICAgIGNhc2UgQ2hhckNvZGUuVkVSVElDQUxUQUI6IHtcbiAgICAgICAgICBpZiAoaSA+IG9mZikgc2IucHVzaChzdHIuc3Vic3RyaW5nKG9mZiwgaSkpO1xuICAgICAgICAgIG9mZiA9ICsraTtcbiAgICAgICAgICBzYi5wdXNoKFwiXFxcXHZcIik7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgICAgY2FzZSBDaGFyQ29kZS5GT1JNRkVFRDoge1xuICAgICAgICAgIGlmIChpID4gb2ZmKSBzYi5wdXNoKHN0ci5zdWJzdHJpbmcob2ZmLCBpKSk7XG4gICAgICAgICAgb2ZmID0gKytpO1xuICAgICAgICAgIHNiLnB1c2goXCJcXFxcZlwiKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgICBjYXNlIENoYXJDb2RlLkNBUlJJQUdFUkVUVVJOOiB7XG4gICAgICAgICAgaWYgKGkgPiBvZmYpIHNiLnB1c2goc3RyLnN1YnN0cmluZyhvZmYsIGkpKTtcbiAgICAgICAgICBzYi5wdXNoKFwiXFxcXHJcIik7XG4gICAgICAgICAgb2ZmID0gKytpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICAgIGNhc2UgQ2hhckNvZGUuRE9VQkxFUVVPVEU6IHtcbiAgICAgICAgICBpZiAoIXNpbmdsZVF1b3RlZCkge1xuICAgICAgICAgICAgaWYgKGkgPiBvZmYpIHNiLnB1c2goc3RyLnN1YnN0cmluZyhvZmYsIGkpKTtcbiAgICAgICAgICAgIHNiLnB1c2goXCJcXFxcXFxcIlwiKTtcbiAgICAgICAgICAgIG9mZiA9ICsraTtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgKytpO1xuICAgICAgICAgIH1cbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgICBjYXNlIENoYXJDb2RlLlNJTkdMRVFVT1RFOiB7XG4gICAgICAgICAgaWYgKHNpbmdsZVF1b3RlZCkge1xuICAgICAgICAgICAgaWYgKGkgPiBvZmYpIHNiLnB1c2goc3RyLnN1YnN0cmluZyhvZmYsIGkpKTtcbiAgICAgICAgICAgIHNiLnB1c2goXCJcXFxcJ1wiKTtcbiAgICAgICAgICAgIG9mZiA9ICsraTtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgKytpO1xuICAgICAgICAgIH1cbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgICBjYXNlIENoYXJDb2RlLkJBQ0tTTEFTSDoge1xuICAgICAgICAgIGlmIChpID4gb2ZmKSBzYi5wdXNoKHN0ci5zdWJzdHJpbmcob2ZmLCBpKSk7XG4gICAgICAgICAgc2IucHVzaChcIlxcXFxcXFxcXCIpO1xuICAgICAgICAgIG9mZiA9ICsraTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgICBkZWZhdWx0OiB7XG4gICAgICAgICAgKytpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgIGlmIChpID4gb2ZmKSBzYi5wdXNoKHN0ci5zdWJzdHJpbmcob2ZmLCBpKSk7XG4gICAgc2IucHVzaChxdW90ZSk7XG4gIH1cblxuICB2aXNpdFN0cmluZ0xpdGVyYWxFeHByZXNzaW9uKG5vZGU6IFN0cmluZ0xpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdFN0cmluZ0xpdGVyYWwobm9kZS52YWx1ZSk7XG4gIH1cblxuICB2aXNpdFJlZ2V4cExpdGVyYWxFeHByZXNzaW9uKG5vZGU6IFJlZ2V4cExpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzYi5wdXNoKFwiL1wiKTtcbiAgICBzYi5wdXNoKG5vZGUucGF0dGVybik7XG4gICAgc2IucHVzaChcIi9cIik7XG4gICAgc2IucHVzaChub2RlLnBhdHRlcm5GbGFncyk7XG4gIH1cblxuICB2aXNpdE5ld0V4cHJlc3Npb24obm9kZTogTmV3RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMuc2IucHVzaChcIm5ldyBcIik7XG4gICAgdGhpcy52aXNpdENhbGxFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRQYXJlbnRoZXNpemVkRXhwcmVzc2lvbihub2RlOiBQYXJlbnRoZXNpemVkRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgc2IucHVzaChcIihcIik7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5leHByZXNzaW9uKTtcbiAgICBzYi5wdXNoKFwiKVwiKTtcbiAgfVxuXG4gIHZpc2l0UHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uKG5vZGU6IFByb3BlcnR5QWNjZXNzRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuZXhwcmVzc2lvbik7XG4gICAgdGhpcy5zYi5wdXNoKFwiLlwiKTtcbiAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZS5wcm9wZXJ0eSk7XG4gIH1cblxuICB2aXNpdFRlcm5hcnlFeHByZXNzaW9uKG5vZGU6IFRlcm5hcnlFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmNvbmRpdGlvbik7XG4gICAgc2IucHVzaChcIiA/IFwiKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmlmVGhlbik7XG4gICAgc2IucHVzaChcIiA6IFwiKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmlmRWxzZSk7XG4gIH1cblxuICB2aXNpdFVuYXJ5RXhwcmVzc2lvbihub2RlOiBVbmFyeUV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICBzd2l0Y2ggKG5vZGUua2luZCkge1xuICAgICAgY2FzZSBOb2RlS2luZC5VTkFSWVBPU1RGSVg6IHtcbiAgICAgICAgdGhpcy52aXNpdFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24oPFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5VTkFSWVBSRUZJWDoge1xuICAgICAgICB0aGlzLnZpc2l0VW5hcnlQcmVmaXhFeHByZXNzaW9uKDxVbmFyeVByZWZpeEV4cHJlc3Npb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgZGVmYXVsdDpcbiAgICAgICAgYXNzZXJ0KGZhbHNlKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24obm9kZTogVW5hcnlQb3N0Zml4RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUub3BlcmFuZCk7XG4gICAgdGhpcy5zYi5wdXNoKG9wZXJhdG9yVG9rZW5Ub1N0cmluZyhub2RlLm9wZXJhdG9yKSk7XG4gIH1cblxuICB2aXNpdFVuYXJ5UHJlZml4RXhwcmVzc2lvbihub2RlOiBVbmFyeVByZWZpeEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLnNiLnB1c2gob3BlcmF0b3JUb2tlblRvU3RyaW5nKG5vZGUub3BlcmF0b3IpKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLm9wZXJhbmQpO1xuICB9XG5cbiAgLy8gc3RhdGVtZW50c1xuXG4gIHZpc2l0Tm9kZUFuZFRlcm1pbmF0ZShzdGF0ZW1lbnQ6IFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMudmlzaXROb2RlKHN0YXRlbWVudCk7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBpZiAoXG4gICAgICAhc2IubGVuZ3RoIHx8IC8vIGxlYWRpbmcgRW1wdHlTdGF0ZW1lbnRcbiAgICAgIHN0YXRlbWVudC5raW5kID09IE5vZGVLaW5kLlZBUklBQkxFIHx8IC8vIHBvdGVudGlhbGx5IGFzc2lnbnMgYSBGdW5jdGlvbkV4cHJlc3Npb25cbiAgICAgIHN0YXRlbWVudC5raW5kID09IE5vZGVLaW5kLkVYUFJFU1NJT04gLy8gcG90ZW50aWFsbHkgYXNzaWducyBhIEZ1bmN0aW9uRXhwcmVzc2lvblxuICAgICkge1xuICAgICAgc2IucHVzaChcIjtcXG5cIik7XG4gICAgfSBlbHNlIHtcbiAgICAgIGxldCBsYXN0ID0gc2Jbc2IubGVuZ3RoIC0gMV07XG4gICAgICBsZXQgbGFzdENoYXJQb3MgPSBsYXN0Lmxlbmd0aCAtIDE7XG4gICAgICBpZiAoXG4gICAgICAgIGxhc3RDaGFyUG9zID49IDAgJiZcbiAgICAgICAgKGxhc3QuY2hhckNvZGVBdChsYXN0Q2hhclBvcykgPT0gQ2hhckNvZGUuQ0xPU0VCUkFDRSB8fFxuICAgICAgICAgIGxhc3QuY2hhckNvZGVBdChsYXN0Q2hhclBvcykgPT0gQ2hhckNvZGUuU0VNSUNPTE9OKVxuICAgICAgKSB7XG4gICAgICAgIHNiLnB1c2goXCJcXG5cIik7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBzYi5wdXNoKFwiO1xcblwiKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICB2aXNpdEJsb2NrU3RhdGVtZW50KG5vZGU6IEJsb2NrU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICB2YXIgc3RhdGVtZW50cyA9IG5vZGUuc3RhdGVtZW50cztcbiAgICB2YXIgbnVtU3RhdGVtZW50cyA9IHN0YXRlbWVudHMubGVuZ3RoO1xuICAgIGlmIChudW1TdGF0ZW1lbnRzKSB7XG4gICAgICBzYi5wdXNoKFwie1xcblwiKTtcbiAgICAgIGxldCBpbmRlbnRMZXZlbCA9ICsrdGhpcy5pbmRlbnRMZXZlbDtcbiAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgbnVtU3RhdGVtZW50czsgKytpKSB7XG4gICAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgICB0aGlzLnZpc2l0Tm9kZUFuZFRlcm1pbmF0ZShzdGF0ZW1lbnRzW2ldKTtcbiAgICAgIH1cbiAgICAgIGluZGVudChzYiwgLS10aGlzLmluZGVudExldmVsKTtcbiAgICAgIHNiLnB1c2goXCJ9XCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwie31cIik7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRCcmVha1N0YXRlbWVudChub2RlOiBCcmVha1N0YXRlbWVudCk6IHZvaWQge1xuICAgIHZhciBsYWJlbCA9IG5vZGUubGFiZWw7XG4gICAgaWYgKGxhYmVsKSB7XG4gICAgICB0aGlzLnNiLnB1c2goXCJicmVhayBcIik7XG4gICAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obGFiZWwpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLnNiLnB1c2goXCJicmVha1wiKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdENvbnRpbnVlU3RhdGVtZW50KG5vZGU6IENvbnRpbnVlU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIGxhYmVsID0gbm9kZS5sYWJlbDtcbiAgICBpZiAobGFiZWwpIHtcbiAgICAgIHRoaXMuc2IucHVzaChcImNvbnRpbnVlIFwiKTtcbiAgICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihsYWJlbCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuc2IucHVzaChcImNvbnRpbnVlXCIpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0Q2xhc3NEZWNsYXJhdGlvbihub2RlOiBDbGFzc0RlY2xhcmF0aW9uLCBpc0RlZmF1bHQ6IGJvb2wgPSBmYWxzZSk6IHZvaWQge1xuICAgIHZhciBkZWNvcmF0b3JzID0gbm9kZS5kZWNvcmF0b3JzO1xuICAgIGlmIChkZWNvcmF0b3JzKSB7XG4gICAgICBmb3IgKGxldCBpID0gMCwgayA9IGRlY29yYXRvcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIHRoaXMuc2VyaWFsaXplRGVjb3JhdG9yKGRlY29yYXRvcnNbaV0pO1xuICAgICAgfVxuICAgIH1cbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIGlmIChpc0RlZmF1bHQpIHtcbiAgICAgIHNiLnB1c2goXCJleHBvcnQgZGVmYXVsdCBcIik7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuc2VyaWFsaXplRXh0ZXJuYWxNb2RpZmllcnMobm9kZSk7XG4gICAgfVxuICAgIGlmIChub2RlLmlzKENvbW1vbkZsYWdzLkFCU1RSQUNUKSkgc2IucHVzaChcImFic3RyYWN0IFwiKTtcbiAgICBpZiAobm9kZS5uYW1lLnRleHQubGVuZ3RoKSB7XG4gICAgICBzYi5wdXNoKFwiY2xhc3MgXCIpO1xuICAgICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGUubmFtZSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCJjbGFzc1wiKTtcbiAgICB9XG4gICAgdmFyIHR5cGVQYXJhbWV0ZXJzID0gbm9kZS50eXBlUGFyYW1ldGVycztcbiAgICBpZiAodHlwZVBhcmFtZXRlcnMgJiYgdHlwZVBhcmFtZXRlcnMubGVuZ3RoKSB7XG4gICAgICBzYi5wdXNoKFwiPFwiKTtcbiAgICAgIHRoaXMudmlzaXRUeXBlUGFyYW1ldGVyKHR5cGVQYXJhbWV0ZXJzWzBdKTtcbiAgICAgIGZvciAobGV0IGkgPSAxLCBrID0gdHlwZVBhcmFtZXRlcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVQYXJhbWV0ZXIodHlwZVBhcmFtZXRlcnNbaV0pO1xuICAgICAgfVxuICAgICAgc2IucHVzaChcIj5cIik7XG4gICAgfVxuICAgIHZhciBleHRlbmRzVHlwZSA9IG5vZGUuZXh0ZW5kc1R5cGU7XG4gICAgaWYgKGV4dGVuZHNUeXBlKSB7XG4gICAgICBzYi5wdXNoKFwiIGV4dGVuZHMgXCIpO1xuICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKGV4dGVuZHNUeXBlKTtcbiAgICB9XG4gICAgdmFyIGltcGxlbWVudHNUeXBlcyA9IG5vZGUuaW1wbGVtZW50c1R5cGVzO1xuICAgIGlmIChpbXBsZW1lbnRzVHlwZXMpIHtcbiAgICAgIGxldCBudW1JbXBsZW1lbnRzVHlwZXMgPSBpbXBsZW1lbnRzVHlwZXMubGVuZ3RoO1xuICAgICAgaWYgKG51bUltcGxlbWVudHNUeXBlcykge1xuICAgICAgICBzYi5wdXNoKFwiIGltcGxlbWVudHMgXCIpO1xuICAgICAgICB0aGlzLnZpc2l0VHlwZU5vZGUoaW1wbGVtZW50c1R5cGVzWzBdKTtcbiAgICAgICAgZm9yIChsZXQgaSA9IDE7IGkgPCBudW1JbXBsZW1lbnRzVHlwZXM7ICsraSkge1xuICAgICAgICAgIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgICAgICB0aGlzLnZpc2l0VHlwZU5vZGUoaW1wbGVtZW50c1R5cGVzW2ldKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgICB2YXIgbWVtYmVycyA9IG5vZGUubWVtYmVycztcbiAgICB2YXIgbnVtTWVtYmVycyA9IG1lbWJlcnMubGVuZ3RoO1xuICAgIGlmIChudW1NZW1iZXJzKSB7XG4gICAgICBzYi5wdXNoKFwiIHtcXG5cIik7XG4gICAgICBsZXQgaW5kZW50TGV2ZWwgPSArK3RoaXMuaW5kZW50TGV2ZWw7XG4gICAgICBmb3IgKGxldCBpID0gMCwgayA9IG1lbWJlcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIGxldCBtZW1iZXIgPSBtZW1iZXJzW2ldO1xuICAgICAgICBpZiAoXG4gICAgICAgICAgbWVtYmVyLmtpbmQgIT0gTm9kZUtpbmQuRklFTERERUNMQVJBVElPTiB8fFxuICAgICAgICAgICg8RmllbGREZWNsYXJhdGlvbj5tZW1iZXIpLnBhcmFtZXRlckluZGV4IDwgMFxuICAgICAgICApIHtcbiAgICAgICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsKTtcbiAgICAgICAgICB0aGlzLnZpc2l0Tm9kZUFuZFRlcm1pbmF0ZShtZW1iZXIpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICBpbmRlbnQoc2IsIC0tdGhpcy5pbmRlbnRMZXZlbCk7XG4gICAgICBzYi5wdXNoKFwifVwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgc2IucHVzaChcIiB7fVwiKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdERvU3RhdGVtZW50KG5vZGU6IERvU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzYi5wdXNoKFwiZG8gXCIpO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuc3RhdGVtZW50KTtcbiAgICBpZiAobm9kZS5zdGF0ZW1lbnQua2luZCA9PSBOb2RlS2luZC5CTE9DSykge1xuICAgICAgc2IucHVzaChcIiB3aGlsZSAoXCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiO1xcblwiKTtcbiAgICAgIGluZGVudChzYiwgdGhpcy5pbmRlbnRMZXZlbCk7XG4gICAgICBzYi5wdXNoKFwid2hpbGUgKFwiKTtcbiAgICB9XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5jb25kaXRpb24pO1xuICAgIHNiLnB1c2goXCIpXCIpO1xuICB9XG5cbiAgdmlzaXRFbXB0eVN0YXRlbWVudChub2RlOiBFbXB0eVN0YXRlbWVudCk6IHZvaWQge31cblxuICB2aXNpdEVudW1EZWNsYXJhdGlvbihub2RlOiBFbnVtRGVjbGFyYXRpb24sIGlzRGVmYXVsdDogYm9vbCA9IGZhbHNlKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBpZiAoaXNEZWZhdWx0KSB7XG4gICAgICBzYi5wdXNoKFwiZXhwb3J0IGRlZmF1bHQgXCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLnNlcmlhbGl6ZUV4dGVybmFsTW9kaWZpZXJzKG5vZGUpO1xuICAgIH1cbiAgICBpZiAobm9kZS5pcyhDb21tb25GbGFncy5DT05TVCkpIHNiLnB1c2goXCJjb25zdCBcIik7XG4gICAgc2IucHVzaChcImVudW0gXCIpO1xuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLm5hbWUpO1xuICAgIHZhciB2YWx1ZXMgPSBub2RlLnZhbHVlcztcbiAgICB2YXIgbnVtVmFsdWVzID0gdmFsdWVzLmxlbmd0aDtcbiAgICBpZiAobnVtVmFsdWVzKSB7XG4gICAgICBzYi5wdXNoKFwiIHtcXG5cIik7XG4gICAgICBsZXQgaW5kZW50TGV2ZWwgPSArK3RoaXMuaW5kZW50TGV2ZWw7XG4gICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsKTtcbiAgICAgIHRoaXMudmlzaXRFbnVtVmFsdWVEZWNsYXJhdGlvbihub2RlLnZhbHVlc1swXSk7XG4gICAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bVZhbHVlczsgKytpKSB7XG4gICAgICAgIHNiLnB1c2goXCIsXFxuXCIpO1xuICAgICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsKTtcbiAgICAgICAgdGhpcy52aXNpdEVudW1WYWx1ZURlY2xhcmF0aW9uKG5vZGUudmFsdWVzW2ldKTtcbiAgICAgIH1cbiAgICAgIHNiLnB1c2goXCJcXG5cIik7XG4gICAgICBpbmRlbnQoc2IsIC0tdGhpcy5pbmRlbnRMZXZlbCk7XG4gICAgICBzYi5wdXNoKFwifVwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgc2IucHVzaChcIiB7fVwiKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdEVudW1WYWx1ZURlY2xhcmF0aW9uKG5vZGU6IEVudW1WYWx1ZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGUubmFtZSk7XG4gICAgaWYgKG5vZGUudmFsdWUpIHtcbiAgICAgIHRoaXMuc2IucHVzaChcIiA9IFwiKTtcbiAgICAgIHRoaXMudmlzaXROb2RlKG5vZGUudmFsdWUpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0RXhwb3J0SW1wb3J0U3RhdGVtZW50KG5vZGU6IEV4cG9ydEltcG9ydFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgc2IucHVzaChcImV4cG9ydCBpbXBvcnQgXCIpO1xuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLmV4dGVybmFsTmFtZSk7XG4gICAgc2IucHVzaChcIiA9IFwiKTtcbiAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZS5uYW1lKTtcbiAgfVxuXG4gIHZpc2l0RXhwb3J0TWVtYmVyKG5vZGU6IEV4cG9ydE1lbWJlcik6IHZvaWQge1xuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLmxvY2FsTmFtZSk7XG4gICAgaWYgKG5vZGUuZXhwb3J0ZWROYW1lLnRleHQgIT0gbm9kZS5sb2NhbE5hbWUudGV4dCkge1xuICAgICAgdGhpcy5zYi5wdXNoKFwiIGFzIFwiKTtcbiAgICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLmV4cG9ydGVkTmFtZSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRFeHBvcnRTdGF0ZW1lbnQobm9kZTogRXhwb3J0U3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBpZiAobm9kZS5pc0RlY2xhcmUpIHtcbiAgICAgIHNiLnB1c2goXCJkZWNsYXJlIFwiKTtcbiAgICB9XG4gICAgdmFyIG1lbWJlcnMgPSBub2RlLm1lbWJlcnM7XG4gICAgaWYgKG1lbWJlcnMgJiYgbWVtYmVycy5sZW5ndGgpIHtcbiAgICAgIGxldCBudW1NZW1iZXJzID0gbWVtYmVycy5sZW5ndGg7XG4gICAgICBzYi5wdXNoKFwiZXhwb3J0IHtcXG5cIik7XG4gICAgICBsZXQgaW5kZW50TGV2ZWwgPSArK3RoaXMuaW5kZW50TGV2ZWw7XG4gICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsKTtcbiAgICAgIHRoaXMudmlzaXRFeHBvcnRNZW1iZXIobWVtYmVyc1swXSk7XG4gICAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bU1lbWJlcnM7ICsraSkge1xuICAgICAgICBzYi5wdXNoKFwiLFxcblwiKTtcbiAgICAgICAgaW5kZW50KHNiLCBpbmRlbnRMZXZlbCk7XG4gICAgICAgIHRoaXMudmlzaXRFeHBvcnRNZW1iZXIobWVtYmVyc1tpXSk7XG4gICAgICB9XG4gICAgICAtLXRoaXMuaW5kZW50TGV2ZWw7XG4gICAgICBzYi5wdXNoKFwiXFxufVwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgc2IucHVzaChcImV4cG9ydCB7fVwiKTtcbiAgICB9XG4gICAgdmFyIHBhdGggPSBub2RlLnBhdGg7XG4gICAgaWYgKHBhdGgpIHtcbiAgICAgIHNiLnB1c2goXCIgZnJvbSBcIik7XG4gICAgICB0aGlzLnZpc2l0U3RyaW5nTGl0ZXJhbEV4cHJlc3Npb24ocGF0aCk7XG4gICAgfVxuICAgIHNiLnB1c2goXCI7XCIpO1xuICB9XG5cbiAgdmlzaXRFeHBvcnREZWZhdWx0U3RhdGVtZW50KG5vZGU6IEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB2YXIgZGVjbGFyYXRpb24gPSBub2RlLmRlY2xhcmF0aW9uO1xuICAgIHN3aXRjaCAoZGVjbGFyYXRpb24ua2luZCkge1xuICAgICAgY2FzZSBOb2RlS2luZC5FTlVNREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEVudW1EZWNsYXJhdGlvbig8RW51bURlY2xhcmF0aW9uPmRlY2xhcmF0aW9uLCB0cnVlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkZVTkNUSU9OREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEZ1bmN0aW9uRGVjbGFyYXRpb24oPEZ1bmN0aW9uRGVjbGFyYXRpb24+ZGVjbGFyYXRpb24sIHRydWUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQ0xBU1NERUNMQVJBVElPTjoge1xuICAgICAgICB0aGlzLnZpc2l0Q2xhc3NEZWNsYXJhdGlvbig8Q2xhc3NEZWNsYXJhdGlvbj5kZWNsYXJhdGlvbiwgdHJ1ZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5JTlRFUkZBQ0VERUNMQVJBVElPTjoge1xuICAgICAgICB0aGlzLnZpc2l0SW50ZXJmYWNlRGVjbGFyYXRpb24oPEludGVyZmFjZURlY2xhcmF0aW9uPmRlY2xhcmF0aW9uLCB0cnVlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLk5BTUVTUEFDRURFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXROYW1lc3BhY2VEZWNsYXJhdGlvbig8TmFtZXNwYWNlRGVjbGFyYXRpb24+ZGVjbGFyYXRpb24sIHRydWUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIGFzc2VydChmYWxzZSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uU3RhdGVtZW50KG5vZGU6IEV4cHJlc3Npb25TdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmV4cHJlc3Npb24pO1xuICB9XG5cbiAgdmlzaXRGaWVsZERlY2xhcmF0aW9uKG5vZGU6IEZpZWxkRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICB2YXIgZGVjb3JhdG9ycyA9IG5vZGUuZGVjb3JhdG9ycztcbiAgICBpZiAoZGVjb3JhdG9ycykge1xuICAgICAgZm9yIChsZXQgaSA9IDAsIGsgPSBkZWNvcmF0b3JzLmxlbmd0aDsgaSA8IGs7ICsraSkge1xuICAgICAgICB0aGlzLnNlcmlhbGl6ZURlY29yYXRvcihkZWNvcmF0b3JzW2ldKTtcbiAgICAgIH1cbiAgICB9XG4gICAgdGhpcy5zZXJpYWxpemVBY2Nlc3NNb2RpZmllcnMobm9kZSk7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGUubmFtZSk7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBpZiAobm9kZS5mbGFncyAmIENvbW1vbkZsYWdzLkRFRklOSVRFX0FTU0lHTk1FTlQpIHtcbiAgICAgIHNiLnB1c2goXCIhXCIpO1xuICAgIH1cbiAgICB2YXIgdHlwZSA9IG5vZGUudHlwZTtcbiAgICBpZiAodHlwZSkge1xuICAgICAgc2IucHVzaChcIjogXCIpO1xuICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKHR5cGUpO1xuICAgIH1cbiAgICB2YXIgaW5pdGlhbGl6ZXIgPSBub2RlLmluaXRpYWxpemVyO1xuICAgIGlmIChpbml0aWFsaXplcikge1xuICAgICAgc2IucHVzaChcIiA9IFwiKTtcbiAgICAgIHRoaXMudmlzaXROb2RlKGluaXRpYWxpemVyKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdEZvclN0YXRlbWVudChub2RlOiBGb3JTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHNiLnB1c2goXCJmb3IgKFwiKTtcbiAgICB2YXIgaW5pdGlhbGl6ZXIgPSBub2RlLmluaXRpYWxpemVyO1xuICAgIGlmIChpbml0aWFsaXplcikge1xuICAgICAgdGhpcy52aXNpdE5vZGUoaW5pdGlhbGl6ZXIpO1xuICAgIH1cbiAgICB2YXIgY29uZGl0aW9uID0gbm9kZS5jb25kaXRpb247XG4gICAgaWYgKGNvbmRpdGlvbikge1xuICAgICAgc2IucHVzaChcIjsgXCIpO1xuICAgICAgdGhpcy52aXNpdE5vZGUoY29uZGl0aW9uKTtcbiAgICB9IGVsc2Uge1xuICAgICAgc2IucHVzaChcIjtcIik7XG4gICAgfVxuICAgIHZhciBpbmNyZW1lbnRvciA9IG5vZGUuaW5jcmVtZW50b3I7XG4gICAgaWYgKGluY3JlbWVudG9yKSB7XG4gICAgICBzYi5wdXNoKFwiOyBcIik7XG4gICAgICB0aGlzLnZpc2l0Tm9kZShpbmNyZW1lbnRvcik7XG4gICAgfSBlbHNlIHtcbiAgICAgIHNiLnB1c2goXCI7XCIpO1xuICAgIH1cbiAgICBzYi5wdXNoKFwiKSBcIik7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5zdGF0ZW1lbnQpO1xuICB9XG5cbiAgdmlzaXRGdW5jdGlvbkRlY2xhcmF0aW9uKFxuICAgIG5vZGU6IEZ1bmN0aW9uRGVjbGFyYXRpb24sXG4gICAgaXNEZWZhdWx0OiBib29sID0gZmFsc2VcbiAgKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICB2YXIgZGVjb3JhdG9ycyA9IG5vZGUuZGVjb3JhdG9ycztcbiAgICBpZiAoZGVjb3JhdG9ycykge1xuICAgICAgZm9yIChsZXQgaSA9IDAsIGsgPSBkZWNvcmF0b3JzLmxlbmd0aDsgaSA8IGs7ICsraSkge1xuICAgICAgICB0aGlzLnNlcmlhbGl6ZURlY29yYXRvcihkZWNvcmF0b3JzW2ldKTtcbiAgICAgIH1cbiAgICB9XG4gICAgaWYgKGlzRGVmYXVsdCkge1xuICAgICAgc2IucHVzaChcImV4cG9ydCBkZWZhdWx0IFwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5zZXJpYWxpemVFeHRlcm5hbE1vZGlmaWVycyhub2RlKTtcbiAgICAgIHRoaXMuc2VyaWFsaXplQWNjZXNzTW9kaWZpZXJzKG5vZGUpO1xuICAgIH1cbiAgICBpZiAobm9kZS5uYW1lLnRleHQubGVuZ3RoKSB7XG4gICAgICBzYi5wdXNoKFwiZnVuY3Rpb24gXCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiZnVuY3Rpb25cIik7XG4gICAgfVxuICAgIHRoaXMudmlzaXRGdW5jdGlvbkNvbW1vbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25Db21tb24obm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGUubmFtZSk7XG4gICAgdmFyIHNpZ25hdHVyZSA9IG5vZGUuc2lnbmF0dXJlO1xuICAgIHZhciB0eXBlUGFyYW1ldGVycyA9IG5vZGUudHlwZVBhcmFtZXRlcnM7XG4gICAgaWYgKHR5cGVQYXJhbWV0ZXJzKSB7XG4gICAgICBsZXQgbnVtVHlwZVBhcmFtZXRlcnMgPSB0eXBlUGFyYW1ldGVycy5sZW5ndGg7XG4gICAgICBpZiAobnVtVHlwZVBhcmFtZXRlcnMpIHtcbiAgICAgICAgc2IucHVzaChcIjxcIik7XG4gICAgICAgIHRoaXMudmlzaXRUeXBlUGFyYW1ldGVyKHR5cGVQYXJhbWV0ZXJzWzBdKTtcbiAgICAgICAgZm9yIChsZXQgaSA9IDE7IGkgPCBudW1UeXBlUGFyYW1ldGVyczsgKytpKSB7XG4gICAgICAgICAgc2IucHVzaChcIiwgXCIpO1xuICAgICAgICAgIHRoaXMudmlzaXRUeXBlUGFyYW1ldGVyKHR5cGVQYXJhbWV0ZXJzW2ldKTtcbiAgICAgICAgfVxuICAgICAgICBzYi5wdXNoKFwiPlwiKTtcbiAgICAgIH1cbiAgICB9XG4gICAgaWYgKG5vZGUuYXJyb3dLaW5kID09IEFycm93S2luZC5BUlJPV19TSU5HTEUpIHtcbiAgICAgIGxldCBwYXJhbWV0ZXJzID0gc2lnbmF0dXJlLnBhcmFtZXRlcnM7XG4gICAgICBhc3NlcnQocGFyYW1ldGVycy5sZW5ndGggPT0gMSk7XG4gICAgICBhc3NlcnQoIXNpZ25hdHVyZS5leHBsaWNpdFRoaXNUeXBlKTtcbiAgICAgIHRoaXMuc2VyaWFsaXplUGFyYW1ldGVyKHBhcmFtZXRlcnNbMF0pO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiKFwiKTtcbiAgICAgIGxldCBwYXJhbWV0ZXJzID0gc2lnbmF0dXJlLnBhcmFtZXRlcnM7XG4gICAgICBsZXQgbnVtUGFyYW1ldGVycyA9IHBhcmFtZXRlcnMubGVuZ3RoO1xuICAgICAgbGV0IGV4cGxpY2l0VGhpc1R5cGUgPSBzaWduYXR1cmUuZXhwbGljaXRUaGlzVHlwZTtcbiAgICAgIGlmIChleHBsaWNpdFRoaXNUeXBlKSB7XG4gICAgICAgIHNiLnB1c2goXCJ0aGlzOiBcIik7XG4gICAgICAgIHRoaXMudmlzaXRUeXBlTm9kZShleHBsaWNpdFRoaXNUeXBlKTtcbiAgICAgIH1cbiAgICAgIGlmIChudW1QYXJhbWV0ZXJzKSB7XG4gICAgICAgIGlmIChleHBsaWNpdFRoaXNUeXBlKSBzYi5wdXNoKFwiLCBcIik7XG4gICAgICAgIHRoaXMuc2VyaWFsaXplUGFyYW1ldGVyKHBhcmFtZXRlcnNbMF0pO1xuICAgICAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bVBhcmFtZXRlcnM7ICsraSkge1xuICAgICAgICAgIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgICAgICB0aGlzLnNlcmlhbGl6ZVBhcmFtZXRlcihwYXJhbWV0ZXJzW2ldKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgICB2YXIgYm9keSA9IG5vZGUuYm9keTtcbiAgICB2YXIgcmV0dXJuVHlwZSA9IHNpZ25hdHVyZS5yZXR1cm5UeXBlO1xuICAgIGlmIChub2RlLmFycm93S2luZCkge1xuICAgICAgaWYgKGJvZHkpIHtcbiAgICAgICAgaWYgKG5vZGUuYXJyb3dLaW5kID09IEFycm93S2luZC5BUlJPV19TSU5HTEUpIHtcbiAgICAgICAgICBhc3NlcnQoaXNUeXBlT21pdHRlZChyZXR1cm5UeXBlKSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgaWYgKGlzVHlwZU9taXR0ZWQocmV0dXJuVHlwZSkpIHtcbiAgICAgICAgICAgIHNiLnB1c2goXCIpXCIpO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICBzYi5wdXNoKFwiKTogXCIpO1xuICAgICAgICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKHJldHVyblR5cGUpO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgICBzYi5wdXNoKFwiID0+IFwiKTtcbiAgICAgICAgdGhpcy52aXNpdE5vZGUoYm9keSk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBhc3NlcnQoIWlzVHlwZU9taXR0ZWQocmV0dXJuVHlwZSkpO1xuICAgICAgICBzYi5wdXNoKFwiID0+IFwiKTtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKHJldHVyblR5cGUpO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICBpZiAoXG4gICAgICAgICFpc1R5cGVPbWl0dGVkKHJldHVyblR5cGUpICYmXG4gICAgICAgICFub2RlLmlzQW55KENvbW1vbkZsYWdzLkNPTlNUUlVDVE9SIHwgQ29tbW9uRmxhZ3MuU0VUKVxuICAgICAgKSB7XG4gICAgICAgIHNiLnB1c2goXCIpOiBcIik7XG4gICAgICAgIHRoaXMudmlzaXRUeXBlTm9kZShyZXR1cm5UeXBlKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHNiLnB1c2goXCIpXCIpO1xuICAgICAgfVxuICAgICAgaWYgKGJvZHkpIHtcbiAgICAgICAgc2IucHVzaChcIiBcIik7XG4gICAgICAgIHRoaXMudmlzaXROb2RlKGJvZHkpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHZpc2l0SWZTdGF0ZW1lbnQobm9kZTogSWZTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHNiLnB1c2goXCJpZiAoXCIpO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuY29uZGl0aW9uKTtcbiAgICBzYi5wdXNoKFwiKSBcIik7XG4gICAgdmFyIGlmVHJ1ZSA9IG5vZGUuaWZUcnVlO1xuICAgIHRoaXMudmlzaXROb2RlKGlmVHJ1ZSk7XG4gICAgaWYgKGlmVHJ1ZS5raW5kICE9IE5vZGVLaW5kLkJMT0NLKSB7XG4gICAgICBzYi5wdXNoKFwiO1xcblwiKTtcbiAgICB9XG4gICAgdmFyIGlmRmFsc2UgPSBub2RlLmlmRmFsc2U7XG4gICAgaWYgKGlmRmFsc2UpIHtcbiAgICAgIGlmIChpZlRydWUua2luZCA9PSBOb2RlS2luZC5CTE9DSykge1xuICAgICAgICBzYi5wdXNoKFwiIGVsc2UgXCIpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgc2IucHVzaChcImVsc2UgXCIpO1xuICAgICAgfVxuICAgICAgdGhpcy52aXNpdE5vZGUoaWZGYWxzZSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRJbXBvcnREZWNsYXJhdGlvbihub2RlOiBJbXBvcnREZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHZhciBleHRlcm5hbE5hbWUgPSBub2RlLmZvcmVpZ25OYW1lO1xuICAgIHZhciBuYW1lID0gbm9kZS5uYW1lO1xuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihleHRlcm5hbE5hbWUpO1xuICAgIGlmIChleHRlcm5hbE5hbWUudGV4dCAhPSBuYW1lLnRleHQpIHtcbiAgICAgIHRoaXMuc2IucHVzaChcIiBhcyBcIik7XG4gICAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obmFtZSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRJbXBvcnRTdGF0ZW1lbnQobm9kZTogSW1wb3J0U3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzYi5wdXNoKFwiaW1wb3J0IFwiKTtcbiAgICB2YXIgZGVjbGFyYXRpb25zID0gbm9kZS5kZWNsYXJhdGlvbnM7XG4gICAgdmFyIG5hbWVzcGFjZU5hbWUgPSBub2RlLm5hbWVzcGFjZU5hbWU7XG4gICAgaWYgKGRlY2xhcmF0aW9ucykge1xuICAgICAgbGV0IG51bURlY2xhcmF0aW9ucyA9IGRlY2xhcmF0aW9ucy5sZW5ndGg7XG4gICAgICBpZiAobnVtRGVjbGFyYXRpb25zKSB7XG4gICAgICAgIHNiLnB1c2goXCJ7XFxuXCIpO1xuICAgICAgICBsZXQgaW5kZW50TGV2ZWwgPSArK3RoaXMuaW5kZW50TGV2ZWw7XG4gICAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgICB0aGlzLnZpc2l0SW1wb3J0RGVjbGFyYXRpb24oZGVjbGFyYXRpb25zWzBdKTtcbiAgICAgICAgZm9yIChsZXQgaSA9IDE7IGkgPCBudW1EZWNsYXJhdGlvbnM7ICsraSkge1xuICAgICAgICAgIHNiLnB1c2goXCIsXFxuXCIpO1xuICAgICAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgICAgIHRoaXMudmlzaXRJbXBvcnREZWNsYXJhdGlvbihkZWNsYXJhdGlvbnNbaV0pO1xuICAgICAgICB9XG4gICAgICAgIC0tdGhpcy5pbmRlbnRMZXZlbDtcbiAgICAgICAgc2IucHVzaChcIlxcbn0gZnJvbSBcIik7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBzYi5wdXNoKFwie30gZnJvbSBcIik7XG4gICAgICB9XG4gICAgfSBlbHNlIGlmIChuYW1lc3BhY2VOYW1lKSB7XG4gICAgICBzYi5wdXNoKFwiKiBhcyBcIik7XG4gICAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obmFtZXNwYWNlTmFtZSk7XG4gICAgICBzYi5wdXNoKFwiIGZyb20gXCIpO1xuICAgIH1cbiAgICB0aGlzLnZpc2l0U3RyaW5nTGl0ZXJhbEV4cHJlc3Npb24obm9kZS5wYXRoKTtcbiAgfVxuXG4gIHZpc2l0SW5kZXhTaWduYXR1cmVEZWNsYXJhdGlvbihub2RlOiBJbmRleFNpZ25hdHVyZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBzYi5wdXNoKFwiW2tleTogXCIpO1xuICAgIHRoaXMudmlzaXRUeXBlTm9kZShub2RlLmtleVR5cGUpO1xuICAgIHNiLnB1c2goXCJdOiBcIik7XG4gICAgdGhpcy52aXNpdFR5cGVOb2RlKG5vZGUudmFsdWVUeXBlKTtcbiAgfVxuXG4gIHZpc2l0SW50ZXJmYWNlRGVjbGFyYXRpb24oXG4gICAgbm9kZTogSW50ZXJmYWNlRGVjbGFyYXRpb24sXG4gICAgaXNEZWZhdWx0OiBib29sID0gZmFsc2VcbiAgKTogdm9pZCB7XG4gICAgdmFyIGRlY29yYXRvcnMgPSBub2RlLmRlY29yYXRvcnM7XG4gICAgaWYgKGRlY29yYXRvcnMpIHtcbiAgICAgIGZvciAobGV0IGkgPSAwLCBrID0gZGVjb3JhdG9ycy5sZW5ndGg7IGkgPCBrOyArK2kpIHtcbiAgICAgICAgdGhpcy5zZXJpYWxpemVEZWNvcmF0b3IoZGVjb3JhdG9yc1tpXSk7XG4gICAgICB9XG4gICAgfVxuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgaWYgKGlzRGVmYXVsdCkge1xuICAgICAgc2IucHVzaChcImV4cG9ydCBkZWZhdWx0IFwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5zZXJpYWxpemVFeHRlcm5hbE1vZGlmaWVycyhub2RlKTtcbiAgICB9XG4gICAgc2IucHVzaChcImludGVyZmFjZSBcIik7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGUubmFtZSk7XG4gICAgdmFyIHR5cGVQYXJhbWV0ZXJzID0gbm9kZS50eXBlUGFyYW1ldGVycztcbiAgICBpZiAodHlwZVBhcmFtZXRlcnMgJiYgdHlwZVBhcmFtZXRlcnMubGVuZ3RoKSB7XG4gICAgICBzYi5wdXNoKFwiPFwiKTtcbiAgICAgIHRoaXMudmlzaXRUeXBlUGFyYW1ldGVyKHR5cGVQYXJhbWV0ZXJzWzBdKTtcbiAgICAgIGZvciAobGV0IGkgPSAxLCBrID0gdHlwZVBhcmFtZXRlcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIHNiLnB1c2goXCIsIFwiKTtcbiAgICAgICAgdGhpcy52aXNpdFR5cGVQYXJhbWV0ZXIodHlwZVBhcmFtZXRlcnNbaV0pO1xuICAgICAgfVxuICAgICAgc2IucHVzaChcIj5cIik7XG4gICAgfVxuICAgIHZhciBleHRlbmRzVHlwZSA9IG5vZGUuZXh0ZW5kc1R5cGU7XG4gICAgaWYgKGV4dGVuZHNUeXBlKSB7XG4gICAgICBzYi5wdXNoKFwiIGV4dGVuZHMgXCIpO1xuICAgICAgdGhpcy52aXNpdFR5cGVOb2RlKGV4dGVuZHNUeXBlKTtcbiAgICB9XG4gICAgLy8gbXVzdCBub3QgaGF2ZSBpbXBsZW1lbnRzVHlwZXNcbiAgICBzYi5wdXNoKFwiIHtcXG5cIik7XG4gICAgdmFyIGluZGVudExldmVsID0gKyt0aGlzLmluZGVudExldmVsO1xuICAgIHZhciBtZW1iZXJzID0gbm9kZS5tZW1iZXJzO1xuICAgIGZvciAobGV0IGkgPSAwLCBrID0gbWVtYmVycy5sZW5ndGg7IGkgPCBrOyArK2kpIHtcbiAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgdGhpcy52aXNpdE5vZGVBbmRUZXJtaW5hdGUobWVtYmVyc1tpXSk7XG4gICAgfVxuICAgIC0tdGhpcy5pbmRlbnRMZXZlbDtcbiAgICBzYi5wdXNoKFwifVwiKTtcbiAgfVxuXG4gIHZpc2l0TWV0aG9kRGVjbGFyYXRpb24obm9kZTogTWV0aG9kRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICB2YXIgZGVjb3JhdG9ycyA9IG5vZGUuZGVjb3JhdG9ycztcbiAgICBpZiAoZGVjb3JhdG9ycykge1xuICAgICAgZm9yIChsZXQgaSA9IDAsIGsgPSBkZWNvcmF0b3JzLmxlbmd0aDsgaSA8IGs7ICsraSkge1xuICAgICAgICB0aGlzLnNlcmlhbGl6ZURlY29yYXRvcihkZWNvcmF0b3JzW2ldKTtcbiAgICAgIH1cbiAgICB9XG4gICAgdGhpcy5zZXJpYWxpemVBY2Nlc3NNb2RpZmllcnMobm9kZSk7XG4gICAgaWYgKG5vZGUuaXMoQ29tbW9uRmxhZ3MuR0VUKSkge1xuICAgICAgdGhpcy5zYi5wdXNoKFwiZ2V0IFwiKTtcbiAgICB9IGVsc2UgaWYgKG5vZGUuaXMoQ29tbW9uRmxhZ3MuU0VUKSkge1xuICAgICAgdGhpcy5zYi5wdXNoKFwic2V0IFwiKTtcbiAgICB9XG4gICAgdGhpcy52aXNpdEZ1bmN0aW9uQ29tbW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXROYW1lc3BhY2VEZWNsYXJhdGlvbihcbiAgICBub2RlOiBOYW1lc3BhY2VEZWNsYXJhdGlvbixcbiAgICBpc0RlZmF1bHQ6IGJvb2wgPSBmYWxzZVxuICApOiB2b2lkIHtcbiAgICB2YXIgZGVjb3JhdG9ycyA9IG5vZGUuZGVjb3JhdG9ycztcbiAgICBpZiAoZGVjb3JhdG9ycykge1xuICAgICAgZm9yIChsZXQgaSA9IDAsIGsgPSBkZWNvcmF0b3JzLmxlbmd0aDsgaSA8IGs7ICsraSkge1xuICAgICAgICB0aGlzLnNlcmlhbGl6ZURlY29yYXRvcihkZWNvcmF0b3JzW2ldKTtcbiAgICAgIH1cbiAgICB9XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBpZiAoaXNEZWZhdWx0KSB7XG4gICAgICBzYi5wdXNoKFwiZXhwb3J0IGRlZmF1bHQgXCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLnNlcmlhbGl6ZUV4dGVybmFsTW9kaWZpZXJzKG5vZGUpO1xuICAgIH1cbiAgICBzYi5wdXNoKFwibmFtZXNwYWNlIFwiKTtcbiAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZS5uYW1lKTtcbiAgICB2YXIgbWVtYmVycyA9IG5vZGUubWVtYmVycztcbiAgICB2YXIgbnVtTWVtYmVycyA9IG1lbWJlcnMubGVuZ3RoO1xuICAgIGlmIChudW1NZW1iZXJzKSB7XG4gICAgICBzYi5wdXNoKFwiIHtcXG5cIik7XG4gICAgICBsZXQgaW5kZW50TGV2ZWwgPSArK3RoaXMuaW5kZW50TGV2ZWw7XG4gICAgICBmb3IgKGxldCBpID0gMCwgayA9IG1lbWJlcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwpO1xuICAgICAgICB0aGlzLnZpc2l0Tm9kZUFuZFRlcm1pbmF0ZShtZW1iZXJzW2ldKTtcbiAgICAgIH1cbiAgICAgIGluZGVudChzYiwgLS10aGlzLmluZGVudExldmVsKTtcbiAgICAgIHNiLnB1c2goXCJ9XCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiIHt9XCIpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0UmV0dXJuU3RhdGVtZW50KG5vZGU6IFJldHVyblN0YXRlbWVudCk6IHZvaWQge1xuICAgIHZhciB2YWx1ZSA9IG5vZGUudmFsdWU7XG4gICAgaWYgKHZhbHVlKSB7XG4gICAgICB0aGlzLnNiLnB1c2goXCJyZXR1cm4gXCIpO1xuICAgICAgdGhpcy52aXNpdE5vZGUodmFsdWUpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLnNiLnB1c2goXCJyZXR1cm5cIik7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRTd2l0Y2hDYXNlKG5vZGU6IFN3aXRjaENhc2UpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHZhciBsYWJlbCA9IG5vZGUubGFiZWw7XG4gICAgaWYgKGxhYmVsKSB7XG4gICAgICBzYi5wdXNoKFwiY2FzZSBcIik7XG4gICAgICB0aGlzLnZpc2l0Tm9kZShsYWJlbCk7XG4gICAgICBzYi5wdXNoKFwiOlxcblwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgc2IucHVzaChcImRlZmF1bHQ6XFxuXCIpO1xuICAgIH1cbiAgICB2YXIgc3RhdGVtZW50cyA9IG5vZGUuc3RhdGVtZW50cztcbiAgICB2YXIgbnVtU3RhdGVtZW50cyA9IHN0YXRlbWVudHMubGVuZ3RoO1xuICAgIGlmIChudW1TdGF0ZW1lbnRzKSB7XG4gICAgICBsZXQgaW5kZW50TGV2ZWwgPSArK3RoaXMuaW5kZW50TGV2ZWw7XG4gICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsKTtcbiAgICAgIHRoaXMudmlzaXROb2RlQW5kVGVybWluYXRlKHN0YXRlbWVudHNbMF0pO1xuICAgICAgZm9yIChsZXQgaSA9IDE7IGkgPCBudW1TdGF0ZW1lbnRzOyArK2kpIHtcbiAgICAgICAgaW5kZW50KHNiLCBpbmRlbnRMZXZlbCk7XG4gICAgICAgIHRoaXMudmlzaXROb2RlQW5kVGVybWluYXRlKHN0YXRlbWVudHNbaV0pO1xuICAgICAgfVxuICAgICAgLS10aGlzLmluZGVudExldmVsO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0U3dpdGNoU3RhdGVtZW50KG5vZGU6IFN3aXRjaFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgc2IucHVzaChcInN3aXRjaCAoXCIpO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuY29uZGl0aW9uKTtcbiAgICBzYi5wdXNoKFwiKSB7XFxuXCIpO1xuICAgIHZhciBpbmRlbnRMZXZlbCA9ICsrdGhpcy5pbmRlbnRMZXZlbDtcbiAgICB2YXIgY2FzZXMgPSBub2RlLmNhc2VzO1xuICAgIGZvciAobGV0IGkgPSAwLCBrID0gY2FzZXMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsKTtcbiAgICAgIHRoaXMudmlzaXRTd2l0Y2hDYXNlKGNhc2VzW2ldKTtcbiAgICAgIHNiLnB1c2goXCJcXG5cIik7XG4gICAgfVxuICAgIC0tdGhpcy5pbmRlbnRMZXZlbDtcbiAgICBzYi5wdXNoKFwifVwiKTtcbiAgfVxuXG4gIHZpc2l0VGhyb3dTdGF0ZW1lbnQobm9kZTogVGhyb3dTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLnNiLnB1c2goXCJ0aHJvdyBcIik7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS52YWx1ZSk7XG4gIH1cblxuICB2aXNpdFRyeVN0YXRlbWVudChub2RlOiBUcnlTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHNiLnB1c2goXCJ0cnkge1xcblwiKTtcbiAgICB2YXIgaW5kZW50TGV2ZWwgPSArK3RoaXMuaW5kZW50TGV2ZWw7XG4gICAgdmFyIHN0YXRlbWVudHMgPSBub2RlLnN0YXRlbWVudHM7XG4gICAgZm9yIChsZXQgaSA9IDAsIGsgPSBzdGF0ZW1lbnRzLmxlbmd0aDsgaSA8IGs7ICsraSkge1xuICAgICAgaW5kZW50KHNiLCBpbmRlbnRMZXZlbCk7XG4gICAgICB0aGlzLnZpc2l0Tm9kZUFuZFRlcm1pbmF0ZShzdGF0ZW1lbnRzW2ldKTtcbiAgICB9XG4gICAgdmFyIGNhdGNoVmFyaWFibGUgPSBub2RlLmNhdGNoVmFyaWFibGU7XG4gICAgaWYgKGNhdGNoVmFyaWFibGUpIHtcbiAgICAgIGluZGVudChzYiwgaW5kZW50TGV2ZWwgLSAxKTtcbiAgICAgIHNiLnB1c2goXCJ9IGNhdGNoIChcIik7XG4gICAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24oY2F0Y2hWYXJpYWJsZSk7XG4gICAgICBzYi5wdXNoKFwiKSB7XFxuXCIpO1xuICAgICAgbGV0IGNhdGNoU3RhdGVtZW50cyA9IG5vZGUuY2F0Y2hTdGF0ZW1lbnRzO1xuICAgICAgaWYgKGNhdGNoU3RhdGVtZW50cykge1xuICAgICAgICBmb3IgKGxldCBpID0gMCwgayA9IGNhdGNoU3RhdGVtZW50cy5sZW5ndGg7IGkgPCBrOyArK2kpIHtcbiAgICAgICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsKTtcbiAgICAgICAgICB0aGlzLnZpc2l0Tm9kZUFuZFRlcm1pbmF0ZShjYXRjaFN0YXRlbWVudHNbaV0pO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgIHZhciBmaW5hbGx5U3RhdGVtZW50cyA9IG5vZGUuZmluYWxseVN0YXRlbWVudHM7XG4gICAgaWYgKGZpbmFsbHlTdGF0ZW1lbnRzKSB7XG4gICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsIC0gMSk7XG4gICAgICBzYi5wdXNoKFwifSBmaW5hbGx5IHtcXG5cIik7XG4gICAgICBmb3IgKGxldCBpID0gMCwgayA9IGZpbmFsbHlTdGF0ZW1lbnRzLmxlbmd0aDsgaSA8IGs7ICsraSkge1xuICAgICAgICBpbmRlbnQoc2IsIGluZGVudExldmVsKTtcbiAgICAgICAgdGhpcy52aXNpdE5vZGVBbmRUZXJtaW5hdGUoZmluYWxseVN0YXRlbWVudHNbaV0pO1xuICAgICAgfVxuICAgIH1cbiAgICBpbmRlbnQoc2IsIGluZGVudExldmVsIC0gMSk7XG4gICAgc2IucHVzaChcIn1cIik7XG4gIH1cblxuICB2aXNpdFR5cGVEZWNsYXJhdGlvbihub2RlOiBUeXBlRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICB2YXIgZGVjb3JhdG9ycyA9IG5vZGUuZGVjb3JhdG9ycztcbiAgICBpZiAoZGVjb3JhdG9ycykge1xuICAgICAgZm9yIChsZXQgaSA9IDAsIGsgPSBkZWNvcmF0b3JzLmxlbmd0aDsgaSA8IGs7ICsraSkge1xuICAgICAgICB0aGlzLnNlcmlhbGl6ZURlY29yYXRvcihkZWNvcmF0b3JzW2ldKTtcbiAgICAgIH1cbiAgICB9XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICB0aGlzLnNlcmlhbGl6ZUV4dGVybmFsTW9kaWZpZXJzKG5vZGUpO1xuICAgIHNiLnB1c2goXCJ0eXBlIFwiKTtcbiAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZS5uYW1lKTtcbiAgICB2YXIgdHlwZVBhcmFtZXRlcnMgPSBub2RlLnR5cGVQYXJhbWV0ZXJzO1xuICAgIGlmICh0eXBlUGFyYW1ldGVycykge1xuICAgICAgbGV0IG51bVR5cGVQYXJhbWV0ZXJzID0gdHlwZVBhcmFtZXRlcnMubGVuZ3RoO1xuICAgICAgaWYgKG51bVR5cGVQYXJhbWV0ZXJzKSB7XG4gICAgICAgIHNiLnB1c2goXCI8XCIpO1xuICAgICAgICBmb3IgKGxldCBpID0gMDsgaSA8IG51bVR5cGVQYXJhbWV0ZXJzOyArK2kpIHtcbiAgICAgICAgICB0aGlzLnZpc2l0VHlwZVBhcmFtZXRlcih0eXBlUGFyYW1ldGVyc1tpXSk7XG4gICAgICAgIH1cbiAgICAgICAgc2IucHVzaChcIj5cIik7XG4gICAgICB9XG4gICAgfVxuICAgIHNiLnB1c2goXCIgPSBcIik7XG4gICAgdGhpcy52aXNpdFR5cGVOb2RlKG5vZGUudHlwZSk7XG4gIH1cblxuICB2aXNpdFZhcmlhYmxlRGVjbGFyYXRpb24obm9kZTogVmFyaWFibGVEZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLm5hbWUpO1xuICAgIHZhciB0eXBlID0gbm9kZS50eXBlO1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgaWYgKG5vZGUuZmxhZ3MgJiBDb21tb25GbGFncy5ERUZJTklURV9BU1NJR05NRU5UKSB7XG4gICAgICBzYi5wdXNoKFwiIVwiKTtcbiAgICB9XG4gICAgaWYgKHR5cGUpIHtcbiAgICAgIHNiLnB1c2goXCI6IFwiKTtcbiAgICAgIHRoaXMudmlzaXRUeXBlTm9kZSh0eXBlKTtcbiAgICB9XG4gICAgdmFyIGluaXRpYWxpemVyID0gbm9kZS5pbml0aWFsaXplcjtcbiAgICBpZiAoaW5pdGlhbGl6ZXIpIHtcbiAgICAgIHNiLnB1c2goXCIgPSBcIik7XG4gICAgICB0aGlzLnZpc2l0Tm9kZShpbml0aWFsaXplcik7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRWYXJpYWJsZVN0YXRlbWVudChub2RlOiBWYXJpYWJsZVN0YXRlbWVudCk6IHZvaWQge1xuICAgIHZhciBkZWNvcmF0b3JzID0gbm9kZS5kZWNvcmF0b3JzO1xuICAgIGlmIChkZWNvcmF0b3JzKSB7XG4gICAgICBmb3IgKGxldCBpID0gMCwgayA9IGRlY29yYXRvcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICAgIHRoaXMuc2VyaWFsaXplRGVjb3JhdG9yKGRlY29yYXRvcnNbaV0pO1xuICAgICAgfVxuICAgIH1cbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHZhciBkZWNsYXJhdGlvbnMgPSBub2RlLmRlY2xhcmF0aW9ucztcbiAgICB2YXIgbnVtRGVjbGFyYXRpb25zID0gYXNzZXJ0KGRlY2xhcmF0aW9ucy5sZW5ndGgpO1xuICAgIHZhciBmaXJzdERlY2xhcmF0aW9uID0gZGVjbGFyYXRpb25zWzBdO1xuICAgIHRoaXMuc2VyaWFsaXplRXh0ZXJuYWxNb2RpZmllcnMoZmlyc3REZWNsYXJhdGlvbik7XG4gICAgc2IucHVzaChcbiAgICAgIGZpcnN0RGVjbGFyYXRpb24uaXMoQ29tbW9uRmxhZ3MuQ09OU1QpXG4gICAgICAgID8gXCJjb25zdCBcIlxuICAgICAgICA6IGZpcnN0RGVjbGFyYXRpb24uaXMoQ29tbW9uRmxhZ3MuTEVUKVxuICAgICAgICA/IFwibGV0IFwiXG4gICAgICAgIDogXCJ2YXIgXCJcbiAgICApO1xuICAgIHRoaXMudmlzaXRWYXJpYWJsZURlY2xhcmF0aW9uKG5vZGUuZGVjbGFyYXRpb25zWzBdKTtcbiAgICBmb3IgKGxldCBpID0gMTsgaSA8IG51bURlY2xhcmF0aW9uczsgKytpKSB7XG4gICAgICBzYi5wdXNoKFwiLCBcIik7XG4gICAgICB0aGlzLnZpc2l0VmFyaWFibGVEZWNsYXJhdGlvbihub2RlLmRlY2xhcmF0aW9uc1tpXSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRXaGlsZVN0YXRlbWVudChub2RlOiBXaGlsZVN0YXRlbWVudCk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgc2IucHVzaChcIndoaWxlIChcIik7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5jb25kaXRpb24pO1xuICAgIHZhciBzdGF0ZW1lbnQgPSBub2RlLnN0YXRlbWVudDtcbiAgICBpZiAoc3RhdGVtZW50LmtpbmQgPT0gTm9kZUtpbmQuRU1QVFkpIHtcbiAgICAgIHNiLnB1c2goXCIpXCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiKSBcIik7XG4gICAgICB0aGlzLnZpc2l0Tm9kZShub2RlLnN0YXRlbWVudCk7XG4gICAgfVxuICB9XG5cbiAgLy8gb3RoZXJcblxuICBzZXJpYWxpemVEZWNvcmF0b3Iobm9kZTogRGVjb3JhdG9yTm9kZSk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgc2IucHVzaChcIkBcIik7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5uYW1lKTtcbiAgICB2YXIgYXJncyA9IG5vZGUuYXJndW1lbnRzO1xuICAgIGlmIChhcmdzKSB7XG4gICAgICBzYi5wdXNoKFwiKFwiKTtcbiAgICAgIGxldCBudW1BcmdzID0gYXJncy5sZW5ndGg7XG4gICAgICBpZiAobnVtQXJncykge1xuICAgICAgICB0aGlzLnZpc2l0Tm9kZShhcmdzWzBdKTtcbiAgICAgICAgZm9yIChsZXQgaSA9IDE7IGkgPCBudW1BcmdzOyArK2kpIHtcbiAgICAgICAgICBzYi5wdXNoKFwiLCBcIik7XG4gICAgICAgICAgdGhpcy52aXNpdE5vZGUoYXJnc1tpXSk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIHNiLnB1c2goXCIpXFxuXCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBzYi5wdXNoKFwiXFxuXCIpO1xuICAgIH1cbiAgICBpbmRlbnQoc2IsIHRoaXMuaW5kZW50TGV2ZWwpO1xuICB9XG5cbiAgc2VyaWFsaXplUGFyYW1ldGVyKG5vZGU6IFBhcmFtZXRlck5vZGUpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHZhciBraW5kID0gbm9kZS5wYXJhbWV0ZXJLaW5kO1xuICAgIHZhciBpbXBsaWNpdEZpZWxkRGVjbGFyYXRpb24gPSBub2RlLmltcGxpY2l0RmllbGREZWNsYXJhdGlvbjtcbiAgICBpZiAoaW1wbGljaXRGaWVsZERlY2xhcmF0aW9uKSB7XG4gICAgICB0aGlzLnNlcmlhbGl6ZUFjY2Vzc01vZGlmaWVycyhpbXBsaWNpdEZpZWxkRGVjbGFyYXRpb24pO1xuICAgIH1cbiAgICBpZiAoa2luZCA9PSBQYXJhbWV0ZXJLaW5kLlJFU1QpIHtcbiAgICAgIHNiLnB1c2goXCIuLi5cIik7XG4gICAgfVxuICAgIHRoaXMudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlLm5hbWUpO1xuICAgIHZhciB0eXBlID0gbm9kZS50eXBlO1xuICAgIHZhciBpbml0aWFsaXplciA9IG5vZGUuaW5pdGlhbGl6ZXI7XG4gICAgaWYgKHR5cGUpIHtcbiAgICAgIGlmIChraW5kID09IFBhcmFtZXRlcktpbmQuT1BUSU9OQUwgJiYgIWluaXRpYWxpemVyKSBzYi5wdXNoKFwiP1wiKTtcbiAgICAgIGlmICghaXNUeXBlT21pdHRlZCh0eXBlKSkge1xuICAgICAgICBzYi5wdXNoKFwiOiBcIik7XG4gICAgICAgIHRoaXMudmlzaXRUeXBlTm9kZSh0eXBlKTtcbiAgICAgIH1cbiAgICB9XG4gICAgaWYgKGluaXRpYWxpemVyKSB7XG4gICAgICBzYi5wdXNoKFwiID0gXCIpO1xuICAgICAgdGhpcy52aXNpdE5vZGUoaW5pdGlhbGl6ZXIpO1xuICAgIH1cbiAgfVxuXG4gIHNlcmlhbGl6ZUV4dGVybmFsTW9kaWZpZXJzKG5vZGU6IERlY2xhcmF0aW9uU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBpZiAobm9kZS5pcyhDb21tb25GbGFncy5FWFBPUlQpKSB7XG4gICAgICBzYi5wdXNoKFwiZXhwb3J0IFwiKTtcbiAgICB9IGVsc2UgaWYgKG5vZGUuaXMoQ29tbW9uRmxhZ3MuSU1QT1JUKSkge1xuICAgICAgc2IucHVzaChcImltcG9ydCBcIik7XG4gICAgfSBlbHNlIGlmIChub2RlLmlzKENvbW1vbkZsYWdzLkRFQ0xBUkUpKSB7XG4gICAgICBzYi5wdXNoKFwiZGVjbGFyZSBcIik7XG4gICAgfVxuICB9XG5cbiAgc2VyaWFsaXplQWNjZXNzTW9kaWZpZXJzKG5vZGU6IERlY2xhcmF0aW9uU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBpZiAobm9kZS5pcyhDb21tb25GbGFncy5QVUJMSUMpKSB7XG4gICAgICBzYi5wdXNoKFwicHVibGljIFwiKTtcbiAgICB9IGVsc2UgaWYgKG5vZGUuaXMoQ29tbW9uRmxhZ3MuUFJJVkFURSkpIHtcbiAgICAgIHNiLnB1c2goXCJwcml2YXRlIFwiKTtcbiAgICB9IGVsc2UgaWYgKG5vZGUuaXMoQ29tbW9uRmxhZ3MuUFJPVEVDVEVEKSkge1xuICAgICAgc2IucHVzaChcInByb3RlY3RlZCBcIik7XG4gICAgfVxuICAgIGlmIChub2RlLmlzKENvbW1vbkZsYWdzLlNUQVRJQykpIHtcbiAgICAgIHNiLnB1c2goXCJzdGF0aWMgXCIpO1xuICAgIH0gZWxzZSBpZiAobm9kZS5pcyhDb21tb25GbGFncy5BQlNUUkFDVCkpIHtcbiAgICAgIHNiLnB1c2goXCJhYnN0cmFjdCBcIik7XG4gICAgfVxuICAgIGlmIChub2RlLmlzKENvbW1vbkZsYWdzLlJFQURPTkxZKSkge1xuICAgICAgc2IucHVzaChcInJlYWRvbmx5IFwiKTtcbiAgICB9XG4gIH1cblxuICBmaW5pc2goKTogc3RyaW5nIHtcbiAgICB2YXIgcmV0ID0gdGhpcy5zYi5qb2luKFwiXCIpO1xuICAgIHRoaXMuc2IgPSBbXTtcbiAgICByZXR1cm4gcmV0O1xuICB9XG59XG4iXX0=

/***/ }),

/***/ "./node_modules/assemblyscript/lib/transformer/src/ast.ts":
/*!****************************************************************!*\
  !*** ./node_modules/assemblyscript/lib/transformer/src/ast.ts ***!
  \****************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

Object.defineProperty(exports, "__esModule", { value: true });
/** Indicates the kind of a node. */
var NodeKind;
(function (NodeKind) {
    NodeKind[NodeKind["SOURCE"] = 0] = "SOURCE";
    NodeKind[NodeKind["NAMEDTYPE"] = 1] = "NAMEDTYPE";
    NodeKind[NodeKind["FUNCTIONTYPE"] = 2] = "FUNCTIONTYPE";
    NodeKind[NodeKind["TYPENAME"] = 3] = "TYPENAME";
    NodeKind[NodeKind["TYPEPARAMETER"] = 4] = "TYPEPARAMETER";
    NodeKind[NodeKind["PARAMETER"] = 5] = "PARAMETER";
    NodeKind[NodeKind["IDENTIFIER"] = 6] = "IDENTIFIER";
    NodeKind[NodeKind["ASSERTION"] = 7] = "ASSERTION";
    NodeKind[NodeKind["BINARY"] = 8] = "BINARY";
    NodeKind[NodeKind["CALL"] = 9] = "CALL";
    NodeKind[NodeKind["CLASS"] = 10] = "CLASS";
    NodeKind[NodeKind["COMMA"] = 11] = "COMMA";
    NodeKind[NodeKind["ELEMENTACCESS"] = 12] = "ELEMENTACCESS";
    NodeKind[NodeKind["FALSE"] = 13] = "FALSE";
    NodeKind[NodeKind["FUNCTION"] = 14] = "FUNCTION";
    NodeKind[NodeKind["INSTANCEOF"] = 15] = "INSTANCEOF";
    NodeKind[NodeKind["LITERAL"] = 16] = "LITERAL";
    NodeKind[NodeKind["NEW"] = 17] = "NEW";
    NodeKind[NodeKind["NULL"] = 18] = "NULL";
    NodeKind[NodeKind["PARENTHESIZED"] = 19] = "PARENTHESIZED";
    NodeKind[NodeKind["PROPERTYACCESS"] = 20] = "PROPERTYACCESS";
    NodeKind[NodeKind["TERNARY"] = 21] = "TERNARY";
    NodeKind[NodeKind["SUPER"] = 22] = "SUPER";
    NodeKind[NodeKind["THIS"] = 23] = "THIS";
    NodeKind[NodeKind["TRUE"] = 24] = "TRUE";
    NodeKind[NodeKind["CONSTRUCTOR"] = 25] = "CONSTRUCTOR";
    NodeKind[NodeKind["UNARYPOSTFIX"] = 26] = "UNARYPOSTFIX";
    NodeKind[NodeKind["UNARYPREFIX"] = 27] = "UNARYPREFIX";
    NodeKind[NodeKind["BLOCK"] = 28] = "BLOCK";
    NodeKind[NodeKind["BREAK"] = 29] = "BREAK";
    NodeKind[NodeKind["CONTINUE"] = 30] = "CONTINUE";
    NodeKind[NodeKind["DO"] = 31] = "DO";
    NodeKind[NodeKind["EMPTY"] = 32] = "EMPTY";
    NodeKind[NodeKind["EXPORT"] = 33] = "EXPORT";
    NodeKind[NodeKind["EXPORTDEFAULT"] = 34] = "EXPORTDEFAULT";
    NodeKind[NodeKind["EXPORTIMPORT"] = 35] = "EXPORTIMPORT";
    NodeKind[NodeKind["EXPRESSION"] = 36] = "EXPRESSION";
    NodeKind[NodeKind["FOR"] = 37] = "FOR";
    NodeKind[NodeKind["IF"] = 38] = "IF";
    NodeKind[NodeKind["IMPORT"] = 39] = "IMPORT";
    NodeKind[NodeKind["RETURN"] = 40] = "RETURN";
    NodeKind[NodeKind["SWITCH"] = 41] = "SWITCH";
    NodeKind[NodeKind["THROW"] = 42] = "THROW";
    NodeKind[NodeKind["TRY"] = 43] = "TRY";
    NodeKind[NodeKind["VARIABLE"] = 44] = "VARIABLE";
    NodeKind[NodeKind["VOID"] = 45] = "VOID";
    NodeKind[NodeKind["WHILE"] = 46] = "WHILE";
    NodeKind[NodeKind["CLASSDECLARATION"] = 47] = "CLASSDECLARATION";
    NodeKind[NodeKind["ENUMDECLARATION"] = 48] = "ENUMDECLARATION";
    NodeKind[NodeKind["ENUMVALUEDECLARATION"] = 49] = "ENUMVALUEDECLARATION";
    NodeKind[NodeKind["FIELDDECLARATION"] = 50] = "FIELDDECLARATION";
    NodeKind[NodeKind["FUNCTIONDECLARATION"] = 51] = "FUNCTIONDECLARATION";
    NodeKind[NodeKind["IMPORTDECLARATION"] = 52] = "IMPORTDECLARATION";
    NodeKind[NodeKind["INDEXSIGNATUREDECLARATION"] = 53] = "INDEXSIGNATUREDECLARATION";
    NodeKind[NodeKind["INTERFACEDECLARATION"] = 54] = "INTERFACEDECLARATION";
    NodeKind[NodeKind["METHODDECLARATION"] = 55] = "METHODDECLARATION";
    NodeKind[NodeKind["NAMESPACEDECLARATION"] = 56] = "NAMESPACEDECLARATION";
    NodeKind[NodeKind["TYPEDECLARATION"] = 57] = "TYPEDECLARATION";
    NodeKind[NodeKind["VARIABLEDECLARATION"] = 58] = "VARIABLEDECLARATION";
    NodeKind[NodeKind["DECORATOR"] = 59] = "DECORATOR";
    NodeKind[NodeKind["EXPORTMEMBER"] = 60] = "EXPORTMEMBER";
    NodeKind[NodeKind["SWITCHCASE"] = 61] = "SWITCHCASE";
    NodeKind[NodeKind["COMMENT"] = 62] = "COMMENT";
})(NodeKind = exports.NodeKind || (exports.NodeKind = {}));
/** Represents the kind of a parameter. */
var ParameterKind;
(function (ParameterKind) {
    /** No specific flags. */
    ParameterKind[ParameterKind["DEFAULT"] = 0] = "DEFAULT";
    /** Is an optional parameter. */
    ParameterKind[ParameterKind["OPTIONAL"] = 1] = "OPTIONAL";
    /** Is a rest parameter. */
    ParameterKind[ParameterKind["REST"] = 2] = "REST";
})(ParameterKind = exports.ParameterKind || (exports.ParameterKind = {}));
/** Built-in decorator kinds. */
var DecoratorKind;
(function (DecoratorKind) {
    DecoratorKind[DecoratorKind["CUSTOM"] = 0] = "CUSTOM";
    DecoratorKind[DecoratorKind["GLOBAL"] = 1] = "GLOBAL";
    DecoratorKind[DecoratorKind["OPERATOR"] = 2] = "OPERATOR";
    DecoratorKind[DecoratorKind["OPERATOR_BINARY"] = 3] = "OPERATOR_BINARY";
    DecoratorKind[DecoratorKind["OPERATOR_PREFIX"] = 4] = "OPERATOR_PREFIX";
    DecoratorKind[DecoratorKind["OPERATOR_POSTFIX"] = 5] = "OPERATOR_POSTFIX";
    DecoratorKind[DecoratorKind["UNMANAGED"] = 6] = "UNMANAGED";
    DecoratorKind[DecoratorKind["SEALED"] = 7] = "SEALED";
    DecoratorKind[DecoratorKind["INLINE"] = 8] = "INLINE";
    DecoratorKind[DecoratorKind["EXTERNAL"] = 9] = "EXTERNAL";
    DecoratorKind[DecoratorKind["BUILTIN"] = 10] = "BUILTIN";
    DecoratorKind[DecoratorKind["LAZY"] = 11] = "LAZY";
    DecoratorKind[DecoratorKind["UNSAFE"] = 12] = "UNSAFE";
})(DecoratorKind = exports.DecoratorKind || (exports.DecoratorKind = {}));
(function (DecoratorKind) {
})(DecoratorKind = exports.DecoratorKind || (exports.DecoratorKind = {}));
/** Comment kinds. */
var CommentKind;
(function (CommentKind) {
    /** Line comment. */
    CommentKind[CommentKind["LINE"] = 0] = "LINE";
    /** Triple-slash comment. */
    CommentKind[CommentKind["TRIPLE"] = 1] = "TRIPLE";
    /** Block comment. */
    CommentKind[CommentKind["BLOCK"] = 2] = "BLOCK";
})(CommentKind = exports.CommentKind || (exports.CommentKind = {}));
/** Indicates the kind of a literal. */
var LiteralKind;
(function (LiteralKind) {
    LiteralKind[LiteralKind["FLOAT"] = 0] = "FLOAT";
    LiteralKind[LiteralKind["INTEGER"] = 1] = "INTEGER";
    LiteralKind[LiteralKind["STRING"] = 2] = "STRING";
    LiteralKind[LiteralKind["REGEXP"] = 3] = "REGEXP";
    LiteralKind[LiteralKind["ARRAY"] = 4] = "ARRAY";
    LiteralKind[LiteralKind["OBJECT"] = 5] = "OBJECT";
})(LiteralKind = exports.LiteralKind || (exports.LiteralKind = {}));
/** Indicates the kind of an assertion. */
var AssertionKind;
(function (AssertionKind) {
    AssertionKind[AssertionKind["PREFIX"] = 0] = "PREFIX";
    AssertionKind[AssertionKind["AS"] = 1] = "AS";
    AssertionKind[AssertionKind["NONNULL"] = 2] = "NONNULL";
})(AssertionKind = exports.AssertionKind || (exports.AssertionKind = {}));
/** Indicates the specific kind of a source. */
var SourceKind;
(function (SourceKind) {
    /** User-provided file. */
    SourceKind[SourceKind["USER"] = 0] = "USER";
    /** User-provided entry file. */
    SourceKind[SourceKind["USER_ENTRY"] = 1] = "USER_ENTRY";
    /** Library-provided file. */
    SourceKind[SourceKind["LIBRARY"] = 2] = "LIBRARY";
    /** Library-provided entry file. */
    SourceKind[SourceKind["LIBRARY_ENTRY"] = 3] = "LIBRARY_ENTRY";
})(SourceKind = exports.SourceKind || (exports.SourceKind = {}));
/** Indicates the kind of an array function. */
var ArrowKind;
(function (ArrowKind) {
    /** Not an arrow function. */
    ArrowKind[ArrowKind["NONE"] = 0] = "NONE";
    /** Parenthesized parameter list. */
    ArrowKind[ArrowKind["ARROW_PARENTHESIZED"] = 1] = "ARROW_PARENTHESIZED";
    /** Single parameter without parenthesis. */
    ArrowKind[ArrowKind["ARROW_SINGLE"] = 2] = "ARROW_SINGLE";
})(ArrowKind = exports.ArrowKind || (exports.ArrowKind = {}));
/** Finds the first decorator matching the specified kind. */
function findDecorator(kind, decorators) {
    if (decorators) {
        for (var i = 0, k = decorators.length; i < k; ++i) {
            var decorator = decorators[i];
            if (decorator.decoratorKind == kind)
                return decorator;
        }
    }
    return null;
}
exports.findDecorator = findDecorator;
/** Mangles an external to an internal path. */
function mangleInternalPath(path) {
    if (path.endsWith(".ts"))
        path = path.substring(0, path.length - 3);
    return path;
}
exports.mangleInternalPath = mangleInternalPath;
/** Tests if the specified type node represents an omitted type. */
function isTypeOmitted(type) {
    if (type.kind == 1 /* NAMEDTYPE */) {
        var name = type.name;
        return !(name.next || name.identifier.text.length);
    }
    return false;
}
exports.isTypeOmitted = isTypeOmitted;
/** Indicates traits of a {@link Node} or {@link Element}. */
var CommonFlags;
(function (CommonFlags) {
    /** No flags set. */
    CommonFlags[CommonFlags["NONE"] = 0] = "NONE";
    // Basic modifiers
    /** Has an `import` modifier. */
    CommonFlags[CommonFlags["IMPORT"] = 1] = "IMPORT";
    /** Has an `export` modifier. */
    CommonFlags[CommonFlags["EXPORT"] = 2] = "EXPORT";
    /** Has a `declare` modifier. */
    CommonFlags[CommonFlags["DECLARE"] = 4] = "DECLARE";
    /** Has a `const` modifier. */
    CommonFlags[CommonFlags["CONST"] = 8] = "CONST";
    /** Has a `let` modifier. */
    CommonFlags[CommonFlags["LET"] = 16] = "LET";
    /** Has a `static` modifier. */
    CommonFlags[CommonFlags["STATIC"] = 32] = "STATIC";
    /** Has a `readonly` modifier. */
    CommonFlags[CommonFlags["READONLY"] = 64] = "READONLY";
    /** Has an `abstract` modifier. */
    CommonFlags[CommonFlags["ABSTRACT"] = 128] = "ABSTRACT";
    /** Has a `public` modifier. */
    CommonFlags[CommonFlags["PUBLIC"] = 256] = "PUBLIC";
    /** Has a `private` modifier. */
    CommonFlags[CommonFlags["PRIVATE"] = 512] = "PRIVATE";
    /** Has a `protected` modifier. */
    CommonFlags[CommonFlags["PROTECTED"] = 1024] = "PROTECTED";
    /** Has a `get` modifier. */
    CommonFlags[CommonFlags["GET"] = 2048] = "GET";
    /** Has a `set` modifier. */
    CommonFlags[CommonFlags["SET"] = 4096] = "SET";
    /** Has a definite assignment assertion `!` as in `x!: i32;`. */
    CommonFlags[CommonFlags["DEFINITE_ASSIGNMENT"] = 8192] = "DEFINITE_ASSIGNMENT";
    // Extended modifiers usually derived from basic modifiers
    /** Is ambient, that is either declared or nested in a declared element. */
    CommonFlags[CommonFlags["AMBIENT"] = 16384] = "AMBIENT";
    /** Is generic. */
    CommonFlags[CommonFlags["GENERIC"] = 32768] = "GENERIC";
    /** Is part of a generic context. */
    CommonFlags[CommonFlags["GENERIC_CONTEXT"] = 65536] = "GENERIC_CONTEXT";
    /** Is an instance member. */
    CommonFlags[CommonFlags["INSTANCE"] = 131072] = "INSTANCE";
    /** Is a constructor. */
    CommonFlags[CommonFlags["CONSTRUCTOR"] = 262144] = "CONSTRUCTOR";
    /** Is a module export. */
    CommonFlags[CommonFlags["MODULE_EXPORT"] = 524288] = "MODULE_EXPORT";
    /** Is a module import. */
    CommonFlags[CommonFlags["MODULE_IMPORT"] = 1048576] = "MODULE_IMPORT";
    // Compilation states
    /** Is resolved. */
    CommonFlags[CommonFlags["RESOLVED"] = 2097152] = "RESOLVED";
    /** Is compiled. */
    CommonFlags[CommonFlags["COMPILED"] = 4194304] = "COMPILED";
    /** Has a constant value and is therefore inlined. */
    CommonFlags[CommonFlags["INLINED"] = 8388608] = "INLINED";
    /** Is scoped. */
    CommonFlags[CommonFlags["SCOPED"] = 16777216] = "SCOPED";
    /** Is a trampoline. */
    CommonFlags[CommonFlags["TRAMPOLINE"] = 33554432] = "TRAMPOLINE";
    /** Is a virtual method. */
    CommonFlags[CommonFlags["VIRTUAL"] = 67108864] = "VIRTUAL";
    /** Is the main function. */
    CommonFlags[CommonFlags["MAIN"] = 134217728] = "MAIN";
    // Other
    /** Is quoted. */
    CommonFlags[CommonFlags["QUOTED"] = 268435456] = "QUOTED";
})(CommonFlags = exports.CommonFlags || (exports.CommonFlags = {}));
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXN0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2FzdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOztBQUVBLG9DQUFvQztBQUNwQyxJQUFrQixRQWdFakI7QUFoRUQsV0FBa0IsUUFBUTtJQUN4QiwyQ0FBVSxDQUFBO0lBQ1YsaURBQWEsQ0FBQTtJQUNiLHVEQUFnQixDQUFBO0lBQ2hCLCtDQUFZLENBQUE7SUFDWix5REFBaUIsQ0FBQTtJQUNqQixpREFBYSxDQUFBO0lBQ2IsbURBQWMsQ0FBQTtJQUNkLGlEQUFhLENBQUE7SUFDYiwyQ0FBVSxDQUFBO0lBQ1YsdUNBQVEsQ0FBQTtJQUNSLDBDQUFVLENBQUE7SUFDViwwQ0FBVSxDQUFBO0lBQ1YsMERBQWtCLENBQUE7SUFDbEIsMENBQVUsQ0FBQTtJQUNWLGdEQUFhLENBQUE7SUFDYixvREFBZSxDQUFBO0lBQ2YsOENBQVksQ0FBQTtJQUNaLHNDQUFRLENBQUE7SUFDUix3Q0FBUyxDQUFBO0lBQ1QsMERBQWtCLENBQUE7SUFDbEIsNERBQW1CLENBQUE7SUFDbkIsOENBQVksQ0FBQTtJQUNaLDBDQUFVLENBQUE7SUFDVix3Q0FBUyxDQUFBO0lBQ1Qsd0NBQVMsQ0FBQTtJQUNULHNEQUFnQixDQUFBO0lBQ2hCLHdEQUFpQixDQUFBO0lBQ2pCLHNEQUFnQixDQUFBO0lBQ2hCLDBDQUFVLENBQUE7SUFDViwwQ0FBVSxDQUFBO0lBQ1YsZ0RBQWEsQ0FBQTtJQUNiLG9DQUFPLENBQUE7SUFDUCwwQ0FBVSxDQUFBO0lBQ1YsNENBQVcsQ0FBQTtJQUNYLDBEQUFrQixDQUFBO0lBQ2xCLHdEQUFpQixDQUFBO0lBQ2pCLG9EQUFlLENBQUE7SUFDZixzQ0FBUSxDQUFBO0lBQ1Isb0NBQU8sQ0FBQTtJQUNQLDRDQUFXLENBQUE7SUFDWCw0Q0FBVyxDQUFBO0lBQ1gsNENBQVcsQ0FBQTtJQUNYLDBDQUFVLENBQUE7SUFDVixzQ0FBUSxDQUFBO0lBQ1IsZ0RBQWEsQ0FB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QUVSLGlCQUFpQjtJQUNqQix5REFBZ0IsQ0FBQTtBQUNsQixDQUFDLEVBekVpQixXQUFXLEdBQVgsbUJBQVcsS0FBWCxtQkFBVyxRQXlFNUIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBUb2tlbiB9IGZyb20gXCIuL3BhcnNpbmdcIjtcblxuLyoqIEluZGljYXRlcyB0aGUga2luZCBvZiBhIG5vZGUuICovXG5leHBvcnQgY29uc3QgZW51bSBOb2RlS2luZCB7XG4gIFNPVVJDRSA9IDAsXG4gIE5BTUVEVFlQRSA9IDEsXG4gIEZVTkNUSU9OVFlQRSA9IDIsXG4gIFRZUEVOQU1FID0gMyxcbiAgVFlQRVBBUkFNRVRFUiA9IDQsXG4gIFBBUkFNRVRFUiA9IDUsXG4gIElERU5USUZJRVIgPSA2LFxuICBBU1NFUlRJT04gPSA3LFxuICBCSU5BUlkgPSA4LFxuICBDQUxMID0gOSxcbiAgQ0xBU1MgPSAxMCxcbiAgQ09NTUEgPSAxMSxcbiAgRUxFTUVOVEFDQ0VTUyA9IDEyLFxuICBGQUxTRSA9IDEzLFxuICBGVU5DVElPTiA9IDE0LFxuICBJTlNUQU5DRU9GID0gMTUsXG4gIExJVEVSQUwgPSAxNixcbiAgTkVXID0gMTcsXG4gIE5VTEwgPSAxOCxcbiAgUEFSRU5USEVTSVpFRCA9IDE5LFxuICBQUk9QRVJUWUFDQ0VTUyA9IDIwLFxuICBURVJOQVJZID0gMjEsXG4gIFNVUEVSID0gMjIsXG4gIFRISVMgPSAyMyxcbiAgVFJVRSA9IDI0LFxuICBDT05TVFJVQ1RPUiA9IDI1LFxuICBVTkFSWVBPU1RGSVggPSAyNixcbiAgVU5BUllQUkVGSVggPSAyNyxcbiAgQkxPQ0sgPSAyOCxcbiAgQlJFQUsgPSAyOSxcbiAgQ09OVElOVUUgPSAzMCxcbiAgRE8gPSAzMSxcbiAgRU1QVFkgPSAzMixcbiAgRVhQT1JUID0gMzMsXG4gIEVYUE9SVERFRkFVTFQgPSAzNCxcbiAgRVhQT1JUSU1QT1JUID0gMzUsXG4gIEVYUFJFU1NJT04gPSAzNixcbiAgRk9SID0gMzcsXG4gIElGID0gMzgsXG4gIElNUE9SVCA9IDM5LFxuICBSRVRVUk4gPSA0MCxcbiAgU1dJVENIID0gNDEsXG4gIFRIUk9XID0gNDIsXG4gIFRSWSA9IDQzLFxuICBWQVJJQUJMRSA9IDQ0LFxuICBWT0lEID0gNDUsXG4gIFdISUxFID0gNDYsXG4gIENMQVNTREVDTEFSQVRJT04gPSA0NyxcbiAgRU5VTURFQ0xBUkFUSU9OID0gNDgsXG4gIEVOVU1WQUxVRURFQ0xBUkFUSU9OID0gNDksXG4gIEZJRUxEREVDTEFSQVRJT04gPSA1MCxcbiAgRlVOQ1RJT05ERUNMQVJBVElPTiA9IDUxLFxuICBJTVBPUlRERUNMQVJBVElPTiA9IDUyLFxuICBJTkRFWFNJR05BVFVSRURFQ0xBUkFUSU9OID0gNTMsXG4gIElOVEVSRkFDRURFQ0xBUkFUSU9OID0gNTQsXG4gIE1FVEhPRERFQ0xBUkFUSU9OID0gNTUsXG4gIE5BTUVTUEFDRURFQ0xBUkFUSU9OID0gNTYsXG4gIFRZUEVERUNMQVJBVElPTiA9IDU3LFxuICBWQVJJQUJMRURFQ0xBUkFUSU9OID0gNTgsXG4gIERFQ09SQVRPUiA9IDU5LFxuICBFWFBPUlRNRU1CRVIgPSA2MCxcbiAgU1dJVENIQ0FTRSA9IDYxLFxuICBDT01NRU5UID0gNjJcbn1cbi8qKiBDaGVja3MgaWYgYSBub2RlIHJlcHJlc2VudHMgYSBjb25zdGFudCB2YWx1ZS4gKi9cbmRlY2xhcmUgZnVuY3Rpb24gbm9kZUlzQ29uc3RhbnRWYWx1ZShraW5kOiBOb2RlS2luZCk6IGJvb2w7XG4vKiogQ2hlY2tzIGlmIGEgbm9kZSBtaWdodCBiZSBjYWxsYWJsZS4gKi9cbmRlY2xhcmUgZnVuY3Rpb24gbm9kZUlzQ2FsbGFibGUoa2luZDogTm9kZUtpbmQpOiBib29sO1xuLyoqIENoZWNrcyBpZiBhIG5vZGUgbWlnaHQgYmUgY2FsbGFibGUgd2l0aCBnZW5lcmljIGFyZ3VtZW50cy4gKi9cbmRlY2xhcmUgZnVuY3Rpb24gbm9kZUlzR2VuZXJpY0NhbGxhYmxlKGtpbmQ6IE5vZGVLaW5kKTogYm9vbDtcbi8qKiBCYXNlIGNsYXNzIG9mIGFsbCBub2Rlcy4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgTm9kZSB7XG4gIC8qKiBOb2RlIGtpbmQgaW5kaWNhdG9yLiAqL1xuICBraW5kOiBOb2RlS2luZDtcbiAgLyoqIFNvdXJjZSByYW5nZS4gKi9cbiAgcmFuZ2U6IFJhbmdlO1xufVxuZXhwb3J0IGludGVyZmFjZSBUeXBlTm9kZSBleHRlbmRzIE5vZGUge1xuICAvKiogV2hldGhlciBudWxsYWJsZSBvciBub3QuICovXG4gIGlzTnVsbGFibGU6IGJvb2w7XG4gIC8qKiBUZXN0cyBpZiB0aGlzIHR5cGUgaGFzIGEgZ2VuZXJpYyBjb21wb25lbnQgbWF0Y2hpbmcgb25lIG9mIHRoZSBnaXZlbiB0eXBlIHBhcmFtZXRlcnMuICovXG4gIGhhc0dlbmVyaWNDb21wb25lbnQodHlwZVBhcmFtZXRlck5vZGVzOiBUeXBlUGFyYW1ldGVyTm9kZVtdKTogYm9vbDtcbn1cbi8qKiBSZXByZXNlbnRzIGEgdHlwZSBuYW1lLiAqL1xuZXhwb3J0IGludGVyZmFjZSBUeXBlTmFtZSBleHRlbmRzIE5vZGUge1xuICAvKiogSWRlbnRpZmllciBvZiB0aGlzIHBhcnQuICovXG4gIGlkZW50aWZpZXI6IElkZW50aWZpZXJFeHByZXNzaW9uO1xuICAvKiogTmV4dCBwYXJ0IG9mIHRoZSB0eXBlIG5hbWUgb3IgYG51bGxgIGlmIHRoaXMgaXMgdGhlIGxhc3QgcGFydC4gKi9cbiAgbmV4dDogVHlwZU5hbWUgfCBudWxsO1xufVxuLyoqIFJlcHJlc2VudHMgYSBuYW1lZCB0eXBlLiAqL1xuZXhwb3J0IGludGVyZmFjZSBOYW1lZFR5cGVOb2RlIGV4dGVuZHMgVHlwZU5vZGUge1xuICAvKiogVHlwZSBuYW1lLiAqL1xuICBuYW1lOiBUeXBlTmFtZTtcbiAgLyoqIFR5cGUgYXJndW1lbnQgcmVmZXJlbmNlcy4gKi9cbiAgdHlwZUFyZ3VtZW50czogVHlwZU5vZGVbXSB8IG51bGw7XG59XG4vKiogUmVwcmVzZW50cyBhIGZ1bmN0aW9uIHR5cGUuICovXG5leHBvcnQgaW50ZXJmYWNlIEZ1bmN0aW9uVHlwZU5vZGUgZXh0ZW5kcyBUeXBlTm9kZSB7XG4gIC8qKiBBY2NlcHRlZCBwYXJhbWV0ZXJzLiAqL1xuICBwYXJhbWV0ZXJzOiBQYXJhbWV0ZXJOb2RlW107XG4gIC8qKiBSZXR1cm4gdHlwZS4gKi9cbiAgcmV0dXJuVHlwZTogVHlwZU5vZGU7XG4gIC8qKiBFeHBsaWNpdGx5IHByb3ZpZGVkIHRoaXMgdHlwZSwgaWYgYW55LiAqL1xuICBleHBsaWNpdFRoaXNUeXBlOiBOYW1lZFR5cGVOb2RlIHwgbnVsbDtcbn1cbi8qKiBSZXByZXNlbnRzIGEgdHlwZSBwYXJhbWV0ZXIuICovXG5leHBvcnQgaW50ZXJmYWNlIFR5cGVQYXJhbWV0ZXJOb2RlIGV4dGVuZHMgTm9kZSB7XG4gIC8qKiBJZGVudGlmaWVyIHJlZmVyZW5jZS4gKi9cbiAgbmFtZTogSWRlbnRpZmllckV4cHJlc3Npb247XG4gIC8qKiBFeHRlbmRlZCB0eXBlIHJlZmVyZW5jZSwgaWYgYW55LiAqL1xuICBleHRlbmRzVHlwZTogTmFtZWRUeXBlTm9kZSB8IG51bGw7XG4gIC8qKiBEZWZhdWx0IHR5cGUgaWYgb21pdHRlZCwgaWYgYW55LiAqL1xuICBkZWZhdWx0VHlwZTogTmFtZWRUeXBlTm9kZSB8IG51bGw7XG59XG4vKiogUmVwcmVzZW50cyB0aGUga2luZCBvZiBhIHBhcmFtZXRlci4gKi9cbmV4cG9ydCBlbnVtIFBhcmFtZXRlcktpbmQge1xuICAvKiogTm8gc3BlY2lmaWMgZmxhZ3MuICovXG4gIERFRkFVTFQgPSAwLFxuICAvKiogSXMgYW4gb3B0aW9uYWwgcGFyYW1ldGVyLiAqL1xuICBPUFRJT05BTCA9IDEsXG4gIC8qKiBJcyBhIHJlc3QgcGFyYW1ldGVyLiAqL1xuICBSRVNUID0gMlxufVxuLyoqIFJlcHJlc2VudHMgYSBmdW5jdGlvbiBwYXJhbWV0ZXIuICovXG5leHBvcnQgaW50ZXJmYWNlIFBhcmFtZXRlck5vZGUgZXh0ZW5kcyBOb2RlIHtcbiAgLyoqIFBhcmFtZXRlciBraW5kLiAqL1xuICBwYXJhbWV0ZXJLaW5kOiBQYXJhbWV0ZXJLaW5kO1xuICAvKiogUGFyYW1ldGVyIG5hbWUuICovXG4gIG5hbWU6IElkZW50aWZpZXJFeHByZXNzaW9uO1xuICAvKiogUGFyYW1ldGVyIHR5cGUuICovXG4gIHR5cGU6IFR5cGVOb2RlO1xuICAvKiogSW5pdGlhbGl6ZXIgZXhwcmVzc2lvbiwgaWYgcHJlc2VudC4gKi9cbiAgaW5pdGlhbGl6ZXI6IEV4cHJlc3Npb24gfCBudWxsO1xuICAvKiogSW1wbGljaXQgZmllbGQgZGVjbGFyYXRpb24sIGlmIGFwcGxpY2FibGUuICovXG4gIGltcGxpY2l0RmllbGREZWNsYXJhdGlvbjogRmllbGREZWNsYXJhdGlvbiB8IG51bGw7XG4gIC8qKiBDb21tb24gZmxhZ3MgaW5kaWNhdGluZyBzcGVjaWZpYyB0cmFpdHMuICovXG4gIGZsYWdzOiBDb21tb25GbGFncztcbiAgLyoqIFRlc3RzIGlmIHRoaXMgbm9kZSBoYXMgdGhlIHNwZWNpZmllZCBmbGFnIG9yIGZsYWdzLiAqL1xuICBpcyhmbGFnOiBDb21tb25GbGFncyk6IGJvb2w7XG4gIC8qKiBUZXN0cyBpZiB0aGlzIG5vZGUgaGFzIG9uZSBvZiB0aGUgc3BlY2lmaWVkIGZsYWdzLiAqL1xuICBpc0FueShmbGFnOiBDb21tb25GbGFncyk6IGJvb2w7XG4gIC8qKiBTZXRzIGEgc3BlY2lmaWMgZmxhZyBvciBmbGFncy4gKi9cbiAgc2V0KGZsYWc6IENvbW1vbkZsYWdzKTogdm9pZDtcbn1cbi8qKiBCdWlsdC1pbiBkZWNvcmF0b3Iga2luZHMuICovXG5leHBvcnQgZW51bSBEZWNvcmF0b3JLaW5kIHtcbiAgQ1VTVE9NID0gMCxcbiAgR0xPQkFMID0gMSxcbiAgT1BFUkFUT1IgPSAyLFxuICBPUEVSQVRPUl9CSU5BUlkgPSAzLFxuICBPUEVSQVRPUl9QUkVGSVggPSA0LFxuICBPUEVSQVRPUl9QT1NURklYID0gNSxcbiAgVU5NQU5BR0VEID0gNixcbiAgU0VBTEVEID0gNyxcbiAgSU5MSU5FID0gOCxcbiAgRVhURVJOQUwgPSA5LFxuICBCVUlMVElOID0gMTAsXG4gIExBWlkgPSAxMSxcbiAgVU5TQUZFID0gMTJcbn1cblxuZXhwb3J0IG5hbWVzcGFjZSBEZWNvcmF0b3JLaW5kIHtcbiAgLyoqIFJldHVybnMgdGhlIGtpbmQgb2YgdGhlIHNwZWNpZmllZCBkZWNvcmF0b3IgbmFtZSBub2RlLiBEZWZhdWx0cyB0byB7QGxpbmsgRGVjb3JhdG9yS2luZC5DVVNUT019LiAqL1xuICBkZWNsYXJlIGZ1bmN0aW9uIGZyb21Ob2RlKG5hbWVOb2RlOiBFeHByZXNzaW9uKTogRGVjb3JhdG9yS2luZDtcbn1cbi8qKiBSZXByZXNlbnRzIGEgZGVjb3JhdG9yLiAqL1xuZXhwb3J0IGludGVyZmFjZSBEZWNvcmF0b3JOb2RlIGV4dGVuZHMgTm9kZSB7XG4gIC8qKiBCdWlsdC1pbiBraW5kLCBpZiBhcHBsaWNhYmxlLiAqL1xuICBkZWNvcmF0b3JLaW5kOiBEZWNvcmF0b3JLaW5kO1xuICAvKiogTmFtZSBleHByZXNzaW9uLiAqL1xuICBuYW1lOiBFeHByZXNzaW9uO1xuICAvKiogQXJndW1lbnQgZXhwcmVzc2lvbnMuICovXG4gIGFyZ3VtZW50czogQXJyYXk8RXhwcmVzc2lvbj47XG59XG4vKiogQ29tbWVudCBraW5kcy4gKi9cbmV4cG9ydCBjb25zdCBlbnVtIENvbW1lbnRLaW5kIHtcbiAgLyoqIExpbmUgY29tbWVudC4gKi9cbiAgTElORSA9IDAsXG4gIC8qKiBUcmlwbGUtc2xhc2ggY29tbWVudC4gKi9cbiAgVFJJUExFID0gMSxcbiAgLyoqIEJsb2NrIGNvbW1lbnQuICovXG4gIEJMT0NLID0gMlxufVxuLyoqIFJlcHJlc2VudHMgYSBjb21tZW50LiAqL1xuZXhwb3J0IGludGVyZmFjZSBDb21tZW50Tm9kZSBleHRlbmRzIE5vZGUge1xuICAvKiogQ29tbWVudCBraW5kLiAqL1xuICBjb21tZW50S2luZDogQ29tbWVudEtpbmQ7XG4gIC8qKiBDb21tZW50IHRleHQuICovXG4gIHRleHQ6IHN0cmluZztcbn1cblxuLy8gZXhwb3J0IHR5cGUgVHlwZSA9IFwicHJpbWl0aXZlXCIgfCBcInJlZmVyZW5jZVwiO1xuXG4vLyBleHBvcnQgdHlwZSBlbXB0eSA9IFtdO1xuXG4vLyBleHBvcnQgdHlwZSBDb25zPFQ+ID0gW1QsIExpc3Q8VD5dXG5cbi8vIGV4cG9ydCB0eXBlIExpc3Q8VD4gPSBlbXB0eSB8IENvbnM8VD5cblxuLy8gZXhwb3J0IHR5cGUgSW50TGlzdCA9IExpc3Q8aTMyPjtcblxuLy8gZXhwb3J0IHR5cGUgTWFrZU1heWJlPFQ+ID0gW1wiU29tZVwiLCBUXSB8IFtcIk5vbmVcIl07XG5cbi8qKiBCYXNlIGNsYXNzIG9mIGFsbCBleHByZXNzaW9uIG5vZGVzLiAqL1xuXG5leHBvcnQgaW50ZXJmYWNlIEV4cHJlc3Npb24gZXh0ZW5kcyBOb2RlIHtcbiAgX2V4cHJlc3Npb25CcmFuZDogdm9pZDtcbiAgLy8gY29udGV4dHVhbFR5cGU/OiBUeXBlOyAvLyBVc2VkIHRvIHRlbXBvcmFyaWx5IGFzc2lnbiBhIGNvbnRleHR1YWwgdHlwZSBkdXJpbmcgb3ZlcmxvYWQgcmVzb2x1dGlvblxufVxuXG4vKiogSW5kaWNhdGVzIHRoZSBraW5kIG9mIGEgbGl0ZXJhbC4gKi9cbmV4cG9ydCBjb25zdCBlbnVtIExpdGVyYWxLaW5kIHtcbiAgRkxPQVQgPSAwLFxuICBJTlRFR0VSID0gMSxcbiAgU1RSSU5HID0gMixcbiAgUkVHRVhQID0gMyxcbiAgQVJSQVkgPSA0LFxuICBPQkpFQ1QgPSA1XG59XG5cbi8qKiBCYXNlIGNsYXNzIG9mIGFsbCBsaXRlcmFsIGV4cHJlc3Npb25zLiAqL1xuZXhwb3J0IGludGVyZmFjZSBMaXRlcmFsRXhwcmVzc2lvbiBleHRlbmRzIEV4cHJlc3Npb24ge1xuICAvKiogU3BlY2lmaWMgbGl0ZXJhbCBraW5kLiAqL1xuICBsaXRlcmFsS2luZDogTGl0ZXJhbEtpbmQ7XG59XG5cbi8qKiBSZXByZXNlbnRzIGFuIGBbXWAgbGl0ZXJhbCBleHByZXNzaW9uLiAqL1xuZXhwb3J0IGludGVyZmFjZSBBcnJheUxpdGVyYWxFeHByZXNzaW9uIGV4dGVuZHMgTGl0ZXJhbEV4cHJlc3Npb24ge1xuICByZWFkb25seSBsaXRlcmFsS2luZDogTGl0ZXJhbEtpbmQuQVJSQVk7XG4gIC8qKiBOZXN0ZWQgZWxlbWVudCBleHByZXNzaW9ucy4gKi9cbiAgZWxlbWVudEV4cHJlc3Npb25zOiBBcnJheTxFeHByZXNzaW9uPjtcbn1cblxuLyoqIFJlcHJlc2VudHMgYW4gaW50ZWdlciBsaXRlcmFsIGV4cHJlc3Npb24uICovXG5leHBvcnQgaW50ZXJmYWNlIEludGVnZXJMaXRlcmFsRXhwcmVzc2lvbiBleHRlbmRzIExpdGVyYWxFeHByZXNzaW9uIHtcbiAgbGl0ZXJhbEtpbmQ6IExpdGVyYWxLaW5kLklOVEVHRVI7XG4gIC8qKiBJbnRlZ2VyIHZhbHVlLiAqL1xuICB2YWx1ZTogSTY0O1xufVxuXG4vKiogUmVwcmVzZW50cyBhbiBvYmplY3QgbGl0ZXJhbCBleHByZXNzaW9uLiAqL1xuZXhwb3J0IGludGVyZmFjZSBPYmplY3RMaXRlcmFsRXhwcmVzc2lvbiBleHRlbmRzIExpdGVyYWxFeHByZXNzaW9uIHtcbiAgbGl0ZXJhbEtpbmQ6IExpdGVyYWxLaW5kLk9CSkVDVDtcblxuICAvKiogRmllbGQgbmFtZXMuICovXG4gIG5hbWVzOiBBcnJheTxJZGVudGlmaWVyRXhwcmVzc2lvbj47XG4gIC8qKiBGaWVsZCB2YWx1ZXMuICovXG4gIHZhbHVlczogQXJyYXk8RXhwcmVzc2lvbj47XG59XG5cbi8qKiBSZXByZXNlbnRzIGEgcmVndWxhciBleHByZXNzaW9uIGxpdGVyYWwgZXhwcmVzc2lvbi4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgUmVnZXhwTGl0ZXJhbEV4cHJlc3Npb24gZXh0ZW5kcyBMaXRlcmFsRXhwcmVzc2lvbiB7XG4gIGxpdGVyYWxLaW5kOiBMaXRlcmFsS2luZC5SRUdFWFA7XG5cbiAgLyoqIFJlZ3VsYXIgZXhwcmVzc2lvbiBwYXR0ZXJuLiAqL1xuICBwYXR0ZXJuOiBzdHJpbmc7XG4gIC8qKiBSZWd1bGFyIGV4cHJlc3Npb24gZmxhZ3MuICovXG4gIHBhdHRlcm5GbGFnczogc3RyaW5nO1xufVxuXG4vKiogUmVwcmVzZW50cyBhIHN0cmluZyBsaXRlcmFsIGV4cHJlc3Npb24uICovXG5leHBvcnQgaW50ZXJmYWNlIFN0cmluZ0xpdGVyYWxFeHByZXNzaW9uIGV4dGVuZHMgTGl0ZXJhbEV4cHJlc3Npb24ge1xuICBsaXRlcmFsS2luZDogTGl0ZXJhbEtpbmQuU1RSSU5HO1xuICAvKiogU3RyaW5nIHZhbHVlIHdpdGhvdXQgcXVvdGVzLiAqL1xuICB2YWx1ZTogc3RyaW5nO1xufVxuXG4vKiogUmVwcmVzZW50cyBhIGZsb2F0IGxpdGVyYWwgZXhwcmVzc2lvbi4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgRmxvYXRMaXRlcmFsRXhwcmVzc2lvbiBleHRlbmRzIExpdGVyYWxFeHByZXNzaW9uIHtcbiAgbGl0ZXJhbEtpbmQ6IExpdGVyYWxLaW5kLkZMT0FUO1xuXG4gIC8qKiBGbG9hdCB2YWx1ZS4gKi9cbiAgdmFsdWU6IGY2NDtcbn1cblxuZXhwb3J0IHR5cGUgTGl0ID1cbiAgfCBJbnRlZ2VyTGl0ZXJhbEV4cHJlc3Npb25cbiAgfCBBcnJheUxpdGVyYWxFeHByZXNzaW9uXG4gIHwgT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb25cbiAgfCBSZWdleHBMaXRlcmFsRXhwcmVzc2lvblxuICB8IFN0cmluZ0xpdGVyYWxFeHByZXNzaW9uXG4gIHwgRmxvYXRMaXRlcmFsRXhwcmVzc2lvbjtcblxudHlwZSBTeW1ib2wgPSBDb21tb25GbGFncyB8IHN0cmluZztcblxuLy8gSWRlbnRpZmVyc1xuLyoqIFJlcHJlc2VudHMgYSBgc3VwZXJgIGV4cHJlc3Npb24uICovXG5leHBvcnQgaW50ZXJmYWNlIFN1cGVyRXhwcmVzc2lvbiBleHRlbmRzIElkZW50aWZpZXJFeHByZXNzaW9uIHtcbiAgdGV4dDogXCJzdXBlclwiO1xufVxuXG4vKiogUmVwcmVzZW50cyBhIGB0aGlzYCBleHByZXNzaW9uLiAqL1xuZXhwb3J0IGludGVyZmFjZSBUaGlzRXhwcmVzc2lvbiBleHRlbmRzIElkZW50aWZpZXJFeHByZXNzaW9uIHtcbiAgdGV4dDogXCJ0aGlzXCI7XG59XG5cbi8qKiBSZXByZXNlbnRzIGEgYHRydWVgIGV4cHJlc3Npb24uICovXG5leHBvcnQgaW50ZXJmYWNlIFRydWVFeHByZXNzaW9uIGV4dGVuZHMgSWRlbnRpZmllckV4cHJlc3Npb24ge1xuICB0ZXh0OiBcInRydWVcIjtcbn1cblxuLyoqIFJlcHJlc2VudHMgYSBgZmFsc2VgIGV4cHJlc3Npb24uICovXG5leHBvcnQgaW50ZXJmYWNlIEZhbHNlRXhwcmVzc2lvbiBleHRlbmRzIElkZW50aWZpZXJFeHByZXNzaW9uIHtcbiAgdGV4dDogXCJmYWxzZVwiO1xufVxuXG4vKiogUmVwcmVzZW50cyBhIGBudWxsYCBleHByZXNzaW9uLiAqL1xuZXhwb3J0IGludGVyZmFjZSBOdWxsRXhwcmVzc2lvbiBleHRlbmRzIElkZW50aWZpZXJFeHByZXNzaW9uIHtcbiAgdGV4dDogXCJudWxsXCI7XG59XG5cbnR5cGUgTlVMTCA9IElkZW50aWZpZXJFeHByZXNzaW9uICYgeyB0ZXh0OiBcIm51bGxcIjsgc3ltYm9sOiBcIm51bGxcIiB9O1xuXG4vKiogUmVwcmVzZW50cyBhbiBpZGVudGlmaWVyIGV4cHJlc3Npb24uICovXG5leHBvcnQgaW50ZXJmYWNlIElkZW50aWZpZXJFeHByZXNzaW9uIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIC8qKiBUZXh0dWFsIG5hbWUuICovXG4gIHRleHQ6IHN0cmluZztcbiAgLyoqIFN5bWJvbC4gKi9cbiAgc3ltYm9sOiBTeW1ib2w7IC8vIFRPRE86IHN5bWJvbFxuICAvKiogV2hldGhlciBxdW90ZWQgb3Igbm90LiAqL1xuICBpc1F1b3RlZDogYm9vbDtcbn1cblxuLyoqIFJlcHJlc2VudHMgYSBgY29uc3RydWN0b3JgIGV4cHJlc3Npb24uICovXG5leHBvcnQgaW50ZXJmYWNlIENvbnN0cnVjdG9yRXhwcmVzc2lvbiBleHRlbmRzIElkZW50aWZpZXJFeHByZXNzaW9uIHtcbiAgdGV4dDogXCJjb25zdHJ1Y3RvclwiO1xuICBpc1F1b3RlZDogZmFsc2U7XG59XG5cbi8qKiBJbmRpY2F0ZXMgdGhlIGtpbmQgb2YgYW4gYXNzZXJ0aW9uLiAqL1xuZXhwb3J0IGVudW0gQXNzZXJ0aW9uS2luZCB7XG4gIFBSRUZJWCxcbiAgQVMsXG4gIE5PTk5VTExcbn1cblxuLyoqIFJlcHJlc2VudHMgYW4gYXNzZXJ0aW9uIGV4cHJlc3Npb24uICovXG5leHBvcnQgaW50ZXJmYWNlIEFzc2VydGlvbkV4cHJlc3Npb24gZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgLyoqIFNwZWNpZmljIGtpbmQgb2YgdGhpcyBhc3NlcnRpb24uICovXG4gIGFzc2VydGlvbktpbmQ6IEFzc2VydGlvbktpbmQ7XG4gIC8qKiBFeHByZXNzaW9uIGJlaW5nIGFzc2VydGVkLiAqL1xuICBleHByZXNzaW9uOiBFeHByZXNzaW9uO1xuICAvKiogVGFyZ2V0IHR5cGUuICovXG4gIHRvVHlwZTogVHlwZU5vZGUgfCBudWxsO1xufVxuXG4vKiogUmVwcmVzZW50cyBhIGJpbmFyeSBleHByZXNzaW9uLiAqL1xuZXhwb3J0IGludGVyZmFjZSBCaW5hcnlFeHByZXNzaW9uIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIC8qKiBPcGVyYXRvciB0b2tlbi4gKi9cbiAgb3BlcmF0b3I6IFRva2VuO1xuICAvKiogTGVmdC1oYW5kIHNpZGUgZXhwcmVzc2lvbiAqL1xuICBsZWZ0OiBFeHByZXNzaW9uO1xuICAvKiogUmlnaHQtaGFuZCBzaWRlIGV4cHJlc3Npb24uICovXG4gIHJpZ2h0OiBFeHByZXNzaW9uO1xufVxuXG4vKiogUmVwcmVzZW50cyBhIGNhbGwgZXhwcmVzc2lvbi4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgQ2FsbEV4cHJlc3Npb24gZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgLyoqIENhbGxlZCBleHByZXNzaW9uLiBVc3VhbGx5IGFuIGlkZW50aWZpZXIgb3IgcHJvcGVydHkgYWNjZXNzIGV4cHJlc3Npb24uICovXG4gIGV4cHJlc3Npb246IEV4cHJlc3Npb247XG4gIC8qKiBQcm92aWRlZCB0eXBlIGFyZ3VtZW50cy4gKi9cbiAgdHlwZUFyZ3VtZW50czogVHlwZU5vZGVbXSB8IG51bGw7XG4gIC8qKiBQcm92aWRlZCBhcmd1bWVudHMuICovXG4gIGFyZ3VtZW50czogRXhwcmVzc2lvbltdO1xuXG4gIC8qKiBHZXRzIHRoZSB0eXBlIGFyZ3VtZW50cyByYW5nZSBmb3IgcmVwb3J0aW5nLiAqL1xuICB0eXBlQXJndW1lbnRzUmFuZ2UoKTogUmFuZ2U7XG5cbiAgLyoqIEdldHMgdGhlIGFyZ3VtZW50cyByYW5nZSBmb3IgcmVwb3J0aW5nLiAqL1xuICBhcmd1bWVudHNSYW5nZSgpOiBSYW5nZTtcbn1cblxuLyoqIFJlcHJlc2VudHMgYSBjbGFzcyBleHByZXNzaW9uIHVzaW5nIHRoZSAnY2xhc3MnIGtleXdvcmQuICovXG5leHBvcnQgaW50ZXJmYWNlIENsYXNzRXhwcmVzc2lvbiBleHRlbmRzIEV4cHJlc3Npb24ge1xuICAvKiogSW5saW5lIGNsYXNzIGRlY2xhcmF0aW9uLiAqL1xuICBkZWNsYXJhdGlvbjogQ2xhc3NEZWNsYXJhdGlvbjtcbn1cblxuLyoqIFJlcHJlc2VudHMgYSBjb21tYSBleHByZXNzaW9uIGNvbXBvc2VkIG9mIG11bHRpcGxlIGV4cHJlc3Npb25zLiAqL1xuZXhwb3J0IGludGVyZmFjZSBDb21tYUV4cHJlc3Npb24gZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgLyoqIFNlcXVlbnRpYWwgZXhwcmVzc2lvbnMuICovXG4gIGV4cHJlc3Npb25zOiBFeHByZXNzaW9uW107XG59XG5cbi8qKiBSZXByZXNlbnRzIGFuIGVsZW1lbnQgYWNjZXNzIGV4cHJlc3Npb24sIGUuZy4sIGFycmF5IGFjY2Vzcy4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgRWxlbWVudEFjY2Vzc0V4cHJlc3Npb24gZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgLyoqIEV4cHJlc3Npb24gYmVpbmcgYWNjZXNzZWQuICovXG4gIGV4cHJlc3Npb246IEV4cHJlc3Npb247XG4gIC8qKiBFbGVtZW50IG9mIHRoZSBleHByZXNzaW9uIGJlaW5nIGFjY2Vzc2VkLiAqL1xuICBlbGVtZW50RXhwcmVzc2lvbjogRXhwcmVzc2lvbjtcbn1cblxuLyoqIFJlcHJlc2VudHMgYSBmdW5jdGlvbiBleHByZXNzaW9uIHVzaW5nIHRoZSAnZnVuY3Rpb24nIGtleXdvcmQuICovXG5leHBvcnQgaW50ZXJmYWNlIEZ1bmN0aW9uRXhwcmVzc2lvbiBleHRlbmRzIEV4cHJlc3Npb24ge1xuICAvKiogSW5saW5lIGZ1bmN0aW9uIGRlY2xhcmF0aW9uLiAqL1xuICBkZWNsYXJhdGlvbjogRnVuY3Rpb25EZWNsYXJhdGlvbjtcbn1cblxuLyoqIFJlcHJlc2VudHMgYW4gYGluc3RhbmNlb2ZgIGV4cHJlc3Npb24uICovXG5leHBvcnQgaW50ZXJmYWNlIEluc3RhbmNlT2ZFeHByZXNzaW9uIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIC8qKiBFeHByZXNzaW9uIGJlaW5nIGFzc2VydGVkLiAqL1xuICBleHByZXNzaW9uOiBFeHByZXNzaW9uO1xuICAvKiogVHlwZSB0byB0ZXN0IGZvci4gKi9cbiAgaXNUeXBlOiBUeXBlTm9kZTtcbn1cblxuLyoqIFJlcHJlc2VudHMgYSBgbmV3YCBleHByZXNzaW9uLiBMaWtlIGEgY2FsbCBidXQgd2l0aCBpdHMgb3duIGtpbmQuICovXG5leHBvcnQgaW50ZXJmYWNlIE5ld0V4cHJlc3Npb24gZXh0ZW5kcyBDYWxsRXhwcmVzc2lvbiB7fVxuXG4vKiogUmVwcmVzZW50cyBhIHBhcmVudGhlc2l6ZWQgZXhwcmVzc2lvbi4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgUGFyZW50aGVzaXplZEV4cHJlc3Npb24gZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgLyoqIEV4cHJlc3Npb24gaW4gcGFyZW50aGVzaXMuICovXG4gIGV4cHJlc3Npb246IEV4cHJlc3Npb247XG59XG5cbi8qKiBSZXByZXNlbnRzIGEgcHJvcGVydHkgYWNjZXNzIGV4cHJlc3Npb24uICovXG5leHBvcnQgaW50ZXJmYWNlIFByb3BlcnR5QWNjZXNzRXhwcmVzc2lvbiBleHRlbmRzIEV4cHJlc3Npb24ge1xuICAvKiogRXhwcmVzc2lvbiBiZWluZyBhY2Nlc3NlZC4gKi9cbiAgZXhwcmVzc2lvbjogRXhwcmVzc2lvbjtcbiAgLyoqIFByb3BlcnR5IG9mIHRoZSBleHByZXNzaW9uIGJlaW5nIGFjY2Vzc2VkLiAqL1xuICBwcm9wZXJ0eTogSWRlbnRpZmllckV4cHJlc3Npb247XG59XG5cbi8qKiBSZXByZXNlbnRzIGEgdGVybmFyeSBleHByZXNzaW9uLCBpLmUuLCBzaG9ydCBpZiBub3RhdGlvbi4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgVGVybmFyeUV4cHJlc3Npb24gZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgLyoqIENvbmRpdGlvbiBleHByZXNzaW9uLiAqL1xuICBjb25kaXRpb246IEV4cHJlc3Npb247XG4gIC8qKiBFeHByZXNzaW9uIGV4ZWN1dGVkIHdoZW4gY29uZGl0aW9uIGlzIGB0cnVlYC4gKi9cbiAgaWZUaGVuOiBFeHByZXNzaW9uO1xuICAvKiogRXhwcmVzc2lvbiBleGVjdXRlZCB3aGVuIGNvbmRpdGlvbiBpcyBgZmFsc2VgLiAqL1xuICBpZkVsc2U6IEV4cHJlc3Npb247XG59XG5cbi8qKiBCYXNlIGNsYXNzIG9mIGFsbCB1bmFyeSBleHByZXNzaW9ucy4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgVW5hcnlFeHByZXNzaW9uIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIC8qKiBPcGVyYXRvciB0b2tlbi4gKi9cbiAgb3BlcmF0b3I6IFRva2VuO1xuICAvKiogT3BlcmFuZCBleHByZXNzaW9uLiAqL1xuICBvcGVyYW5kOiBFeHByZXNzaW9uO1xufVxuXG4vKiogUmVwcmVzZW50cyBhIHVuYXJ5IHBvc3RmaXggZXhwcmVzc2lvbiwgZS5nLiBhIHBvc3RmaXggaW5jcmVtZW50LiAqL1xuZXhwb3J0IGludGVyZmFjZSBVbmFyeVBvc3RmaXhFeHByZXNzaW9uIGV4dGVuZHMgVW5hcnlFeHByZXNzaW9uIHt9XG5cbi8qKiBSZXByZXNlbnRzIGEgdW5hcnkgcHJlZml4IGV4cHJlc3Npb24sIGUuZy4gYSBuZWdhdGlvbi4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgVW5hcnlQcmVmaXhFeHByZXNzaW9uIGV4dGVuZHMgVW5hcnlFeHByZXNzaW9uIHt9XG5cbi8qKiBCYXNlIGNBbGFzcyBvZiBhbGwgc3RhdGVtZW50IG5vZGVzLiAqL1xuZXhwb3J0IGludGVyZmFjZSBTdGF0ZW1lbnQgZXh0ZW5kcyBOb2RlIHt9XG5cbi8qKiBJbmRpY2F0ZXMgdGhlIHNwZWNpZmljIGtpbmQgb2YgYSBzb3VyY2UuICovXG5leHBvcnQgZW51bSBTb3VyY2VLaW5kIHtcbiAgLyoqIFVzZXItcHJvdmlkZWQgZmlsZS4gKi9cbiAgVVNFUiA9IDAsXG4gIC8qKiBVc2VyLXByb3ZpZGVkIGVudHJ5IGZpbGUuICovXG4gIFVTRVJfRU5UUlkgPSAxLFxuICAvKiogTGlicmFyeS1wcm92aWRlZCBmaWxlLiAqL1xuICBMSUJSQVJZID0gMixcbiAgLyoqIExpYnJhcnktcHJvdmlkZWQgZW50cnkgZmlsZS4gKi9cbiAgTElCUkFSWV9FTlRSWSA9IDNcbn1cbi8qKiBBIHRvcC1sZXZlbCBzb3VyY2Ugbm9kZS4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgU291cmNlIGV4dGVuZHMgTm9kZSB7XG4gIHBhcmVudDogbnVsbDtcbiAgLyoqIFNvdXJjZSBraW5kLiAqL1xuICBzb3VyY2VLaW5kOiBTb3VyY2VLaW5kO1xuICAvKiogTm9ybWFsaXplZCBwYXRoIHdpdGggZmlsZSBleHRlbnNpb24uICovXG4gIG5vcm1hbGl6ZWRQYXRoOiBzdHJpbmc7XG4gIC8qKiBQYXRoIHVzZWQgaW50ZXJuYWxseS4gKi9cbiAgaW50ZXJuYWxQYXRoOiBzdHJpbmc7XG4gIC8qKiBTaW1wbGUgcGF0aCAobGFzdCBwYXJ0IHdpdGhvdXQgZXh0ZW5zaW9uKS4gKi9cbiAgc2ltcGxlUGF0aDogc3RyaW5nO1xuICAvKiogQ29udGFpbmVkIHN0YXRlbWVudHMuICovXG4gIHN0YXRlbWVudHM6IFN0YXRlbWVudFtdO1xuICAvKiogRnVsbCBzb3VyY2UgdGV4dC4gKi9cbiAgdGV4dDogc3RyaW5nO1xuICAvKiogU291cmNlIG1hcCBpbmRleC4gKi9cbiAgZGVidWdJbmZvSW5kZXg6IGkzMjtcbiAgLyoqIFJlLWV4cG9ydGVkIHNvdXJjZXMuICovXG4gIGV4cG9ydFBhdGhzOiBTZXQ8c3RyaW5nPiB8IG51bGw7XG4gIC8qKiBDb25zdHJ1Y3RzIGEgbmV3IHNvdXJjZSBub2RlLiAqL1xuICBuZXcgKG5vcm1hbGl6ZWRQYXRoOiBzdHJpbmcsIHRleHQ6IHN0cmluZywga2luZDogU291cmNlS2luZCk6IFNvdXJjZTtcbiAgcmVhZG9ubHkgaXNMaWJyYXJ5OiBib29sO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIFJhbmdlIHtcbiAgc291cmNlOiBTb3VyY2U7XG4gIHN0YXJ0OiBpMzI7XG4gIGVuZDogaTMyO1xuICByZWFkb25seSBhdFN0YXJ0OiBSYW5nZTtcbiAgcmVhZG9ubHkgYXRFbmQ6IFJhbmdlO1xuICByZWFkb25seSBsaW5lOiBpMzI7XG4gIHJlYWRvbmx5IGNvbHVtbjogaTMyO1xuICB0b1N0cmluZygpOiBzdHJpbmc7XG4gIGRlYnVnSW5mb1JlZjogdXNpemU7XG59XG5cbi8qKiBCYXNlIGNsYXNzIG9mIGFsbCBkZWNsYXJhdGlvbiBzdGF0ZW1lbnRzLiAqL1xuZXhwb3J0IGludGVyZmFjZSBEZWNsYXJhdGlvblN0YXRlbWVudCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIC8qKiBTaW1wbGUgbmFtZSBiZWluZyBkZWNsYXJlZC4gKi9cbiAgbmFtZTogSWRlbnRpZmllckV4cHJlc3Npb247XG4gIC8qKiBBcnJheSBvZiBkZWNvcmF0b3JzLiAqL1xuICBkZWNvcmF0b3JzOiBEZWNvcmF0b3JOb2RlW10gfCBudWxsO1xuICAvKiogQ29tbW9uIGZsYWdzIGluZGljYXRpbmcgc3BlY2lmaWMgdHJhaXRzLiAqL1xuICBmbGFnczogQ29tbW9uRmxhZ3M7XG4gIC8qKiBUZXN0cyBpZiB0aGlzIG5vZGUgaGFzIHRoZSBzcGVjaWZpZWQgZmxhZyBvciBmbGFncy4gKi9cbiAgaXMoZmxhZzogQ29tbW9uRmxhZ3MpOiBib29sO1xuICAvKiogVGVzdHMgaWYgdGhpcyBub2RlIGhhcyBvbmUgb2YgdGhlIHNwZWNpZmllZCBmbGFncy4gKi9cbiAgaXNBbnkoZmxhZzogQ29tbW9uRmxhZ3MpOiBib29sO1xuICAvKiogU2V0cyBhIHNwZWNpZmljIGZsYWcgb3IgZmxhZ3MuICovXG4gIHNldChmbGFnOiBDb21tb25GbGFncyk6IHZvaWQ7XG59XG4vKiogUmVwcmVzZW50cyBhbiBpbmRleCBzaWduYXR1cmUgZGVjbGFyYXRpb24uICovXG5leHBvcnQgaW50ZXJmYWNlIEluZGV4U2lnbmF0dXJlRGVjbGFyYXRpb24gZXh0ZW5kcyBEZWNsYXJhdGlvblN0YXRlbWVudCB7XG4gIC8qKiBLZXkgdHlwZS4gKi9cbiAga2V5VHlwZTogTmFtZWRUeXBlTm9kZTtcbiAgLyoqIFZhbHVlIHR5cGUuICovXG4gIHZhbHVlVHlwZTogVHlwZU5vZGU7XG59XG4vKiogQmFzZSBjbGFzcyBvZiBhbGwgdmFyaWFibGUtbGlrZSBkZWNsYXJhdGlvbiBzdGF0ZW1lbnRzLiAqL1xuZXhwb3J0IGludGVyZmFjZSBWYXJpYWJsZUxpa2VEZWNsYXJhdGlvblN0YXRlbWVudCBleHRlbmRzIERlY2xhcmF0aW9uU3RhdGVtZW50IHtcbiAgLyoqIFZhcmlhYmxlIHR5cGUuICovXG4gIHR5cGU6IFR5cGVOb2RlIHwgbnVsbDtcbiAgLyoqIFZhcmlhYmxlIGluaXRpYWxpemVyLiAqL1xuICBpbml0aWFsaXplcjogRXhwcmVzc2lvbiB8IG51bGw7XG59XG4vKiogUmVwcmVzZW50cyBhIGJsb2NrIHN0YXRlbWVudC4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgQmxvY2tTdGF0ZW1lbnQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICAvKiogQ29udGFpbmVkIHN0YXRlbWVudHMuICovXG4gIHN0YXRlbWVudHM6IFN0YXRlbWVudFtdO1xufVxuLyoqIFJlcHJlc2VudHMgYSBgYnJlYWtgIHN0YXRlbWVudC4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgQnJlYWtTdGF0ZW1lbnQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICAvKiogVGFyZ2V0IGxhYmVsLCBpZiBhcHBsaWNhYmxlLiAqL1xuICBsYWJlbDogSWRlbnRpZmllckV4cHJlc3Npb24gfCBudWxsO1xufVxuLyoqIFJlcHJlc2VudHMgYSBgY2xhc3NgIGRlY2xhcmF0aW9uLiAqL1xuZXhwb3J0IGludGVyZmFjZSBDbGFzc0RlY2xhcmF0aW9uIGV4dGVuZHMgRGVjbGFyYXRpb25TdGF0ZW1lbnQge1xuICAvKiogQWNjZXB0ZWQgdHlwZSBwYXJhbWV0ZXJzLiAqL1xuICB0eXBlUGFyYW1ldGVyczogVHlwZVBhcmFtZXRlck5vZGVbXSB8IG51bGw7XG4gIC8qKiBCYXNlIGNsYXNzIHR5cGUgYmVpbmcgZXh0ZW5kZWQsIGlmIGFueS4gKi9cbiAgZXh0ZW5kc1R5cGU6IE5hbWVkVHlwZU5vZGUgfCBudWxsO1xuICAvKiogSW50ZXJmYWNlIHR5cGVzIGJlaW5nIGltcGxlbWVudGVkLCBpZiBhbnkuICovXG4gIGltcGxlbWVudHNUeXBlczogTmFtZWRUeXBlTm9kZVtdIHwgbnVsbDtcbiAgLyoqIENsYXNzIG1lbWJlciBkZWNsYXJhdGlvbnMuICovXG4gIG1lbWJlcnM6IERlY2xhcmF0aW9uU3RhdGVtZW50W107XG4gIHJlYWRvbmx5IGlzR2VuZXJpYzogYm9vbDtcbn1cbi8qKiBSZXByZXNlbnRzIGEgYGNvbnRpbnVlYCBzdGF0ZW1lbnQuICovXG5leHBvcnQgaW50ZXJmYWNlIENvbnRpbnVlU3RhdGVtZW50IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgLyoqIFRhcmdldCBsYWJlbCwgaWYgYXBwbGljYWJsZS4gKi9cbiAgbGFiZWw6IElkZW50aWZpZXJFeHByZXNzaW9uIHwgbnVsbDtcbn1cbi8qKiBSZXByZXNlbnRzIGEgYGRvYCBzdGF0ZW1lbnQuICovXG5leHBvcnQgaW50ZXJmYWNlIERvU3RhdGVtZW50IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgLyoqIFN0YXRlbWVudCBiZWluZyBsb29wZWQgb3Zlci4gKi9cbiAgc3RhdGVtZW50OiBTdGF0ZW1lbnQ7XG4gIC8qKiBDb25kaXRpb24gd2hlbiB0byByZXBlYXQuICovXG4gIGNvbmRpdGlvbjogRXhwcmVzc2lvbjtcbn1cbi8qKiBSZXByZXNlbnRzIGFuIGVtcHR5IHN0YXRlbWVudCwgaS5lLiwgYSBzZW1pY29sb24gdGVybWluYXRpbmcgbm90aGluZy4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgRW1wdHlTdGF0ZW1lbnQgZXh0ZW5kcyBTdGF0ZW1lbnQge31cbi8qKiBSZXByZXNlbnRzIGFuIGBlbnVtYCBkZWNsYXJhdGlvbi4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgRW51bURlY2xhcmF0aW9uIGV4dGVuZHMgRGVjbGFyYXRpb25TdGF0ZW1lbnQge1xuICAvKiogRW51bSB2YWx1ZSBkZWNsYXJhdGlvbnMuICovXG4gIHZhbHVlczogRW51bVZhbHVlRGVjbGFyYXRpb25bXTtcbn1cbi8qKiBSZXByZXNlbnRzIGEgdmFsdWUgb2YgYW4gYGVudW1gIGRlY2xhcmF0aW9uLiAqL1xuZXhwb3J0IGludGVyZmFjZSBFbnVtVmFsdWVEZWNsYXJhdGlvbiBleHRlbmRzIFZhcmlhYmxlTGlrZURlY2xhcmF0aW9uU3RhdGVtZW50IHtcbiAgLyoqIFZhbHVlIGV4cHJlc3Npb24uICovXG4gIHZhbHVlOiBFeHByZXNzaW9uIHwgbnVsbDtcbn1cbi8qKiBSZXByZXNlbnRzIGFuIGBleHBvcnQgaW1wb3J0YCBzdGF0ZW1lbnQgb2YgYW4gaW50ZXJmYWNlLiAqL1xuZXhwb3J0IGludGVyZmFjZSBFeHBvcnRJbXBvcnRTdGF0ZW1lbnQgZXh0ZW5kcyBOb2RlIHtcbiAgLyoqIElkZW50aWZpZXIgYmVpbmcgaW1wb3J0ZWQuICovXG4gIG5hbWU6IElkZW50aWZpZXJFeHByZXNzaW9uO1xuICAvKiogSWRlbnRpZmllciBiZWluZyBleHBvcnRlZC4gKi9cbiAgZXh0ZXJuYWxOYW1lOiBJZGVudGlmaWVyRXhwcmVzc2lvbjtcbn1cbi8qKiBSZXByZXNlbnRzIGEgbWVtYmVyIG9mIGFuIGBleHBvcnRgIHN0YXRlbWVudC4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgRXhwb3J0TWVtYmVyIGV4dGVuZHMgTm9kZSB7XG4gIC8qKiBMb2NhbCBpZGVudGlmaWVyLiAqL1xuICBsb2NhbE5hbWU6IElkZW50aWZpZXJFeHByZXNzaW9uO1xuICAvKiogRXhwb3J0ZWQgaWRlbnRpZmllci4gKi9cbiAgZXhwb3J0ZWROYW1lOiBJZGVudGlmaWVyRXhwcmVzc2lvbjtcbn1cbi8qKiBSZXByZXNlbnRzIGFuIGBleHBvcnRgIHN0YXRlbWVudC4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgRXhwb3J0U3RhdGVtZW50IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgLyoqIEFycmF5IG9mIG1lbWJlcnMgaWYgYSBzZXQgb2YgbmFtZWQgZXhwb3J0cywgb3IgYG51bGxgIGlmIGEgZmlsZSBleHBvcnQuICovXG4gIG1lbWJlcnM6IEV4cG9ydE1lbWJlcltdIHwgbnVsbDtcbiAgLyoqIFBhdGggYmVpbmcgZXhwb3J0ZWQgZnJvbSwgaWYgYXBwbGljYWJsZS4gKi9cbiAgcGF0aDogU3RyaW5nTGl0ZXJhbEV4cHJlc3Npb24gfCBudWxsO1xuICAvKiogSW50ZXJuYWwgcGF0aCBiZWluZyByZWZlcmVuY2VkLCBpZiBgcGF0aGAgaXMgc2V0LiAqL1xuICBpbnRlcm5hbFBhdGg6IHN0cmluZyB8IG51bGw7XG4gIC8qKiBXaGV0aGVyIHRoaXMgaXMgYSBkZWNsYXJlZCBleHBvcnQuICovXG4gIGlzRGVjbGFyZTogYm9vbDtcbn1cbi8qKiBSZXByZXNlbnRzIGFuIGBleHBvcnQgZGVmYXVsdGAgc3RhdGVtZW50LiAqL1xuZXhwb3J0IGludGVyZmFjZSBFeHBvcnREZWZhdWx0U3RhdGVtZW50IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgLyoqIERlY2xhcmF0aW9uIGJlaW5nIGV4cG9ydGVkIGFzIGRlZmF1bHQuICovXG4gIGRlY2xhcmF0aW9uOiBEZWNsYXJhdGlvblN0YXRlbWVudDtcbn1cbi8qKiBSZXByZXNlbnRzIGFuIGV4cHJlc3Npb24gdGhhdCBpcyB1c2VkIGFzIGEgc3RhdGVtZW50LiAqL1xuZXhwb3J0IGludGVyZmFjZSBFeHByZXNzaW9uU3RhdGVtZW50IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgLyoqIEV4cHJlc3Npb24gYmVpbmcgdXNlZCBhcyBhIHN0YXRlbWVudC4qL1xuICBleHByZXNzaW9uOiBFeHByZXNzaW9uO1xufVxuLyoqIFJlcHJlc2VudHMgYSBmaWVsZCBkZWNsYXJhdGlvbiB3aXRoaW4gYSBgY2xhc3NgLiAqL1xuZXhwb3J0IGludGVyZmFjZSBGaWVsZERlY2xhcmF0aW9uIGV4dGVuZHMgVmFyaWFibGVMaWtlRGVjbGFyYXRpb25TdGF0ZW1lbnQge1xuICAvKiogUGFyYW1ldGVyIGluZGV4IGlmIGRlY2xhcmVkIGFzIGEgY29uc3RydWN0b3IgcGFyYW1ldGVyLCBvdGhlcndpc2UgYC0xYC4gKi9cbiAgcGFyYW1ldGVySW5kZXg6IGkzMjtcbn1cbi8qKiBSZXByZXNlbnRzIGEgYGZvcmAgc3RhdGVtZW50LiAqL1xuZXhwb3J0IGludGVyZmFjZSBGb3JTdGF0ZW1lbnQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICAvKipcbiAgICogSW5pdGlhbGl6ZXIgc3RhdGVtZW50LCBpZiBwcmVzZW50LlxuICAgKiBFaXRoZXIgYSB7QGxpbmsgVmFyaWFibGVTdGF0ZW1lbnR9IG9yIHtAbGluayBFeHByZXNzaW9uU3RhdGVtZW50fS5cbiAgICovXG4gIGluaXRpYWxpemVyOiBTdGF0ZW1lbnQgfCBudWxsO1xuICAvKiogQ29uZGl0aW9uIGV4cHJlc3Npb24sIGlmIHByZXNlbnQuICovXG4gIGNvbmRpdGlvbjogRXhwcmVzc2lvbiB8IG51bGw7XG4gIC8qKiBJbmNyZW1lbnRvciBleHByZXNzaW9uLCBpZiBwcmVzZW50LiAqL1xuICBpbmNyZW1lbnRvcjogRXhwcmVzc2lvbiB8IG51bGw7XG4gIC8qKiBTdGF0ZW1lbnQgYmVpbmcgbG9vcGVkIG92ZXIuICovXG4gIHN0YXRlbWVudDogU3RhdGVtZW50O1xufVxuLyoqIEluZGljYXRlcyB0aGUga2luZCBvZiBhbiBhcnJheSBmdW5jdGlvbi4gKi9cbmV4cG9ydCBjb25zdCBlbnVtIEFycm93S2luZCB7XG4gIC8qKiBOb3QgYW4gYXJyb3cgZnVuY3Rpb24uICovXG4gIE5PTkUgPSAwLFxuICAvKiogUGFyZW50aGVzaXplZCBwYXJhbWV0ZXIgbGlzdC4gKi9cbiAgQVJST1dfUEFSRU5USEVTSVpFRCA9IDEsXG4gIC8qKiBTaW5nbGUgcGFyYW1ldGVyIHdpdGhvdXQgcGFyZW50aGVzaXMuICovXG4gIEFSUk9XX1NJTkdMRSA9IDJcbn1cbi8qKiBSZXByZXNlbnRzIGEgYGZ1bmN0aW9uYCBkZWNsYXJhdGlvbi4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgRnVuY3Rpb25EZWNsYXJhdGlvbiBleHRlbmRzIERlY2xhcmF0aW9uU3RhdGVtZW50IHtcbiAgLyoqIFR5cGUgcGFyYW1ldGVycywgaWYgYW55LiAqL1xuICB0eXBlUGFyYW1ldGVyczogVHlwZVBhcmFtZXRlck5vZGVbXSB8IG51bGw7XG4gIC8qKiBGdW5jdGlvbiBzaWduYXR1cmUuICovXG4gIHNpZ25hdHVyZTogRnVuY3Rpb25UeXBlTm9kZTtcbiAgLyoqIEJvZHkgc3RhdGVtZW50LiBVc3VhbGx5IGEgYmxvY2suICovXG4gIGJvZHk6IFN0YXRlbWVudCB8IG51bGw7XG4gIC8qKiBBcnJvdyBmdW5jdGlvbiBraW5kLCBpZiBhcHBsaWNhYmxlLiAqL1xuICBhcnJvd0tpbmQ6IEFycm93S2luZDtcbiAgcmVhZG9ubHkgaXNHZW5lcmljOiBib29sO1xuICAvKiogQ2xvbmVzIHRoaXMgZnVuY3Rpb24gZGVjbGFyYXRpb24uICovXG4gIGNsb25lKCk6IEZ1bmN0aW9uRGVjbGFyYXRpb247XG59XG4vKiogUmVwcmVzZW50cyBhbiBgaWZgIHN0YXRlbWVudC4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgSWZTdGF0ZW1lbnQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICAvKiogQ29uZGl0aW9uLiAqL1xuICBjb25kaXRpb246IEV4cHJlc3Npb247XG4gIC8qKiBTdGF0ZW1lbnQgZXhlY3V0ZWQgd2hlbiBjb25kaXRpb24gaXMgYHRydWVgLiAqL1xuICBpZlRydWU6IFN0YXRlbWVudDtcbiAgLyoqIFN0YXRlbWVudCBleGVjdXRlZCB3aGVuIGNvbmRpdGlvbiBpcyBgZmFsc2VgLiAqL1xuICBpZkZhbHNlOiBTdGF0ZW1lbnQgfCBudWxsO1xufVxuLyoqIFJlcHJlc2VudHMgYW4gYGltcG9ydGAgZGVjbGFyYXRpb24gcGFydCBvZiBhbiB7QGxpbmsgSW1wb3J0U3RhdGVtZW50fS4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgSW1wb3J0RGVjbGFyYXRpb24gZXh0ZW5kcyBEZWNsYXJhdGlvblN0YXRlbWVudCB7XG4gIC8qKiBJZGVudGlmaWVyIGJlaW5nIGltcG9ydGVkLiAqL1xuICBmb3JlaWduTmFtZTogSWRlbnRpZmllckV4cHJlc3Npb247XG59XG4vKiogUmVwcmVzZW50cyBhbiBgaW1wb3J0YCBzdGF0ZW1lbnQuICovXG5leHBvcnQgaW50ZXJmYWNlIEltcG9ydFN0YXRlbWVudCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIC8qKiBBcnJheSBvZiBtZW1iZXIgZGVjbGFyYXRpb25zIG9yIGBudWxsYCBpZiBhbiBhc3RlcmlzayBpbXBvcnQuICovXG4gIGRlY2xhcmF0aW9uczogSW1wb3J0RGVjbGFyYXRpb25bXSB8IG51bGw7XG4gIC8qKiBOYW1lIG9mIHRoZSBsb2NhbCBuYW1lc3BhY2UsIGlmIGFuIGFzdGVyaXNrIGltcG9ydC4gKi9cbiAgbmFtZXNwYWNlTmFtZTogSWRlbnRpZmllckV4cHJlc3Npb24gfCBudWxsO1xuICAvKiogUGF0aCBiZWluZyBpbXBvcnRlZCBmcm9tLiAqL1xuICBwYXRoOiBTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbjtcbiAgLyoqIEludGVybmFsIHBhdGggYmVpbmcgcmVmZXJlbmNlZC4gKi9cbiAgaW50ZXJuYWxQYXRoOiBzdHJpbmc7XG59XG4vKiogUmVwcmVzZW50cyBhbiBgaW50ZXJmYXJjZWAgZGVjbGFyYXRpb24uICovXG5leHBvcnQgaW50ZXJmYWNlIEludGVyZmFjZURlY2xhcmF0aW9uIGV4dGVuZHMgQ2xhc3NEZWNsYXJhdGlvbiB7fVxuLyoqIFJlcHJlc2VudHMgYSBtZXRob2QgZGVjbGFyYXRpb24gd2l0aGluIGEgYGNsYXNzYC4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgTWV0aG9kRGVjbGFyYXRpb24gZXh0ZW5kcyBGdW5jdGlvbkRlY2xhcmF0aW9uIHt9XG4vKiogUmVwcmVzZW50cyBhIGBuYW1lc3BhY2VgIGRlY2xhcmF0aW9uLiAqL1xuZXhwb3J0IGludGVyZmFjZSBOYW1lc3BhY2VEZWNsYXJhdGlvbiBleHRlbmRzIERlY2xhcmF0aW9uU3RhdGVtZW50IHtcbiAgLyoqIEFycmF5IG9mIG5hbWVzcGFjZSBtZW1iZXJzLiAqL1xuICBtZW1iZXJzOiBTdGF0ZW1lbnRbXTtcbn1cbi8qKiBSZXByZXNlbnRzIGEgYHJldHVybmAgc3RhdGVtZW50LiAqL1xuZXhwb3J0IGludGVyZmFjZSBSZXR1cm5TdGF0ZW1lbnQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICAvKiogVmFsdWUgZXhwcmVzc2lvbiBiZWluZyByZXR1cm5lZCwgaWYgcHJlc2VudC4gKi9cbiAgdmFsdWU6IEV4cHJlc3Npb24gfCBudWxsO1xufVxuLyoqIFJlcHJlc2VudHMgYSBzaW5nbGUgYGNhc2VgIHdpdGhpbiBhIGBzd2l0Y2hgIHN0YXRlbWVudC4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgU3dpdGNoQ2FzZSBleHRlbmRzIE5vZGUge1xuICAvKiogTGFiZWwgZXhwcmVzc2lvbi4gYG51bGxgIGluZGljYXRlcyB0aGUgZGVmYXVsdCBjYXNlLiAqL1xuICBsYWJlbDogRXhwcmVzc2lvbiB8IG51bGw7XG4gIC8qKiBDb250YWluZWQgc3RhdGVtZW50cy4gKi9cbiAgc3RhdGVtZW50czogU3RhdGVtZW50W107XG59XG4vKiogUmVwcmVzZW50cyBhIGBzd2l0Y2hgIHN0YXRlbWVudC4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgU3dpdGNoU3RhdGVtZW50IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgLyoqIENvbmRpdGlvbiBleHByZXNzaW9uLiAqL1xuICBjb25kaXRpb246IEV4cHJlc3Npb247XG4gIC8qKiBDb250YWluZWQgY2FzZXMuICovXG4gIGNhc2VzOiBTd2l0Y2hDYXNlW107XG59XG4vKiogUmVwcmVzZW50cyBhIGB0aHJvd2Agc3RhdGVtZW50LiAqL1xuZXhwb3J0IGludGVyZmFjZSBUaHJvd1N0YXRlbWVudCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIC8qKiBWYWx1ZSBleHByZXNzaW9uIGJlaW5nIHRocm93bi4gKi9cbiAgdmFsdWU6IEV4cHJlc3Npb247XG59XG4vKiogUmVwcmVzZW50cyBhIGB0cnlgIHN0YXRlbWVudC4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgVHJ5U3RhdGVtZW50IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgLyoqIENvbnRhaW5lZCBzdGF0ZW1lbnRzLiAqL1xuICBzdGF0ZW1lbnRzOiBTdGF0ZW1lbnRbXTtcbiAgLyoqIEV4Y2VwdGlvbiB2YXJpYWJsZSBuYW1lLCBpZiBhIGBjYXRjaGAgY2xhdXNlIGlzIHByZXNlbnQuICovXG4gIGNhdGNoVmFyaWFibGU6IElkZW50aWZpZXJFeHByZXNzaW9uIHwgbnVsbDtcbiAgLyoqIFN0YXRlbWVudHMgYmVpbmcgZXhlY3V0ZWQgb24gY2F0Y2gsIGlmIGEgYGNhdGNoYCBjbGF1c2UgaXMgcHJlc2VudC4gKi9cbiAgY2F0Y2hTdGF0ZW1lbnRzOiBTdGF0ZW1lbnRbXSB8IG51bGw7XG4gIC8qKiBTdGF0ZW1lbnRzIGJlaW5nIGV4ZWN1dGVkIGFmdGVyd2FyZHMsIGlmIGEgYGZpbmFsbHlgIGNsYXVzZSBpcyBwcmVzZW50LiAqL1xuICBmaW5hbGx5U3RhdGVtZW50czogU3RhdGVtZW50W10gfCBudWxsO1xufVxuLyoqIFJlcHJlc2VudHMgYSBgdHlwZWAgZGVjbGFyYXRpb24uICovXG5leHBvcnQgaW50ZXJmYWNlIFR5cGVEZWNsYXJhdGlvbiBleHRlbmRzIERlY2xhcmF0aW9uU3RhdGVtZW50IHtcbiAgLyoqIFR5cGUgcGFyYW1ldGVycywgaWYgYW55LiAqL1xuICB0eXBlUGFyYW1ldGVyczogVHlwZVBhcmFtZXRlck5vZGVbXSB8IG51bGw7XG4gIC8qKiBUeXBlIGJlaW5nIGFsaWFzZWQuICovXG4gIHR5cGU6IFR5cGVOb2RlO1xufVxuLyoqIFJlcHJlc2VudHMgYSB2YXJpYWJsZSBkZWNsYXJhdGlvbiBwYXJ0IG9mIGEge0BsaW5rIFZhcmlhYmxlU3RhdGVtZW50fS4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgVmFyaWFibGVEZWNsYXJhdGlvbiBleHRlbmRzIFZhcmlhYmxlTGlrZURlY2xhcmF0aW9uU3RhdGVtZW50IHt9XG4vKiogUmVwcmVzZW50cyBhIHZhcmlhYmxlIHN0YXRlbWVudCB3cmFwcGluZyB7QGxpbmsgVmFyaWFibGVEZWNsYXJhdGlvbn1zLiAqL1xuZXhwb3J0IGludGVyZmFjZSBWYXJpYWJsZVN0YXRlbWVudCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIC8qKiBBcnJheSBvZiBkZWNvcmF0b3JzLiAqL1xuICBkZWNvcmF0b3JzOiBEZWNvcmF0b3JOb2RlW10gfCBudWxsO1xuICAvKiogQXJyYXkgb2YgbWVtYmVyIGRlY2xhcmF0aW9ucy4gKi9cbiAgZGVjbGFyYXRpb25zOiBWYXJpYWJsZURlY2xhcmF0aW9uW107XG59XG4vKiogUmVwcmVzZW50cyBhIHZvaWQgc3RhdGVtZW50IGRyb3BwaW5nIGFuIGV4cHJlc3Npb24ncyB2YWx1ZS4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgVm9pZFN0YXRlbWVudCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIC8qKiBFeHByZXNzaW9uIGJlaW5nIGRyb3BwZWQuICovXG4gIGV4cHJlc3Npb246IEV4cHJlc3Npb247XG59XG4vKiogUmVwcmVzZW50cyBhIGB3aGlsZWAgc3RhdGVtZW50LiAqL1xuZXhwb3J0IGludGVyZmFjZSBXaGlsZVN0YXRlbWVudCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIC8qKiBDb25kaXRpb24gZXhwcmVzc2lvbi4gKi9cbiAgY29uZGl0aW9uOiBFeHByZXNzaW9uO1xuICAvKiogU3RhdGVtZW50IGJlaW5nIGxvb3BlZCBvdmVyLiAqL1xuICBzdGF0ZW1lbnQ6IFN0YXRlbWVudDtcbn1cblxuLyoqIEZpbmRzIHRoZSBmaXJzdCBkZWNvcmF0b3IgbWF0Y2hpbmcgdGhlIHNwZWNpZmllZCBraW5kLiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGZpbmREZWNvcmF0b3IoXG4gIGtpbmQ6IERlY29yYXRvcktpbmQsXG4gIGRlY29yYXRvcnM6IERlY29yYXRvck5vZGVbXSB8IG51bGxcbik6IERlY29yYXRvck5vZGUgfCBudWxsIHtcbiAgaWYgKGRlY29yYXRvcnMpIHtcbiAgICBmb3IgKGxldCBpID0gMCwgayA9IGRlY29yYXRvcnMubGVuZ3RoOyBpIDwgazsgKytpKSB7XG4gICAgICBsZXQgZGVjb3JhdG9yID0gZGVjb3JhdG9yc1tpXTtcbiAgICAgIGlmIChkZWNvcmF0b3IuZGVjb3JhdG9yS2luZCA9PSBraW5kKSByZXR1cm4gZGVjb3JhdG9yO1xuICAgIH1cbiAgfVxuICByZXR1cm4gbnVsbDtcbn1cblxuLyoqIE1hbmdsZXMgYW4gZXh0ZXJuYWwgdG8gYW4gaW50ZXJuYWwgcGF0aC4gKi9cbmV4cG9ydCBmdW5jdGlvbiBtYW5nbGVJbnRlcm5hbFBhdGgocGF0aDogc3RyaW5nKTogc3RyaW5nIHtcbiAgaWYgKHBhdGguZW5kc1dpdGgoXCIudHNcIikpIHBhdGggPSBwYXRoLnN1YnN0cmluZygwLCBwYXRoLmxlbmd0aCAtIDMpO1xuICByZXR1cm4gcGF0aDtcbn1cblxuLyoqIFRlc3RzIGlmIHRoZSBzcGVjaWZpZWQgdHlwZSBub2RlIHJlcHJlc2VudHMgYW4gb21pdHRlZCB0eXBlLiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGlzVHlwZU9taXR0ZWQodHlwZTogVHlwZU5vZGUpOiBib29sIHtcbiAgaWYgKHR5cGUua2luZCA9PSBOb2RlS2luZC5OQU1FRFRZUEUpIHtcbiAgICBsZXQgbmFtZSA9ICg8TmFtZWRUeXBlTm9kZT50eXBlKS5uYW1lO1xuICAgIHJldHVybiAhKG5hbWUubmV4dCB8fCBuYW1lLmlkZW50aWZpZXIudGV4dC5sZW5ndGgpO1xuICB9XG4gIHJldHVybiBmYWxzZTtcbn1cblxuLyoqIEluZGljYXRlcyB0cmFpdHMgb2YgYSB7QGxpbmsgTm9kZX0gb3Ige0BsaW5rIEVsZW1lbnR9LiAqL1xuZXhwb3J0IGNvbnN0IGVudW0gQ29tbW9uRmxhZ3Mge1xuICAvKiogTm8gZmxhZ3Mgc2V0LiAqL1xuICBOT05FID0gMCxcblxuICAvLyBCYXNpYyBtb2RpZmllcnNcblxuICAvKiogSGFzIGFuIGBpbXBvcnRgIG1vZGlmaWVyLiAqL1xuICBJTVBPUlQgPSAxIDw8IDAsXG4gIC8qKiBIYXMgYW4gYGV4cG9ydGAgbW9kaWZpZXIuICovXG4gIEVYUE9SVCA9IDEgPDwgMSxcbiAgLyoqIEhhcyBhIGBkZWNsYXJlYCBtb2RpZmllci4gKi9cbiAgREVDTEFSRSA9IDEgPDwgMixcbiAgLyoqIEhhcyBhIGBjb25zdGAgbW9kaWZpZXIuICovXG4gIENPTlNUID0gMSA8PCAzLFxuICAvKiogSGFzIGEgYGxldGAgbW9kaWZpZXIuICovXG4gIExFVCA9IDEgPDwgNCxcbiAgLyoqIEhhcyBhIGBzdGF0aWNgIG1vZGlmaWVyLiAqL1xuICBTVEFUSUMgPSAxIDw8IDUsXG4gIC8qKiBIYXMgYSBgcmVhZG9ubHlgIG1vZGlmaWVyLiAqL1xuICBSRUFET05MWSA9IDEgPDwgNixcbiAgLyoqIEhhcyBhbiBgYWJzdHJhY3RgIG1vZGlmaWVyLiAqL1xuICBBQlNUUkFDVCA9IDEgPDwgNyxcbiAgLyoqIEhhcyBhIGBwdWJsaWNgIG1vZGlmaWVyLiAqL1xuICBQVUJMSUMgPSAxIDw8IDgsXG4gIC8qKiBIYXMgYSBgcHJpdmF0ZWAgbW9kaWZpZXIuICovXG4gIFBSSVZBVEUgPSAxIDw8IDksXG4gIC8qKiBIYXMgYSBgcHJvdGVjdGVkYCBtb2RpZmllci4gKi9cbiAgUFJPVEVDVEVEID0gMSA8PCAxMCxcbiAgLyoqIEhhcyBhIGBnZXRgIG1vZGlmaWVyLiAqL1xuICBHRVQgPSAxIDw8IDExLFxuICAvKiogSGFzIGEgYHNldGAgbW9kaWZpZXIuICovXG4gIFNFVCA9IDEgPDwgMTIsXG4gIC8qKiBIYXMgYSBkZWZpbml0ZSBhc3NpZ25tZW50IGFzc2VydGlvbiBgIWAgYXMgaW4gYHghOiBpMzI7YC4gKi9cbiAgREVGSU5JVEVfQVNTSUdOTUVOVCA9IDEgPDwgMTMsXG5cbiAgLy8gRXh0ZW5kZWQgbW9kaWZpZXJzIHVzdWFsbHkgZGVyaXZlZCBmcm9tIGJhc2ljIG1vZGlmaWVyc1xuXG4gIC8qKiBJcyBhbWJpZW50LCB0aGF0IGlzIGVpdGhlciBkZWNsYXJlZCBvciBuZXN0ZWQgaW4gYSBkZWNsYXJlZCBlbGVtZW50LiAqL1xuICBBTUJJRU5UID0gMSA8PCAxNCxcbiAgLyoqIElzIGdlbmVyaWMuICovXG4gIEdFTkVSSUMgPSAxIDw8IDE1LFxuICAvKiogSXMgcGFydCBvZiBhIGdlbmVyaWMgY29udGV4dC4gKi9cbiAgR0VORVJJQ19DT05URVhUID0gMSA8PCAxNixcbiAgLyoqIElzIGFuIGluc3RhbmNlIG1lbWJlci4gKi9cbiAgSU5TVEFOQ0UgPSAxIDw8IDE3LFxuICAvKiogSXMgYSBjb25zdHJ1Y3Rvci4gKi9cbiAgQ09OU1RSVUNUT1IgPSAxIDw8IDE4LFxuICAvKiogSXMgYSBtb2R1bGUgZXhwb3J0LiAqL1xuICBNT0RVTEVfRVhQT1JUID0gMSA8PCAxOSxcbiAgLyoqIElzIGEgbW9kdWxlIGltcG9ydC4gKi9cbiAgTU9EVUxFX0lNUE9SVCA9IDEgPDwgMjAsXG5cbiAgLy8gQ29tcGlsYXRpb24gc3RhdGVzXG5cbiAgLyoqIElzIHJlc29sdmVkLiAqL1xuICBSRVNPTFZFRCA9IDEgPDwgMjEsXG4gIC8qKiBJcyBjb21waWxlZC4gKi9cbiAgQ09NUElMRUQgPSAxIDw8IDIyLFxuICAvKiogSGFzIGEgY29uc3RhbnQgdmFsdWUgYW5kIGlzIHRoZXJlZm9yZSBpbmxpbmVkLiAqL1xuICBJTkxJTkVEID0gMSA8PCAyMyxcbiAgLyoqIElzIHNjb3BlZC4gKi9cbiAgU0NPUEVEID0gMSA8PCAyNCxcbiAgLyoqIElzIGEgdHJhbXBvbGluZS4gKi9cbiAgVFJBTVBPTElORSA9IDEgPDwgMjUsXG4gIC8qKiBJcyBhIHZpcnR1YWwgbWV0aG9kLiAqL1xuICBWSVJUVUFMID0gMSA8PCAyNixcbiAgLyoqIElzIHRoZSBtYWluIGZ1bmN0aW9uLiAqL1xuICBNQUlOID0gMSA8PCAyNyxcblxuICAvLyBPdGhlclxuXG4gIC8qKiBJcyBxdW90ZWQuICovXG4gIFFVT1RFRCA9IDEgPDwgMjhcbn1cbiJdfQ==

/***/ }),

/***/ "./node_modules/assemblyscript/lib/transformer/src/base.ts":
/*!*****************************************************************!*\
  !*** ./node_modules/assemblyscript/lib/transformer/src/base.ts ***!
  \*****************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var __values = (this && this.__values) || function(o) {
    var s = typeof Symbol === "function" && Symbol.iterator, m = s && o[s], i = 0;
    if (m) return m.call(o);
    if (o && typeof o.length === "number") return {
        next: function () {
            if (o && i >= o.length) o = void 0;
            return { value: o && o[i++], done: !o };
        }
    };
    throw new TypeError(s ? "Object is not iterable." : "Symbol.iterator is not defined.");
};
Object.defineProperty(exports, "__esModule", { value: true });
var visitor_1 = __webpack_require__(/*! ./visitor */ "./node_modules/assemblyscript/lib/transformer/src/visitor.ts");
var BaseVisitor = /** @class */ (function (_super) {
    __extends(BaseVisitor, _super);
    function BaseVisitor() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
        _this.depth = 0;
        return _this;
    }
    BaseVisitor.prototype._visit = function (node) {
        switch (node.kind) {
            case 0 /* SOURCE */: {
                this.visitSource(node);
                break;
            }
            // types
            case 1 /* NAMEDTYPE */: {
                this.visitNamedTypeNode(node);
                break;
            }
            case 2 /* FUNCTIONTYPE */: {
                this.visitFunctionTypeNode(node);
                break;
            }
            case 3 /* TYPENAME */: {
                this.visitTypeName(node);
            }
            case 4 /* TYPEPARAMETER */: {
                this.visitTypeParameter(node);
                break;
            }
            // expressions
            case 13 /* FALSE */:
            case 18 /* NULL */:
            case 22 /* SUPER */:
            case 23 /* THIS */:
            case 24 /* TRUE */:
            case 25 /* CONSTRUCTOR */:
            case 6 /* IDENTIFIER */: {
                this.visitIdentifierExpression(node);
                break;
            }
            case 7 /* ASSERTION */: {
                this.visitAssertionExpression(node);
                break;
            }
            case 8 /* BINARY */: {
                this.visitBinaryExpression(node);
                break;
            }
            case 9 /* CALL */: {
                this.visitCallExpression(node);
                break;
            }
            case 10 /* CLASS */: {
                this.visitClassExpression(node);
                break;
            }
            case 11 /* COMMA */: {
                this.visitCommaExpression(node);
                break;
            }
            case 12 /* ELEMENTACCESS */: {
                this.visitElementAccessExpression(node);
                break;
            }
            case 14 /* FUNCTION */: {
                this.visitFunctionExpression(node);
                break;
            }
            case 15 /* INSTANCEOF */: {
                this.visitInstanceOfExpression(node);
                break;
            }
            case 16 /* LITERAL */: {
                this.visitLiteralExpression(node);
                break;
            }
            case 17 /* NEW */: {
                this.visitNewExpression(node);
                break;
            }
            case 19 /* PARENTHESIZED */: {
                this.visitParenthesizedExpression(node);
                break;
            }
            case 20 /* PROPERTYACCESS */: {
                this.visitPropertyAccessExpression(node);
                break;
            }
            case 21 /* TERNARY */: {
                this.visitTernaryExpression(node);
                break;
            }
            case 26 /* UNARYPOSTFIX */: {
                this.visitUnaryPostfixExpression(node);
                break;
            }
            case 27 /* UNARYPREFIX */: {
                this.visitUnaryPrefixExpression(node);
                break;
            }
            // statements
            case 28 /* BLOCK */: {
                this.visitBlockStatement(node);
                break;
            }
            case 29 /* BREAK */: {
                this.visitBreakStatement(node);
                break;
            }
            case 30 /* CONTINUE */: {
                this.visitContinueStatement(node);
                break;
            }
            case 31 /* DO */: {
                this.visitDoStatement(node);
                break;
            }
            case 32 /* EMPTY */: {
                this.visitEmptyStatement(node);
                break;
            }
            case 33 /* EXPORT */: {
                this.visitExportStatement(node);
                break;
            }
            case 34 /* EXPORTDEFAULT */: {
                this.visitExportDefaultStatement(node);
                break;
            }
            case 35 /* EXPORTIMPORT */: {
                this.visitExportImportStatement(node);
                break;
            }
            case 36 /* EXPRESSION */: {
                this.visitExpressionStatement(node);
                break;
            }
            case 37 /* FOR */: {
                this.visitForStatement(node);
                break;
            }
            case 38 /* IF */: {
                this.visitIfStatement(node);
                break;
            }
            case 39 /* IMPORT */: {
                this.visitImportStatement(node);
                break;
            }
            case 40 /* RETURN */: {
                this.visitReturnStatement(node);
                break;
            }
            case 41 /* SWITCH */: {
                this.visitSwitchStatement(node);
                break;
            }
            case 42 /* THROW */: {
                this.visitThrowStatement(node);
                break;
            }
            case 43 /* TRY */: {
                this.visitTryStatement(node);
                break;
            }
            case 44 /* VARIABLE */: {
                this.visitVariableStatement(node);
                break;
            }
            case 46 /* WHILE */: {
                this.visitWhileStatement(node);
                break;
            }
            // declaration statements
            case 47 /* CLASSDECLARATION */: {
                this.visitClassDeclaration(node);
                break;
            }
            case 48 /* ENUMDECLARATION */: {
                this.visitEnumDeclaration(node);
                break;
            }
            case 49 /* ENUMVALUEDECLARATION */: {
                this.visitEnumValueDeclaration(node);
                break;
            }
            case 50 /* FIELDDECLARATION */: {
                this.visitFieldDeclaration(node);
                break;
            }
            case 51 /* FUNCTIONDECLARATION */: {
                this.visitFunctionDeclaration(node);
                break;
            }
            case 52 /* IMPORTDECLARATION */: {
                this.visitImportDeclaration(node);
                break;
            }
            case 53 /* INDEXSIGNATUREDECLARATION */: {
                this.visitIndexSignatureDeclaration(node);
                break;
            }
            case 54 /* INTERFACEDECLARATION */: {
                this.visitInterfaceDeclaration(node);
                break;
            }
            case 55 /* METHODDECLARATION */: {
                this.visitMethodDeclaration(node);
                break;
            }
            case 56 /* NAMESPACEDECLARATION */: {
                this.visitNamespaceDeclaration(node);
                break;
            }
            case 57 /* TYPEDECLARATION */: {
                this.visitTypeDeclaration(node);
                break;
            }
            case 58 /* VARIABLEDECLARATION */: {
                this.visitVariableDeclaration(node);
                break;
            }
            // other
            case 59 /* DECORATOR */: {
                this.visitDecoratorNode(node);
                break;
            }
            case 60 /* EXPORTMEMBER */: {
                this.visitExportMember(node);
                break;
            }
            case 5 /* PARAMETER */: {
                this.visitParameter(node);
                break;
            }
            case 61 /* SWITCHCASE */: {
                this.visitSwitchCase(node);
                break;
            }
            default: assert(false);
        }
    };
    BaseVisitor.prototype.visitSource = function (node) {
        var e_1, _a;
        try {
            for (var _b = __values(node.statements), _c = _b.next(); !_c.done; _c = _b.next()) {
                var stmt = _c.value;
                this.depth++;
                this.visit(stmt);
                this.depth--;
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_1) throw e_1.error; }
        }
    };
    BaseVisitor.prototype.visitTypeNode = function (node) { };
    BaseVisitor.prototype.visitTypeName = function (node) {
        this.visit(node.identifier);
        if (node.next) {
            this.visit(node.next);
        }
    };
    BaseVisitor.prototype.visitNamedTypeNode = function (node) {
        this.visit(node.name);
        this.visit(node.typeArguments);
    };
    BaseVisitor.prototype.visitFunctionTypeNode = function (node) {
        var e_2, _a;
        try {
            for (var _b = __values(node.parameters), _c = _b.next(); !_c.done; _c = _b.next()) {
                var param = _c.value;
                this.visit(param);
            }
        }
        catch (e_2_1) { e_2 = { error: e_2_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_2) throw e_2.error; }
        }
        this.visit(node.returnType);
    };
    BaseVisitor.prototype.visitTypeParameter = function (node) {
        this.visit(node.name);
        if (node.extendsType)
            this.visit(node.extendsType);
        if (node.defaultType)
            this.visit(node.defaultType);
    };
    BaseVisitor.prototype.visitIdentifierExpression = function (node) { };
    BaseVisitor.prototype.visitArrayLiteralExpression = function (node) {
        var _this = this;
        node.elementExpressions.map(function (e) {
            if (e)
                _this.visit(e);
        });
    };
    BaseVisitor.prototype.visitObjectLiteralExpression = function (node) {
        if (node.values && node.names) {
            assert(node.values.length == node.names.length);
            for (var i = 0; i < node.values.length; i++) {
                this.visit(node.names[i]);
                this.visit(node.values[i]);
            }
        }
    };
    BaseVisitor.prototype.visitAssertionExpression = function (node) {
        if (node.toType)
            this.visit(node.toType);
        this.visit(node.expression);
    };
    BaseVisitor.prototype.visitBinaryExpression = function (node) {
        this.visit(node.left);
        this.visit(node.right);
    };
    BaseVisitor.prototype.visitCallExpression = function (node) {
        this.visit(node.expression);
        this.visit(node.typeArguments);
        this.visit(node.arguments);
    };
    BaseVisitor.prototype.visitClassExpression = function (node) {
        this.visit(node.declaration);
    };
    BaseVisitor.prototype.visitCommaExpression = function (node) {
        this.visit(node.expressions);
    };
    BaseVisitor.prototype.visitElementAccessExpression = function (node) {
        this.visit(node.elementExpression);
        this.visit(node.expression);
    };
    BaseVisitor.prototype.visitFunctionExpression = function (node) {
        this.visit(node.declaration);
    };
    BaseVisitor.prototype.visitLiteralExpression = function (node) {
        // node.
    };
    BaseVisitor.prototype.visitFloatLiteralExpression = function (node) { };
    BaseVisitor.prototype.visitInstanceOfExpression = function (node) {
        this.visit(node.expression);
        this.visit(node.isType);
    };
    BaseVisitor.prototype.visitIntegerLiteralExpression = function (node) { };
    BaseVisitor.prototype.visitStringLiteral = function (str, singleQuoted) { };
    BaseVisitor.prototype.visitStringLiteralExpression = function (node) { };
    BaseVisitor.prototype.visitRegexpLiteralExpression = function (node) { };
    BaseVisitor.prototype.visitNewExpression = function (node) {
        this.visit(node.expression);
        this.visit(node.typeArguments);
        this.visit(node.arguments);
    };
    BaseVisitor.prototype.visitParenthesizedExpression = function (node) {
        this.visit(node.expression);
    };
    BaseVisitor.prototype.visitPropertyAccessExpression = function (node) {
        this.visit(node.property);
        this.visit(node.expression);
    };
    BaseVisitor.prototype.visitTernaryExpression = function (node) {
        this.visit(node.condition);
        this.visit(node.ifThen);
        this.visit(node.ifElse);
    };
    BaseVisitor.prototype.visitUnaryExpression = function (node) {
        this.visit(node.operand);
    };
    BaseVisitor.prototype.visitUnaryPostfixExpression = function (node) {
        this.visit(node.operand);
    };
    BaseVisitor.prototype.visitUnaryPrefixExpression = function (node) {
        this.visit(node.operand);
    };
    BaseVisitor.prototype.visitSuperExpression = function (node) { };
    BaseVisitor.prototype.visitFalseExpression = function (node) { };
    BaseVisitor.prototype.visitTrueExpression = function (node) { };
    BaseVisitor.prototype.visitThisExpression = function (node) { };
    BaseVisitor.prototype.visitNullExperssion = function (node) { };
    BaseVisitor.prototype.visitConstructorExpression = function (node) { };
    BaseVisitor.prototype.visitNodeAndTerminate = function (statement) { };
    BaseVisitor.prototype.visitBlockStatement = function (node) {
        this.depth++;
        this.visit(node.statements);
        this.depth--;
    };
    BaseVisitor.prototype.visitBreakStatement = function (node) {
        if (node.label) {
            this.visit(node.label);
        }
    };
    BaseVisitor.prototype.visitContinueStatement = function (node) {
        if (node.label) {
            this.visit(node.label);
        }
    };
    BaseVisitor.prototype.visitClassDeclaration = function (node, isDefault) {
        this.visit(node.name);
        this.depth++;
        this.visit(node.decorators);
        assert(node.isGeneric ? node.typeParameters != null : node.typeParameters == null);
        if (node.isGeneric) {
            this.visit(node.typeParameters);
        }
        if (node.extendsType) {
            this.visit(node.extendsType);
        }
        this.visit(node.implementsTypes);
        this.visit(node.members);
        this.depth--;
    };
    BaseVisitor.prototype.visitDoStatement = function (node) {
        this.visit(node.condition);
        this.visit(node.statement);
    };
    BaseVisitor.prototype.visitEmptyStatement = function (node) { };
    BaseVisitor.prototype.visitEnumDeclaration = function (node, isDefault) {
        this.visit(node.name);
        this.visit(node.decorators);
        this.visit(node.values);
    };
    BaseVisitor.prototype.visitEnumValueDeclaration = function (node) {
        this.visit(node.name);
        if (node.initializer) {
            this.visit(node.initializer);
        }
    };
    BaseVisitor.prototype.visitExportImportStatement = function (node) {
        this.visit(node.name);
        this.visit(node.externalName);
    };
    BaseVisitor.prototype.visitExportMember = function (node) {
        this.visit(node.localName);
        this.visit(node.exportedName);
    };
    BaseVisitor.prototype.visitExportStatement = function (node) {
        if (node.path) {
            this.visit(node.path);
        }
        this.visit(node.members);
    };
    BaseVisitor.prototype.visitExportDefaultStatement = function (node) {
        this.visit(node.declaration);
    };
    BaseVisitor.prototype.visitExpressionStatement = function (node) {
        this.visit(node.expression);
    };
    BaseVisitor.prototype.visitFieldDeclaration = function (node) {
        this.visit(node.name);
        if (node.type) {
            this.visit(node.type);
        }
        if (node.initializer) {
            this.visit(node.initializer);
        }
        this.visit(node.decorators);
    };
    BaseVisitor.prototype.visitForStatement = function (node) {
        if (node.initializer)
            this.visit(node.initializer);
        if (node.condition)
            this.visit(node.condition);
        if (node.incrementor)
            this.visit(node.incrementor);
        this.visit(node.statement);
    };
    BaseVisitor.prototype.visitFunctionDeclaration = function (node, isDefault) {
        this.visit(node.name);
        this.visit(node.decorators);
        if (node.isGeneric) {
            this.visit(node.typeParameters);
        }
        this.visit(node.signature);
        this.depth++;
        if (node.body)
            this.visit(node.body);
        this.depth--;
    };
    BaseVisitor.prototype.visitFunctionCommon = function (node) {
        // this.visit(node.name)
    };
    BaseVisitor.prototype.visitIfStatement = function (node) {
        this.visit(node.condition);
        this.visit(node.ifTrue);
        if (node.ifFalse)
            this.visit(node.ifFalse);
    };
    BaseVisitor.prototype.visitImportDeclaration = function (node) {
        this.visit(node.foreignName);
        this.visit(node.name);
        this.visit(node.decorators);
    };
    BaseVisitor.prototype.visitImportStatement = function (node) {
        if (node.namespaceName)
            this.visit(node.namespaceName);
        this.visit(node.declarations);
    };
    BaseVisitor.prototype.visitIndexSignatureDeclaration = function (node) {
        // this.visit(node.name);
        // this.visit(node.keyType);
        // this.visit(node.valueType);
    };
    BaseVisitor.prototype.visitInterfaceDeclaration = function (node, isDefault) {
        this.visit(node.name);
        if (node.isGeneric) {
            this.visit(node.typeParameters);
        }
        this.visit(node.implementsTypes);
        if (node.extendsType)
            this.visit(node.extendsType);
        this.depth++;
        this.visit(node.members);
        this.depth--;
    };
    BaseVisitor.prototype.visitMethodDeclaration = function (node) {
        this.visit(node.name);
        if (node.isGeneric) {
            this.visit(node.typeParameters);
        }
        this.visit(node.signature);
        this.visit(node.decorators);
        this.depth++;
        if (node.body)
            this.visit(node.body);
        this.depth--;
    };
    BaseVisitor.prototype.visitNamespaceDeclaration = function (node, isDefault) {
        this.visit(node.name);
        this.visit(node.decorators);
        this.visit(node.members);
    };
    BaseVisitor.prototype.visitReturnStatement = function (node) {
        if (node.value)
            this.visit(node.value);
    };
    BaseVisitor.prototype.visitSwitchCase = function (node) {
        if (node.label)
            this.visit(node.label);
        this.visit(node.statements);
    };
    BaseVisitor.prototype.visitSwitchStatement = function (node) {
        this.visit(node.condition);
        this.depth++;
        this.visit(node.cases);
        this.depth--;
    };
    BaseVisitor.prototype.visitThrowStatement = function (node) {
        this.visit(node.value);
    };
    BaseVisitor.prototype.visitTryStatement = function (node) {
        this.visit(node.statements);
        if (node.catchVariable)
            this.visit(node.catchVariable);
        this.visit(node.catchStatements);
        this.visit(node.finallyStatements);
    };
    BaseVisitor.prototype.visitTypeDeclaration = function (node) {
        this.visit(node.name);
        this.visit(node.decorators);
        this.visit(node.type);
        this.visit(node.typeParameters);
    };
    BaseVisitor.prototype.visitVariableDeclaration = function (node) {
        this.visit(node.name);
        if (node.type)
            this.visit(node.type);
        if (node.initializer)
            this.visit(node.initializer);
    };
    BaseVisitor.prototype.visitVariableStatement = function (node) {
        this.visit(node.decorators);
        this.visit(node.declarations);
    };
    BaseVisitor.prototype.visitWhileStatement = function (node) {
        this.visit(node.condition);
        this.depth++;
        this.visit(node.statement);
        this.depth--;
    };
    BaseVisitor.prototype.visitVoidStatement = function (node) { };
    BaseVisitor.prototype.visitComment = function (node) { };
    BaseVisitor.prototype.visitDecoratorNode = function (node) {
        this.visit(node.name);
        this.visit(node.arguments);
    };
    BaseVisitor.prototype.visitParameter = function (node) {
        this.visit(node.name);
        if (node.implicitFieldDeclaration) {
            this.visit(node.implicitFieldDeclaration);
        }
        if (node.initializer)
            this.visit(node.initializer);
        this.visit(node.type);
    };
    return BaseVisitor;
}(visitor_1.AbstractVisitor));
exports.BaseVisitor = BaseVisitor;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYmFzZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9iYXNlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBQ0EscUNBQTRDO0FBRTVDO0lBQWlDLCtCQUFxQjtJQUF0RDtRQUFBLHFFQXdvQkM7UUF2b0JDLFdBQUssR0FBVyxDQUFDLENBQUM7O0lBdW9CcEIsQ0FBQztJQXJvQkMsNEJBQU0sR0FBTixVQUFPLElBQVU7UUFDZixRQUFRLElBQUksQ0FBQyxJQUFJLEVBQUU7WUFDakIsbUJBQW9CLENBQUMsQ0FBQztnQkFDcEIsSUFBSSxDQUFDLFdBQVcsQ0FBUyxJQUFJLENBQUMsQ0FBQztnQkFDL0IsTUFBTTthQUNQO1lBRUQsUUFBUTtZQUVSLHNCQUF1QixDQUFDLENBQUM7Z0JBQ3ZCLElBQUksQ0FBQyxrQkFBa0IsQ0FBZ0IsSUFBSSxDQUFDLENBQUM7Z0JBQzdDLE1BQU07YUFDUDtZQUNELHlCQUEwQixDQUFDLENBQUM7Z0JBQzFCLElBQUksQ0FBQyxxQkFBcUIsQ0FBbUIsSUFBSSxDQUFDLENBQUM7Z0JBQ25ELE1BQU07YUFDUDtZQUNELHFCQUFzQixDQUFDLENBQUM7Z0JBQ3RCLElBQUksQ0FBQyxhQUFhLENBQVcsSUFBSSxDQUFDLENBQUM7YUFDcEM7WUFDRCwwQkFBMkIsQ0FBQyxDQUFDO2dCQUMzQixJQUFJLENBQUMsa0JBQWtCLENBQW9CLElBQUksQ0FBQyxDQUFDO2dCQUNqRCxNQUFNO2FBQ1A7WUFFRCxjQUFjO1lBRWQsb0JBQW9CO1lBQ3BCLG1CQUFtQjtZQUNuQixvQkFBb0I7WUFDcEIsbUJBQW1CO1lBQ25CLG1CQUFtQjtZQUNuQiwwQkFBMEI7WUFDMUIsdUJBQXdCLENBQUMsQ0FBQztnQkFDeEIsSUFBSSxDQUFDLHlCQUF5QixDQUF1QixJQUFJLENBQUMsQ0FBQztnQkFDM0QsTUFBTTthQUNQO1lBQ0Qsc0JBQXVCLENBQUMsQ0FBQztnQkFD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SSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7SUFDN0IsQ0FBQztJQUVELG9DQUFjLEdBQWQsVUFBZSxJQUFtQjtRQUNoQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUN0QixJQUFJLElBQUksQ0FBQyx3QkFBd0IsRUFBRTtZQUNqQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyx3QkFBd0IsQ0FBQyxDQUFDO1NBQzNDO1FBQ0QsSUFBSSxJQUFJLENBQUMsV0FBVztZQUFFLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDO1FBQ25ELElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQ3hCLENBQUM7SUFFSCxrQkFBQztBQUFELENBQUMsQUF4b0JELENBQWlDLHlCQUFlLEdBd29CL0M7QUF4b0JZLGtDQUFXIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgTm9kZUtpbmQsIE5vZGUsIFNvdXJjZSwgTmFtZWRUeXBlTm9kZSwgRnVuY3Rpb25UeXBlTm9kZSwgVHlwZU5hbWUsIFR5cGVQYXJhbWV0ZXJOb2RlLCBJZGVudGlmaWVyRXhwcmVzc2lvbiwgQXNzZXJ0aW9uRXhwcmVzc2lvbiwgQmluYXJ5RXhwcmVzc2lvbiwgQ2FsbEV4cHJlc3Npb24sIENsYXNzRXhwcmVzc2lvbiwgRWxlbWVudEFjY2Vzc0V4cHJlc3Npb24sIEZ1bmN0aW9uRXhwcmVzc2lvbiwgSW5zdGFuY2VPZkV4cHJlc3Npb24sIExpdGVyYWxFeHByZXNzaW9uLCBOZXdFeHByZXNzaW9uLCBQYXJlbnRoZXNpemVkRXhwcmVzc2lvbiwgUHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uLCBUZXJuYXJ5RXhwcmVzc2lvbiwgVW5hcnlQb3N0Zml4RXhwcmVzc2lvbiwgVW5hcnlQcmVmaXhFeHByZXNzaW9uLCBCbG9ja1N0YXRlbWVudCwgQnJlYWtTdGF0ZW1lbnQsIENvbnRpbnVlU3RhdGVtZW50LCBEb1N0YXRlbWVudCwgRW1wdHlTdGF0ZW1lbnQsIEV4cG9ydFN0YXRlbWVudCwgRXhwb3J0RGVmYXVsdFN0YXRlbWVudCwgRXhwb3J0SW1wb3J0U3RhdGVtZW50LCBFeHByZXNzaW9uU3RhdGVtZW50LCBGb3JTdGF0ZW1lbnQsIElmU3RhdGVtZW50LCBJbXBvcnRTdGF0ZW1lbnQsIFJldHVyblN0YXRlbWVudCwgU3dpdGNoU3RhdGVtZW50LCBUaHJvd1N0YXRlbWVudCwgVHJ5U3RhdGVtZW50LCBWYXJpYWJsZVN0YXRlbWVudCwgV2hpbGVTdGF0ZW1lbnQsIENsYXNzRGVjbGFyYXRpb24sIEVudW1EZWNsYXJhdGlvbiwgRW51bVZhbHVlRGVjbGFyYXRpb24sIEZpZWxkRGVjbGFyYXRpb24sIEZ1bmN0aW9uRGVjbGFyYXRpb24sIEltcG9ydERlY2xhcmF0aW9uLCBJbmRleFNpZ25hdHVyZURlY2xhcmF0aW9uLCBJbnRlcmZhY2VEZWNsYXJhdGlvbiwgTWV0aG9kRGVjbGFyYXRpb24sIE5hbWVzcGFjZURlY2xhcmF0aW9uLCBUeXBlRGVjbGFyYXRpb24sIFZhcmlhYmxlRGVjbGFyYXRpb24sIERlY29yYXRvck5vZGUsIEV4cG9ydE1lbWJlciwgUGFyYW1ldGVyTm9kZSwgU3dpdGNoQ2FzZSwgVHlwZU5vZGUsIEFycmF5TGl0ZXJhbEV4cHJlc3Npb24sIEV4cHJlc3Npb24sIE9iamVjdExpdGVyYWxFeHByZXNzaW9uLCBGbG9hdExpdGVyYWxFeHByZXNzaW9uLCBTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbiwgUmVnZXhwTGl0ZXJhbEV4cHJlc3Npb24sIFVuYXJ5RXhwcmVzc2lvbiwgU3VwZXJFeHByZXNzaW9uLCBGYWxzZUV4cHJlc3Npb24sIFRydWVFeHByZXNzaW9uLCBUaGlzRXhwcmVzc2lvbiwgTnVsbEV4cHJlc3Npb24sIENvbnN0cnVjdG9yRXhwcmVzc2lvbiwgU3RhdGVtZW50LCBWb2lkU3RhdGVtZW50LCBDb21tZW50Tm9kZSwgQ29tbWFFeHByZXNzaW9uLCBJbnRlZ2VyTGl0ZXJhbEV4cHJlc3Npb24gfSBmcm9tIFwiLi9hc3RcIjtcbmltcG9ydCB7IEFic3RyYWN0VmlzaXRvciB9IGZyb20gXCIuL3Zpc2l0b3JcIjtcblxuZXhwb3J0IGNsYXNzIEJhc2VWaXNpdG9yIGV4dGVuZHMgQWJzdHJhY3RWaXNpdG9yPE5vZGU+IHtcbiAgZGVwdGg6IG51bWJlciA9IDA7XG5cbiAgX3Zpc2l0KG5vZGU6IE5vZGUpOiB2b2lkIHtcbiAgICBzd2l0Y2ggKG5vZGUua2luZCkge1xuICAgICAgY2FzZSBOb2RlS2luZC5TT1VSQ0U6IHtcbiAgICAgICAgdGhpcy52aXNpdFNvdXJjZSg8U291cmNlPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cblxuICAgICAgLy8gdHlwZXNcblxuICAgICAgY2FzZSBOb2RlS2luZC5OQU1FRFRZUEU6IHtcbiAgICAgICAgdGhpcy52aXNpdE5hbWVkVHlwZU5vZGUoPE5hbWVkVHlwZU5vZGU+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5GVU5DVElPTlRZUEU6IHtcbiAgICAgICAgdGhpcy52aXNpdEZ1bmN0aW9uVHlwZU5vZGUoPEZ1bmN0aW9uVHlwZU5vZGU+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5UWVBFTkFNRToge1xuICAgICAgICB0aGlzLnZpc2l0VHlwZU5hbWUoPFR5cGVOYW1lPm5vZGUpO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5UWVBFUEFSQU1FVEVSOiB7XG4gICAgICAgIHRoaXMudmlzaXRUeXBlUGFyYW1ldGVyKDxUeXBlUGFyYW1ldGVyTm9kZT5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG5cbiAgICAgIC8vIGV4cHJlc3Npb25zXG5cbiAgICAgIGNhc2UgTm9kZUtpbmQuRkFMU0U6XG4gICAgICBjYXNlIE5vZGVLaW5kLk5VTEw6XG4gICAgICBjYXNlIE5vZGVLaW5kLlNVUEVSOlxuICAgICAgY2FzZSBOb2RlS2luZC5USElTOlxuICAgICAgY2FzZSBOb2RlS2luZC5UUlVFOlxuICAgICAgY2FzZSBOb2RlS2luZC5DT05TVFJVQ1RPUjpcbiAgICAgIGNhc2UgTm9kZUtpbmQuSURFTlRJRklFUjoge1xuICAgICAgICB0aGlzLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24oPElkZW50aWZpZXJFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQVNTRVJUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRBc3NlcnRpb25FeHByZXNzaW9uKDxBc3NlcnRpb25FeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQklOQVJZOiB7XG4gICAgICAgIHRoaXMudmlzaXRCaW5hcnlFeHByZXNzaW9uKDxCaW5hcnlFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQ0FMTDoge1xuICAgICAgICB0aGlzLnZpc2l0Q2FsbEV4cHJlc3Npb24oPENhbGxFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQ0xBU1M6IHtcbiAgICAgICAgdGhpcy52aXNpdENsYXNzRXhwcmVzc2lvbig8Q2xhc3NFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQ09NTUE6IHtcbiAgICAgICAgdGhpcy52aXNpdENvbW1hRXhwcmVzc2lvbig8Q29tbWFFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRUxFTUVOVEFDQ0VTUzoge1xuICAgICAgICB0aGlzLnZpc2l0RWxlbWVudEFjY2Vzc0V4cHJlc3Npb24oPEVsZW1lbnRBY2Nlc3NFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRlVOQ1RJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEZ1bmN0aW9uRXhwcmVzc2lvbig8RnVuY3Rpb25FeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuSU5TVEFOQ0VPRjoge1xuICAgICAgICB0aGlzLnZpc2l0SW5zdGFuY2VPZkV4cHJlc3Npb24oPEluc3RhbmNlT2ZFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuTElURVJBTDoge1xuICAgICAgICB0aGlzLnZpc2l0TGl0ZXJhbEV4cHJlc3Npb24oPExpdGVyYWxFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuTkVXOiB7XG4gICAgICAgIHRoaXMudmlzaXROZXdFeHByZXNzaW9uKDxOZXdFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuUEFSRU5USEVTSVpFRDoge1xuICAgICAgICB0aGlzLnZpc2l0UGFyZW50aGVzaXplZEV4cHJlc3Npb24oPFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuUFJPUEVSVFlBQ0NFU1M6IHtcbiAgICAgICAgdGhpcy52aXNpdFByb3BlcnR5QWNjZXNzRXhwcmVzc2lvbig8UHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVEVSTkFSWToge1xuICAgICAgICB0aGlzLnZpc2l0VGVybmFyeUV4cHJlc3Npb24oPFRlcm5hcnlFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVU5BUllQT1NURklYOiB7XG4gICAgICAgIHRoaXMudmlzaXRVbmFyeVBvc3RmaXhFeHByZXNzaW9uKDxVbmFyeVBvc3RmaXhFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVU5BUllQUkVGSVg6IHtcbiAgICAgICAgdGhpcy52aXNpdFVuYXJ5UHJlZml4RXhwcmVzc2lvbig8VW5hcnlQcmVmaXhFeHByZXNzaW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cblxuICAgICAgLy8gc3RhdGVtZW50c1xuXG4gICAgICBjYXNlIE5vZGVLaW5kLkJMT0NLOiB7XG4gICAgICAgIHRoaXMudmlzaXRCbG9ja1N0YXRlbWVudCg8QmxvY2tTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5CUkVBSzoge1xuICAgICAgICB0aGlzLnZpc2l0QnJlYWtTdGF0ZW1lbnQoPEJyZWFrU3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuQ09OVElOVUU6IHtcbiAgICAgICAgdGhpcy52aXNpdENvbnRpbnVlU3RhdGVtZW50KDxDb250aW51ZVN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkRPOiB7XG4gICAgICAgIHRoaXMudmlzaXREb1N0YXRlbWVudCg8RG9TdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5FTVBUWToge1xuICAgICAgICB0aGlzLnZpc2l0RW1wdHlTdGF0ZW1lbnQoPEVtcHR5U3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRVhQT1JUOiB7XG4gICAgICAgIHRoaXMudmlzaXRFeHBvcnRTdGF0ZW1lbnQoPEV4cG9ydFN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkVYUE9SVERFRkFVTFQ6IHtcbiAgICAgICAgdGhpcy52aXNpdEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQoPEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5FWFBPUlRJTVBPUlQ6IHtcbiAgICAgICAgdGhpcy52aXNpdEV4cG9ydEltcG9ydFN0YXRlbWVudCg8RXhwb3J0SW1wb3J0U3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRVhQUkVTU0lPTjoge1xuICAgICAgICB0aGlzLnZpc2l0RXhwcmVzc2lvblN0YXRlbWVudCg8RXhwcmVzc2lvblN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkZPUjoge1xuICAgICAgICB0aGlzLnZpc2l0Rm9yU3RhdGVtZW50KDxGb3JTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5JRjoge1xuICAgICAgICB0aGlzLnZpc2l0SWZTdGF0ZW1lbnQoPElmU3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuSU1QT1JUOiB7XG4gICAgICAgIHRoaXMudmlzaXRJbXBvcnRTdGF0ZW1lbnQoPEltcG9ydFN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlJFVFVSTjoge1xuICAgICAgICB0aGlzLnZpc2l0UmV0dXJuU3RhdGVtZW50KDxSZXR1cm5TdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5TV0lUQ0g6IHtcbiAgICAgICAgdGhpcy52aXNpdFN3aXRjaFN0YXRlbWVudCg8U3dpdGNoU3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVEhST1c6IHtcbiAgICAgICAgdGhpcy52aXNpdFRocm93U3RhdGVtZW50KDxUaHJvd1N0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlRSWToge1xuICAgICAgICB0aGlzLnZpc2l0VHJ5U3RhdGVtZW50KDxUcnlTdGF0ZW1lbnQ+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5WQVJJQUJMRToge1xuICAgICAgICB0aGlzLnZpc2l0VmFyaWFibGVTdGF0ZW1lbnQoPFZhcmlhYmxlU3RhdGVtZW50Pm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuV0hJTEU6IHtcbiAgICAgICAgdGhpcy52aXNpdFdoaWxlU3RhdGVtZW50KDxXaGlsZVN0YXRlbWVudD5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG5cbiAgICAgIC8vIGRlY2xhcmF0aW9uIHN0YXRlbWVudHNcblxuICAgICAgY2FzZSBOb2RlS2luZC5DTEFTU0RFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRDbGFzc0RlY2xhcmF0aW9uKDxDbGFzc0RlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRU5VTURFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRFbnVtRGVjbGFyYXRpb24oPEVudW1EZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkVOVU1WQUxVRURFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRFbnVtVmFsdWVEZWNsYXJhdGlvbig8RW51bVZhbHVlRGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5GSUVMRERFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRGaWVsZERlY2xhcmF0aW9uKDxGaWVsZERlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuRlVOQ1RJT05ERUNMQVJBVElPTjoge1xuICAgICAgICB0aGlzLnZpc2l0RnVuY3Rpb25EZWNsYXJhdGlvbig8RnVuY3Rpb25EZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLklNUE9SVERFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRJbXBvcnREZWNsYXJhdGlvbig8SW1wb3J0RGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5JTkRFWFNJR05BVFVSRURFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRJbmRleFNpZ25hdHVyZURlY2xhcmF0aW9uKDxJbmRleFNpZ25hdHVyZURlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuSU5URVJGQUNFREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdEludGVyZmFjZURlY2xhcmF0aW9uKDxJbnRlcmZhY2VEZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLk1FVEhPRERFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRNZXRob2REZWNsYXJhdGlvbig8TWV0aG9kRGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5OQU1FU1BBQ0VERUNMQVJBVElPTjoge1xuICAgICAgICB0aGlzLnZpc2l0TmFtZXNwYWNlRGVjbGFyYXRpb24oPE5hbWVzcGFjZURlY2xhcmF0aW9uPm5vZGUpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgTm9kZUtpbmQuVFlQRURFQ0xBUkFUSU9OOiB7XG4gICAgICAgIHRoaXMudmlzaXRUeXBlRGVjbGFyYXRpb24oPFR5cGVEZWNsYXJhdGlvbj5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlZBUklBQkxFREVDTEFSQVRJT046IHtcbiAgICAgICAgdGhpcy52aXNpdFZhcmlhYmxlRGVjbGFyYXRpb24oPFZhcmlhYmxlRGVjbGFyYXRpb24+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuXG4gICAgICAvLyBvdGhlclxuXG4gICAgICBjYXNlIE5vZGVLaW5kLkRFQ09SQVRPUjoge1xuICAgICAgICB0aGlzLnZpc2l0RGVjb3JhdG9yTm9kZSg8RGVjb3JhdG9yTm9kZT5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLkVYUE9SVE1FTUJFUjoge1xuICAgICAgICB0aGlzLnZpc2l0RXhwb3J0TWVtYmVyKDxFeHBvcnRNZW1iZXI+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBOb2RlS2luZC5QQVJBTUVURVI6IHtcbiAgICAgICAgdGhpcy52aXNpdFBhcmFtZXRlcig8UGFyYW1ldGVyTm9kZT5ub2RlKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIE5vZGVLaW5kLlNXSVRDSENBU0U6IHtcbiAgICAgICAgdGhpcy52aXNpdFN3aXRjaENhc2UoPFN3aXRjaENhc2U+bm9kZSk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgZGVmYXVsdDogYXNzZXJ0KGZhbHNlKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdFNvdXJjZShub2RlOiBTb3VyY2UpOiB2b2lkIHtcbiAgICBmb3IgKGNvbnN0IHN0bXQgb2Ygbm9kZS5zdGF0ZW1lbnRzKSB7XG4gICAgICB0aGlzLmRlcHRoKys7XG4gICAgICB0aGlzLnZpc2l0KHN0bXQpO1xuICAgICAgdGhpcy5kZXB0aC0tO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0VHlwZU5vZGUobm9kZTogVHlwZU5vZGUpOiB2b2lkIHt9XG5cbiAgdmlzaXRUeXBlTmFtZShub2RlOiBUeXBlTmFtZSk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5pZGVudGlmaWVyKTtcbiAgICBpZiAobm9kZS5uZXh0KSB7XG4gICAgICB0aGlzLnZpc2l0KG5vZGUubmV4dCk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXROYW1lZFR5cGVOb2RlKG5vZGU6IE5hbWVkVHlwZU5vZGUpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUubmFtZSk7XG4gICAgdGhpcy52aXNpdChub2RlLnR5cGVBcmd1bWVudHMpO1xuICB9XG5cbiAgdmlzaXRGdW5jdGlvblR5cGVOb2RlKG5vZGU6IEZ1bmN0aW9uVHlwZU5vZGUpOiB2b2lkIHtcbiAgICBmb3IgKGxldCBwYXJhbSBvZiBub2RlLnBhcmFtZXRlcnMpIHtcbiAgICAgIHRoaXMudmlzaXQocGFyYW0pO1xuICAgIH1cbiAgICB0aGlzLnZpc2l0KG5vZGUucmV0dXJuVHlwZSk7XG4gIH1cblxuICB2aXNpdFR5cGVQYXJhbWV0ZXIobm9kZTogVHlwZVBhcmFtZXRlck5vZGUpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUubmFtZSk7XG4gICAgaWYgKG5vZGUuZXh0ZW5kc1R5cGUpIHRoaXMudmlzaXQobm9kZS5leHRlbmRzVHlwZSk7XG4gICAgaWYgKG5vZGUuZGVmYXVsdFR5cGUpIHRoaXMudmlzaXQobm9kZS5kZWZhdWx0VHlwZSk7XG4gIH1cblxuICB2aXNpdElkZW50aWZpZXJFeHByZXNzaW9uKG5vZGU6IElkZW50aWZpZXJFeHByZXNzaW9uKTogdm9pZCB7fVxuXG4gIHZpc2l0QXJyYXlMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBBcnJheUxpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgbm9kZS5lbGVtZW50RXhwcmVzc2lvbnMubWFwKChlOiBFeHByZXNzaW9uKSA9PiB7XG4gICAgICBpZiAoZSkgdGhpcy52aXNpdChlKTtcbiAgICB9KTtcbiAgfVxuXG4gIHZpc2l0T2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24obm9kZTogT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICBpZiAobm9kZS52YWx1ZXMgJiYgbm9kZS5uYW1lcykge1xuICAgICAgYXNzZXJ0KG5vZGUudmFsdWVzLmxlbmd0aCA9PSBub2RlLm5hbWVzLmxlbmd0aCk7XG4gICAgICBmb3IgKGxldCBpID0gMDsgaSA8IG5vZGUudmFsdWVzLmxlbmd0aDsgaSsrKSB7XG4gICAgICAgIHRoaXMudmlzaXQobm9kZS5uYW1lc1tpXSk7XG4gICAgICAgIHRoaXMudmlzaXQobm9kZS52YWx1ZXNbaV0pO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHZpc2l0QXNzZXJ0aW9uRXhwcmVzc2lvbihub2RlOiBBc3NlcnRpb25FeHByZXNzaW9uKTogdm9pZCB7XG4gICAgaWYgKG5vZGUudG9UeXBlKSB0aGlzLnZpc2l0KG5vZGUudG9UeXBlKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZXhwcmVzc2lvbik7XG4gIH1cblxuICB2aXNpdEJpbmFyeUV4cHJlc3Npb24obm9kZTogQmluYXJ5RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5sZWZ0KTtcbiAgICB0aGlzLnZpc2l0KG5vZGUucmlnaHQpO1xuICB9XG5cbiAgdmlzaXRDYWxsRXhwcmVzc2lvbihub2RlOiBDYWxsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5leHByZXNzaW9uKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUudHlwZUFyZ3VtZW50cyk7XG4gICAgdGhpcy52aXNpdChub2RlLmFyZ3VtZW50cyk7XG4gIH1cblxuICB2aXNpdENsYXNzRXhwcmVzc2lvbihub2RlOiBDbGFzc0V4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjbGFyYXRpb24pO1xuICB9XG5cbiAgdmlzaXRDb21tYUV4cHJlc3Npb24obm9kZTogQ29tbWFFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLmV4cHJlc3Npb25zKTtcbiAgfVxuXG4gIHZpc2l0RWxlbWVudEFjY2Vzc0V4cHJlc3Npb24obm9kZTogRWxlbWVudEFjY2Vzc0V4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZWxlbWVudEV4cHJlc3Npb24pO1xuICAgIHRoaXMudmlzaXQobm9kZS5leHByZXNzaW9uKTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25FeHByZXNzaW9uKG5vZGU6IEZ1bmN0aW9uRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5kZWNsYXJhdGlvbik7XG4gIH1cblxuICB2aXNpdExpdGVyYWxFeHByZXNzaW9uKG5vZGU6IExpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgLy8gbm9kZS5cbiAgfVxuXG4gIHZpc2l0RmxvYXRMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBGbG9hdExpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7fVxuXG4gIHZpc2l0SW5zdGFuY2VPZkV4cHJlc3Npb24obm9kZTogSW5zdGFuY2VPZkV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZXhwcmVzc2lvbik7XG4gICAgdGhpcy52aXNpdChub2RlLmlzVHlwZSk7XG4gIH1cblxuICB2aXNpdEludGVnZXJMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBJbnRlZ2VyTGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHt9XG5cbiAgdmlzaXRTdHJpbmdMaXRlcmFsKHN0cjogc3RyaW5nLCBzaW5nbGVRdW90ZWQ/OiBib29sZWFuKTogdm9pZCB7fVxuXG4gIHZpc2l0U3RyaW5nTGl0ZXJhbEV4cHJlc3Npb24obm9kZTogU3RyaW5nTGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHt9XG5cbiAgdmlzaXRSZWdleHBMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBSZWdleHBMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge31cblxuICB2aXNpdE5ld0V4cHJlc3Npb24obm9kZTogTmV3RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5leHByZXNzaW9uKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUudHlwZUFyZ3VtZW50cyk7XG4gICAgdGhpcy52aXNpdChub2RlLmFyZ3VtZW50cyk7XG4gIH1cblxuICB2aXNpdFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uKG5vZGU6IFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLmV4cHJlc3Npb24pO1xuICB9XG5cbiAgdmlzaXRQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24obm9kZTogUHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLnByb3BlcnR5KTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZXhwcmVzc2lvbik7XG4gIH1cblxuICB2aXNpdFRlcm5hcnlFeHByZXNzaW9uKG5vZGU6IFRlcm5hcnlFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLmNvbmRpdGlvbik7XG4gICAgdGhpcy52aXNpdChub2RlLmlmVGhlbik7XG4gICAgdGhpcy52aXNpdChub2RlLmlmRWxzZSk7XG4gIH1cblxuICB2aXNpdFVuYXJ5RXhwcmVzc2lvbihub2RlOiBVbmFyeUV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUub3BlcmFuZCk7XG4gIH1cblxuICB2aXNpdFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24obm9kZTogVW5hcnlQb3N0Zml4RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5vcGVyYW5kKTtcbiAgfVxuXG4gIHZpc2l0VW5hcnlQcmVmaXhFeHByZXNzaW9uKG5vZGU6IFVuYXJ5UHJlZml4RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5vcGVyYW5kKTtcbiAgfVxuXG4gIHZpc2l0U3VwZXJFeHByZXNzaW9uKG5vZGU6IFN1cGVyRXhwcmVzc2lvbik6IHZvaWQge31cblxuICB2aXNpdEZhbHNlRXhwcmVzc2lvbihub2RlOiBGYWxzZUV4cHJlc3Npb24pOiB2b2lkIHt9XG5cbiAgdmlzaXRUcnVlRXhwcmVzc2lvbihub2RlOiBUcnVlRXhwcmVzc2lvbik6IHZvaWQge31cblxuICB2aXNpdFRoaXNFeHByZXNzaW9uKG5vZGU6IFRoaXNFeHByZXNzaW9uKTogdm9pZCB7fVxuXG4gIHZpc2l0TnVsbEV4cGVyc3Npb24obm9kZTogTnVsbEV4cHJlc3Npb24pOiB2b2lkIHt9XG5cbiAgdmlzaXRDb25zdHJ1Y3RvckV4cHJlc3Npb24obm9kZTogQ29uc3RydWN0b3JFeHByZXNzaW9uKTogdm9pZCB7fVxuXG4gIHZpc2l0Tm9kZUFuZFRlcm1pbmF0ZShzdGF0ZW1lbnQ6IFN0YXRlbWVudCk6IHZvaWQge31cblxuICB2aXNpdEJsb2NrU3RhdGVtZW50KG5vZGU6IEJsb2NrU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy5kZXB0aCsrO1xuICAgIHRoaXMudmlzaXQobm9kZS5zdGF0ZW1lbnRzKTtcbiAgICB0aGlzLmRlcHRoLS07XG4gIH1cblxuICB2aXNpdEJyZWFrU3RhdGVtZW50KG5vZGU6IEJyZWFrU3RhdGVtZW50KTogdm9pZCB7XG4gICAgaWYgKG5vZGUubGFiZWwpIHtcbiAgICAgIHRoaXMudmlzaXQobm9kZS5sYWJlbCk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRDb250aW51ZVN0YXRlbWVudChub2RlOiBDb250aW51ZVN0YXRlbWVudCk6IHZvaWQge1xuICAgIGlmIChub2RlLmxhYmVsKSB7XG4gICAgICB0aGlzLnZpc2l0KG5vZGUubGFiZWwpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0Q2xhc3NEZWNsYXJhdGlvbihub2RlOiBDbGFzc0RlY2xhcmF0aW9uLCBpc0RlZmF1bHQ/OiBib29sZWFuKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLm5hbWUpO1xuICAgIHRoaXMuZGVwdGgrKztcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gICAgYXNzZXJ0KFxuICAgICAgbm9kZS5pc0dlbmVyaWMgPyBub2RlLnR5cGVQYXJhbWV0ZXJzICE9IG51bGwgOiBub2RlLnR5cGVQYXJhbWV0ZXJzID09IG51bGxcbiAgICApO1xuICAgIGlmIChub2RlLmlzR2VuZXJpYykge1xuICAgICAgdGhpcy52aXNpdChub2RlLnR5cGVQYXJhbWV0ZXJzKTtcbiAgICB9XG4gICAgaWYgKG5vZGUuZXh0ZW5kc1R5cGUpIHtcbiAgICAgIHRoaXMudmlzaXQobm9kZS5leHRlbmRzVHlwZSk7XG4gICAgfVxuICAgIHRoaXMudmlzaXQobm9kZS5pbXBsZW1lbnRzVHlwZXMpO1xuICAgIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgICB0aGlzLmRlcHRoLS07XG4gIH1cblxuICB2aXNpdERvU3RhdGVtZW50KG5vZGU6IERvU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLmNvbmRpdGlvbik7XG4gICAgdGhpcy52aXNpdChub2RlLnN0YXRlbWVudCk7XG4gIH1cblxuICB2aXNpdEVtcHR5U3RhdGVtZW50KG5vZGU6IEVtcHR5U3RhdGVtZW50KTogdm9pZCB7fVxuXG4gIHZpc2l0RW51bURlY2xhcmF0aW9uKG5vZGU6IEVudW1EZWNsYXJhdGlvbiwgaXNEZWZhdWx0PzogYm9vbGVhbik6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5uYW1lKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gICAgdGhpcy52aXNpdChub2RlLnZhbHVlcyk7XG4gIH1cblxuICB2aXNpdEVudW1WYWx1ZURlY2xhcmF0aW9uKG5vZGU6IEVudW1WYWx1ZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLm5hbWUpO1xuICAgIGlmIChub2RlLmluaXRpYWxpemVyKSB7XG4gICAgICB0aGlzLnZpc2l0KG5vZGUuaW5pdGlhbGl6ZXIpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0RXhwb3J0SW1wb3J0U3RhdGVtZW50KG5vZGU6IEV4cG9ydEltcG9ydFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5uYW1lKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZXh0ZXJuYWxOYW1lKTtcbiAgfVxuXG4gIHZpc2l0RXhwb3J0TWVtYmVyKG5vZGU6IEV4cG9ydE1lbWJlcik6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5sb2NhbE5hbWUpO1xuICAgIHRoaXMudmlzaXQobm9kZS5leHBvcnRlZE5hbWUpO1xuICB9XG5cbiAgdmlzaXRFeHBvcnRTdGF0ZW1lbnQobm9kZTogRXhwb3J0U3RhdGVtZW50KTogdm9pZCB7XG4gICAgaWYgKG5vZGUucGF0aCkge1xuICAgICAgdGhpcy52aXNpdChub2RlLnBhdGgpO1xuICAgIH1cbiAgICB0aGlzLnZpc2l0KG5vZGUubWVtYmVycyk7XG4gIH1cblxuICB2aXNpdEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQobm9kZTogRXhwb3J0RGVmYXVsdFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5kZWNsYXJhdGlvbik7XG4gIH1cblxuICB2aXNpdEV4cHJlc3Npb25TdGF0ZW1lbnQobm9kZTogRXhwcmVzc2lvblN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5leHByZXNzaW9uKTtcbiAgfVxuXG4gIHZpc2l0RmllbGREZWNsYXJhdGlvbihub2RlOiBGaWVsZERlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLm5hbWUpO1xuICAgIGlmIChub2RlLnR5cGUpIHtcbiAgICAgIHRoaXMudmlzaXQobm9kZS50eXBlKTtcbiAgICB9XG4gICAgaWYgKG5vZGUuaW5pdGlhbGl6ZXIpIHtcbiAgICAgIHRoaXMudmlzaXQobm9kZS5pbml0aWFsaXplcik7XG4gICAgfVxuICAgIHRoaXMudmlzaXQobm9kZS5kZWNvcmF0b3JzKTtcbiAgfVxuXG4gIHZpc2l0Rm9yU3RhdGVtZW50KG5vZGU6IEZvclN0YXRlbWVudCk6IHZvaWQge1xuICAgIGlmIChub2RlLmluaXRpYWxpemVyKSB0aGlzLnZpc2l0KG5vZGUuaW5pdGlhbGl6ZXIpO1xuICAgIGlmIChub2RlLmNvbmRpdGlvbikgdGhpcy52aXNpdChub2RlLmNvbmRpdGlvbik7XG4gICAgaWYgKG5vZGUuaW5jcmVtZW50b3IpIHRoaXMudmlzaXQobm9kZS5pbmNyZW1lbnRvcik7XG4gICAgdGhpcy52aXNpdChub2RlLnN0YXRlbWVudCk7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uRGVjbGFyYXRpb24oXG4gICAgbm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbixcbiAgICBpc0RlZmF1bHQ/OiBib29sZWFuXG4gICk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5uYW1lKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gICAgaWYgKG5vZGUuaXNHZW5lcmljKSB7XG4gICAgICB0aGlzLnZpc2l0KG5vZGUudHlwZVBhcmFtZXRlcnMpO1xuICAgIH1cbiAgICB0aGlzLnZpc2l0KG5vZGUuc2lnbmF0dXJlKTtcbiAgICB0aGlzLmRlcHRoKys7XG4gICAgaWYgKG5vZGUuYm9keSkgdGhpcy52aXNpdChub2RlLmJvZHkpO1xuICAgIHRoaXMuZGVwdGgtLTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25Db21tb24obm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIC8vIHRoaXMudmlzaXQobm9kZS5uYW1lKVxuICB9XG5cbiAgdmlzaXRJZlN0YXRlbWVudChub2RlOiBJZlN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5jb25kaXRpb24pO1xuICAgIHRoaXMudmlzaXQobm9kZS5pZlRydWUpO1xuICAgIGlmIChub2RlLmlmRmFsc2UpIHRoaXMudmlzaXQobm9kZS5pZkZhbHNlKTtcbiAgfVxuXG4gIHZpc2l0SW1wb3J0RGVjbGFyYXRpb24obm9kZTogSW1wb3J0RGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZm9yZWlnbk5hbWUpO1xuICAgIHRoaXMudmlzaXQobm9kZS5uYW1lKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gIH1cblxuICB2aXNpdEltcG9ydFN0YXRlbWVudChub2RlOiBJbXBvcnRTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICBpZiAobm9kZS5uYW1lc3BhY2VOYW1lKSB0aGlzLnZpc2l0KG5vZGUubmFtZXNwYWNlTmFtZSk7XG4gICAgdGhpcy52aXNpdChub2RlLmRlY2xhcmF0aW9ucyk7XG4gIH1cblxuICB2aXNpdEluZGV4U2lnbmF0dXJlRGVjbGFyYXRpb24obm9kZTogSW5kZXhTaWduYXR1cmVEZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIC8vIHRoaXMudmlzaXQobm9kZS5uYW1lKTtcbiAgICAvLyB0aGlzLnZpc2l0KG5vZGUua2V5VHlwZSk7XG4gICAgLy8gdGhpcy52aXNpdChub2RlLnZhbHVlVHlwZSk7XG4gIH1cblxuICB2aXNpdEludGVyZmFjZURlY2xhcmF0aW9uKFxuICAgIG5vZGU6IEludGVyZmFjZURlY2xhcmF0aW9uLFxuICAgIGlzRGVmYXVsdD86IGJvb2xlYW5cbiAgKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLm5hbWUpO1xuICAgIGlmIChub2RlLmlzR2VuZXJpYykge1xuICAgICAgdGhpcy52aXNpdChub2RlLnR5cGVQYXJhbWV0ZXJzKTtcbiAgICB9XG4gICAgdGhpcy52aXNpdChub2RlLmltcGxlbWVudHNUeXBlcyk7XG4gICAgaWYgKG5vZGUuZXh0ZW5kc1R5cGUpIHRoaXMudmlzaXQobm9kZS5leHRlbmRzVHlwZSk7XG4gICAgdGhpcy5kZXB0aCsrO1xuICAgIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgICB0aGlzLmRlcHRoLS07XG4gIH1cblxuICB2aXNpdE1ldGhvZERlY2xhcmF0aW9uKG5vZGU6IE1ldGhvZERlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLm5hbWUpO1xuICAgIGlmIChub2RlLmlzR2VuZXJpYykge1xuICAgICAgdGhpcy52aXNpdChub2RlLnR5cGVQYXJhbWV0ZXJzKTtcbiAgICB9XG4gICAgdGhpcy52aXNpdChub2RlLnNpZ25hdHVyZSk7XG4gICAgdGhpcy52aXNpdChub2RlLmRlY29yYXRvcnMpO1xuICAgIHRoaXMuZGVwdGgrKztcbiAgICBpZiAobm9kZS5ib2R5KSB0aGlzLnZpc2l0KG5vZGUuYm9keSk7XG4gICAgdGhpcy5kZXB0aC0tO1xuICB9XG5cbiAgdmlzaXROYW1lc3BhY2VEZWNsYXJhdGlvbihcbiAgICBub2RlOiBOYW1lc3BhY2VEZWNsYXJhdGlvbixcbiAgICBpc0RlZmF1bHQ/OiBib29sZWFuXG4gICk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5uYW1lKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gICAgdGhpcy52aXNpdChub2RlLm1lbWJlcnMpO1xuICB9XG5cbiAgdmlzaXRSZXR1cm5TdGF0ZW1lbnQobm9kZTogUmV0dXJuU3RhdGVtZW50KTogdm9pZCB7XG4gICAgaWYgKG5vZGUudmFsdWUpIHRoaXMudmlzaXQobm9kZS52YWx1ZSk7XG4gIH1cblxuICB2aXNpdFN3aXRjaENhc2Uobm9kZTogU3dpdGNoQ2FzZSk6IHZvaWQge1xuICAgIGlmIChub2RlLmxhYmVsKSB0aGlzLnZpc2l0KG5vZGUubGFiZWwpO1xuICAgIHRoaXMudmlzaXQobm9kZS5zdGF0ZW1lbnRzKTtcbiAgfVxuXG4gIHZpc2l0U3dpdGNoU3RhdGVtZW50KG5vZGU6IFN3aXRjaFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5jb25kaXRpb24pO1xuICAgIHRoaXMuZGVwdGgrKztcbiAgICB0aGlzLnZpc2l0KG5vZGUuY2FzZXMpO1xuICAgIHRoaXMuZGVwdGgtLTtcbiAgfVxuXG4gIHZpc2l0VGhyb3dTdGF0ZW1lbnQobm9kZTogVGhyb3dTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUudmFsdWUpO1xuICB9XG5cbiAgdmlzaXRUcnlTdGF0ZW1lbnQobm9kZTogVHJ5U3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLnN0YXRlbWVudHMpO1xuICAgIGlmIChub2RlLmNhdGNoVmFyaWFibGUpIHRoaXMudmlzaXQobm9kZS5jYXRjaFZhcmlhYmxlKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuY2F0Y2hTdGF0ZW1lbnRzKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZmluYWxseVN0YXRlbWVudHMpO1xuICB9XG5cbiAgdmlzaXRUeXBlRGVjbGFyYXRpb24obm9kZTogVHlwZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLm5hbWUpO1xuICAgIHRoaXMudmlzaXQobm9kZS5kZWNvcmF0b3JzKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUudHlwZSk7XG4gICAgdGhpcy52aXNpdChub2RlLnR5cGVQYXJhbWV0ZXJzKTtcbiAgfVxuXG4gIHZpc2l0VmFyaWFibGVEZWNsYXJhdGlvbihub2RlOiBWYXJpYWJsZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLm5hbWUpO1xuICAgIGlmIChub2RlLnR5cGUpIHRoaXMudmlzaXQobm9kZS50eXBlKTtcbiAgICBpZiAobm9kZS5pbml0aWFsaXplcikgdGhpcy52aXNpdChub2RlLmluaXRpYWxpemVyKTtcbiAgfVxuXG4gIHZpc2l0VmFyaWFibGVTdGF0ZW1lbnQobm9kZTogVmFyaWFibGVTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gICAgdGhpcy52aXNpdChub2RlLmRlY2xhcmF0aW9ucyk7XG4gIH1cblxuICB2aXNpdFdoaWxlU3RhdGVtZW50KG5vZGU6IFdoaWxlU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLmNvbmRpdGlvbik7XG4gICAgdGhpcy5kZXB0aCsrO1xuICAgIHRoaXMudmlzaXQobm9kZS5zdGF0ZW1lbnQpO1xuICAgIHRoaXMuZGVwdGgtLTtcbiAgfVxuXG4gIHZpc2l0Vm9pZFN0YXRlbWVudChub2RlOiBWb2lkU3RhdGVtZW50KTogdm9pZCB7fVxuXG4gIHZpc2l0Q29tbWVudChub2RlOiBDb21tZW50Tm9kZSk6IHZvaWQge31cblxuICB2aXNpdERlY29yYXRvck5vZGUobm9kZTogRGVjb3JhdG9yTm9kZSk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5uYW1lKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuYXJndW1lbnRzKTtcbiAgfVxuXG4gIHZpc2l0UGFyYW1ldGVyKG5vZGU6IFBhcmFtZXRlck5vZGUpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUubmFtZSk7XG4gICAgaWYgKG5vZGUuaW1wbGljaXRGaWVsZERlY2xhcmF0aW9uKSB7XG4gICAgICB0aGlzLnZpc2l0KG5vZGUuaW1wbGljaXRGaWVsZERlY2xhcmF0aW9uKTtcbiAgICB9XG4gICAgaWYgKG5vZGUuaW5pdGlhbGl6ZXIpIHRoaXMudmlzaXQobm9kZS5pbml0aWFsaXplcik7XG4gICAgdGhpcy52aXNpdChub2RlLnR5cGUpO1xuICB9XG5cbn1cbiJdfQ==

/***/ }),

/***/ "./node_modules/assemblyscript/lib/transformer/src/index.ts":
/*!******************************************************************!*\
  !*** ./node_modules/assemblyscript/lib/transformer/src/index.ts ***!
  \******************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

function __export(m) {
    for (var p in m) if (!exports.hasOwnProperty(p)) exports[p] = m[p];
}
Object.defineProperty(exports, "__esModule", { value: true });
__export(__webpack_require__(/*! ./transformer */ "./node_modules/assemblyscript/lib/transformer/src/transformer.ts"));
__export(__webpack_require__(/*! ./ASTBuilder */ "./node_modules/assemblyscript/lib/transformer/src/ASTBuilder.ts"));
__export(__webpack_require__(/*! ./visitor */ "./node_modules/assemblyscript/lib/transformer/src/visitor.ts"));
__export(__webpack_require__(/*! ./base */ "./node_modules/assemblyscript/lib/transformer/src/base.ts"));
__export(__webpack_require__(/*! ./ast */ "./node_modules/assemblyscript/lib/transformer/src/ast.ts"));
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7QUFDQSxtQ0FBOEI7QUFDOUIsa0NBQTZCO0FBQzdCLCtCQUEwQjtBQUMxQiw0QkFBdUI7QUFFdkIsMkJBQXNCIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0ICogZnJvbSBcIi4vY29tcGlsZXJcIjtcbmV4cG9ydCAqIGZyb20gXCIuL3RyYW5zZm9ybWVyXCI7XG5leHBvcnQgKiBmcm9tIFwiLi9BU1RCdWlsZGVyXCI7XG5leHBvcnQgKiBmcm9tIFwiLi92aXNpdG9yXCI7XG5leHBvcnQgKiBmcm9tIFwiLi9iYXNlXCI7XG5leHBvcnQgKiBmcm9tIFwiLi9leGFtcGxlc1wiO1xuZXhwb3J0ICogZnJvbSBcIi4vYXN0XCI7XG4iXX0=

/***/ }),

/***/ "./node_modules/assemblyscript/lib/transformer/src/parsing.ts":
/*!********************************************************************!*\
  !*** ./node_modules/assemblyscript/lib/transformer/src/parsing.ts ***!
  \********************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

Object.defineProperty(exports, "__esModule", { value: true });
/** Named token types. */
var Token;
(function (Token) {
    // keywords
    // discarded: ANY, BOOLEAN, NEVER, NUMBER, STRING, SYMBOL, UNDEFINED, LESSTHAN_SLASH
    Token[Token["ABSTRACT"] = 0] = "ABSTRACT";
    Token[Token["AS"] = 1] = "AS";
    Token[Token["ASYNC"] = 2] = "ASYNC";
    Token[Token["AWAIT"] = 3] = "AWAIT";
    Token[Token["BREAK"] = 4] = "BREAK";
    Token[Token["CASE"] = 5] = "CASE";
    Token[Token["CATCH"] = 6] = "CATCH";
    Token[Token["CLASS"] = 7] = "CLASS";
    Token[Token["CONST"] = 8] = "CONST";
    Token[Token["CONTINUE"] = 9] = "CONTINUE";
    Token[Token["CONSTRUCTOR"] = 10] = "CONSTRUCTOR";
    Token[Token["DEBUGGER"] = 11] = "DEBUGGER";
    Token[Token["DECLARE"] = 12] = "DECLARE";
    Token[Token["DEFAULT"] = 13] = "DEFAULT";
    Token[Token["DELETE"] = 14] = "DELETE";
    Token[Token["DO"] = 15] = "DO";
    Token[Token["ELSE"] = 16] = "ELSE";
    Token[Token["ENUM"] = 17] = "ENUM";
    Token[Token["EXPORT"] = 18] = "EXPORT";
    Token[Token["EXTENDS"] = 19] = "EXTENDS";
    Token[Token["FALSE"] = 20] = "FALSE";
    Token[Token["FINALLY"] = 21] = "FINALLY";
    Token[Token["FOR"] = 22] = "FOR";
    Token[Token["FROM"] = 23] = "FROM";
    Token[Token["FUNCTION"] = 24] = "FUNCTION";
    Token[Token["GET"] = 25] = "GET";
    Token[Token["IF"] = 26] = "IF";
    Token[Token["IMPLEMENTS"] = 27] = "IMPLEMENTS";
    Token[Token["IMPORT"] = 28] = "IMPORT";
    Token[Token["IN"] = 29] = "IN";
    Token[Token["INSTANCEOF"] = 30] = "INSTANCEOF";
    Token[Token["INTERFACE"] = 31] = "INTERFACE";
    Token[Token["IS"] = 32] = "IS";
    Token[Token["KEYOF"] = 33] = "KEYOF";
    Token[Token["LET"] = 34] = "LET";
    Token[Token["MODULE"] = 35] = "MODULE";
    Token[Token["NAMESPACE"] = 36] = "NAMESPACE";
    Token[Token["NEW"] = 37] = "NEW";
    Token[Token["NULL"] = 38] = "NULL";
    Token[Token["OF"] = 39] = "OF";
    Token[Token["PACKAGE"] = 40] = "PACKAGE";
    Token[Token["PRIVATE"] = 41] = "PRIVATE";
    Token[Token["PROTECTED"] = 42] = "PROTECTED";
    Token[Token["PUBLIC"] = 43] = "PUBLIC";
    Token[Token["READONLY"] = 44] = "READONLY";
    Token[Token["RETURN"] = 45] = "RETURN";
    Token[Token["SET"] = 46] = "SET";
    Token[Token["STATIC"] = 47] = "STATIC";
    Token[Token["SUPER"] = 48] = "SUPER";
    Token[Token["SWITCH"] = 49] = "SWITCH";
    Token[Token["THIS"] = 50] = "THIS";
    Token[Token["THROW"] = 51] = "THROW";
    Token[Token["TRUE"] = 52] = "TRUE";
    Token[Token["TRY"] = 53] = "TRY";
    Token[Token["TYPE"] = 54] = "TYPE";
    Token[Token["TYPEOF"] = 55] = "TYPEOF";
    Token[Token["VAR"] = 56] = "VAR";
    Token[Token["VOID"] = 57] = "VOID";
    Token[Token["WHILE"] = 58] = "WHILE";
    Token[Token["WITH"] = 59] = "WITH";
    Token[Token["YIELD"] = 60] = "YIELD";
    // punctuation
    Token[Token["OPENBRACE"] = 61] = "OPENBRACE";
    Token[Token["CLOSEBRACE"] = 62] = "CLOSEBRACE";
    Token[Token["OPENPAREN"] = 63] = "OPENPAREN";
    Token[Token["CLOSEPAREN"] = 64] = "CLOSEPAREN";
    Token[Token["OPENBRACKET"] = 65] = "OPENBRACKET";
    Token[Token["CLOSEBRACKET"] = 66] = "CLOSEBRACKET";
    Token[Token["DOT"] = 67] = "DOT";
    Token[Token["DOT_DOT_DOT"] = 68] = "DOT_DOT_DOT";
    Token[Token["SEMICOLON"] = 69] = "SEMICOLON";
    Token[Token["COMMA"] = 70] = "COMMA";
    Token[Token["LESSTHAN"] = 71] = "LESSTHAN";
    Token[Token["GREATERTHAN"] = 72] = "GREATERTHAN";
    Token[Token["LESSTHAN_EQUALS"] = 73] = "LESSTHAN_EQUALS";
    Token[Token["GREATERTHAN_EQUALS"] = 74] = "GREATERTHAN_EQUALS";
    Token[Token["EQUALS_EQUALS"] = 75] = "EQUALS_EQUALS";
    Token[Token["EXCLAMATION_EQUALS"] = 76] = "EXCLAMATION_EQUALS";
    Token[Token["EQUALS_EQUALS_EQUALS"] = 77] = "EQUALS_EQUALS_EQUALS";
    Token[Token["EXCLAMATION_EQUALS_EQUALS"] = 78] = "EXCLAMATION_EQUALS_EQUALS";
    Token[Token["EQUALS_GREATERTHAN"] = 79] = "EQUALS_GREATERTHAN";
    Token[Token["PLUS"] = 80] = "PLUS";
    Token[Token["MINUS"] = 81] = "MINUS";
    Token[Token["ASTERISK_ASTERISK"] = 82] = "ASTERISK_ASTERISK";
    Token[Token["ASTERISK"] = 83] = "ASTERISK";
    Token[Token["SLASH"] = 84] = "SLASH";
    Token[Token["PERCENT"] = 85] = "PERCENT";
    Token[Token["PLUS_PLUS"] = 86] = "PLUS_PLUS";
    Token[Token["MINUS_MINUS"] = 87] = "MINUS_MINUS";
    Token[Token["LESSTHAN_LESSTHAN"] = 88] = "LESSTHAN_LESSTHAN";
    Token[Token["GREATERTHAN_GREATERTHAN"] = 89] = "GREATERTHAN_GREATERTHAN";
    Token[Token["GREATERTHAN_GREATERTHAN_GREATERTHAN"] = 90] = "GREATERTHAN_GREATERTHAN_GREATERTHAN";
    Token[Token["AMPERSAND"] = 91] = "AMPERSAND";
    Token[Token["BAR"] = 92] = "BAR";
    Token[Token["CARET"] = 93] = "CARET";
    Token[Token["EXCLAMATION"] = 94] = "EXCLAMATION";
    Token[Token["TILDE"] = 95] = "TILDE";
    Token[Token["AMPERSAND_AMPERSAND"] = 96] = "AMPERSAND_AMPERSAND";
    Token[Token["BAR_BAR"] = 97] = "BAR_BAR";
    Token[Token["QUESTION"] = 98] = "QUESTION";
    Token[Token["COLON"] = 99] = "COLON";
    Token[Token["EQUALS"] = 100] = "EQUALS";
    Token[Token["PLUS_EQUALS"] = 101] = "PLUS_EQUALS";
    Token[Token["MINUS_EQUALS"] = 102] = "MINUS_EQUALS";
    Token[Token["ASTERISK_EQUALS"] = 103] = "ASTERISK_EQUALS";
    Token[Token["ASTERISK_ASTERISK_EQUALS"] = 104] = "ASTERISK_ASTERISK_EQUALS";
    Token[Token["SLASH_EQUALS"] = 105] = "SLASH_EQUALS";
    Token[Token["PERCENT_EQUALS"] = 106] = "PERCENT_EQUALS";
    Token[Token["LESSTHAN_LESSTHAN_EQUALS"] = 107] = "LESSTHAN_LESSTHAN_EQUALS";
    Token[Token["GREATERTHAN_GREATERTHAN_EQUALS"] = 108] = "GREATERTHAN_GREATERTHAN_EQUALS";
    Token[Token["GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS"] = 109] = "GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS";
    Token[Token["AMPERSAND_EQUALS"] = 110] = "AMPERSAND_EQUALS";
    Token[Token["BAR_EQUALS"] = 111] = "BAR_EQUALS";
    Token[Token["CARET_EQUALS"] = 112] = "CARET_EQUALS";
    Token[Token["AT"] = 113] = "AT";
    // literals
    Token[Token["IDENTIFIER"] = 114] = "IDENTIFIER";
    Token[Token["STRINGLITERAL"] = 115] = "STRINGLITERAL";
    Token[Token["INTEGERLITERAL"] = 116] = "INTEGERLITERAL";
    Token[Token["FLOATLITERAL"] = 117] = "FLOATLITERAL";
    // meta
    Token[Token["INVALID"] = 118] = "INVALID";
    Token[Token["ENDOFFILE"] = 119] = "ENDOFFILE";
})(Token = exports.Token || (exports.Token = {}));
function operatorTokenToString(token) {
    switch (token) {
        case 14 /* DELETE */: return "delete";
        case 29 /* IN */: return "in";
        case 30 /* INSTANCEOF */: return "instanceof";
        case 37 /* NEW */: return "new";
        case 55 /* TYPEOF */: return "typeof";
        case 57 /* VOID */: return "void";
        case 60 /* YIELD */: return "yield";
        case 68 /* DOT_DOT_DOT */: return "...";
        case 70 /* COMMA */: return ",";
        case 71 /* LESSTHAN */: return "<";
        case 72 /* GREATERTHAN */: return ">";
        case 73 /* LESSTHAN_EQUALS */: return "<=";
        case 74 /* GREATERTHAN_EQUALS */: return ">=";
        case 75 /* EQUALS_EQUALS */: return "==";
        case 76 /* EXCLAMATION_EQUALS */: return "!=";
        case 77 /* EQUALS_EQUALS_EQUALS */: return "===";
        case 78 /* EXCLAMATION_EQUALS_EQUALS */: return "!==";
        case 80 /* PLUS */: return "+";
        case 81 /* MINUS */: return "-";
        case 82 /* ASTERISK_ASTERISK */: return "**";
        case 83 /* ASTERISK */: return "*";
        case 84 /* SLASH */: return "/";
        case 85 /* PERCENT */: return "%";
        case 86 /* PLUS_PLUS */: return "++";
        case 87 /* MINUS_MINUS */: return "--";
        case 88 /* LESSTHAN_LESSTHAN */: return "<<";
        case 89 /* GREATERTHAN_GREATERTHAN */: return ">>";
        case 90 /* GREATERTHAN_GREATERTHAN_GREATERTHAN */: return ">>>";
        case 91 /* AMPERSAND */: return "&";
        case 92 /* BAR */: return "|";
        case 93 /* CARET */: return "^";
        case 94 /* EXCLAMATION */: return "!";
        case 95 /* TILDE */: return "~";
        case 96 /* AMPERSAND_AMPERSAND */: return "&&";
        case 97 /* BAR_BAR */: return "||";
        case 100 /* EQUALS */: return "=";
        case 101 /* PLUS_EQUALS */: return "+=";
        case 102 /* MINUS_EQUALS */: return "-=";
        case 103 /* ASTERISK_EQUALS */: return "*=";
        case 104 /* ASTERISK_ASTERISK_EQUALS */: return "**=";
        case 105 /* SLASH_EQUALS */: return "/=";
        case 106 /* PERCENT_EQUALS */: return "%=";
        case 107 /* LESSTHAN_LESSTHAN_EQUALS */: return "<<=";
        case 108 /* GREATERTHAN_GREATERTHAN_EQUALS */: return ">>=";
        case 109 /* GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS */: return ">>>=";
        case 110 /* AMPERSAND_EQUALS */: return "&=";
        case 111 /* BAR_EQUALS */: return "|=";
        case 112 /* CARET_EQUALS */: return "^=";
        default: {
            assert(false);
            return "";
        }
    }
}
exports.operatorTokenToString = operatorTokenToString;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGFyc2luZy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9wYXJzaW5nLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7O0FBQ0EseUJBQXlCO0FBQ3pCLElBQWtCLEtBc0lqQjtBQXRJRCxXQUFrQixLQUFLO0lBRXJCLFdBQVc7SUFDWCxvRkFBb0Y7SUFFcEYseUNBQVEsQ0FBQTtJQUNSLDZCQUFFLENBQUE7SUFDRixtQ0FBSyxDQUFBO0lBQ0wsbUNBQUssQ0FBQTtJQUNMLG1DQUFLLENBQUE7SUFDTCxpQ0FBSSxDQUFBO0lBQ0osbUNBQUssQ0FBQTtJQUNMLG1DQUFLLENBQUE7SUFDTCxtQ0FBSyxDQUFBO0lBQ0wseUNBQVEsQ0FBQTtJQUNSLGdEQUFXLENBQUE7SUFDWCwwQ0FBUSxDQUFBO0lBQ1Isd0NBQU8sQ0FBQTtJQUNQLHdDQUFPLENBQUE7SUFDUCxzQ0FBTSxDQUFBO0lBQ04sOEJBQUUsQ0FBQTtJQUNGLGtDQUFJLENBQUE7SUFDSixrQ0FBSSxDQUFBO0lBQ0osc0NBQU0sQ0FBQTtJQUNOLHdDQUFPLENBQUE7SUFDUCxvQ0FBSyxDQUFBO0lBQ0wsd0NBQU8sQ0FBQTtJQUNQLGdDQUFHLENBQUE7SUFDSCxrQ0FBSSxDQUFBO0lBQ0osMENBQVEsQ0FBQTtJQUNSLGdDQUFHLENBQUE7SUFDSCw4QkFBRSxDQUFBO0lBQ0YsOENBQVUsQ0FBQTtJQUNWLHNDQUFNLENBQUE7SUFDTiw4QkFBRSxDQUFBO0lBQ0YsOENBQVUsQ0FBQTtJQUNWLDRDQUFTLENBQUE7SUFDVCw4QkFBRSxDQUFBO0lBQ0Ysb0NBQUssQ0FBQTtJQUNMLGdDQUFHLENBQUE7SUFDSCxzQ0FBTSxDQUFBO0lBQ04sNENBQVMsQ0FBQTtJQUNULGdDQUFHLENBQUE7SUFDSCxrQ0FBSSxDQUFBO0lBQ0osOEJBQUUsQ0FBQTtJQUNGLHdDQUFPLENBQUE7SUFDUCx3Q0FBTyxDQUFBO0lBQ1AsNENBQVMsQ0FBQTtJQUNULHNDQUFNLENBQUE7SUFDTiwwQ0FBUSxDQUFBO0lBQ1Isc0NBQU0sQ0FBQTtJQUNOLGdDQUFHLENBQUE7SUFDSCxzQ0FBTSxDQUFBO0lBQ04sb0NBQUssQ0FBQTtJQUNMLHNDQUFNLENBQUE7SUFDTixrQ0FBSSxDQUFBO0lBQ0osb0NBQUssQ0FBQTtJQUNMLGtDQUFJLENBQUE7SUFDSixnQ0FBRyxDQUFBO0lBQ0gsa0NBQUksQ0FBQTtJQUNKLHNDQUFNLENBQUE7SUFDTixnQ0FBRyxDQUFBO0lBQ0gsa0NBQUksQ0FBQTtJQUNKLG9DQUFLLENBQUE7SUFDTCxrQ0FBSSxDQUFBO0lBQ0osb0NBQUssQ0FBQTtJQUVMLGNBQWM7SUFFZCw0Q0FBUyxDQUFBO0lBQ1QsOENBQVUsQ0FBQTtJQUNWLDRDQUFTLENBQUE7SUFDVCw4Q0FBVSxDQUFBO0lBQ1YsZ0RBQVcsQ0FBQTtJQUNYLGtEQUFZLENBQUE7SUFDWixnQ0FBRyxDQUFBO0lBQ0gsZ0RBQVcsQ0FBQTtJQUNYLDRDQUFTLENBQUE7SUFDVCxvQ0FBSyxDQUFBO0lBQ0wsMENBQVEsQ0FBQTtJQUNSLGdEQUFXLENBQUE7SUFDWCx3REFBZSxDQUFBO0lBQ2YsOERBQWtCLENBQUE7SUFDbEIsb0RBQWEsQ0FBQTtJQUNiLDhEQUFrQixDQUFBO0lBQ2xCLGtFQUFvQixDQUFBO0lBQ3BCLDRFQUF5QixDQUFBO0lBQ3pCLDhEQUFrQixDQUFBO0lBQ2xCLGtDQUFJLENBQUE7SUFDSixvQ0FBSyxDQUFBO0lBQ0wsNERBQWlCLENBQUE7SUFDakIsMENBQVEsQ0FBQTtJQUNSLG9DQUFLLENBQUE7SUFDTCx3Q0FBTyxDQUFBO0lBQ1AsNENBQVMsQ0FBQTtJQUNULGdEQUFXLENBQUE7SUFDWCw0REFBaUIsQ0FBQTtJQUNqQix3RUFBdUIsQ0FBQTtJQUN2QixnR0FBbUMsQ0FBQTtJQUNuQyw0Q0FBUyxDQUFBO0lBQ1QsZ0NBQUcsQ0FBQTtJQUNILG9DQUFLLENBQUE7SUFDTCxnREFBVyxDQUFBO0lBQ1gsb0NBQUssQ0FBQTtJQUNMLGdFQUFtQixDQUFBO0lBQ25CLHdDQUFPLENBQUE7SUFDUCwwQ0FBUSxDQUFBO0lBQ1Isb0NBQUssQ0FBQTtJQUNMLHVDQUFNLENBQUE7SUFDTixpREFBVyxDQUFBO0lBQ1gsbURBQVksQ0FBQTtJQUNaLHlEQUFlLENBQUE7SUFDZiwyRUFBd0IsQ0FBQTtJQUN4QixtREFBWSxDQUFBO0lBQ1osdURBQWMsQ0FBQTtJQUNkLDJFQUF3QixDQUFBO0lBQ3hCLHVGQUE4QixDQUFBO0lBQzlCLCtHQUEwQyxDQUFBO0lBQzFDLDJEQUFnQixDQUFBO0lBQ2hCLCtDQUFVLENBQUE7SUFDVixtREFBWSxDQUFBO0lBQ1osK0JBQUUsQ0FBQTtJQUVGLFdBQVc7SUFFWCwrQ0FBVSxDQUFBO0lBQ1YscURBQWEsQ0FBQTtJQUNiLHVEQUFjLENBQUE7SUFDZCxtREFBWSxDQUFBO0lBRVosT0FBTztJQUVQLHlDQUFPLENBQUE7SUFDUCw2Q0FBUyxDQUFBO0FBQ1gsQ0FBQyxFQXRJaUIsS0FBSyxHQUFMLGFBQUssS0FBTCxhQUFLLFFBc0l0QjtBQUVELFNBQWdCLHFCQUFxQixDQUFDLEtBQVk7SUFDaEQsUUFBUSxLQUFLLEVBQUU7UUFDYixvQkFBaUIsQ0FBQyxDQUFDLE9BQU8sUUFBUSxDQUFDO1FBQ25DLGdCQUFhLENBQUMsQ0FBQyxPQUFPLElBQUksQ0FBQztRQUMzQix3QkFBcUIsQ0FBQyxDQUFDLE9BQU8sWUFBWSxDQUFDO1FBQzNDLGlCQUFjLENBQUMsQ0FBQyxPQUFPLEtBQUssQ0FBQztRQUM3QixvQkFBaUIsQ0FBQyxDQUFDLE9BQU8sUUFBUSxDQUFDO1FBQ25DLGtCQUFlLENBQUMsQ0FBQyxPQUFPLE1BQU0sQ0FBQztRQUMvQixtQkFBZ0IsQ0FBQyxDQUFDLE9BQU8sT0FBTyxDQUFDO1FBQ2pDLHlCQUFzQixDQUFDLENBQUMsT0FBTyxLQUFLLENBQUM7UUFDckMsbUJBQWdCLENBQUMsQ0FBQyxPQUFPLEdBQUcsQ0FBQztRQUM3QixzQkFBbUIsQ0FBQyxDQUFDLE9BQU8sR0FBRyxDQUFDO1FBQ2hDLHlCQUFzQixDQUFDLENBQUMsT0FBTyxHQUFHLENBQUM7UUFDbkMsNkJBQTBCLENBQUMsQ0FBQyxPQUFPLElBQUksQ0FBQztRQUN4QyxnQ0FBNkIsQ0FBQyxDQUFDLE9BQU8sSUFBSSxDQUFDO1FBQzNDLDJCQUF3QixDQUFDLENBQUMsT0FBTyxJQUFJLENBQUM7UUFDdEMsZ0NBQTZCLENBQUMsQ0FBQyxPQUFPLElBQUksQ0FBQztRQUMzQyxrQ0FBK0IsQ0FBQyxDQUFDLE9BQU8sS0FBSyxDQUFDO1FBQzlDLHVDQUFvQyxDQUFDLENBQUMsT0FBTyxLQUFLLENBQUM7UUFDbkQsa0JBQWUsQ0FBQyxDQUFDLE9BQU8sR0FBRyxDQUFDO1FBQzVCLG1CQUFnQixDQUFDLENBQUMsT0FBTyxHQUFHLENBQUM7UUFDN0IsK0JBQTRCLENBQUMsQ0FBQyxPQUFPLElBQUksQ0FBQztRQUMxQyxzQkFBbUIsQ0FBQyxDQUFDLE9BQU8sR0FBRyxDQUFDO1FBQ2hDLG1CQUFnQixDQUFDLENBQUMsT0FBTyxHQUFHLENBQUM7UUFDN0IscUJBQWtCLENBQUMsQ0FBQyxPQUFPLEdBQUcsQ0FBQztRQUMvQix1QkFBb0IsQ0FBQyxDQUFDLE9BQU8sSUFBSSxDQUFDO1FBQ2xDLHlCQUFzQixDQUFDLENBQUMsT0FBTyxJQUFJLENBQUM7UUFDcEMsK0JBQTRCLENBQUMsQ0FBQyxPQUFPLElBQUksQ0FBQztRQUMxQyxxQ0FBa0MsQ0FBQyxDQUFDLE9BQU8sSUFBSSxDQUFDO1FBQ2hELGlEQUE4QyxDQUFDLENBQUMsT0FBTyxLQUFLLENBQUM7UUFDN0QsdUJBQW9CLENBQUMsQ0FBQyxPQUFPLEdBQUcsQ0FBQztRQUNqQyxpQkFBYyxDQUFDLENBQUMsT0FBTyxHQUFHLENBQUM7UUFDM0IsbUJBQWdCLENBQUMsQ0FBQyxPQUFPLEdBQUcsQ0FBQztRQUM3Qix5QkFBc0IsQ0FBQyxDQUFDLE9BQU8sR0FBRyxDQUFDO1FBQ25DLG1CQUFnQixDQUFDLENBQUMsT0FBTyxHQUFHLENBQUM7UUFDN0IsaUNBQThCLENBQUMsQ0FBQyxPQUFPLElBQUksQ0FBQztRQUM1QyxxQkFBa0IsQ0FBQyxDQUFDLE9BQU8sSUFBSSxDQUFDO1FBQ2hDLHFCQUFpQixDQUFDLENBQUMsT0FBTyxHQUFHLENBQUM7UUFDOUIsMEJBQXNCLENBQUMsQ0FBQyxPQUFPLElBQUksQ0FBQztRQUNwQywyQkFBdUIsQ0FBQyxDQUFDLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLDhCQUEwQixDQUFDLENBQUMsT0FBTyxJQUFJLENBQUM7UUFDeEMsdUNBQW1DLENBQUMsQ0FBQyxPQUFPLEtBQUssQ0FBQztRQUNsRCwyQkFBdUIsQ0FBQyxDQUFDLE9BQU8sSUFBSSxDQUFDO1FBQ3JDLDZCQUF5QixDQUFDLENBQUMsT0FBTyxJQUFJLENBQUM7UUFDdkMsdUNBQW1DLENBQUMsQ0FBQyxPQUFPLEtBQUssQ0FBQztRQUNsRCw2Q0FBeUMsQ0FBQyxDQUFDLE9BQU8sS0FBSyxDQUFDO1FBQ3hELHlEQUFxRCxDQUFDLENBQUMsT0FBTyxNQUFNLENBQUM7UUFDckUsK0JBQTJCLENBQUMsQ0FBQyxPQUFPLElBQUksQ0FBQztRQUN6Qyx5QkFBcUIsQ0FBQyxDQUFDLE9BQU8sSUFBSSxDQUFDO1FBQ25DLDJCQUF1QixDQUFDLENBQUMsT0FBTyxJQUFJLENBQUM7UUFDckMsT0FBTyxDQUFDLENBQUM7WUFDUCxNQUFNLENBQUMsS0FBSyxDQUFDLENBQUM7WUFDZCxPQUFPLEVBQUUsQ0FBQztTQUNYO0tBQ0Y7QUFDSCxDQUFDO0FBdkRELHNEQXVEQyIsInNvdXJjZXNDb250ZW50IjpbIlxuLyoqIE5hbWVkIHRva2VuIHR5cGVzLiAqL1xuZXhwb3J0IGNvbnN0IGVudW0gVG9rZW4ge1xuXG4gIC8vIGtleXdvcmRzXG4gIC8vIGRpc2NhcmRlZDogQU5ZLCBCT09MRUFOLCBORVZFUiwgTlVNQkVSLCBTVFJJTkcsIFNZTUJPTCwgVU5ERUZJTkVELCBMRVNTVEhBTl9TTEFTSFxuXG4gIEFCU1RSQUNULFxuICBBUyxcbiAgQVNZTkMsXG4gIEFXQUlULCAgICAgICAgLy8gRVMyMDE3XG4gIEJSRUFLLCAgICAgICAgLy8gRVMyMDE3XG4gIENBU0UsICAgICAgICAgLy8gRVMyMDE3XG4gIENBVENILCAgICAgICAgLy8gRVMyMDE3XG4gIENMQVNTLCAgICAgICAgLy8gRVMyMDE3XG4gIENPTlNULCAgICAgICAgLy8gRVMyMDE3XG4gIENPTlRJTlVFLCAgICAgLy8gRVMyMDE3XG4gIENPTlNUUlVDVE9SLFxuICBERUJVR0dFUiwgICAgIC8vIEVTMjAxN1xuICBERUNMQVJFLFxuICBERUZBVUxULCAgICAgIC8vIEVTMjAxN1xuICBERUxFVEUsICAgICAgIC8vIEVTMjAxN1xuICBETywgICAgICAgICAgIC8vIEVTMjAxN1xuICBFTFNFLCAgICAgICAgIC8vIEVTMjAxN1xuICBFTlVNLCAgICAgICAgIC8vIEVTMjAxNyBmdXR1cmVcbiAgRVhQT1JULCAgICAgICAvLyBFUzIwMTdcbiAgRVhURU5EUywgICAgICAvLyBFUzIwMTdcbiAgRkFMU0UsICAgICAgICAvLyBFU1xuICBGSU5BTExZLCAgICAgIC8vIEVTMjAxN1xuICBGT1IsICAgICAgICAgIC8vIEVTMjAxN1xuICBGUk9NLCAgICAgICAgIC8vIEFTIHBvc3NpYmxlIGlkZW50aWZpZXJcbiAgRlVOQ1RJT04sICAgICAvLyBFUzIwMTdcbiAgR0VULFxuICBJRiwgICAgICAgICAgIC8vIEVTMjAxN1xuICBJTVBMRU1FTlRTLCAgIC8vIEVTMjAxNyBub24tbGV4aWNhbFxuICBJTVBPUlQsICAgICAgIC8vIEVTMjAxN1xuICBJTiwgICAgICAgICAgIC8vIEVTMjAxN1xuICBJTlNUQU5DRU9GLCAgIC8vIEVTMjAxN1xuICBJTlRFUkZBQ0UsICAgIC8vIEVTMjAxNyBub24tbGV4aWNhbFxuICBJUyxcbiAgS0VZT0YsXG4gIExFVCwgICAgICAgICAgLy8gRVMyMDE3IG5vbi1sZXhpY2FsXG4gIE1PRFVMRSwgICAgICAgLy8gQVMgcG9zc2libGUgaWRlbnRpZmllclxuICBOQU1FU1BBQ0UsICAgIC8vIEFTIHBvc3NpYmxlIGlkZW50aWZpZXJcbiAgTkVXLCAgICAgICAgICAvLyBFUzIwMTdcbiAgTlVMTCwgICAgICAgICAvLyBFU1xuICBPRixcbiAgUEFDS0FHRSwgICAgICAvLyBFUzIwMTcgbm9uLWxleGljYWxcbiAgUFJJVkFURSwgICAgICAvLyBFUzIwMTcgbm9uLWxleGljYWxcbiAgUFJPVEVDVEVELCAgICAvLyBFUzIwMTcgbm9uLWxleGljYWxcbiAgUFVCTElDLCAgICAgICAvLyBFUzIwMTcgbm9uLWxleGljYWxcbiAgUkVBRE9OTFksXG4gIFJFVFVSTiwgICAgICAgLy8gRVMyMDE3XG4gIFNFVCxcbiAgU1RBVElDLCAgICAgICAvLyBFUzIwMTcgbm9uLWxleGljYWxcbiAgU1VQRVIsICAgICAgICAvLyBFUzIwMTdcbiAgU1dJVENILCAgICAgICAvLyBFUzIwMTdcbiAgVEhJUywgICAgICAgICAvLyBFUzIwMTdcbiAgVEhST1csICAgICAgICAvLyBFUzIwMTdcbiAgVFJVRSwgICAgICAgICAvLyBFU1xuICBUUlksICAgICAgICAgIC8vIEVTMjAxN1xuICBUWVBFLCAgICAgICAgIC8vIEFTIHBvc3NpYmxlIGlkZW50aWZpZXJcbiAgVFlQRU9GLCAgICAgICAvLyBFUzIwMTdcbiAgVkFSLCAgICAgICAgICAvLyBFUzIwMTdcbiAgVk9JRCwgICAgICAgICAvLyBFUzIwMTdcbiAgV0hJTEUsICAgICAgICAvLyBFUzIwMTdcbiAgV0lUSCwgICAgICAgICAvLyBFUzIwMTdcbiAgWUlFTEQsICAgICAgICAvLyBFUzIwMTdcblxuICAvLyBwdW5jdHVhdGlvblxuXG4gIE9QRU5CUkFDRSxcbiAgQ0xPU0VCUkFDRSxcbiAgT1BFTlBBUkVOLFxuICBDTE9TRVBBUkVOLFxuICBPUEVOQlJBQ0tFVCxcbiAgQ0xPU0VCUkFDS0VULFxuICBET1QsXG4gIERPVF9ET1RfRE9ULFxuICBTRU1JQ09MT04sXG4gIENPTU1BLFxuICBMRVNTVEhBTixcbiAgR1JFQVRFUlRIQU4sXG4gIExFU1NUSEFOX0VRVUFMUyxcbiAgR1JFQVRFUlRIQU5fRVFVQUxTLFxuICBFUVVBTFNfRVFVQUxTLFxuICBFWENMQU1BVElPTl9FUVVBTFMsXG4gIEVRVUFMU19FUVVBTFNfRVFVQUxTLFxuICBFWENMQU1BVElPTl9FUVVBTFNfRVFVQUxTLFxuICBFUVVBTFNfR1JFQVRFUlRIQU4sXG4gIFBMVVMsXG4gIE1JTlVTLFxuICBBU1RFUklTS19BU1RFUklTSyxcbiAgQVNURVJJU0ssXG4gIFNMQVNILFxuICBQRVJDRU5ULFxuICBQTFVTX1BMVVMsXG4gIE1JTlVTX01JTlVTLFxuICBMRVNTVEhBTl9MRVNTVEhBTixcbiAgR1JFQVRFUlRIQU5fR1JFQVRFUlRIQU4sXG4gIEdSRUFURVJUSEFOX0dSRUFURVJUSEFOX0dSRUFURVJUSEFOLFxuICBBTVBFUlNBTkQsXG4gIEJBUixcbiAgQ0FSRVQsXG4gIEVYQ0xBTUFUSU9OLFxuICBUSUxERSxcbiAgQU1QRVJTQU5EX0FNUEVSU0FORCxcbiAgQkFSX0JBUixcbiAgUVVFU1RJT04sXG4gIENPTE9OLFxuICBFUVVBTFMsXG4gIFBMVVNfRVFVQUxTLFxuICBNSU5VU19FUVVBTFMsXG4gIEFTVEVSSVNLX0VRVUFMUyxcbiAgQVNURVJJU0tfQVNURVJJU0tfRVFVQUxTLFxuICBTTEFTSF9FUVVBTFMsXG4gIFBFUkNFTlRfRVFVQUxTLFxuICBMRVNTVEhBTl9MRVNTVEhBTl9FUVVBTFMsXG4gIEdSRUFURVJUSEFOX0dSRUFURVJUSEFOX0VRVUFMUyxcbiAgR1JFQVRFUlRIQU5fR1JFQVRFUlRIQU5fR1JFQVRFUlRIQU5fRVFVQUxTLFxuICBBTVBFUlNBTkRfRVFVQUxTLFxuICBCQVJfRVFVQUxTLFxuICBDQVJFVF9FUVVBTFMsXG4gIEFULFxuXG4gIC8vIGxpdGVyYWxzXG5cbiAgSURFTlRJRklFUixcbiAgU1RSSU5HTElURVJBTCxcbiAgSU5URUdFUkxJVEVSQUwsXG4gIEZMT0FUTElURVJBTCxcblxuICAvLyBtZXRhXG5cbiAgSU5WQUxJRCxcbiAgRU5ET0ZGSUxFXG59XG5cbmV4cG9ydCBmdW5jdGlvbiBvcGVyYXRvclRva2VuVG9TdHJpbmcodG9rZW46IFRva2VuKTogc3RyaW5nIHtcbiAgc3dpdGNoICh0b2tlbikge1xuICAgIGNhc2UgVG9rZW4uREVMRVRFOiByZXR1cm4gXCJkZWxldGVcIjtcbiAgICBjYXNlIFRva2VuLklOOiByZXR1cm4gXCJpblwiO1xuICAgIGNhc2UgVG9rZW4uSU5TVEFOQ0VPRjogcmV0dXJuIFwiaW5zdGFuY2VvZlwiO1xuICAgIGNhc2UgVG9rZW4uTkVXOiByZXR1cm4gXCJuZXdcIjtcbiAgICBjYXNlIFRva2VuLlRZUEVPRjogcmV0dXJuIFwidHlwZW9mXCI7XG4gICAgY2FzZSBUb2tlbi5WT0lEOiByZXR1cm4gXCJ2b2lkXCI7XG4gICAgY2FzZSBUb2tlbi5ZSUVMRDogcmV0dXJuIFwieWllbGRcIjtcbiAgICBjYXNlIFRva2VuLkRPVF9ET1RfRE9UOiByZXR1cm4gXCIuLi5cIjtcbiAgICBjYXNlIFRva2VuLkNPTU1BOiByZXR1cm4gXCIsXCI7XG4gICAgY2FzZSBUb2tlbi5MRVNTVEhBTjogcmV0dXJuIFwiPFwiO1xuICAgIGNhc2UgVG9rZW4uR1JFQVRFUlRIQU46IHJldHVybiBcIj5cIjtcbiAgICBjYXNlIFRva2VuLkxFU1NUSEFOX0VRVUFMUzogcmV0dXJuIFwiPD1cIjtcbiAgICBjYXNlIFRva2VuLkdSRUFURVJUSEFOX0VRVUFMUzogcmV0dXJuIFwiPj1cIjtcbiAgICBjYXNlIFRva2VuLkVRVUFMU19FUVVBTFM6IHJldHVybiBcIj09XCI7XG4gICAgY2FzZSBUb2tlbi5FWENMQU1BVElPTl9FUVVBTFM6IHJldHVybiBcIiE9XCI7XG4gICAgY2FzZSBUb2tlbi5FUVVBTFNfRVFVQUxTX0VRVUFMUzogcmV0dXJuIFwiPT09XCI7XG4gICAgY2FzZSBUb2tlbi5FWENMQU1BVElPTl9FUVVBTFNfRVFVQUxTOiByZXR1cm4gXCIhPT1cIjtcbiAgICBjYXNlIFRva2VuLlBMVVM6IHJldHVybiBcIitcIjtcbiAgICBjYXNlIFRva2VuLk1JTlVTOiByZXR1cm4gXCItXCI7XG4gICAgY2FzZSBUb2tlbi5BU1RFUklTS19BU1RFUklTSzogcmV0dXJuIFwiKipcIjtcbiAgICBjYXNlIFRva2VuLkFTVEVSSVNLOiByZXR1cm4gXCIqXCI7XG4gICAgY2FzZSBUb2tlbi5TTEFTSDogcmV0dXJuIFwiL1wiO1xuICAgIGNhc2UgVG9rZW4uUEVSQ0VOVDogcmV0dXJuIFwiJVwiO1xuICAgIGNhc2UgVG9rZW4uUExVU19QTFVTOiByZXR1cm4gXCIrK1wiO1xuICAgIGNhc2UgVG9rZW4uTUlOVVNfTUlOVVM6IHJldHVybiBcIi0tXCI7XG4gICAgY2FzZSBUb2tlbi5MRVNTVEhBTl9MRVNTVEhBTjogcmV0dXJuIFwiPDxcIjtcbiAgICBjYXNlIFRva2VuLkdSRUFURVJUSEFOX0dSRUFURVJUSEFOOiByZXR1cm4gXCI+PlwiO1xuICAgIGNhc2UgVG9rZW4uR1JFQVRFUlRIQU5fR1JFQVRFUlRIQU5fR1JFQVRFUlRIQU46IHJldHVybiBcIj4+PlwiO1xuICAgIGNhc2UgVG9rZW4uQU1QRVJTQU5EOiByZXR1cm4gXCImXCI7XG4gICAgY2FzZSBUb2tlbi5CQVI6IHJldHVybiBcInxcIjtcbiAgICBjYXNlIFRva2VuLkNBUkVUOiByZXR1cm4gXCJeXCI7XG4gICAgY2FzZSBUb2tlbi5FWENMQU1BVElPTjogcmV0dXJuIFwiIVwiO1xuICAgIGNhc2UgVG9rZW4uVElMREU6IHJldHVybiBcIn5cIjtcbiAgICBjYXNlIFRva2VuLkFNUEVSU0FORF9BTVBFUlNBTkQ6IHJldHVybiBcIiYmXCI7XG4gICAgY2FzZSBUb2tlbi5CQVJfQkFSOiByZXR1cm4gXCJ8fFwiO1xuICAgIGNhc2UgVG9rZW4uRVFVQUxTOiByZXR1cm4gXCI9XCI7XG4gICAgY2FzZSBUb2tlbi5QTFVTX0VRVUFMUzogcmV0dXJuIFwiKz1cIjtcbiAgICBjYXNlIFRva2VuLk1JTlVTX0VRVUFMUzogcmV0dXJuIFwiLT1cIjtcbiAgICBjYXNlIFRva2VuLkFTVEVSSVNLX0VRVUFMUzogcmV0dXJuIFwiKj1cIjtcbiAgICBjYXNlIFRva2VuLkFTVEVSSVNLX0FTVEVSSVNLX0VRVUFMUzogcmV0dXJuIFwiKio9XCI7XG4gICAgY2FzZSBUb2tlbi5TTEFTSF9FUVVBTFM6IHJldHVybiBcIi89XCI7XG4gICAgY2FzZSBUb2tlbi5QRVJDRU5UX0VRVUFMUzogcmV0dXJuIFwiJT1cIjtcbiAgICBjYXNlIFRva2VuLkxFU1NUSEFOX0xFU1NUSEFOX0VRVUFMUzogcmV0dXJuIFwiPDw9XCI7XG4gICAgY2FzZSBUb2tlbi5HUkVBVEVSVEhBTl9HUkVBVEVSVEhBTl9FUVVBTFM6IHJldHVybiBcIj4+PVwiO1xuICAgIGNhc2UgVG9rZW4uR1JFQVRFUlRIQU5fR1JFQVRFUlRIQU5fR1JFQVRFUlRIQU5fRVFVQUxTOiByZXR1cm4gXCI+Pj49XCI7XG4gICAgY2FzZSBUb2tlbi5BTVBFUlNBTkRfRVFVQUxTOiByZXR1cm4gXCImPVwiO1xuICAgIGNhc2UgVG9rZW4uQkFSX0VRVUFMUzogcmV0dXJuIFwifD1cIjtcbiAgICBjYXNlIFRva2VuLkNBUkVUX0VRVUFMUzogcmV0dXJuIFwiXj1cIjtcbiAgICBkZWZhdWx0OiB7XG4gICAgICBhc3NlcnQoZmFsc2UpO1xuICAgICAgcmV0dXJuIFwiXCI7XG4gICAgfVxuICB9XG59XG4iXX0=

/***/ }),

/***/ "./node_modules/assemblyscript/lib/transformer/src/transformer.ts":
/*!************************************************************************!*\
  !*** ./node_modules/assemblyscript/lib/transformer/src/transformer.ts ***!
  \************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

Object.defineProperty(exports, "__esModule", { value: true });
/**
 * Top level transformer that expects an afterParse function.
 */
var Transformer = /** @class */ (function () {
    function Transformer(parser, writeFile, readFile, baseDir, stdout, stderr) {
        this.parser = parser;
        this.writeFile = writeFile;
        this.readFile = readFile;
        this.baseDir = baseDir;
        this.stdout = stdout;
        this.stderr = stderr;
    }
    Object.defineProperty(Transformer.prototype, "program", {
        get: function () {
            return this.parser.program;
        },
        enumerable: true,
        configurable: true
    });
    return Transformer;
}());
exports.Transformer = Transformer;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvdHJhbnNmb3JtZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7QUFFQTs7R0FFRztBQUNIO0lBQ0UscUJBQ1ksTUFBYyxFQUNkLFNBQXFCLEVBQ3JCLFFBQW9CLEVBQ3BCLE9BQWUsRUFDZixNQUE4QixFQUM5QixNQUE4QjtRQUw5QixXQUFNLEdBQU4sTUFBTSxDQUFRO1FBQ2QsY0FBUyxHQUFULFNBQVMsQ0FBWTtRQUNyQixhQUFRLEdBQVIsUUFBUSxDQUFZO1FBQ3BCLFlBQU8sR0FBUCxPQUFPLENBQVE7UUFDZixXQUFNLEdBQU4sTUFBTSxDQUF3QjtRQUM5QixXQUFNLEdBQU4sTUFBTSxDQUF3QjtJQUN2QyxDQUFDO0lBRUosc0JBQUksZ0NBQU87YUFBWDtZQUNFLE9BQU8sSUFBSSxDQUFDLE1BQU0sQ0FBQyxPQUFPLENBQUM7UUFDN0IsQ0FBQzs7O09BQUE7SUFHSCxrQkFBQztBQUFELENBQUMsQUFmRCxJQWVDO0FBZnFCLGtDQUFXIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgUGFyc2VyLCBQcm9ncmFtIH0gZnJvbSBcIi4vY29tcGlsZXJcIjtcblxuLyoqXG4gKiBUb3AgbGV2ZWwgdHJhbnNmb3JtZXIgdGhhdCBleHBlY3RzIGFuIGFmdGVyUGFyc2UgZnVuY3Rpb24uXG4gKi9cbmV4cG9ydCBhYnN0cmFjdCBjbGFzcyBUcmFuc2Zvcm1lciB7XG4gIGNvbnN0cnVjdG9yKFxuICAgIHByb3RlY3RlZCBwYXJzZXI6IFBhcnNlcixcbiAgICBwcm90ZWN0ZWQgd3JpdGVGaWxlOiBGaWxlV3JpdGVyLFxuICAgIHByb3RlY3RlZCByZWFkRmlsZTogRmlsZVJlYWRlcixcbiAgICBwcm90ZWN0ZWQgYmFzZURpcjogc3RyaW5nLFxuICAgIHByb3RlY3RlZCBzdGRvdXQ6IChkYXRhOiBzdHJpbmcpID0+IHZvaWQsXG4gICAgcHJvdGVjdGVkIHN0ZGVycjogKGRhdGE6IHN0cmluZykgPT4gdm9pZFxuICApIHt9XG5cbiAgZ2V0IHByb2dyYW0oKTogUHJvZ3JhbSB7XG4gICAgcmV0dXJuIHRoaXMucGFyc2VyLnByb2dyYW07XG4gIH1cblxuICBhYnN0cmFjdCBhZnRlclBhcnNlKCk6IHZvaWQ7XG59XG4iXX0=

/***/ }),

/***/ "./node_modules/assemblyscript/lib/transformer/src/util.ts":
/*!*****************************************************************!*\
  !*** ./node_modules/assemblyscript/lib/transformer/src/util.ts ***!
  \*****************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

/** @module util */ /***/
Object.defineProperty(exports, "__esModule", { value: true });
var indentX1 = "  ";
var indentX2 = "    ";
var indentX4 = "        ";
/** Creates an indentation matching the number of specified levels. */
function indent(sb, level) {
    while (level >= 4) {
        sb.push(indentX4);
        level -= 4;
    }
    if (level >= 2) {
        sb.push(indentX2);
        level -= 2;
    }
    if (level) {
        sb.push(indentX1);
    }
}
exports.indent = indent;
/** An enum of named character codes. */
var CharCode;
(function (CharCode) {
    CharCode[CharCode["NULL"] = 0] = "NULL";
    CharCode[CharCode["LINEFEED"] = 10] = "LINEFEED";
    CharCode[CharCode["CARRIAGERETURN"] = 13] = "CARRIAGERETURN";
    CharCode[CharCode["LINESEPARATOR"] = 8232] = "LINESEPARATOR";
    CharCode[CharCode["PARAGRAPHSEPARATOR"] = 8233] = "PARAGRAPHSEPARATOR";
    CharCode[CharCode["NEXTLINE"] = 133] = "NEXTLINE";
    CharCode[CharCode["SPACE"] = 32] = "SPACE";
    CharCode[CharCode["NONBREAKINGSPACE"] = 160] = "NONBREAKINGSPACE";
    CharCode[CharCode["ENQUAD"] = 8192] = "ENQUAD";
    CharCode[CharCode["EMQUAD"] = 8193] = "EMQUAD";
    CharCode[CharCode["ENSPACE"] = 8194] = "ENSPACE";
    CharCode[CharCode["EMSPACE"] = 8195] = "EMSPACE";
    CharCode[CharCode["THREEPEREMSPACE"] = 8196] = "THREEPEREMSPACE";
    CharCode[CharCode["FOURPEREMSPACE"] = 8197] = "FOURPEREMSPACE";
    CharCode[CharCode["SIXPEREMSPACE"] = 8198] = "SIXPEREMSPACE";
    CharCode[CharCode["FIGURESPACE"] = 8199] = "FIGURESPACE";
    CharCode[CharCode["PUNCTUATIONSPACE"] = 8200] = "PUNCTUATIONSPACE";
    CharCode[CharCode["THINSPACE"] = 8201] = "THINSPACE";
    CharCode[CharCode["HAIRSPACE"] = 8202] = "HAIRSPACE";
    CharCode[CharCode["ZEROWIDTHSPACE"] = 8203] = "ZEROWIDTHSPACE";
    CharCode[CharCode["NARROWNOBREAKSPACE"] = 8239] = "NARROWNOBREAKSPACE";
    CharCode[CharCode["IDEOGRAPHICSPACE"] = 12288] = "IDEOGRAPHICSPACE";
    CharCode[CharCode["MATHEMATICALSPACE"] = 8287] = "MATHEMATICALSPACE";
    CharCode[CharCode["OGHAM"] = 5760] = "OGHAM";
    CharCode[CharCode["_"] = 95] = "_";
    CharCode[CharCode["_0"] = 48] = "_0";
    CharCode[CharCode["_1"] = 49] = "_1";
    CharCode[CharCode["_2"] = 50] = "_2";
    CharCode[CharCode["_3"] = 51] = "_3";
    CharCode[CharCode["_4"] = 52] = "_4";
    CharCode[CharCode["_5"] = 53] = "_5";
    CharCode[CharCode["_6"] = 54] = "_6";
    CharCode[CharCode["_7"] = 55] = "_7";
    CharCode[CharCode["_8"] = 56] = "_8";
    CharCode[CharCode["_9"] = 57] = "_9";
    CharCode[CharCode["a"] = 97] = "a";
    CharCode[CharCode["b"] = 98] = "b";
    CharCode[CharCode["c"] = 99] = "c";
    CharCode[CharCode["d"] = 100] = "d";
    CharCode[CharCode["e"] = 101] = "e";
    CharCode[CharCode["f"] = 102] = "f";
    CharCode[CharCode["g"] = 103] = "g";
    CharCode[CharCode["h"] = 104] = "h";
    CharCode[CharCode["i"] = 105] = "i";
    CharCode[CharCode["j"] = 106] = "j";
    CharCode[CharCode["k"] = 107] = "k";
    CharCode[CharCode["l"] = 108] = "l";
    CharCode[CharCode["m"] = 109] = "m";
    CharCode[CharCode["n"] = 110] = "n";
    CharCode[CharCode["o"] = 111] = "o";
    CharCode[CharCode["p"] = 112] = "p";
    CharCode[CharCode["q"] = 113] = "q";
    CharCode[CharCode["r"] = 114] = "r";
    CharCode[CharCode["s"] = 115] = "s";
    CharCode[CharCode["t"] = 116] = "t";
    CharCode[CharCode["u"] = 117] = "u";
    CharCode[CharCode["v"] = 118] = "v";
    CharCode[CharCode["w"] = 119] = "w";
    CharCode[CharCode["x"] = 120] = "x";
    CharCode[CharCode["y"] = 121] = "y";
    CharCode[CharCode["z"] = 122] = "z";
    CharCode[CharCode["A"] = 65] = "A";
    CharCode[CharCode["B"] = 66] = "B";
    CharCode[CharCode["C"] = 67] = "C";
    CharCode[CharCode["D"] = 68] = "D";
    CharCode[CharCode["E"] = 69] = "E";
    CharCode[CharCode["F"] = 70] = "F";
    CharCode[CharCode["G"] = 71] = "G";
    CharCode[CharCode["H"] = 72] = "H";
    CharCode[CharCode["I"] = 73] = "I";
    CharCode[CharCode["J"] = 74] = "J";
    CharCode[CharCode["K"] = 75] = "K";
    CharCode[CharCode["L"] = 76] = "L";
    CharCode[CharCode["M"] = 77] = "M";
    CharCode[CharCode["N"] = 78] = "N";
    CharCode[CharCode["O"] = 79] = "O";
    CharCode[CharCode["P"] = 80] = "P";
    CharCode[CharCode["Q"] = 81] = "Q";
    CharCode[CharCode["R"] = 82] = "R";
    CharCode[CharCode["S"] = 83] = "S";
    CharCode[CharCode["T"] = 84] = "T";
    CharCode[CharCode["U"] = 85] = "U";
    CharCode[CharCode["V"] = 86] = "V";
    CharCode[CharCode["W"] = 87] = "W";
    CharCode[CharCode["X"] = 88] = "X";
    CharCode[CharCode["Y"] = 89] = "Y";
    CharCode[CharCode["Z"] = 90] = "Z";
    CharCode[CharCode["AMPERSAND"] = 38] = "AMPERSAND";
    CharCode[CharCode["ASTERISK"] = 42] = "ASTERISK";
    CharCode[CharCode["AT"] = 64] = "AT";
    CharCode[CharCode["BACKSLASH"] = 92] = "BACKSLASH";
    CharCode[CharCode["BACKTICK"] = 96] = "BACKTICK";
    CharCode[CharCode["BAR"] = 124] = "BAR";
    CharCode[CharCode["CARET"] = 94] = "CARET";
    CharCode[CharCode["CLOSEBRACE"] = 125] = "CLOSEBRACE";
    CharCode[CharCode["CLOSEBRACKET"] = 93] = "CLOSEBRACKET";
    CharCode[CharCode["CLOSEPAREN"] = 41] = "CLOSEPAREN";
    CharCode[CharCode["COLON"] = 58] = "COLON";
    CharCode[CharCode["COMMA"] = 44] = "COMMA";
    CharCode[CharCode["DOLLAR"] = 36] = "DOLLAR";
    CharCode[CharCode["DOT"] = 46] = "DOT";
    CharCode[CharCode["DOUBLEQUOTE"] = 34] = "DOUBLEQUOTE";
    CharCode[CharCode["EQUALS"] = 61] = "EQUALS";
    CharCode[CharCode["EXCLAMATION"] = 33] = "EXCLAMATION";
    CharCode[CharCode["GREATERTHAN"] = 62] = "GREATERTHAN";
    CharCode[CharCode["HASH"] = 35] = "HASH";
    CharCode[CharCode["LESSTHAN"] = 60] = "LESSTHAN";
    CharCode[CharCode["MINUS"] = 45] = "MINUS";
    CharCode[CharCode["OPENBRACE"] = 123] = "OPENBRACE";
    CharCode[CharCode["OPENBRACKET"] = 91] = "OPENBRACKET";
    CharCode[CharCode["OPENPAREN"] = 40] = "OPENPAREN";
    CharCode[CharCode["PERCENT"] = 37] = "PERCENT";
    CharCode[CharCode["PLUS"] = 43] = "PLUS";
    CharCode[CharCode["QUESTION"] = 63] = "QUESTION";
    CharCode[CharCode["SEMICOLON"] = 59] = "SEMICOLON";
    CharCode[CharCode["SINGLEQUOTE"] = 39] = "SINGLEQUOTE";
    CharCode[CharCode["SLASH"] = 47] = "SLASH";
    CharCode[CharCode["TILDE"] = 126] = "TILDE";
    CharCode[CharCode["BACKSPACE"] = 8] = "BACKSPACE";
    CharCode[CharCode["FORMFEED"] = 12] = "FORMFEED";
    CharCode[CharCode["BYTEORDERMARK"] = 65279] = "BYTEORDERMARK";
    CharCode[CharCode["TAB"] = 9] = "TAB";
    CharCode[CharCode["VERTICALTAB"] = 11] = "VERTICALTAB";
})(CharCode = exports.CharCode || (exports.CharCode = {}));
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy91dGlsLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxtQkFBbUIsQ0FBQSxLQUFLOztBQUV4QixJQUFNLFFBQVEsR0FBRyxJQUFJLENBQUM7QUFDdEIsSUFBTSxRQUFRLEdBQUcsTUFBTSxDQUFDO0FBQ3hCLElBQU0sUUFBUSxHQUFHLFVBQVUsQ0FBQztBQUU1QixzRUFBc0U7QUFDdEUsU0FBZ0IsTUFBTSxDQUFDLEVBQVksRUFBRSxLQUFVO0lBQzdDLE9BQU8sS0FBSyxJQUFJLENBQUMsRUFBRTtRQUNqQixFQUFFLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUFDO1FBQ2xCLEtBQUssSUFBSSxDQUFDLENBQUM7S0FDWjtJQUNELElBQUksS0FBSyxJQUFJLENBQUMsRUFBRTtRQUNkLEVBQUUsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUM7UUFDbEIsS0FBSyxJQUFJLENBQUMsQ0FBQztLQUNaO0lBQ0QsSUFBSSxLQUFLLEVBQUU7UUFDVCxFQUFFLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUFDO0tBQ25CO0FBQ0gsQ0FBQztBQVpELHdCQVlDO0FBRUQsd0NBQXdDO0FBQ3hDLElBQWtCLFFBb0lqQjtBQXBJRCxXQUFrQixRQUFRO0lBRXhCLHVDQUFRLENBQUE7SUFDUixnREFBZSxDQUFBO0lBQ2YsNERBQXFCLENBQUE7SUFDckIsNERBQXNCLENBQUE7SUFDdEIsc0VBQTJCLENBQUE7SUFDM0IsaURBQWlCLENBQUE7SUFFakIsMENBQVksQ0FBQTtJQUNaLGlFQUF1QixDQUFBO0lBQ3ZCLDhDQUFlLENBQUE7SUFDZiw4Q0FBZSxDQUFBO0lBQ2YsZ0RBQWdCLENBQUE7SUFDaEIsZ0RBQWdCLENBQUE7SUFDaEIsZ0VBQXdCLENBQUE7SUFDeEIsOERBQXVCLENBQUE7SUFDdkIsNERBQXNCLENBQUE7SUFDdEIsd0RBQW9CLENBQUE7SUFDcEIsa0VBQXlCLENBQUE7SUFDekIsb0RBQWtCLENBQUE7SUFDbEIsb0RBQWtCLENBQUE7SUFDbEIsOERBQXVCLENBQUE7SUFDdkIsc0VBQTJCLENBQUE7SUFDM0IsbUVBQXlCLENBQUE7SUFDekIsb0VBQTBCLENBQUE7SUFDMUIsNENBQWMsQ0FBQTtJQUVkLGtDQUFRLENBQUE7SUFFUixvQ0FBUyxDQUFBO0lBQ1Qsb0NBQVMsQ0FBQTtJQUNULG9DQUFTLENBQUE7SUFDVCxvQ0FBUyxDQUFBO0lBQ1Qsb0NBQVMsQ0FBQTtJQUNULG9DQUFTLENBQUE7SUFDVCxvQ0FBUyxDQUFBO0lBQ1Qsb0NBQVMsQ0FBQTtJQUNULG9DQUFTLENBQUE7SUFDVCxvQ0FBUyxDQUFBO0lBRVQsa0NBQVEsQ0FBQTtJQUNSLGtDQUFRLENBQUE7SUFDUixrQ0FBUSxDQUFBO0lBQ1IsbUNBQVEsQ0FBQTtJQUNSLG1DQUFRLENBQUE7SUFDUixtQ0FBUSxDQUFBO0lBQ1IsbUNBQVEsQ0FBQTtJQUNSLG1DQUFRLENBQUE7SUFDUixtQ0FBUSxDQUFBO0lBQ1IsbUNBQVEsQ0FBQTtJQUNSLG1DQUFRLENBQUE7SUFDUixtQ0FBUSxDQUFBO0lBQ1IsbUNBQVEsQ0FBQTtJQUNSLG1DQUFRLENBQUE7SUFDUixtQ0FBUSxDQUFBO0lBQ1IsbUNBQVEsQ0FBQTtJQUNSLG1DQUFRLENBQUE7SUFDUixtQ0FBUSxDQUFBO0lBQ1IsbUNBQVEsQ0FBQTtJQUNSLG1DQUFRLENBQUE7SUFDUixtQ0FBUSxDQUFBO0lBQ1IsbUNBQVEsQ0FBQTtJQUNSLG1DQUFRLENBQUE7SUFDUixtQ0FBUSxDQUFBO0lBQ1IsbUNBQVEsQ0FBQTtJQUNSLG1DQUFRLENBQUE7SUFFUixrQ0FBUSxDQUFBO0lBQ1Isa0NBQVEsQ0FBQTtJQUNSLGtDQUFRLENBQUE7SUFDUixrQ0FBUSxDQUFBO0lBQ1Isa0NBQVEsQ0FBQTtJQUNSLGtDQUFRLENBQUE7SUFDUixrQ0FBUSxDQUFBO0lBQ1Isa0NBQVEsQ0FBQTtJQUNSLGtDQUFRLENBQUE7SUFDUixrQ0FBUSxDQUFBO0lBQ1Isa0NBQVEsQ0FBQTtJQUNSLGtDQUFRLENBQUE7SUFDUixrQ0FBUSxDQUFBO0lBQ1Isa0NBQVEsQ0FBQTtJQUNSLGtDQUFRLENBQUE7SUFDUixrQ0FBUSxDQUFBO0lBQ1Isa0NBQVEsQ0FBQTtJQUNSLGtDQUFRLENBQUE7SUFDUixrQ0FBUSxDQUFBO0lBQ1Isa0NBQVEsQ0FBQTtJQUNSLGtDQUFRLENBQUE7SUFDUixrQ0FBUSxDQUFBO0lBQ1Isa0NBQVEsQ0FBQTtJQUNSLGtDQUFRLENBQUE7SUFDUixrQ0FBUSxDQUFBO0lBQ1Isa0NBQVEsQ0FBQTtJQUVSLGtEQUFnQixDQUFBO0lBQ2hCLGdEQUFlLENBQUE7SUFDZixvQ0FBUyxDQUFBO0lBQ1Qsa0RBQWdCLENBQUE7SUFDaEIsZ0RBQWUsQ0FBQTtJQUNmLHVDQUFVLENBQUE7SUFDViwwQ0FBWSxDQUFBO0lBQ1oscURBQWlCLENBQUE7SUFDakIsd0RBQW1CLENBQUE7SUFDbkIsb0RBQWlCLENBQUE7SUFDakIsMENBQVksQ0FBQTtJQUNaLDBDQUFZLENBQUE7SUFDWiw0Q0FBYSxDQUFBO0lBQ2Isc0NBQVUsQ0FBQTtJQUNWLHNEQUFrQixDQUFBO0lBQ2xCLDRDQUFhLENBQUE7SUFDYixzREFBa0IsQ0FBQTtJQUNsQixzREFBa0IsQ0FBQTtJQUNsQix3Q0FBVyxDQUFBO0lBQ1gsZ0RBQWUsQ0FBQTtJQUNmLDBDQUFZLENBQUE7SUFDWixtREFBZ0IsQ0FBQTtJQUNoQixzREFBa0IsQ0FBQTtJQUNsQixrREFBZ0IsQ0FBQTtJQUNoQiw4Q0FBYyxDQUFBO0lBQ2Qsd0NBQVcsQ0FBQTtJQUNYLGdEQUFlLENBQUE7SUFDZixrREFBZ0IsQ0FBQTtJQUNoQixzREFBa0IsQ0FBQTtJQUNsQiwwQ0FBWSxDQUFBO0lBQ1osMkNBQVksQ0FBQTtJQUVaLGlEQUFnQixDQUFBO0lBQ2hCLGdEQUFlLENBQUE7SUFDZiw2REFBc0IsQ0FBQTtJQUN0QixxQ0FBVSxDQUFBO0lBQ1Ysc0RBQWtCLENBQUE7QUFDcEIsQ0FBQyxFQXBJaUIsUUFBUSxHQUFSLGdCQUFRLEtBQVIsZ0JBQVEsUUFvSXpCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqIEBtb2R1bGUgdXRpbCAqLy8qKiovXG5cbmNvbnN0IGluZGVudFgxID0gXCIgIFwiO1xuY29uc3QgaW5kZW50WDIgPSBcIiAgICBcIjtcbmNvbnN0IGluZGVudFg0ID0gXCIgICAgICAgIFwiO1xuXG4vKiogQ3JlYXRlcyBhbiBpbmRlbnRhdGlvbiBtYXRjaGluZyB0aGUgbnVtYmVyIG9mIHNwZWNpZmllZCBsZXZlbHMuICovXG5leHBvcnQgZnVuY3Rpb24gaW5kZW50KHNiOiBzdHJpbmdbXSwgbGV2ZWw6IGkzMik6IHZvaWQge1xuICB3aGlsZSAobGV2ZWwgPj0gNCkge1xuICAgIHNiLnB1c2goaW5kZW50WDQpO1xuICAgIGxldmVsIC09IDQ7XG4gIH1cbiAgaWYgKGxldmVsID49IDIpIHtcbiAgICBzYi5wdXNoKGluZGVudFgyKTtcbiAgICBsZXZlbCAtPSAyO1xuICB9XG4gIGlmIChsZXZlbCkge1xuICAgIHNiLnB1c2goaW5kZW50WDEpO1xuICB9XG59XG5cbi8qKiBBbiBlbnVtIG9mIG5hbWVkIGNoYXJhY3RlciBjb2Rlcy4gKi9cbmV4cG9ydCBjb25zdCBlbnVtIENoYXJDb2RlIHtcblxuICBOVUxMID0gMCxcbiAgTElORUZFRUQgPSAweDBBLFxuICBDQVJSSUFHRVJFVFVSTiA9IDB4MEQsXG4gIExJTkVTRVBBUkFUT1IgPSAweDIwMjgsXG4gIFBBUkFHUkFQSFNFUEFSQVRPUiA9IDB4MjAyOSxcbiAgTkVYVExJTkUgPSAweDAwODUsXG5cbiAgU1BBQ0UgPSAweDIwLFxuICBOT05CUkVBS0lOR1NQQUNFID0gMHhBMCxcbiAgRU5RVUFEID0gMHgyMDAwLFxuICBFTVFVQUQgPSAweDIwMDEsXG4gIEVOU1BBQ0UgPSAweDIwMDIsXG4gIEVNU1BBQ0UgPSAweDIwMDMsXG4gIFRIUkVFUEVSRU1TUEFDRSA9IDB4MjAwNCxcbiAgRk9VUlBFUkVNU1BBQ0UgPSAweDIwMDUsXG4gIFNJWFBFUkVNU1BBQ0UgPSAweDIwMDYsXG4gIEZJR1VSRVNQQUNFID0gMHgyMDA3LFxuICBQVU5DVFVBVElPTlNQQUNFID0gMHgyMDA4LFxuICBUSElOU1BBQ0UgPSAweDIwMDksXG4gIEhBSVJTUEFDRSA9IDB4MjAwQSxcbiAgWkVST1dJRFRIU1BBQ0UgPSAweDIwMEIsXG4gIE5BUlJPV05PQlJFQUtTUEFDRSA9IDB4MjAyRixcbiAgSURFT0dSQVBISUNTUEFDRSA9IDB4MzAwMCxcbiAgTUFUSEVNQVRJQ0FMU1BBQ0UgPSAweDIwNUYsXG4gIE9HSEFNID0gMHgxNjgwLFxuXG4gIF8gPSAweDVGLFxuXG4gIF8wID0gMHgzMCxcbiAgXzEgPSAweDMxLFxuICBfMiA9IDB4MzIsXG4gIF8zID0gMHgzMyxcbiAgXzQgPSAweDM0LFxuICBfNSA9IDB4MzUsXG4gIF82ID0gMHgzNixcbiAgXzcgPSAweDM3LFxuICBfOCA9IDB4MzgsXG4gIF85ID0gMHgzOSxcblxuICBhID0gMHg2MSxcbiAgYiA9IDB4NjIsXG4gIGMgPSAweDYzLFxuICBkID0gMHg2NCxcbiAgZSA9IDB4NjUsXG4gIGYgPSAweDY2LFxuICBnID0gMHg2NyxcbiAgaCA9IDB4NjgsXG4gIGkgPSAweDY5LFxuICBqID0gMHg2QSxcbiAgayA9IDB4NkIsXG4gIGwgPSAweDZDLFxuICBtID0gMHg2RCxcbiAgbiA9IDB4NkUsXG4gIG8gPSAweDZGLFxuICBwID0gMHg3MCxcbiAgcSA9IDB4NzEsXG4gIHIgPSAweDcyLFxuICBzID0gMHg3MyxcbiAgdCA9IDB4NzQsXG4gIHUgPSAweDc1LFxuICB2ID0gMHg3NixcbiAgdyA9IDB4NzcsXG4gIHggPSAweDc4LFxuICB5ID0gMHg3OSxcbiAgeiA9IDB4N0EsXG5cbiAgQSA9IDB4NDEsXG4gIEIgPSAweDQyLFxuICBDID0gMHg0MyxcbiAgRCA9IDB4NDQsXG4gIEUgPSAweDQ1LFxuICBGID0gMHg0NixcbiAgRyA9IDB4NDcsXG4gIEggPSAweDQ4LFxuICBJID0gMHg0OSxcbiAgSiA9IDB4NEEsXG4gIEsgPSAweDRCLFxuICBMID0gMHg0QyxcbiAgTSA9IDB4NEQsXG4gIE4gPSAweDRFLFxuICBPID0gMHg0RixcbiAgUCA9IDB4NTAsXG4gIFEgPSAweDUxLFxuICBSID0gMHg1MixcbiAgUyA9IDB4NTMsXG4gIFQgPSAweDU0LFxuICBVID0gMHg1NSxcbiAgViA9IDB4NTYsXG4gIFcgPSAweDU3LFxuICBYID0gMHg1OCxcbiAgWSA9IDB4NTksXG4gIFogPSAweDVhLFxuXG4gIEFNUEVSU0FORCA9IDB4MjYsXG4gIEFTVEVSSVNLID0gMHgyQSxcbiAgQVQgPSAweDQwLFxuICBCQUNLU0xBU0ggPSAweDVDLFxuICBCQUNLVElDSyA9IDB4NjAsXG4gIEJBUiA9IDB4N0MsXG4gIENBUkVUID0gMHg1RSxcbiAgQ0xPU0VCUkFDRSA9IDB4N0QsXG4gIENMT1NFQlJBQ0tFVCA9IDB4NUQsXG4gIENMT1NFUEFSRU4gPSAweDI5LFxuICBDT0xPTiA9IDB4M0EsXG4gIENPTU1BID0gMHgyQyxcbiAgRE9MTEFSID0gMHgyNCxcbiAgRE9UID0gMHgyRSxcbiAgRE9VQkxFUVVPVEUgPSAweDIyLFxuICBFUVVBTFMgPSAweDNELFxuICBFWENMQU1BVElPTiA9IDB4MjEsXG4gIEdSRUFURVJUSEFOID0gMHgzRSxcbiAgSEFTSCA9IDB4MjMsXG4gIExFU1NUSEFOID0gMHgzQyxcbiAgTUlOVVMgPSAweDJELFxuICBPUEVOQlJBQ0UgPSAweDdCLFxuICBPUEVOQlJBQ0tFVCA9IDB4NUIsXG4gIE9QRU5QQVJFTiA9IDB4MjgsXG4gIFBFUkNFTlQgPSAweDI1LFxuICBQTFVTID0gMHgyQixcbiAgUVVFU1RJT04gPSAweDNGLFxuICBTRU1JQ09MT04gPSAweDNCLFxuICBTSU5HTEVRVU9URSA9IDB4MjcsXG4gIFNMQVNIID0gMHgyRixcbiAgVElMREUgPSAweDdFLFxuXG4gIEJBQ0tTUEFDRSA9IDB4MDgsXG4gIEZPUk1GRUVEID0gMHgwQyxcbiAgQllURU9SREVSTUFSSyA9IDB4RkVGRixcbiAgVEFCID0gMHgwOSxcbiAgVkVSVElDQUxUQUIgPSAweDBCXG59XG4iXX0=

/***/ }),

/***/ "./node_modules/assemblyscript/lib/transformer/src/visitor.ts":
/*!********************************************************************!*\
  !*** ./node_modules/assemblyscript/lib/transformer/src/visitor.ts ***!
  \********************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var __values = (this && this.__values) || function(o) {
    var s = typeof Symbol === "function" && Symbol.iterator, m = s && o[s], i = 0;
    if (m) return m.call(o);
    if (o && typeof o.length === "number") return {
        next: function () {
            if (o && i >= o.length) o = void 0;
            return { value: o && o[i++], done: !o };
        }
    };
    throw new TypeError(s ? "Object is not iterable." : "Symbol.iterator is not defined.");
};
var __read = (this && this.__read) || function (o, n) {
    var m = typeof Symbol === "function" && o[Symbol.iterator];
    if (!m) return o;
    var i = m.call(o), r, ar = [], e;
    try {
        while ((n === void 0 || n-- > 0) && !(r = i.next()).done) ar.push(r.value);
    }
    catch (error) { e = { error: error }; }
    finally {
        try {
            if (r && !r.done && (m = i["return"])) m.call(i);
        }
        finally { if (e) throw e.error; }
    }
    return ar;
};
Object.defineProperty(exports, "__esModule", { value: true });
var isIterable = function (object) {
    //@ts-ignore
    return object != null && typeof object[Symbol.iterator] === "function";
};
/**
 * Top level visitor that will expect an implemented _visit function to visit
 * a single node and then provides a generic function for collections of nodes
 * and will visit each member of the collection.
 */
var AbstractVisitor = /** @class */ (function () {
    function AbstractVisitor() {
    }
    AbstractVisitor.prototype.visit = function (node) {
        var e_1, _a, e_2, _b;
        var _this = this;
        if (node == null)
            return;
        if (node instanceof Array) {
            node.map(function (node) { _this.visit(node); });
        }
        else if (node instanceof Map) {
            try {
                for (var _c = __values(node.entries()), _d = _c.next(); !_d.done; _d = _c.next()) {
                    var _e = __read(_d.value, 2), key = _e[0], _node = _e[1];
                    this.visit(_node);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                }
                finally { if (e_1) throw e_1.error; }
            }
            //@ts-ignore Need a better way to test type
        }
        else if (isIterable(node)) {
            try {
                //TODO: Find better way to test if iterable
                for (var node_1 = __values(node), node_1_1 = node_1.next(); !node_1_1.done; node_1_1 = node_1.next()) {
                    var _node = node_1_1.value;
                    this.visit(_node);
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (node_1_1 && !node_1_1.done && (_b = node_1.return)) _b.call(node_1);
                }
                finally { if (e_2) throw e_2.error; }
            }
        }
        else {
            //@ts-ignore Node is not iterable.
            this._visit(node);
        }
    };
    return AbstractVisitor;
}());
exports.AbstractVisitor = AbstractVisitor;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlzaXRvci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy92aXNpdG9yLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBR0EsSUFBTSxVQUFVLEdBQUcsVUFBQyxNQUFjO0lBQ2hDLFlBQVk7SUFDWixPQUFBLE1BQU0sSUFBSSxJQUFJLElBQUksT0FBTyxNQUFNLENBQUMsTUFBTSxDQUFDLFFBQVEsQ0FBQyxLQUFLLFVBQVU7QUFBL0QsQ0FBK0QsQ0FBQztBQUVoRTs7OztHQUlHO0FBQ0w7SUFBQTtJQXNCQSxDQUFDO0lBckJDLCtCQUFLLEdBQUwsVUFBTSxJQUEwQjs7UUFBaEMsaUJBa0JDO1FBakJDLElBQUksSUFBSSxJQUFJLElBQUk7WUFBRSxPQUFPO1FBQ3pCLElBQUksSUFBSSxZQUFZLEtBQUssRUFBRTtZQUN6QixJQUFJLENBQUMsR0FBRyxDQUFDLFVBQUMsSUFBTyxJQUFhLEtBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztTQUNwRDthQUFNLElBQUksSUFBSSxZQUFZLEdBQUcsRUFBRTs7Z0JBQzlCLEtBQXlCLElBQUEsS0FBQSxTQUFBLElBQUksQ0FBQyxPQUFPLEVBQUUsQ0FBQSxnQkFBQSw0QkFBRTtvQkFBaEMsSUFBQSx3QkFBWSxFQUFYLFdBQUcsRUFBRSxhQUFLO29CQUNsQixJQUFJLENBQUMsS0FBSyxDQUFDLEtBQUssQ0FBQyxDQUFDO2lCQUNuQjs7Ozs7Ozs7O1lBQ0QsMkNBQTJDO1NBQzVDO2FBQU0sSUFBSSxVQUFVLENBQUMsSUFBSSxDQUFDLEVBQUU7O2dCQUN6QiwyQ0FBMkM7Z0JBQzdDLEtBQWtCLElBQUEsU0FBQSxTQUFBLElBQUksQ0FBQSwwQkFBQSw0Q0FBRTtvQkFBbkIsSUFBSSxLQUFLLGlCQUFBO29CQUNWLElBQUksQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLENBQUM7aUJBQ3JCOzs7Ozs7Ozs7U0FDRjthQUFNO1lBQ0wsa0NBQWtDO1lBQ2xDLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLENBQUM7U0FDbkI7SUFDSCxDQUFDO0lBR0gsc0JBQUM7QUFBRCxDQUFDLEFBdEJELElBc0JDO0FBdEJxQiwwQ0FBZSIsInNvdXJjZXNDb250ZW50IjpbIlxuZXhwb3J0IHR5cGUgQ29sbGVjdGlvbjxUPiA9IFQgfCBUW10gfCBNYXA8c3RyaW5nLCBUIHwgVFtdIHwgSXRlcmFibGU8VD4+IHwgSXRlcmFibGU8VD47XG5cbmNvbnN0IGlzSXRlcmFibGUgPSAob2JqZWN0OiBvYmplY3QpOiBib29sZWFuID0+XG4gIC8vQHRzLWlnbm9yZVxuICBvYmplY3QgIT0gbnVsbCAmJiB0eXBlb2Ygb2JqZWN0W1N5bWJvbC5pdGVyYXRvcl0gPT09IFwiZnVuY3Rpb25cIjtcblxuICAvKipcbiAgICogVG9wIGxldmVsIHZpc2l0b3IgdGhhdCB3aWxsIGV4cGVjdCBhbiBpbXBsZW1lbnRlZCBfdmlzaXQgZnVuY3Rpb24gdG8gdmlzaXRcbiAgICogYSBzaW5nbGUgbm9kZSBhbmQgdGhlbiBwcm92aWRlcyBhIGdlbmVyaWMgZnVuY3Rpb24gZm9yIGNvbGxlY3Rpb25zIG9mIG5vZGVzXG4gICAqIGFuZCB3aWxsIHZpc2l0IGVhY2ggbWVtYmVyIG9mIHRoZSBjb2xsZWN0aW9uLlxuICAgKi9cbmV4cG9ydCBhYnN0cmFjdCBjbGFzcyBBYnN0cmFjdFZpc2l0b3I8VD4ge1xuICB2aXNpdChub2RlOiBDb2xsZWN0aW9uPFQ+IHwgbnVsbCk6IHZvaWQge1xuICAgIGlmIChub2RlID09IG51bGwpIHJldHVybjtcbiAgICBpZiAobm9kZSBpbnN0YW5jZW9mIEFycmF5KSB7XG4gICAgICBub2RlLm1hcCgobm9kZTogVCk6IHZvaWQgPT4geyB0aGlzLnZpc2l0KG5vZGUpOyB9KTtcbiAgICB9IGVsc2UgaWYgKG5vZGUgaW5zdGFuY2VvZiBNYXApIHtcbiAgICAgIGZvciAobGV0IFtrZXksIF9ub2RlXSBvZiBub2RlLmVudHJpZXMoKSkge1xuICAgICAgICB0aGlzLnZpc2l0KF9ub2RlKTtcbiAgICAgIH1cbiAgICAgIC8vQHRzLWlnbm9yZSBOZWVkIGEgYmV0dGVyIHdheSB0byB0ZXN0IHR5cGVcbiAgICB9IGVsc2UgaWYgKGlzSXRlcmFibGUobm9kZSkpIHtcbiAgICAgICAgLy9UT0RPOiBGaW5kIGJldHRlciB3YXkgdG8gdGVzdCBpZiBpdGVyYWJsZVxuICAgICAgZm9yIChsZXQgX25vZGUgb2Ygbm9kZSkge1xuICAgICAgICAgIHRoaXMudmlzaXQoX25vZGUpO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICAvL0B0cy1pZ25vcmUgTm9kZSBpcyBub3QgaXRlcmFibGUuXG4gICAgICB0aGlzLl92aXNpdChub2RlKTtcbiAgICB9XG4gIH1cblxuICBwcm90ZWN0ZWQgYWJzdHJhY3QgX3Zpc2l0KG5vZGU6IFQpOiB2b2lkO1xufVxuIl19

/***/ }),

/***/ "./src/as-transformer.ts":
/*!*******************************!*\
  !*** ./src/as-transformer.ts ***!
  \*******************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

function __export(m) {
    for (var p in m) if (!exports.hasOwnProperty(p)) exports[p] = m[p];
}
Object.defineProperty(exports, "__esModule", { value: true });
// alias for transformer
__export(__webpack_require__(/*! assemblyscript/lib/transformer */ "./node_modules/assemblyscript/lib/transformer/src/index.ts"));
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXMtdHJhbnNmb3JtZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi9zcmMvYXMtdHJhbnNmb3JtZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7QUFBQSx3QkFBd0I7QUFDeEIsb0RBQStDIiwic291cmNlc0NvbnRlbnQiOlsiLy8gYWxpYXMgZm9yIHRyYW5zZm9ybWVyXG5leHBvcnQgKiBmcm9tIFwiYXNzZW1ibHlzY3JpcHQvbGliL3RyYW5zZm9ybWVyXCI7XG4iXX0=

/***/ }),

/***/ "./src/index.ts":
/*!**********************!*\
  !*** ./src/index.ts ***!
  \**********************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var as_transformer_1 = __webpack_require__(/*! ./as-transformer */ "./src/as-transformer.ts");
var typeChecker_1 = __webpack_require__(/*! ./typeChecker */ "./src/typeChecker.ts");
function returnsVoid(node) {
    return toString(node.signature.returnType) === "void";
}
function numOfParameters(node) {
    return node.signature.parameters.length;
}
function isComment(stmt) {
    return stmt.kind == 62 /* COMMENT */;
}
function hasNearDecorator(stmt) {
    return stmt.text.includes("@nearfile") || isEntry(stmt);
}
function toString(node) {
    return as_transformer_1.ASTBuilder.build(node);
}
function isEntry(source) {
    var _source = ((source.kind == 0 /* SOURCE */ ? source : source.range.source));
    return _source.sourceKind == as_transformer_1.SourceKind.USER_ENTRY;
}
exports.isEntry = isEntry;
function isArrayType(type) {
    return !!(type.kind == 1 /* NAMEDTYPE */ &&
        toString(type).startsWith("Array") &&
        type.typeArguments &&
        type.typeArguments.length > 0);
}
function isClass(type) {
    return type.kind == 47 /* CLASSDECLARATION */;
}
function isField(mem) {
    return mem.kind == 50 /* FIELDDECLARATION */;
}
function isReference(type) {
    var simpleTypes = ["i32", "u32", "bool", "i64", "u64", "boolean"];
    return !simpleTypes.includes(toString(type));
}
// TODO: Extract this into separate module, preferrable pluggable
var JSONBindingsBuilder = /** @class */ (function (_super) {
    __extends(JSONBindingsBuilder, _super);
    function JSONBindingsBuilder() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
        _this.typeMapping = {
            i32: "Integer",
            u32: "Integer",
            i64: "String",
            u64: "String",
            string: "String",
            bool: "Boolean",
            Uint8Array: "String"
        };
        _this.nonNullableTypes = ["i32", "u32", "i64", "u64", "bool", "boolean"];
        _this.sb = [];
        _this.exportedClasses = new Map();
        _this.wrappedFuncs = new Set();
        return _this;
    }
    JSONBindingsBuilder.build = function (parser, source) {
        return new JSONBindingsBuilder().build(source);
    };
    JSONBindingsBuilder.nearFiles = function (parser) {
        return parser.program.sources.filter(hasNearDecorator);
    };
    JSONBindingsBuilder.prototype.visitClassDeclaration = function (node) {
        if (!this.exportedClasses.has(toString(node.name))) {
            this.exportedClasses.set(toString(node.name), node);
        }
        _super.prototype.visitClassDeclaration.call(this, node);
    };
    JSONBindingsBuilder.prototype.visitFunctionDeclaration = function (node) {
        if (!isEntry(node) ||
            this.wrappedFuncs.has(toString(node.name)) ||
            !node.is(2 /* EXPORT */) ||
            (numOfParameters(node) == 0 && returnsVoid(node))) {
            _super.prototype.visitFunctionDeclaration.call(this, node);
            return;
        }
        // if (numOfParameters(node) > 0){
        //   this.generateArgsParser(node);
        // }
        this.generateWrapperFunction(node);
        // Change function to not be an export
        node.flags = node.flags ^ 2 /* EXPORT */;
        this.wrappedFuncs.add(toString(node.name));
        _super.prototype.visit.call(this, node);
    };
    /*
    Create a wrapper function that will be export in the function's place.
    */
    JSONBindingsBuilder.prototype.generateWrapperFunction = function (func) {
        var signature = func.signature;
        var params = signature.parameters;
        var returnType = signature.returnType;
        var returnTypeName = toString(returnType)
            .split("|")
            .filter(function (name) { return name.trim() !== "null"; })
            .join("|");
        var hasNull = toString(returnType).includes("null");
        var name = func.name.symbol;
        this.sb.push("\n//@ts-ignore\nfunction __wrapper_" + name + "(): void {");
        if (params.length > 0) {
            this.sb.push(" const json = getInput();\n  read_register(0, <usize>json.buffer);\n  const obj: Obj = JSON.parse(json);");
        }
        if (toString(returnType) !== "void") {
            this.sb.push("  let result: " + toString(returnType) + " = " + name + "(");
        }
        else {
            this.sb.push("  " + name + "(");
        }
        if (params.length > 0) {
            this.sb[this.sb.length - 1] += params
                .map(function (param) { return createDecodeStatement(param); })
                .join(", ");
        }
        this.sb[this.sb.length - 1] += ");";
        if (toString(returnType) !== "void") {
            this.sb.push("\n  let encoder = new JSONEncoder();\n  let val: Uint8Array;\n  if ((isString<" + returnTypeName + ">() || isNullable<" + returnTypeName + ">()) && result == null) {\n    encoder.setNull(null);\n    val = encoder.serialize();\n  } else {\n    val = encode<" + returnTypeName + ">(result" + (hasNull ? "!" : "") + ", null, encoder);\n  }\n  value_return(val.byteLength, <usize>val.buffer);");
        }
        this.sb.push("}\n\nexport { __wrapper_" + name + " as " + name + " }\n");
    };
    JSONBindingsBuilder.prototype.typeName = function (type) {
        if (!isClass(type)) {
            return as_transformer_1.ASTBuilder.build(type);
        }
        type = type;
        var className = toString(type.name);
        if (type.isGeneric) {
            className += "<" + type.typeParameters.map(toString).join(", ") + ">";
        }
        return className;
    };
    JSONBindingsBuilder.prototype.build = function (source) {
        var _this = this;
        this.sb = [exports.preamble];
        this.visit(source);
        var sourceText = source.statements.map(function (stmt) {
            var str = as_transformer_1.ASTBuilder.build(stmt);
            if (isClass(stmt)) {
                var _class = stmt;
                str = str.slice(0, str.lastIndexOf("}"));
                var fields = _class.members
                    .filter(isField)
                    .map(function (field) { return field; });
                if (fields.some(function (field) { return field.type == null; })) {
                    throw new Error("All Fields must have explict type declaration.");
                }
                var className = _this.typeName(_class);
                str += "\n  decode<V = Uint8Array>(buf: V): " + className + " {\n    let json: Obj;\n    if (buf instanceof Uint8Array) {\n      json = JSON.parse(buf);\n    }else {\n      assert(buf instanceof Obj, \"argument must be Uint8Array or Json Object\");\n      json = <Obj> buf;\n    }\n    return this._decode(json);\n  }\n\n  private _decode(obj: Obj): " + className + " {\n    " + createDecodeStatements(_class).join("\n    ") + "\n    return this;\n  }\n\n  _encode(name: string | null = \"\", _encoder: JSONEncoder | null = null): JSONEncoder {\n    let encoder = (_encoder != null ? _encoder : new JSONEncoder())!;\n    encoder.pushObject(name);\n    " + createEncodeStatements(_class).join("\n    ") + "\n    encoder.popObject();\n    return encoder;\n  }\n  encode(): Uint8Array {\n    return this._encode().serialize();\n  }\n\n  serialize(): Uint8Array {\n    return this.encode();\n  }\n\n  toJSON(): string {\n    return this._encode().toString();\n  }\n}";
            }
            return str;
        });
        return this.sb.concat(sourceText).join("\n");
    };
    return JSONBindingsBuilder;
}(as_transformer_1.BaseVisitor));
function createDecodeStatements(_class) {
    return _class.members
        .filter(isField)
        .map(function (field) {
        var name = toString(field.name);
        return (createDecodeStatement(field, "this." + name + " = obj.has(\"" + name + "\") ? ") +
            (": this." + name + ";"));
    });
}
function createDecodeStatement(field, setterPrefix) {
    if (setterPrefix === void 0) { setterPrefix = ""; }
    var T = toString(field.type);
    var name = toString(field.name);
    return setterPrefix + "decode<" + T + ", Obj>(obj, \"" + name + "\")";
}
function createEncodeStatements(_class) {
    return _class.members
        .filter(isField)
        .map(function (field) {
        var T = toString(field.type);
        var name = toString(field.name);
        return "encode<" + T + ", JSONEncoder>(this." + name + ", \"" + name + "\", encoder);";
    });
}
// TODO: Make work for non-simple generics e.g. field: Array<T>
function isGeneric(_class, field) {
    if (_class.typeParameters == null) {
        return false;
    }
    return _class.typeParameters.some(function (param) { return toString(param.name) == toString(field.type); });
}
var JSONTransformer = /** @class */ (function (_super) {
    __extends(JSONTransformer, _super);
    function JSONTransformer() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    JSONTransformer.prototype.afterParse = function () {
        var parser = this.parser;
        var writeFile = this.writeFile;
        var baseDir = this.baseDir;
        // Check for floats
        this.program.sources.forEach(typeChecker_1.TypeChecker.checkTypes);
        // Filter for near files
        var files = JSONBindingsBuilder.nearFiles(parser);
        // Visit each file
        files.forEach(function (source) {
            var writeOut = source.text
                .substr(0, source.text.indexOf("\n"))
                .includes("out");
            // Remove from logs in parser
            parser.donelog.delete(source.internalPath);
            parser.seenlog.delete(source.internalPath);
            // Remove from programs sources
            parser.program.sources = parser.program.sources.filter(function (_source) { return _source !== source; });
            // Build new Source
            var sourceText = JSONBindingsBuilder.build(parser, source);
            if (writeOut) {
                writeFile("out/" + source.normalizedPath, sourceText, baseDir);
            }
            // Parses file and any new imports added to the source
            parser.parseFile(sourceText, (isEntry(source) ? "" : "./") + source.normalizedPath, isEntry(source));
        });
        // Add needed entry file if bundled with webpack so it doesn't have to be passed in later
        if (true) {
            var libSource = "\nimport { base64 } from \"near-runtime-ts\";\nimport { JSONEncoder, JSONDecoder, ThrowingJSONHandler } from \"assemblyscript-json\";\nimport { u128 } from \"bignum\";\n// Runtime functions\n// tslint:disable: no-unsafe-any\n\ntype Usize = u64;\n//@ts-ignore\n@global\n@external(\"env\", \"read_register\")\ndeclare function read_register(register_id: Usize, ptr: Usize): void;\n//@ts-ignore\n@global\n@external(\"env\", \"register_len\")\ndeclare function register_len(register_id: Usize): Usize;\n\n//@ts-ignore\n@global\n@external(\"env\", \"input\")\ndeclare function input(register_id: Usize): void;\n//@ts-ignore\n@global\n@external(\"env\", \"value_return\")\ndeclare function value_return(value_len: Usize, value_ptr: Usize): void;\n//@ts-ignore\n@global\n@external(\"env\", \"panic\")\ndeclare function panic(): void;\n//@ts-ignore\n@global\nfunction getInput(): Uint8Array { \n  // Reading input bytes.\n  input(0);\n  let json_len = register_len(0);\n  if (json_len == U32.MAX_VALUE) {\n    panic();\n  }\n  let json = new Uint8Array(json_len as u32);\n  //@ts-ignore\n  read_register(0, <usize>json.buffer);\n  return json;\n}\n\nabstract class Value {\n  static String(str: string): Value {\n    return new Str(str);\n  }\n  static Number(num: i64): Value {\n    return new Num(num);\n  }\n  static Bool(b: bool): Value {\n    return new Bools(b);\n  }\n  static Null(): Value {\n    return new Null();\n  }\n  static Array(): Value {\n    return new Arr();\n  }\n  static Object(): Value {\n    return new Obj();\n  }\n\n  toString(): string {\n    if (this instanceof Str) {\n      return (<Str>this).toString();\n    }\n    if (this instanceof Num) {\n      return (<Num>this).toString();\n    }\n    if (this instanceof Bools) {\n      return (<Bools>this).toString();\n    }\n    if (this instanceof Null) {\n      return (<Null>this).toString();\n    }\n    if (this instanceof Arr) {\n      return (<Arr>this).toString();\n    }\n    if (this instanceof Obj) {\n      return (<Obj>this).toString();\n    }\n    return \"Value\";\n  }\n}\n//@ts-ignore\n@global\nclass Str extends Value {\n  constructor(public _str: string) {\n    super();\n  }\n\n  toString(): string {\n    return \"\\\"\" + this._str + \"\\\"\";\n  }\n}\n//@ts-ignore\n@global\nclass Num extends Value {\n  constructor(public _num: i64) {\n    super();\n  }\n\n  toString(): string {\n    return this._num.toString();\n  }\n}\n//@ts-ignore\n@global\nclass Null extends Value {\n  constructor() {\n    super();\n  }\n\n  toString(): string {\n    return \"null\";\n  }\n}\n\n//@ts-ignore\n@global class Bools extends Value {\n  constructor(public _bool: bool) {\n    super();\n  }\n\n  toString(): string {\n    return this._bool.toString();\n  }\n}\n\n//@ts-ignore\n@global\nclass Arr extends Value {\n  _arr: Array<Value>;\n  constructor() {\n    super();\n    this._arr = new Array<Value>();\n  }\n\n  push(obj: Value): void {\n    this._arr.push(obj);\n  }\n\n  toString(): string {\n    return \"[\" + this._arr.map<string>((val: Value,i: i32,_arr: Value[]): string  => val.toString()).join(\",\") + \"]\";\n  }\n}\n\n//@ts-ignore\n@global\nclass Obj extends Value {\n  _obj: Map<string, Value>;\n  keys: Array<string>;\n\n  constructor() {\n    super();\n    this._obj = new Map();\n    this.keys = new Array();\n  }\n\n  set(key: string, value: Value): void {\n    if (!this._obj.has(key)) {\n      this.keys.push(key);\n    }\n    this._obj.set(key, value);\n  }\n\n  get(key: string): Value | null {\n    if (!this._obj.has(key)) {\n      return null;\n    }\n    return this._obj.get(key);\n  }\n\n  toString(): string {\n    const objs: string[] = [];\n    for (let i: i32 = 0; i < this.keys.length; i++) {\n      objs.push(\"\\\"\" + this.keys[i] + \"\\\":\" + this._obj.get(this.keys[i]).toString());\n    }\n    return \"{\" + objs.join(\",\") + \"}\";\n  }\n\n  has(key: string): bool {\n    return this._obj.has(key);\n  }\n}\n\nclass Handler extends ThrowingJSONHandler {\n  stack: Value[];\n  constructor() {\n    super();\n    this.stack = new Array<Value>();\n  }\n\n  reset(): void {\n    while (this.stack.length > 0) {\n      this.stack.pop();\n    }\n  }\n\n  get peek(): Value {\n    return this.stack[this.stack.length - 1];\n  }\n\n  setString(name: string, value: string): void {\n    const obj: Value = Value.String(value);\n    this.addValue(name, obj);\n  }\n\n  setBoolean(name: string, value: bool): void {\n    const obj = Value.Bool(value);\n    this.addValue(name, obj);\n  }\n\n  setNull(name: string): void {\n    const obj = Value.Null();\n    this.addValue(name, obj);\n  }\n\n  setInteger(name: string, value: i64): void {\n    const obj = Value.Number(value);\n    this.addValue(name, obj);\n  }\n\n  pushArray(name: string): bool {\n    const obj: Value = Value.Array();\n    this.addValue(name, obj);\n    this.stack.push(obj);\n    return true;\n  }\n\n  popArray(): void {\n    if (this.stack.length > 1) {\n      this.stack.pop();\n    }\n  }\n\n  pushObject(name: string): bool {\n    const obj: Value = Value.Object();\n    this.addValue(name, obj);\n    this.stack.push(obj);\n    return true;\n  }\n\n  popObject(): void {\n    if (this.stack.length > 1) {\n      this.stack.pop();\n    }\n  }\n\n  addValue(name: string, obj: Value): void {\n    if (name.length == 0 && obj instanceof Obj && this.stack.length == 0) {\n      this.stack.push(obj);\n      return;\n    }\n    if (this.peek instanceof Obj) {\n      (this.peek as Obj).set(name, obj);\n    }\n    else if (this.peek instanceof Arr) {\n      (<Arr>this.peek).push(obj);\n    }\n  }\n}\n\n//@ts-ignore\n@global()\nclass JSON {\n  private static handler: Handler = new Handler();\n  private static decoder: JSONDecoder<Handler> = new JSONDecoder<Handler>(JSON.handler);\n  static parse(str: Uint8Array ): Obj {\n    JSON.decoder.deserialize(str);\n    const res = JSON.decoder.handler.peek as Obj;\n    JSON.decoder.handler.reset();\n    return res;\n  }\n}\n\n//@ts-ignore\n@global\nfunction encode<T, Output = Uint8Array>(value: T, name: string | null = \"\", encoder: JSONEncoder = new JSONEncoder()): Output {\n  if (isBoolean<T>()) {\n    //@ts-ignore\n    encoder.setBoolean(name, value);\n  } else if (isInteger<T>()) {\n    if (value instanceof i64 || value instanceof u64) {\n      //@ts-ignore\n      encoder.setString(name, value.toString());\n    } else {\n    //@ts-ignore\n      encoder.setInteger(name, value);\n    }\n    //@ts-ignore\n  } else if (value == <T>null) {\n    encoder.setNull(name);\n  } else if (isString<T>()) {\n    //@ts-ignore\n    encoder.setString(name, value);\n  } else if (isReference<T>()) {\n    if (isArrayLike<T>(value)) {\n      if (value instanceof Uint8Array) {\n        //@ts-ignore\n        encoder.setString(name, base64.encode(<Uint8Array> value));\n      } else {\n        encoder.pushArray(name);\n        for (let i: i32 = 0; i < value.length; i++) {\n          //@ts-ignore\n          encode<valueof<T>, JSONEncoder>(value[i], null, encoder);\n        }\n        encoder.popArray();\n      }\n    } else { // Is an object\n      if (value instanceof u128) {\n        encoder.setString(name, value.toString());\n      } else {\n        //@ts-ignore\n        value._encode(name, encoder);\n      }\n    }\n  } else {\n    throw new Error(\"Encoding failed\");\n  }\n  var output: Output;\n  //@ts-ignore\n  if (output instanceof Uint8Array) {\n    //@ts-ignore\n    return <Output>encoder.serialize();\n  }\n  //@ts-ignore\n  assert( output instanceof JSONEncoder, \"Bad return type for encoder\");\n  //@ts-ignore\n  return <Output>encoder;\n}\n\n//@ts-ignore\n@inline\nfunction getStr(val: Value, name: String): string {\n  assert(val instanceof Str, \"Value with Key: \" + name + \" is not a string or null\");\n  return (<Str>val)._str;\n}\n\nfunction decodeArray<T>(val: Value, name: string): Array<T> {\n  assert(val instanceof Arr, \"Value with Key: \" + name + \" is not an array or null.\");\n  const res = new Array<T>();\n  const arr = (<Arr>val)._arr;\n  for (let i: i32 = 0; i < arr.length; i++) {\n    let item: T = decode<T, Value>(arr[i]);\n    res.push(item);\n  }\n  return res;\n}\n\nfunction isNullable<T>(): bool {\n  return isReference<T>() || isArrayLike<T>() || isNullable<T>() || isString<T>();\n}\n\n//@ts-ignore\n@global\nfunction decode<T, V = Uint8Array>(buf: V, name: string = \"\"): T {\n  const buffer = <Value>(buf instanceof Uint8Array ? JSON.parse(buf) : buf);\n  var val: Value;\n  if (buffer instanceof Obj && name != \"\") {\n    const obj: Obj = <Obj>buffer;\n    let res = obj.get(name);\n    if (res == null) {\n      //@ts-ignore\n      return <T>null;\n    }\n    val = res;\n  }else {\n    val = <Value> buffer;\n  }\n  if (val instanceof Null) {\n    assert(isNullable<T>(), \"Key: \" + name + \" with type \" + nameof<T>() + \"is not nullable.\");\n    //@ts-ignore\n    return <T>null;\n  }\n  if (isString<T>()) {\n    //@ts-ignore\n    return getStr(val, name);\n  }\n  if (isBoolean<T>()) {\n    assert(val instanceof Bools, \"Value with Key: \" +  name + \" with type \" + nameof<T>()  + \" is not a string\");\n    //@ts-ignore\n    return (<Bools>val)._bool;\n  }\n  var value: T;\n  if (isInteger<T>()) {\n    //@ts-ignore\n    if (value instanceof u64 || value instanceof i64) {\n      assert(val instanceof Str, \"Value with Key: \" +  name + \" with type \" + nameof<T>()  + \" is an 64-bit integer and is expected to be encoded as a string\");\n      let str = (<Str>val)._str;\n      //@ts-ignore\n      return <T>(val instanceof u64) ? U64.parseInt(str) : I64.parseInt(str);\n    }\n    assert(val instanceof Num, \"Value with Key: \" +  name + \" with type \" + nameof<T>()  + \" is not an Integer\");\n    //@ts-ignore\n    return <T>(<Num>val)._num;\n  }\n  assert(isReference<T>(), name + \" with type \" + nameof<T>() + \" must be an integer, boolean, string, object, or array\");\n  if (isArrayLike<T>()) {\n    //@ts-ignore\n    if (value instanceof Uint8Array ) {\n      //@ts-ignore\n      return base64.decode(getStr(val, name));\n    }\n    //@ts-ignore\n    // assert(val instanceof Arr, \"Value with Key: \" +  name + \" with type \" + nameof<T>()  + \" is expected to be an array\")\n    //@ts-ignore only checking the instance\n    return <T>decodeArray<valueof<T>>(val, name);\n  }\n  //@ts-ignore\n  if (value instanceof u128) {\n    assert(val instanceof Str);\n    //@ts-ignore\n    return u128.fromString(getStr(val, name));\n  }\n  assert(val instanceof Obj, \"Value with Key: \" +  name + \" with type \" + nameof<T>()  + \" is not an object or null\");\n  value = instantiate<T>();\n  //@ts-ignore\n  return value.decode<Obj>(<Obj>val);\n}\n";
            this.parser.parseFile(libSource, "nearFile", true);
        }
    };
    return JSONTransformer;
}(as_transformer_1.Transformer));
exports.default = JSONTransformer;
exports.preamble = "import { JSONEncoder } from \"assemblyscript-json\";";
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi9zcmMvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7O0FBQUEsbURBbUIwQjtBQUMxQiw2Q0FBNEM7QUFJNUMsU0FBUyxXQUFXLENBQUMsSUFBeUI7SUFDNUMsT0FBTyxRQUFRLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxVQUFVLENBQUMsS0FBSyxNQUFNLENBQUM7QUFDeEQsQ0FBQztBQUVELFNBQVMsZUFBZSxDQUFDLElBQXlCO0lBQ2hELE9BQU8sSUFBSSxDQUFDLFNBQVMsQ0FBQyxVQUFVLENBQUMsTUFBTSxDQUFDO0FBQzFDLENBQUM7QUFFRCxTQUFTLFNBQVMsQ0FBQyxJQUFlO0lBQ2hDLE9BQU8sSUFBSSxDQUFDLElBQUksb0JBQW9CLENBQUM7QUFDdkMsQ0FBQztBQUVELFNBQVMsZ0JBQWdCLENBQUMsSUFBWTtJQUNwQyxPQUFPLElBQUksQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLFdBQVcsQ0FBQyxJQUFJLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQztBQUMxRCxDQUFDO0FBRUQsU0FBUyxRQUFRLENBQUMsSUFBVTtJQUMxQixPQUFPLDJCQUFVLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO0FBQ2hDLENBQUM7QUFFRCxTQUFnQixPQUFPLENBQUMsTUFBcUI7SUFDM0MsSUFBSSxPQUFPLEdBQVcsQ0FDcEIsQ0FBQyxNQUFNLENBQUMsSUFBSSxrQkFBbUIsQ0FBQyxDQUFDLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUNoRSxDQUFDO0lBQ0YsT0FBTyxPQUFPLENBQUMsVUFBVSxJQUFJLDJCQUFVLENBQUMsVUFBVSxDQUFDO0FBQ3JELENBQUM7QUFMRCwwQkFLQztBQUVELFNBQVMsV0FBVyxDQUFDLElBQWlDO0lBQ3BELE9BQU8sQ0FBQyxDQUFDLENB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Q3RDLElBQUksQ0FBQyxNQUFNLENBQUMsU0FBUyxDQUFDLFNBQVMsRUFBRSxVQUFVLEVBQUUsSUFBSSxDQUFDLENBQUM7U0FDcEQ7SUFDSCxDQUFDO0lBQ0gsc0JBQUM7QUFBRCxDQUFDLEFBM0NELENBQTZDLDRCQUFXLEdBMkN2RDs7QUFFWSxRQUFBLFFBQVEsR0FBRyxzREFBb0QsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7XG4gIE5vZGUsXG4gIEZ1bmN0aW9uRGVjbGFyYXRpb24sXG4gIEFTVEJ1aWxkZXIsXG4gIFN0YXRlbWVudCxcbiAgTm9kZUtpbmQsXG4gIFNvdXJjZSxcbiAgU291cmNlS2luZCxcbiAgVHlwZU5vZGUsXG4gIENsYXNzRGVjbGFyYXRpb24sXG4gIE5hbWVkVHlwZU5vZGUsXG4gIERlY2xhcmF0aW9uU3RhdGVtZW50LFxuICBCYXNlVmlzaXRvcixcbiAgUGFyc2VyLFxuICBDb21tb25GbGFncyxcbiAgRmllbGREZWNsYXJhdGlvbixcbiAgUGFyYW1ldGVyTm9kZSxcbiAgVHJhbnNmb3JtZXIsXG4gIFR5cGVOYW1lXG59IGZyb20gXCIuL2FzLXRyYW5zZm9ybWVyXCI7XG5pbXBvcnQgeyBUeXBlQ2hlY2tlciB9IGZyb20gXCIuL3R5cGVDaGVja2VyXCI7XG5cblxuXG5mdW5jdGlvbiByZXR1cm5zVm9pZChub2RlOiBGdW5jdGlvbkRlY2xhcmF0aW9uKTogYm9vbGVhbiB7XG4gIHJldHVybiB0b1N0cmluZyhub2RlLnNpZ25hdHVyZS5yZXR1cm5UeXBlKSA9PT0gXCJ2b2lkXCI7XG59XG5cbmZ1bmN0aW9uIG51bU9mUGFyYW1ldGVycyhub2RlOiBGdW5jdGlvbkRlY2xhcmF0aW9uKTogbnVtYmVyIHtcbiAgcmV0dXJuIG5vZGUuc2lnbmF0dXJlLnBhcmFtZXRlcnMubGVuZ3RoO1xufVxuXG5mdW5jdGlvbiBpc0NvbW1lbnQoc3RtdDogU3RhdGVtZW50KTogYm9vbGVhbiB7XG4gIHJldHVybiBzdG10LmtpbmQgPT0gTm9kZUtpbmQuQ09NTUVOVDtcbn1cblxuZnVuY3Rpb24gaGFzTmVhckRlY29yYXRvcihzdG10OiBTb3VyY2UpOiBib29sZWFuIHtcbiAgcmV0dXJuIHN0bXQudGV4dC5pbmNsdWRlcyhcIkBuZWFyZmlsZVwiKSB8fCBpc0VudHJ5KHN0bXQpO1xufVxuXG5mdW5jdGlvbiB0b1N0cmluZyhub2RlOiBOb2RlKTogc3RyaW5nIHtcbiAgcmV0dXJuIEFTVEJ1aWxkZXIuYnVpbGQobm9kZSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpc0VudHJ5KHNvdXJjZTogU291cmNlIHwgTm9kZSk6IGJvb2xlYW4ge1xuICBsZXQgX3NvdXJjZSA9IDxTb3VyY2U+KFxuICAgIChzb3VyY2Uua2luZCA9PSBOb2RlS2luZC5TT1VSQ0UgPyBzb3VyY2UgOiBzb3VyY2UucmFuZ2Uuc291cmNlKVxuICApO1xuICByZXR1cm4gX3NvdXJjZS5zb3VyY2VLaW5kID09IFNvdXJjZUtpbmQuVVNFUl9FTlRSWTtcbn1cblxuZnVuY3Rpb24gaXNBcnJheVR5cGUodHlwZTogVHlwZU5vZGUgfCBDbGFzc0RlY2xhcmF0aW9uKTogYm9vbGVhbiB7XG4gIHJldHVybiAhIShcbiAgICB0eXBlLmtpbmQgPT0gTm9kZUtpbmQuTkFNRURUWVBFICYmXG4gICAgdG9TdHJpbmcodHlwZSkuc3RhcnRzV2l0aChcIkFycmF5XCIpICYmXG4gICAgKDxOYW1lZFR5cGVOb2RlPnR5cGUpLnR5cGVBcmd1bWVudHMgJiZcbiAgICAoPE5hbWVkVHlwZU5vZGU+dHlwZSkudHlwZUFyZ3VtZW50cyEubGVuZ3RoID4gMFxuICApO1xufVxuXG5mdW5jdGlvbiBpc0NsYXNzKHR5cGU6IE5vZGUpOiBib29sZWFuIHtcbiAgcmV0dXJuIHR5cGUua2luZCA9PSBOb2RlS2luZC5DTEFTU0RFQ0xBUkFUSU9OO1xufVxuXG5mdW5jdGlvbiBpc0ZpZWxkKG1lbTogRGVjbGFyYXRpb25TdGF0ZW1lbnQpIHtcbiAgcmV0dXJuIG1lbS5raW5kID09IE5vZGVLaW5kLkZJRUxEREVDTEFSQVRJT047XG59XG5cbmZ1bmN0aW9uIGlzUmVmZXJlbmNlKHR5cGU6IFR5cGVOb2RlKTogYm9vbGVhbiB7XG4gIGxldCBzaW1wbGVUeXBlcyA9IFtcImkzMlwiLCBcInUzMlwiLCBcImJvb2xcIiwgXCJpNjRcIiwgXCJ1NjRcIiwgXCJib29sZWFuXCJdO1xuICByZXR1cm4gIXNpbXBsZVR5cGVzLmluY2x1ZGVzKHRvU3RyaW5nKHR5cGUpKTtcbn1cblxuLy8gVE9ETzogRXh0cmFjdCB0aGlzIGludG8gc2VwYXJhdGUgbW9kdWxlLCBwcmVmZXJyYWJsZSBwbHVnZ2FibGVcbmNsYXNzIEpTT05CaW5kaW5nc0J1aWxkZXIgZXh0ZW5kcyBCYXNlVmlzaXRvciB7XG4gIHByaXZhdGUgdHlwZU1hcHBpbmc6IHsgW2tleTogc3RyaW5nXTogc3RyaW5nIH0gPSB7XG4gICAgaTMyOiBcIkludGVnZXJcIixcbiAgICB1MzI6IFwiSW50ZWdlclwiLFxuICAgIGk2NDogXCJTdHJpbmdcIixcbiAgICB1NjQ6IFwiU3RyaW5nXCIsXG4gICAgc3RyaW5nOiBcIlN0cmluZ1wiLFxuICAgIGJvb2w6IFwiQm9vbGVhblwiLFxuICAgIFVpbnQ4QXJyYXk6IFwiU3RyaW5nXCJcbiAgfTtcblxuICBwcml2YXRlIG5vbk51bGxhYmxlVHlwZXMgPSBbXCJpMzJcIiwgXCJ1MzJcIiwgXCJpNjRcIiwgXCJ1NjRcIiwgXCJib29sXCIsIFwiYm9vbGVhblwiXTtcblxuICBwcml2YXRlIHNiOiBzdHJpbmdbXSA9IFtdO1xuICBwcml2YXRlIGV4cG9ydGVkQ2xhc3NlczogTWFwPHN0cmluZywgQ2xhc3NEZWNsYXJhdGlvbj4gPSBuZXcgTWFwKCk7XG4gIHdyYXBwZWRGdW5jczogU2V0PHN0cmluZz4gPSBuZXcgU2V0KCk7XG5cbiAgc3RhdGljIGJ1aWxkKHBhcnNlcjogUGFyc2VyLCBzb3VyY2U6IFNvdXJjZSk6IHN0cmluZyB7XG4gICAgcmV0dXJuIG5ldyBKU09OQmluZGluZ3NCdWlsZGVyKCkuYnVpbGQoc291cmNlKTtcbiAgfVxuXG4gIHN0YXRpYyBuZWFyRmlsZXMocGFyc2VyOiBQYXJzZXIpOiBTb3VyY2VbXSB7XG4gICAgcmV0dXJuIHBhcnNlci5wcm9ncmFtLnNvdXJjZXMuZmlsdGVyKGhhc05lYXJEZWNvcmF0b3IpO1xuICB9XG5cbiAgdmlzaXRDbGFzc0RlY2xhcmF0aW9uKG5vZGU6IENsYXNzRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICBpZiAoIXRoaXMuZXhwb3J0ZWRDbGFzc2VzLmhhcyh0b1N0cmluZyhub2RlLm5hbWUpKSkge1xuICAgICAgdGhpcy5leHBvcnRlZENsYXNzZXMuc2V0KHRvU3RyaW5nKG5vZGUubmFtZSksIG5vZGUpO1xuICAgIH1cbiAgICBzdXBlci52aXNpdENsYXNzRGVjbGFyYXRpb24obm9kZSk7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uRGVjbGFyYXRpb24obm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIGlmIChcbiAgICAgICFpc0VudHJ5KG5vZGUpIHx8XG4gICAgICB0aGlzLndyYXBwZWRGdW5jcy5oYXModG9TdHJpbmcobm9kZS5uYW1lKSkgfHxcbiAgICAgICFub2RlLmlzKENvbW1vbkZsYWdzLkVYUE9SVCkgfHxcbiAgICAgIChudW1PZlBhcmFtZXRlcnMobm9kZSkgPT0gMCAmJiByZXR1cm5zVm9pZChub2RlKSlcbiAgICApIHtcbiAgICAgIHN1cGVyLnZpc2l0RnVuY3Rpb25EZWNsYXJhdGlvbihub2RlKTtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgLy8gaWYgKG51bU9mUGFyYW1ldGVycyhub2RlKSA+IDApe1xuICAgIC8vICAgdGhpcy5nZW5lcmF0ZUFyZ3NQYXJzZXIobm9kZSk7XG4gICAgLy8gfVxuICAgIHRoaXMuZ2VuZXJhdGVXcmFwcGVyRnVuY3Rpb24obm9kZSk7XG4gICAgLy8gQ2hhbmdlIGZ1bmN0aW9uIHRvIG5vdCBiZSBhbiBleHBvcnRcbiAgICBub2RlLmZsYWdzID0gbm9kZS5mbGFncyBeIENvbW1vbkZsYWdzLkVYUE9SVDtcbiAgICB0aGlzLndyYXBwZWRGdW5jcy5hZGQodG9TdHJpbmcobm9kZS5uYW1lKSk7XG4gICAgc3VwZXIudmlzaXQobm9kZSk7XG4gIH1cblxuICAvKlxuICBDcmVhdGUgYSB3cmFwcGVyIGZ1bmN0aW9uIHRoYXQgd2lsbCBiZSBleHBvcnQgaW4gdGhlIGZ1bmN0aW9uJ3MgcGxhY2UuXG4gICovXG4gIHByaXZhdGUgZ2VuZXJhdGVXcmFwcGVyRnVuY3Rpb24oZnVuYzogRnVuY3Rpb25EZWNsYXJhdGlvbikge1xuICAgIGxldCBzaWduYXR1cmUgPSBmdW5jLnNpZ25hdHVyZTtcbiAgICBsZXQgcGFyYW1zID0gc2lnbmF0dXJlLnBhcmFtZXRlcnM7XG4gICAgbGV0IHJldHVyblR5cGUgPSBzaWduYXR1cmUucmV0dXJuVHlwZTtcbiAgICBsZXQgcmV0dXJuVHlwZU5hbWUgPSB0b1N0cmluZyhyZXR1cm5UeXBlKVxuICAgICAgLnNwbGl0KFwifFwiKVxuICAgICAgLmZpbHRlcihuYW1lID0+IG5hbWUudHJpbSgpICE9PSBcIm51bGxcIilcbiAgICAgIC5qb2luKFwifFwiKTtcbiAgICBsZXQgaGFzTnVsbCA9IHRvU3RyaW5nKHJldHVyblR5cGUpLmluY2x1ZGVzKFwibnVsbFwiKTtcbiAgICBsZXQgbmFtZSA9IGZ1bmMubmFtZS5zeW1ib2w7XG4gICAgdGhpcy5zYi5wdXNoKGBcbi8vQHRzLWlnbm9yZVxuZnVuY3Rpb24gX193cmFwcGVyXyR7bmFtZX0oKTogdm9pZCB7YCk7XG4gICAgaWYgKHBhcmFtcy5sZW5ndGggPiAwKSB7XG4gICAgICB0aGlzLnNiLnB1c2goXG4gICAgICAgIGAgY29uc3QganNvbiA9IGdldElucHV0KCk7XG4gIHJlYWRfcmVnaXN0ZXIoMCwgPHVzaXplPmpzb24uYnVmZmVyKTtcbiAgY29uc3Qgb2JqOiBPYmogPSBKU09OLnBhcnNlKGpzb24pO2BcbiAgICAgICk7XG4gICAgfVxuICAgIGlmICh0b1N0cmluZyhyZXR1cm5UeXBlKSAhPT0gXCJ2b2lkXCIpIHtcbiAgICAgIHRoaXMuc2IucHVzaChgICBsZXQgcmVzdWx0OiAke3RvU3RyaW5nKHJldHVyblR5cGUpfSA9ICR7bmFtZX0oYCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuc2IucHVzaChgICAke25hbWV9KGApO1xuICAgIH1cbiAgICBpZiAocGFyYW1zLmxlbmd0aCA+IDApIHtcbiAgICAgIHRoaXMuc2JbdGhpcy5zYi5sZW5ndGggLSAxXSArPSBwYXJhbXNcbiAgICAgICAgLm1hcChwYXJhbSA9PiBjcmVhdGVEZWNvZGVTdGF0ZW1lbnQocGFyYW0pKVxuICAgICAgICAuam9pbihcIiwgXCIpO1xuICAgIH1cbiAgICB0aGlzLnNiW3RoaXMuc2IubGVuZ3RoIC0gMV0gKz0gXCIpO1wiO1xuICAgIGlmICh0b1N0cmluZyhyZXR1cm5UeXBlKSAhPT0gXCJ2b2lkXCIpIHtcbiAgICAgIHRoaXMuc2IucHVzaChgXG4gIGxldCBlbmNvZGVyID0gbmV3IEpTT05FbmNvZGVyKCk7XG4gIGxldCB2YWw6IFVpbnQ4QXJyYXk7XG4gIGlmICgoaXNTdHJpbmc8JHtyZXR1cm5UeXBlTmFtZX0+KCkgfHwgaXNOdWxsYWJsZTwke3JldHVyblR5cGVOYW1lfT4oKSkgJiYgcmVzdWx0ID09IG51bGwpIHtcbiAgICBlbmNvZGVyLnNldE51bGwobnVsbCk7XG4gICAgdmFsID0gZW5jb2Rlci5zZXJpYWxpemUoKTtcbiAgfSBlbHNlIHtcbiAgICB2YWwgPSBlbmNvZGU8JHtyZXR1cm5UeXBlTmFtZX0+KHJlc3VsdCR7aGFzTnVsbCA/IFwiIVwiIDogXCJcIn0sIG51bGwsIGVuY29kZXIpO1xuICB9XG4gIHZhbHVlX3JldHVybih2YWwuYnl0ZUxlbmd0aCwgPHVzaXplPnZhbC5idWZmZXIpO2ApO1xuICAgIH1cbiAgICB0aGlzLnNiLnB1c2goYH1cblxuZXhwb3J0IHsgX193cmFwcGVyXyR7bmFtZX0gYXMgJHtuYW1lfSB9XG5gKTtcbiAgfVxuXG4gIHByaXZhdGUgdHlwZU5hbWUodHlwZTogVHlwZU5vZGUgfCBDbGFzc0RlY2xhcmF0aW9uKTogc3RyaW5nIHtcbiAgICBpZiAoIWlzQ2xhc3ModHlwZSkpIHtcbiAgICAgIHJldHVybiBBU1RCdWlsZGVyLmJ1aWxkKHR5cGUpO1xuICAgIH1cbiAgICB0eXBlID0gPENsYXNzRGVjbGFyYXRpb24+dHlwZTtcbiAgICBsZXQgY2xhc3NOYW1lID0gdG9TdHJpbmcodHlwZS5uYW1lKTtcbiAgICBpZiAodHlwZS5pc0dlbmVyaWMpIHtcbiAgICAgIGNsYXNzTmFtZSArPSBcIjxcIiArIHR5cGUudHlwZVBhcmFtZXRlcnMhLm1hcCh0b1N0cmluZykuam9pbihcIiwgXCIpICsgXCI+XCI7XG4gICAgfVxuICAgIHJldHVybiBjbGFzc05hbWU7XG4gIH1cblxuICBidWlsZChzb3VyY2U6IFNvdXJjZSk6IHN0cmluZyB7XG4gICAgdGhpcy5zYiA9IFtwcmVhbWJsZV07XG4gICAgdGhpcy52aXNpdChzb3VyY2UpO1xuICAgIGxldCBzb3VyY2VUZXh0ID0gc291cmNlLnN0YXRlbWVudHMubWFwKHN0bXQgPT4ge1xuICAgICAgbGV0IHN0ciA9IEFTVEJ1aWxkZXIuYnVpbGQoc3RtdCk7XG4gICAgICBpZiAoaXNDbGFzcyhzdG10KSkge1xuICAgICAgICBsZXQgX2NsYXNzID0gPENsYXNzRGVjbGFyYXRpb24+c3RtdDtcbiAgICAgICAgc3RyID0gc3RyLnNsaWNlKDAsIHN0ci5sYXN0SW5kZXhPZihcIn1cIikpO1xuICAgICAgICBsZXQgZmllbGRzID0gX2NsYXNzLm1lbWJlcnNcbiAgICAgICAgICAuZmlsdGVyKGlzRmllbGQpXG4gICAgICAgICAgLm1hcCgoZmllbGQ6IEZpZWxkRGVjbGFyYXRpb24pID0+IGZpZWxkKTtcbiAgICAgICAgaWYgKGZpZWxkcy5zb21lKGZpZWxkID0+IGZpZWxkLnR5cGUgPT0gbnVsbCkpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoXCJBbGwgRmllbGRzIG11c3QgaGF2ZSBleHBsaWN0IHR5cGUgZGVjbGFyYXRpb24uXCIpO1xuICAgICAgICB9XG4gICAgICAgIGxldCBjbGFzc05hbWUgPSB0aGlzLnR5cGVOYW1lKF9jbGFzcyk7XG4gICAgICAgIHN0ciArPSBgXG4gIGRlY29kZTxWID0gVWludDhBcnJheT4oYnVmOiBWKTogJHtjbGFzc05hbWV9IHtcbiAgICBsZXQganNvbjogT2JqO1xuICAgIGlmIChidWYgaW5zdGFuY2VvZiBVaW50OEFycmF5KSB7XG4gICAgICBqc29uID0gSlNPTi5wYXJzZShidWYpO1xuICAgIH1lbHNlIHtcbiAgICAgIGFzc2VydChidWYgaW5zdGFuY2VvZiBPYmosIFwiYXJndW1lbnQgbXVzdCBiZSBVaW50OEFycmF5IG9yIEpzb24gT2JqZWN0XCIpO1xuICAgICAganNvbiA9IDxPYmo+IGJ1ZjtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMuX2RlY29kZShqc29uKTtcbiAgfVxuXG4gIHByaXZhdGUgX2RlY29kZShvYmo6IE9iaik6ICR7Y2xhc3NOYW1lfSB7XG4gICAgJHtjcmVhdGVEZWNvZGVTdGF0ZW1lbnRzKF9jbGFzcykuam9pbihcIlxcbiAgICBcIil9XG4gICAgcmV0dXJuIHRoaXM7XG4gIH1cblxuICBfZW5jb2RlKG5hbWU6IHN0cmluZyB8IG51bGwgPSBcIlwiLCBfZW5jb2RlcjogSlNPTkVuY29kZXIgfCBudWxsID0gbnVsbCk6IEpTT05FbmNvZGVyIHtcbiAgICBsZXQgZW5jb2RlciA9IChfZW5jb2RlciAhPSBudWxsID8gX2VuY29kZXIgOiBuZXcgSlNPTkVuY29kZXIoKSkhO1xuICAgIGVuY29kZXIucHVzaE9iamVjdChuYW1lKTtcbiAgICAke2NyZWF0ZUVuY29kZVN0YXRlbWVudHMoX2NsYXNzKS5qb2luKFwiXFxuICAgIFwiKX1cbiAgICBlbmNvZGVyLnBvcE9iamVjdCgpO1xuICAgIHJldHVybiBlbmNvZGVyO1xuICB9XG4gIGVuY29kZSgpOiBVaW50OEFycmF5IHtcbiAgICByZXR1cm4gdGhpcy5fZW5jb2RlKCkuc2VyaWFsaXplKCk7XG4gIH1cblxuICBzZXJpYWxpemUoKTogVWludDhBcnJheSB7XG4gICAgcmV0dXJuIHRoaXMuZW5jb2RlKCk7XG4gIH1cblxuICB0b0pTT04oKTogc3RyaW5nIHtcbiAgICByZXR1cm4gdGhpcy5fZW5jb2RlKCkudG9TdHJpbmcoKTtcbiAgfVxufWA7XG4gICAgICB9XG4gICAgICByZXR1cm4gc3RyO1xuICAgIH0pO1xuXG4gICAgcmV0dXJuIHRoaXMuc2IuY29uY2F0KHNvdXJjZVRleHQpLmpvaW4oXCJcXG5cIik7XG4gIH1cbn1cblxuZnVuY3Rpb24gY3JlYXRlRGVjb2RlU3RhdGVtZW50cyhfY2xhc3M6IENsYXNzRGVjbGFyYXRpb24pOiBzdHJpbmdbXSB7XG4gIHJldHVybiBfY2xhc3MubWVtYmVyc1xuICAgIC5maWx0ZXIoaXNGaWVsZClcbiAgICAubWFwKChmaWVsZDogRmllbGREZWNsYXJhdGlvbik6IHN0cmluZyA9PiB7XG4gICAgICBjb25zdCBuYW1lID0gdG9TdHJpbmcoZmllbGQubmFtZSk7XG4gICAgICByZXR1cm4gKFxuICAgICAgICBjcmVhdGVEZWNvZGVTdGF0ZW1lbnQoZmllbGQsIGB0aGlzLiR7bmFtZX0gPSBvYmouaGFzKFwiJHtuYW1lfVwiKSA/IGApICtcbiAgICAgICAgYDogdGhpcy4ke25hbWV9O2BcbiAgICAgICk7XG4gICAgfSk7XG59XG5cbmZ1bmN0aW9uIGNyZWF0ZURlY29kZVN0YXRlbWVudChcbiAgZmllbGQ6IEZpZWxkRGVjbGFyYXRpb24gfCBQYXJhbWV0ZXJOb2RlLFxuICBzZXR0ZXJQcmVmaXg6IHN0cmluZyA9IFwiXCJcbik6IHN0cmluZyB7XG4gIGxldCBUID0gdG9TdHJpbmcoZmllbGQudHlwZSEpO1xuICBsZXQgbmFtZSA9IHRvU3RyaW5nKGZpZWxkLm5hbWUpO1xuICByZXR1cm4gYCR7c2V0dGVyUHJlZml4fWRlY29kZTwke1R9LCBPYmo+KG9iaiwgXCIke25hbWV9XCIpYDtcbn1cblxuZnVuY3Rpb24gY3JlYXRlRW5jb2RlU3RhdGVtZW50cyhfY2xhc3M6IENsYXNzRGVjbGFyYXRpb24pOiBzdHJpbmdbXSB7XG4gIHJldHVybiBfY2xhc3MubWVtYmVyc1xuICAgIC5maWx0ZXIoaXNGaWVsZClcbiAgICAubWFwKChmaWVsZDogRmllbGREZWNsYXJhdGlvbik6IHN0cmluZyA9PiB7XG4gICAgICBsZXQgVCA9IHRvU3RyaW5nKGZpZWxkLnR5cGUhKTtcbiAgICAgIGxldCBuYW1lID0gdG9TdHJpbmcoZmllbGQubmFtZSk7XG4gICAgICByZXR1cm4gYGVuY29kZTwke1R9LCBKU09ORW5jb2Rlcj4odGhpcy4ke25hbWV9LCBcIiR7bmFtZX1cIiwgZW5jb2Rlcik7YDtcbiAgICB9KTtcbn1cbi8vIFRPRE86IE1ha2Ugd29yayBmb3Igbm9uLXNpbXBsZSBnZW5lcmljcyBlLmcuIGZpZWxkOiBBcnJheTxUPlxuZnVuY3Rpb24gaXNHZW5lcmljKF9jbGFzczogQ2xhc3NEZWNsYXJhdGlvbiwgZmllbGQ6IEZpZWxkRGVjbGFyYXRpb24pOiBib29sZWFuIHtcbiAgaWYgKF9jbGFzcy50eXBlUGFyYW1ldGVycyA9PSBudWxsKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG4gIHJldHVybiBfY2xhc3MudHlwZVBhcmFtZXRlcnMuc29tZShcbiAgICBwYXJhbSA9PiB0b1N0cmluZyhwYXJhbS5uYW1lKSA9PSB0b1N0cmluZyhmaWVsZC50eXBlISlcbiAgKTtcbn1cbmRlY2xhcmUgdmFyIF9fZGlybmFtZTogc3RyaW5nO1xuXG5leHBvcnQgZGVmYXVsdCBjbGFzcyBKU09OVHJhbnNmb3JtZXIgZXh0ZW5kcyBUcmFuc2Zvcm1lciB7XG4gIGFmdGVyUGFyc2UoKTogdm9pZCB7XG4gICAgY29uc3QgcGFyc2VyID0gdGhpcy5wYXJzZXI7XG4gICAgY29uc3Qgd3JpdGVGaWxlID0gdGhpcy53cml0ZUZpbGU7XG4gICAgY29uc3QgYmFzZURpciA9IHRoaXMuYmFzZURpcjtcblxuICAgIC8vIENoZWNrIGZvciBmbG9hdHNcbiAgICB0aGlzLnByb2dyYW0uc291cmNlcy5mb3JFYWNoKFR5cGVDaGVja2VyLmNoZWNrVHlwZXMpO1xuXG4gICAgLy8gRmlsdGVyIGZvciBuZWFyIGZpbGVzXG4gICAgbGV0IGZpbGVzID0gSlNPTkJpbmRpbmdzQnVpbGRlci5uZWFyRmlsZXMocGFyc2VyKTtcblxuICAgIC8vIFZpc2l0IGVhY2ggZmlsZVxuICAgIGZpbGVzLmZvckVhY2goc291cmNlID0+IHtcbiAgICAgIGxldCB3cml0ZU91dCA9IHNvdXJjZS50ZXh0XG4gICAgICAgIC5zdWJzdHIoMCwgc291cmNlLnRleHQuaW5kZXhPZihcIlxcblwiKSlcbiAgICAgICAgLmluY2x1ZGVzKFwib3V0XCIpO1xuICAgICAgLy8gUmVtb3ZlIGZyb20gbG9ncyBpbiBwYXJzZXJcbiAgICAgIHBhcnNlci5kb25lbG9nLmRlbGV0ZShzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIHBhcnNlci5zZWVubG9nLmRlbGV0ZShzb3VyY2UuaW50ZXJuYWxQYXRoKTtcbiAgICAgIC8vIFJlbW92ZSBmcm9tIHByb2dyYW1zIHNvdXJjZXNcbiAgICAgIHBhcnNlci5wcm9ncmFtLnNvdXJjZXMgPSBwYXJzZXIucHJvZ3JhbS5zb3VyY2VzLmZpbHRlcihcbiAgICAgICAgKF9zb3VyY2U6IFNvdXJjZSkgPT4gX3NvdXJjZSAhPT0gc291cmNlXG4gICAgICApO1xuICAgICAgLy8gQnVpbGQgbmV3IFNvdXJjZVxuICAgICAgbGV0IHNvdXJjZVRleHQgPSBKU09OQmluZGluZ3NCdWlsZGVyLmJ1aWxkKHBhcnNlciwgc291cmNlKTtcbiAgICAgIGlmICh3cml0ZU91dCkge1xuICAgICAgICB3cml0ZUZpbGUoXCJvdXQvXCIgKyBzb3VyY2Uubm9ybWFsaXplZFBhdGgsIHNvdXJjZVRleHQsIGJhc2VEaXIpO1xuICAgICAgfVxuICAgICAgLy8gUGFyc2VzIGZpbGUgYW5kIGFueSBuZXcgaW1wb3J0cyBhZGRlZCB0byB0aGUgc291cmNlXG4gICAgICBwYXJzZXIucGFyc2VGaWxlKFxuICAgICAgICBzb3VyY2VUZXh0LFxuICAgICAgICAoaXNFbnRyeShzb3VyY2UpID8gXCJcIiA6IFwiLi9cIikgKyBzb3VyY2Uubm9ybWFsaXplZFBhdGgsXG4gICAgICAgIGlzRW50cnkoc291cmNlKVxuICAgICAgKTtcbiAgICB9KTtcblxuICAgIC8vIEFkZCBuZWVkZWQgZW50cnkgZmlsZSBpZiBidW5kbGVkIHdpdGggd2VicGFjayBzbyBpdCBkb2Vzbid0IGhhdmUgdG8gYmUgcGFzc2VkIGluIGxhdGVyXG4gICAgaWYgKEJVTkRMRSkge1xuICAgICAgY29uc3QgbGliU291cmNlID0gQlVORExFW1wibmVhckVudHJ5XCJdO1xuICAgICAgdGhpcy5wYXJzZXIucGFyc2VGaWxlKGxpYlNvdXJjZSwgXCJuZWFyRmlsZVwiLCB0cnVlKTtcbiAgICB9XG4gIH1cbn1cblxuZXhwb3J0IGNvbnN0IHByZWFtYmxlID0gYGltcG9ydCB7IEpTT05FbmNvZGVyIH0gZnJvbSBcImFzc2VtYmx5c2NyaXB0LWpzb25cIjtgOyJdfQ==

/***/ }),

/***/ "./src/typeChecker.ts":
/*!****************************!*\
  !*** ./src/typeChecker.ts ***!
  \****************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var as_transformer_1 = __webpack_require__(/*! ./as-transformer */ "./src/as-transformer.ts");
var TypeChecker = /** @class */ (function (_super) {
    __extends(TypeChecker, _super);
    function TypeChecker() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    TypeChecker.prototype.visitTypeName = function (node) {
        var name = node.identifier.text;
        if (name === "f32" || name === "f64") {
            // TODO: Add back when no floats in std
            // throw new Error("Floating point numbers are not allowed in smart contracts");
        }
        if (node.next != null) {
            this.visitTypeName(node.next);
        }
    };
    TypeChecker.checkTypes = function (node) {
        // const typeChecker = new TypeChecker();
        // typeChecker.visit(node);
    };
    return TypeChecker;
}(as_transformer_1.BaseVisitor));
exports.TypeChecker = TypeChecker;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHlwZUNoZWNrZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi9zcmMvdHlwZUNoZWNrZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7O0FBQUEsbURBQStEO0FBRS9EO0lBQWlDLCtCQUFXO0lBQTVDOztJQWdCQSxDQUFDO0lBZEMsbUNBQWEsR0FBYixVQUFjLElBQWM7UUFDMUIsSUFBTSxJQUFJLEdBQUcsSUFBSSxDQUFDLFVBQVUsQ0FBQyxJQUFJLENBQUM7UUFDbEMsSUFBSSxJQUFJLEtBQUssS0FBSyxJQUFJLElBQUksS0FBSyxLQUFLLEVBQUM7WUFDbkMsdUNBQXVDO1lBQ3ZDLGdGQUFnRjtTQUNqRjtRQUNELElBQUksSUFBSSxDQUFDLElBQUksSUFBSSxJQUFJLEVBQUM7WUFDcEIsSUFBSSxDQUFDLGFBQWEsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7U0FDL0I7SUFDSCxDQUFDO0lBQ00sc0JBQVUsR0FBakIsVUFBa0IsSUFBVTtRQUMxQix5Q0FBeUM7UUFDekMsMkJBQTJCO0lBQzdCLENBQUM7SUFDSCxrQkFBQztBQUFELENBQUMsQUFoQkQsQ0FBaUMsNEJBQVcsR0FnQjNDO0FBaEJZLGtDQUFXIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgQmFzZVZpc2l0b3IsIFR5cGVOYW1lLCBOb2RlIH0gZnJvbSAnLi9hcy10cmFuc2Zvcm1lcic7XG5cbmV4cG9ydCBjbGFzcyBUeXBlQ2hlY2tlciBleHRlbmRzIEJhc2VWaXNpdG9yIHtcblxuICB2aXNpdFR5cGVOYW1lKG5vZGU6IFR5cGVOYW1lKTogdm9pZCB7XG4gICAgY29uc3QgbmFtZSA9IG5vZGUuaWRlbnRpZmllci50ZXh0O1xuICAgIGlmIChuYW1lID09PSBcImYzMlwiIHx8IG5hbWUgPT09IFwiZjY0XCIpe1xuICAgICAgLy8gVE9ETzogQWRkIGJhY2sgd2hlbiBubyBmbG9hdHMgaW4gc3RkXG4gICAgICAvLyB0aHJvdyBuZXcgRXJyb3IoXCJGbG9hdGluZyBwb2ludCBudW1iZXJzIGFyZSBub3QgYWxsb3dlZCBpbiBzbWFydCBjb250cmFjdHNcIik7XG4gICAgfVxuICAgIGlmIChub2RlLm5leHQgIT0gbnVsbCl7XG4gICAgICB0aGlzLnZpc2l0VHlwZU5hbWUobm9kZS5uZXh0KTtcbiAgICB9XG4gIH1cbiAgc3RhdGljIGNoZWNrVHlwZXMobm9kZTogTm9kZSk6IHZvaWQge1xuICAgIC8vIGNvbnN0IHR5cGVDaGVja2VyID0gbmV3IFR5cGVDaGVja2VyKCk7XG4gICAgLy8gdHlwZUNoZWNrZXIudmlzaXQobm9kZSk7XG4gIH1cbn0iXX0=

/***/ })

/******/ });
});
//# sourceMappingURL=nearBindings.js.map