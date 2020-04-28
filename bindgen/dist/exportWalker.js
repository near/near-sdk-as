"use strict";
/**
 * Definition builders for WebIDL and TypeScript.
 * @module definitions
 */ /***/
Object.defineProperty(exports, "__esModule", { value: true });
const as_1 = require("visitor-as/as");
/** Walker base class. */
class ExportsWalker {
    /** Constructs a new Element walker. */
    constructor(program, includePrivate = false) {
        /** Already seen elements. */
        this.seen = new Map();
        /** Exports that are exposed by generics. */
        this.workset = new Set();
        this.program = program;
        this.includePrivate;
    }
    /** Walks all elements and calls the respective handlers. */
    walk() {
        for (let file of this.program.filesByName.values()) {
            if (file.source.sourceKind == as_1.SourceKind.USER_ENTRY)
                this.visitFile(file);
        }
        for (let element of this.workset) {
            if (!element.isDeclaredInLibrary) {
                this.visitElement(element.name, element);
            }
        }
    }
    /** Visits all exported elements of a file. */
    visitFile(file) {
        var members = file.exports;
        if (members) {
            for (let [name, member] of members)
                this.visitElement(name, member);
        }
        var exportsStar = file.exportsStar;
        if (exportsStar) {
            for (let exportStar of exportsStar)
                this.visitFile(exportStar);
        }
    }
    /** Visits an element.*/
    visitElement(name, element) {
        if (element.is(as_1.CommonFlags.PRIVATE) && !this.includePrivate)
            return;
        var seen = this.seen;
        if (seen.has(element)) {
            if (seen.get(element) != name) {
                this.visitAlias(name, element, seen.get(element));
            }
            return;
        }
        seen.set(element, name);
        switch (element.kind) {
            case as_1.ElementKind.GLOBAL: {
                if (element.is(as_1.CommonFlags.COMPILED))
                    this.visitGlobal(name, element);
                break;
            }
            case as_1.ElementKind.ENUM: {
                if (element.is(as_1.CommonFlags.COMPILED))
                    this.visitEnum(name, element);
                break;
            }
            case as_1.ElementKind.FUNCTION_PROTOTYPE: {
                this.visitFunctionInstances(name, element);
                break;
            }
            case as_1.ElementKind.CLASS_PROTOTYPE: {
                this.visitClassInstances(name, element);
                break;
            }
            case as_1.ElementKind.FIELD: {
                if (element.is(as_1.CommonFlags.COMPILED))
                    this.visitField(name, element);
                break;
            }
            case as_1.ElementKind.PROPERTY_PROTOTYPE: {
                this.visitPropertyInstances(name, element);
                break;
            }
            case as_1.ElementKind.PROPERTY: {
                let prop = element;
                let getter = prop.getterInstance;
                if (getter)
                    this.visitFunction(name, getter);
                let setter = prop.setterInstance;
                if (setter)
                    this.visitFunction(name, setter);
                break;
            }
            case as_1.ElementKind.NAMESPACE: {
                if (hasCompiledMember(element))
                    this.visitNamespace(name, element);
                break;
            }
            case as_1.ElementKind.TYPEDEFINITION: break;
            default: assert(false);
        }
    }
    visitFunctionInstances(name, element) {
        var instances = element.instances;
        if (instances) {
            for (let instance of instances.values()) {
                if (instance.is(as_1.CommonFlags.COMPILED))
                    this.visitFunction(name, instance);
            }
        }
    }
    visitClassInstances(name, element) {
        var instances = element.instances;
        if (instances) {
            for (let instance of instances.values()) {
                if (instance.is(as_1.CommonFlags.COMPILED) || this.workset.has(element))
                    this.visitClass(name, instance);
            }
        }
    }
    visitPropertyInstances(name, element) {
        // var instances = element.instances;
        // if (instances) {
        //   for (let instance of instances.values()) {
        //     if (instance.is(CommonFlags.COMPILED)) this.visitProperty(<Property>instance);
        //   }
        // }
        assert(false);
    }
}
exports.ExportsWalker = ExportsWalker;
/** A WebIDL definitions builder. */
class IDLBuilder extends ExportsWalker {
    /** Constructs a new WebIDL builder. */
    constructor(program, includePrivate = false) {
        super(program, includePrivate);
        this.sb = [];
        this.indentLevel = 0;
    }
    /** Builds WebIDL definitions for the specified program. */
    static build(program) {
        return new IDLBuilder(program).build();
    }
    visitGlobal(name, element) {
        var sb = this.sb;
        var isConst = element.is(as_1.CommonFlags.INLINED);
        as_1.indent(sb, this.indentLevel);
        if (isConst)
            sb.push("const ");
        sb.push(this.typeToString(element.type));
        sb.push(" ");
        sb.push(name);
        if (isConst) {
            switch (element.constantValueKind) {
                case 1 /* INTEGER */: {
                    sb.push(" = ");
                    sb.push(i64_to_string(element.constantIntegerValue));
                    break;
                }
                case 2 /* FLOAT */: {
                    sb.push(" = ");
                    sb.push(element.constantFloatValue.toString());
                    break;
                }
                default: assert(false);
            }
        }
        sb.push(";\n");
    }
    visitEnum(name, element) {
        var sb = this.sb;
        as_1.indent(sb, this.indentLevel++);
        sb.push("interface ");
        sb.push(name);
        sb.push(" {\n");
        var members = element.members;
        if (members) {
            for (let [name, member] of members) {
                if (member.kind == as_1.ElementKind.ENUMVALUE) {
                    let isConst = member.is(as_1.CommonFlags.INLINED);
                    as_1.indent(sb, this.indentLevel);
                    if (isConst)
                        sb.push("const ");
                    else
                        sb.push("readonly ");
                    sb.push("unsigned long ");
                    sb.push(name);
                    if (isConst) {
                        sb.push(" = ");
                        assert(member.constantValueKind == 1 /* INTEGER */);
                        sb.push(i64_low(member.constantIntegerValue).toString(10));
                    }
                    sb.push(";\n");
                }
            }
            for (let member of members.values()) {
                if (member.kind != as_1.ElementKind.ENUMVALUE)
                    this.visitElement(member.name, member);
            }
        }
        as_1.indent(sb, --this.indentLevel);
        sb.push("}\n");
    }
    visitFunction(name, element) {
        var sb = this.sb;
        var signature = element.signature;
        as_1.indent(sb, this.indentLevel);
        sb.push(this.typeToString(signature.returnType));
        sb.push(" ");
        sb.push(name);
        sb.push("(");
        var parameters = signature.parameterTypes;
        var numParameters = parameters.length;
        // var requiredParameters = signature.requiredParameters;
        for (let i = 0; i < numParameters; ++i) {
            if (i)
                sb.push(", ");
            // if (i >= requiredParameters) sb.push("optional ");
            sb.push(this.typeToString(parameters[i]));
            sb.push(" ");
            sb.push(signature.getParameterName(i));
        }
        sb.push(");\n");
        var members = element.members;
        if (members && members.size) {
            as_1.indent(sb, this.indentLevel);
            sb.push("interface ");
            sb.push(element.name);
            sb.push(" {\n");
            for (let member of members.values())
                this.visitElement(member.name, member);
            as_1.indent(sb, --this.indentLevel);
            sb.push("}\n");
        }
    }
    visitClass(name, element) {
        var sb = this.sb;
        as_1.indent(sb, this.indentLevel++);
        sb.push("interface ");
        sb.push(name);
        sb.push(" {\n");
        // TODO
        as_1.indent(sb, --this.indentLevel);
        sb.push("}\n");
    }
    visitInterface(name, element) {
        this.visitClass(name, element);
    }
    visitField(name, element) {
        // TODO
    }
    visitNamespace(name, element) {
        var sb = this.sb;
        as_1.indent(sb, this.indentLevel++);
        sb.push("interface ");
        sb.push(name);
        sb.push(" {\n");
        var members = element.members;
        if (members) {
            for (let member of members.values())
                this.visitElement(member.name, member);
        }
        as_1.indent(sb, --this.indentLevel);
        sb.push("}\n");
    }
    visitAlias(name, element, originalName) {
        // TODO
    }
    typeToString(type) {
        switch (type.kind) {
            case 0 /* I8 */: return "byte";
            case 1 /* I16 */: return "short";
            case 2 /* I32 */: return "long";
            case 3 /* I64 */: return "long long";
            case 4 /* ISIZE */: return this.program.options.isWasm64 ? "long long" : "long";
            case 5 /* U8 */: return "octet";
            case 6 /* U16 */: return "unsigned short";
            case 7 /* U32 */: return "unsigned long";
            // ^ TODO: function types
            case 8 /* U64 */: return "unsigned long long";
            case 9 /* USIZE */: return this.program.options.isWasm64 ? "unsigned long long" : "unsigned long";
            // ^ TODO: class types
            case 10 /* BOOL */: return "boolean";
            case 11 /* F32 */: return "unrestricted float";
            case 12 /* F64 */: return "unrestricted double";
            case 15 /* VOID */: return "void";
            default: {
                assert(false);
                return "";
            }
        }
    }
    build() {
        var sb = this.sb;
        sb.push("interface ASModule {\n");
        ++this.indentLevel;
        this.walk();
        --this.indentLevel;
        sb.push("}\n");
        return sb.join("");
    }
}
exports.IDLBuilder = IDLBuilder;
/** A TypeScript definitions builder. */
class TSDBuilder extends ExportsWalker {
    /** Constructs a new WebIDL builder. */
    constructor(program, includePrivate = false) {
        super(program, includePrivate);
        this.sb = [];
        this.indentLevel = 0;
        this.unknown = new Set();
    }
    /** Builds TypeScript definitions for the specified program. */
    static build(program) {
        return new TSDBuilder(program).build();
    }
    visitGlobal(name, element) {
        var sb = this.sb;
        var isConst = element.is(as_1.CommonFlags.INLINED);
        as_1.indent(sb, this.indentLevel);
        if (element.is(as_1.CommonFlags.STATIC)) {
            if (isConst)
                sb.push("static readonly ");
            else
                sb.push("static ");
        }
        else {
            if (isConst)
                sb.push("export const ");
            else
                sb.push("export var ");
        }
        sb.push(name);
        sb.push(": ");
        sb.push(this.typeToString(element.type));
        sb.push(";\n");
        this.visitNamespace(name, element);
    }
    visitEnum(name, element) {
        var sb = this.sb;
        as_1.indent(sb, this.indentLevel++);
        sb.push("export enum ");
        sb.push(name);
        sb.push(" {\n");
        var members = element.members;
        if (members) {
            let numMembers = members.size;
            for (let [name, member] of members) {
                if (member.kind == as_1.ElementKind.ENUMVALUE) {
                    as_1.indent(sb, this.indentLevel);
                    sb.push(name);
                    if (member.is(as_1.CommonFlags.INLINED)) {
                        sb.push(" = ");
                        assert(member.constantValueKind == 1 /* INTEGER */);
                        sb.push(i64_low(member.constantIntegerValue).toString(10));
                    }
                    sb.push(",\n");
                    --numMembers;
                }
            }
            if (numMembers)
                this.visitNamespace(name, element);
        }
        as_1.indent(sb, --this.indentLevel);
        sb.push("}\n");
    }
    visitFunction(name, element) {
        if (element.isAny(as_1.CommonFlags.PRIVATE | as_1.CommonFlags.SET))
            return;
        var sb = this.sb;
        var signature = element.signature;
        as_1.indent(sb, this.indentLevel);
        if (element.is(as_1.CommonFlags.PROTECTED))
            sb.push("protected ");
        if (element.is(as_1.CommonFlags.STATIC))
            sb.push("static ");
        if (element.is(as_1.CommonFlags.GET)) {
            sb.push("get ");
            sb.push(name); // 'get:funcName' internally
            sb.push("(): ");
            sb.push(this.typeToString(signature.returnType));
            sb.push(";\n");
            return;
        }
        else {
            if (!element.isAny(as_1.CommonFlags.STATIC | as_1.CommonFlags.INSTANCE))
                sb.push("export function ");
            sb.push(name);
        }
        sb.push("(");
        var parameters = signature.parameterTypes;
        var numParameters = parameters.length;
        // var requiredParameters = signature.requiredParameters;
        for (let i = 0; i < numParameters; ++i) {
            if (i)
                sb.push(", ");
            // if (i >= requiredParameters) sb.push("optional ");
            sb.push(signature.getParameterName(i));
            sb.push(": ");
            sb.push(this.typeToString(parameters[i]));
        }
        if (element.isAny(as_1.CommonFlags.CONSTRUCTOR | as_1.CommonFlags.SET)) {
            sb.push(")");
        }
        else {
            sb.push("): ");
            sb.push(this.typeToString(signature.returnType));
        }
        sb.push(";\n");
        if (element.contextualTypeArguments) {
            for (const _type of element.contextualTypeArguments.values()) {
                this.visitType(_type);
            }
        }
        this.visitNamespace(name, element);
    }
    visitClass(name, element) {
        if (this.seen.has(element)) {
            return;
        }
        var sb = this.sb;
        var isInterface = element.kind == as_1.ElementKind.INTERFACE;
        as_1.indent(sb, this.indentLevel++);
        if (isInterface) {
            sb.push("export interface ");
        }
        else {
            if (element.is(as_1.CommonFlags.ABSTRACT))
                sb.push("abstract ");
            sb.push("export class ");
        }
        sb.push(name);
        var base = element.base;
        if (base) {
            sb.push(" extends ");
            sb.push(base.name); // TODO: fqn
        }
        sb.push(" {\n");
        var staticMembers = element.prototype.members;
        if (staticMembers) {
            for (let member of staticMembers.values())
                this.visitElement(member.name, member);
        }
        var instanceMembers = element.members;
        if (instanceMembers) {
            for (let member of instanceMembers.values()) {
                if (base && base.members && base.members.has(member.name)) {
                    continue;
                }
                if (member.kind == as_1.ElementKind.FIELD) {
                    this.visitField(member.name, member);
                    this.seen.set(member, member.name);
                    continue;
                }
                this.visitElement(member.name, member);
            }
        }
        as_1.indent(sb, --this.indentLevel);
        sb.push("}\n");
        this.seen.set(element, name);
        if (base && !this.seen.has(base)) {
            this.visitClass(base.name, base);
        }
        if (element.typeArguments) {
            for (let i = 0; i < element.typeArguments.length; i++) {
                const genArg = element.typeArguments[i];
                this.visitType(genArg);
            }
        }
    }
    visitInterface(name, element) {
        this.visitClass(name, element);
    }
    visitField(name, element) {
        if (element.is(as_1.CommonFlags.PRIVATE))
            return;
        var sb = this.sb;
        as_1.indent(sb, this.indentLevel);
        if (element.is(as_1.CommonFlags.PROTECTED))
            sb.push("protected ");
        if (element.is(as_1.CommonFlags.STATIC))
            sb.push("static ");
        if (element.is(as_1.CommonFlags.READONLY))
            sb.push("readonly ");
        sb.push(name);
        sb.push(": ");
        sb.push(this.typeToString(element.type));
        sb.push(";\n");
        this.visitType(element.type);
    }
    visitNamespace(name, element) {
        var members = element.members;
        if (members && members.size) {
            let sb = this.sb;
            as_1.indent(sb, this.indentLevel++);
            sb.push("export namespace ");
            sb.push(name);
            sb.push(" {\n");
            for (let member of members.values())
                this.visitElement(member.name, member);
            as_1.indent(sb, --this.indentLevel);
            sb.push("}\n");
        }
    }
    visitAlias(name, element, originalName) {
        var sb = this.sb;
        as_1.indent(sb, this.indentLevel);
        sb.push("export const ");
        sb.push(name);
        sb.push(": typeof ");
        sb.push(originalName);
        sb.push(";\n");
    }
    typeToString(type) {
        // get external string with false
        var typeStr = type.toString();
        if (type.is(256 /* REFERENCE */)) {
            if (type.classReference.name == "String") {
                typeStr = "string";
            }
            else {
                this.workset.add(this.program.elementsByName.get(typeStr));
            }
        }
        typeStr = typeStr.split("/").pop();
        //TODO
        return typeStr;
    }
    visitType(type) {
        if (type.is(256 /* REFERENCE */) && type.classReference) {
            const c = type.classReference;
            if (!this.workset.has(c.prototype)) {
                this.workset.add(c.prototype);
                if (c.typeArguments) {
                    for (let i = 0; i < c.typeArguments.length; i++) {
                        this.visitType(c.typeArguments[i]);
                    }
                }
            }
        }
    }
    build() {
        var sb = this.sb;
        sb.push("declare module ASModule {\n");
        sb.push("  type i8 = number;\n");
        sb.push("  type i16 = number;\n");
        sb.push("  type i32 = number;\n");
        sb.push("  type usize = number;");
        sb.push("  type u8 = number;\n");
        sb.push("  type u16 = number;\n");
        sb.push("  type u32 = number;\n");
        sb.push("  type f32 = number;\n");
        sb.push("  type f64 = number;\n");
        sb.push("  type bool = any;\n");
        ++this.indentLevel;
        this.walk();
        --this.indentLevel;
        sb.push("}\n");
        sb.push("export default ASModule;\n");
        return this.sb.join("");
    }
}
exports.TSDBuilder = TSDBuilder;
// helpers
/** Tests if a namespace-like element has at least one compiled member. */
function hasCompiledMember(element) {
    var members = element.members;
    if (members) {
        for (let member of members.values()) {
            switch (member.kind) {
                case as_1.ElementKind.FUNCTION_PROTOTYPE: {
                    let instances = member.instances;
                    if (instances) {
                        for (let instance of instances.values()) {
                            if (instance.is(as_1.CommonFlags.COMPILED))
                                return true;
                        }
                    }
                    break;
                }
                case as_1.ElementKind.CLASS_PROTOTYPE: {
                    let instances = member.instances;
                    if (instances) {
                        for (let instance of instances.values()) {
                            if (instance.is(as_1.CommonFlags.COMPILED))
                                return true;
                        }
                    }
                    break;
                }
                default: {
                    if (member.is(as_1.CommonFlags.COMPILED) || hasCompiledMember(member))
                        return true;
                    break;
                }
            }
        }
    }
    return false;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXhwb3J0V2Fsa2VyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vc3JjL2V4cG9ydFdhbGtlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUE7OztHQUdHLENBQUEsS0FBSzs7QUFHUixzQ0F3QnVCO0FBRXZCLHlCQUF5QjtBQUN6QixNQUFzQixhQUFhO0lBV2pDLHVDQUF1QztJQUN2QyxZQUFZLE9BQWdCLEVBQUUsaUJBQXVCLEtBQUs7UUFOMUQsNkJBQTZCO1FBQzdCLFNBQUksR0FBd0IsSUFBSSxHQUFHLEVBQUUsQ0FBQztRQUN0Qyw0Q0FBNEM7UUFDNUMsWUFBTyxHQUF3QixJQUFJLEdBQUcsRUFBRSxDQUFDO1FBSXZDLElBQUksQ0FBQyxPQUFPLEdBQUcsT0FBTyxDQUFDO1FBQ3ZCLElBQUksQ0FBQyxjQUFjLENBQUM7SUFDdEIsQ0FBQztJQUVELDREQUE0RDtJQUM1RCxJQUFJO1FBQ0YsS0FBSyxJQUFJLElBQUksSUFBSSxJQUFJLENBQUMsT0FBTyxDQUFDLFdBQVcsQ0FBQyxNQUFNLEVBQUUsRUFBRTtZQUNsRCxJQUFJLElBQUksQ0FBQyxNQUFNLENBQUMsVUFBVSxJQUFJLGVBQVUsQ0FBQyxVQUFVO2dCQUFFLElBQUksQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLENBQUM7U0FDM0U7UUFDRCxLQUFLLElBQUksT0FBTyxJQUFJLElBQUksQ0FBQyxPQUFPLEVBQUU7WUFDaEMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxtQkFBbUIsRUFBRTtnQkFDaEMsSUFBSSxDQUFDLFlBQVksQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxDQUFDO2FBQzFDO1NBQ0Y7SUFDSCxDQUFDO0lBRUQsOENBQThDO0lBQzlDLFNBQVMsQ0FBQyxJQUFVO1FBQ2xCLElBQUksT0FBTyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUM7UUFDM0IsSUFBSSxPQUFPLEVBQUU7WUFDWCxLQUFLLElBQUksQ0FBQyxJQUFJLEVBQUUsTUFBTSxDQUFDLElB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LFFBQVEsQ0FBQyxJQUFJLGlCQUFpQixDQUFDLE1BQU0sQ0FBQzt3QkFBRSxPQUFPLElBQUksQ0FBQztvQkFDOUUsTUFBTTtpQkFDUDthQUNGO1NBQ0Y7S0FDRjtJQUNELE9BQU8sS0FBSyxDQUFDO0FBQ2YsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogRGVmaW5pdGlvbiBidWlsZGVycyBmb3IgV2ViSURMIGFuZCBUeXBlU2NyaXB0LlxuICogQG1vZHVsZSBkZWZpbml0aW9uc1xuICovLyoqKi9cblxuXG5pbXBvcnQge1xuICBpbmRlbnQsXG4gIFByb2dyYW0sXG4gIENsYXNzUHJvdG90eXBlLFxuICBTb3VyY2VLaW5kLFxuICBDb21tb25GbGFncyxcbiAgRWxlbWVudCxcbiAgRWxlbWVudEtpbmQsXG4gIEdsb2JhbCxcbiAgRW51bSxcbiAgRnVuY3Rpb25Qcm90b3R5cGUsXG4gIEZpZWxkLFxuICBQcm9wZXJ0eVByb3RvdHlwZSxcbiAgUHJvcGVydHksXG4gIEZ1bmN0aW9uLFxuICBDbGFzcyxcbiAgSW50ZXJmYWNlLFxuICBDb25zdGFudFZhbHVlS2luZCxcbiAgRW51bVZhbHVlLFxuICBOYW1lc3BhY2UsXG4gIFR5cGUsXG4gIFR5cGVLaW5kLFxuICBUeXBlRmxhZ3MsXG4gIEZpbGVcbn0gZnJvbSBcInZpc2l0b3ItYXMvYXNcIjtcblxuLyoqIFdhbGtlciBiYXNlIGNsYXNzLiAqL1xuZXhwb3J0IGFic3RyYWN0IGNsYXNzIEV4cG9ydHNXYWxrZXIge1xuXG4gIC8qKiBQcm9ncmFtIHJlZmVyZW5jZS4gKi9cbiAgcHJvZ3JhbTogUHJvZ3JhbTtcbiAgLyoqIFdoZXRoZXIgdG8gaW5jbHVkZSBwcml2YXRlIG1lbWJlcnMgKi9cbiAgaW5jbHVkZVByaXZhdGU6IGJvb2w7XG4gIC8qKiBBbHJlYWR5IHNlZW4gZWxlbWVudHMuICovXG4gIHNlZW46IE1hcDxFbGVtZW50LHN0cmluZz4gPSBuZXcgTWFwKCk7XG4gIC8qKiBFeHBvcnRzIHRoYXQgYXJlIGV4cG9zZWQgYnkgZ2VuZXJpY3MuICovXG4gIHdvcmtzZXQ6IFNldDxDbGFzc1Byb3RvdHlwZT4gPSBuZXcgU2V0KCk7XG5cbiAgLyoqIENvbnN0cnVjdHMgYSBuZXcgRWxlbWVudCB3YWxrZXIuICovXG4gIGNvbnN0cnVjdG9yKHByb2dyYW06IFByb2dyYW0sIGluY2x1ZGVQcml2YXRlOiBib29sID0gZmFsc2UpIHtcbiAgICB0aGlzLnByb2dyYW0gPSBwcm9ncmFtO1xuICAgIHRoaXMuaW5jbHVkZVByaXZhdGU7XG4gIH1cblxuICAvKiogV2Fsa3MgYWxsIGVsZW1lbnRzIGFuZCBjYWxscyB0aGUgcmVzcGVjdGl2ZSBoYW5kbGVycy4gKi9cbiAgd2FsaygpOiB2b2lkIHtcbiAgICBmb3IgKGxldCBmaWxlIG9mIHRoaXMucHJvZ3JhbS5maWxlc0J5TmFtZS52YWx1ZXMoKSkge1xuICAgICAgaWYgKGZpbGUuc291cmNlLnNvdXJjZUtpbmQgPT0gU291cmNlS2luZC5VU0VSX0VOVFJZKSB0aGlzLnZpc2l0RmlsZShmaWxlKTtcbiAgICB9XG4gICAgZm9yIChsZXQgZWxlbWVudCBvZiB0aGlzLndvcmtzZXQpIHtcbiAgICAgIGlmICghZWxlbWVudC5pc0RlY2xhcmVkSW5MaWJyYXJ5KSB7XG4gICAgICAgIHRoaXMudmlzaXRFbGVtZW50KGVsZW1lbnQubmFtZSwgZWxlbWVudCk7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLyoqIFZpc2l0cyBhbGwgZXhwb3J0ZWQgZWxlbWVudHMgb2YgYSBmaWxlLiAqL1xuICB2aXNpdEZpbGUoZmlsZTogRmlsZSk6IHZvaWQge1xuICAgIHZhciBtZW1iZXJzID0gZmlsZS5leHBvcnRzO1xuICAgIGlmIChtZW1iZXJzKSB7XG4gICAgICBmb3IgKGxldCBbbmFtZSwgbWVtYmVyXSBvZiBtZW1iZXJzKSB0aGlzLnZpc2l0RWxlbWVudChuYW1lLCBtZW1iZXIpO1xuICAgIH1cbiAgICB2YXIgZXhwb3J0c1N0YXIgPSBmaWxlLmV4cG9ydHNTdGFyO1xuICAgIGlmIChleHBvcnRzU3Rhcikge1xuICAgICAgZm9yIChsZXQgZXhwb3J0U3RhciBvZiBleHBvcnRzU3RhcikgdGhpcy52aXNpdEZpbGUoZXhwb3J0U3Rhcik7XG4gICAgfVxuICB9XG5cbiAgLyoqIFZpc2l0cyBhbiBlbGVtZW50LiovXG4gIHZpc2l0RWxlbWVudChuYW1lOiBzdHJpbmcsIGVsZW1lbnQ6IEVsZW1lbnQpOiB2b2lkIHtcbiAgICBpZiAoZWxlbWVudC5pcyhDb21tb25GbGFncy5QUklWQVRFKSAmJiAhdGhpcy5pbmNsdWRlUHJpdmF0ZSkgcmV0dXJuO1xuICAgIHZhciBzZWVuID0gdGhpcy5zZWVuO1xuICAgIGlmIChzZWVuLmhhcyhlbGVtZW50KSkge1xuICAgICAgaWYgKDxzdHJpbmc+c2Vlbi5nZXQoZWxlbWVudCkgIT0gbmFtZSkge1xuICAgICAgICB0aGlzLnZpc2l0QWxpYXMobmFtZSwgZWxlbWVudCwgPHN0cmluZz5zZWVuLmdldChlbGVtZW50KSk7XG4gICAgICB9XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIHNlZW4uc2V0KGVsZW1lbnQsIG5hbWUpO1xuICAgIHN3aXRjaCAoZWxlbWVudC5raW5kKSB7XG4gICAgICBjYXNlIEVsZW1lbnRLaW5kLkdMT0JBTDoge1xuICAgICAgICBpZiAoZWxlbWVudC5pcyhDb21tb25GbGFncy5DT01QSUxFRCkpIHRoaXMudmlzaXRHbG9iYWwobmFtZSwgPEdsb2JhbD5lbGVtZW50KTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIEVsZW1lbnRLaW5kLkVOVU06IHtcbiAgICAgICAgaWYgKGVsZW1lbnQuaXMoQ29tbW9uRmxhZ3MuQ09NUElMRUQpKSB0aGlzLnZpc2l0RW51bShuYW1lLCA8RW51bT5lbGVtZW50KTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIEVsZW1lbnRLaW5kLkZVTkNUSU9OX1BST1RPVFlQRToge1xuICAgICAgICB0aGlzLnZpc2l0RnVuY3Rpb25JbnN0YW5jZXMobmFtZSwgPEZ1bmN0aW9uUHJvdG90eXBlPmVsZW1lbnQpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgRWxlbWVudEtpbmQuQ0xBU1NfUFJPVE9UWVBFOiB7XG4gICAgICAgIHRoaXMudmlzaXRDbGFzc0luc3RhbmNlcyhuYW1lLCA8Q2xhc3NQcm90b3R5cGU+ZWxlbWVudCk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBFbGVtZW50S2luZC5GSUVMRDoge1xuICAgICAgICBpZiAoKDxGaWVsZD5lbGVtZW50KS5pcyhDb21tb25GbGFncy5DT01QSUxFRCkpIHRoaXMudmlzaXRGaWVsZChuYW1lLCA8RmllbGQ+ZWxlbWVudCk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBFbGVtZW50S2luZC5QUk9QRVJUWV9QUk9UT1RZUEU6IHtcbiAgICAgICAgdGhpcy52aXNpdFByb3BlcnR5SW5zdGFuY2VzKG5hbWUsIDxQcm9wZXJ0eVByb3RvdHlwZT5lbGVtZW50KTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIEVsZW1lbnRLaW5kLlBST1BFUlRZOiB7XG4gICAgICAgIGxldCBwcm9wID0gPFByb3BlcnR5PmVsZW1lbnQ7XG4gICAgICAgIGxldCBnZXR0ZXIgPSBwcm9wLmdldHRlckluc3RhbmNlO1xuICAgICAgICBpZiAoZ2V0dGVyKSB0aGlzLnZpc2l0RnVuY3Rpb24obmFtZSwgZ2V0dGVyKTtcbiAgICAgICAgbGV0IHNldHRlciA9IHByb3Auc2V0dGVySW5zdGFuY2U7XG4gICAgICAgIGlmIChzZXR0ZXIpIHRoaXMudmlzaXRGdW5jdGlvbihuYW1lLCBzZXR0ZXIpO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGNhc2UgRWxlbWVudEtpbmQuTkFNRVNQQUNFOiB7XG4gICAgICAgIGlmIChoYXNDb21waWxlZE1lbWJlcihlbGVtZW50KSkgdGhpcy52aXNpdE5hbWVzcGFjZShuYW1lLCBlbGVtZW50KTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjYXNlIEVsZW1lbnRLaW5kLlRZUEVERUZJTklUSU9OOiBicmVhaztcbiAgICAgIGRlZmF1bHQ6IGFzc2VydChmYWxzZSk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSB2aXNpdEZ1bmN0aW9uSW5zdGFuY2VzKG5hbWU6IHN0cmluZywgZWxlbWVudDogRnVuY3Rpb25Qcm90b3R5cGUpOiB2b2lkIHtcbiAgICB2YXIgaW5zdGFuY2VzID0gZWxlbWVudC5pbnN0YW5jZXM7XG4gICAgaWYgKGluc3RhbmNlcykge1xuICAgICAgZm9yIChsZXQgaW5zdGFuY2Ugb2YgaW5zdGFuY2VzLnZhbHVlcygpKSB7XG4gICAgICAgIGlmIChpbnN0YW5jZS5pcyhDb21tb25GbGFncy5DT01QSUxFRCkpIHRoaXMudmlzaXRGdW5jdGlvbihuYW1lLCA8RnVuY3Rpb24+aW5zdGFuY2UpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgdmlzaXRDbGFzc0luc3RhbmNlcyhuYW1lOiBzdHJpbmcsIGVsZW1lbnQ6IENsYXNzUHJvdG90eXBlKTogdm9pZCB7XG4gICAgdmFyIGluc3RhbmNlcyA9IGVsZW1lbnQuaW5zdGFuY2VzO1xuICAgIGlmIChpbnN0YW5jZXMpIHtcbiAgICAgIGZvciAobGV0IGluc3RhbmNlIG9mIGluc3RhbmNlcy52YWx1ZXMoKSkge1xuICAgICAgICBpZiAoaW5zdGFuY2UuaXMoQ29tbW9uRmxhZ3MuQ09NUElMRUQpIHx8IHRoaXMud29ya3NldC5oYXMoZWxlbWVudCkpIHRoaXMudmlzaXRDbGFzcyhuYW1lLCA8Q2xhc3M+aW5zdGFuY2UpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgdmlzaXRQcm9wZXJ0eUluc3RhbmNlcyhuYW1lOiBzdHJpbmcsIGVsZW1lbnQ6IFByb3BlcnR5UHJvdG90eXBlKTogdm9pZCB7XG4gICAgLy8gdmFyIGluc3RhbmNlcyA9IGVsZW1lbnQuaW5zdGFuY2VzO1xuICAgIC8vIGlmIChpbnN0YW5jZXMpIHtcbiAgICAvLyAgIGZvciAobGV0IGluc3RhbmNlIG9mIGluc3RhbmNlcy52YWx1ZXMoKSkge1xuICAgIC8vICAgICBpZiAoaW5zdGFuY2UuaXMoQ29tbW9uRmxhZ3MuQ09NUElMRUQpKSB0aGlzLnZpc2l0UHJvcGVydHkoPFByb3BlcnR5Pmluc3RhbmNlKTtcbiAgICAvLyAgIH1cbiAgICAvLyB9XG4gICAgYXNzZXJ0KGZhbHNlKTtcbiAgfVxuXG4gIGFic3RyYWN0IHZpc2l0R2xvYmFsKG5hbWU6IHN0cmluZywgZWxlbWVudDogR2xvYmFsKTogdm9pZDtcbiAgYWJzdHJhY3QgdmlzaXRFbnVtKG5hbWU6IHN0cmluZywgZWxlbWVudDogRW51bSk6IHZvaWQ7XG4gIGFic3RyYWN0IHZpc2l0RnVuY3Rpb24obmFtZTogc3RyaW5nLCBlbGVtZW50OiBGdW5jdGlvbik6IHZvaWQ7XG4gIGFic3RyYWN0IHZpc2l0Q2xhc3MobmFtZTogc3RyaW5nLCBlbGVtZW50OiBDbGFzcyk6IHZvaWQ7XG4gIGFic3RyYWN0IHZpc2l0SW50ZXJmYWNlKG5hbWU6IHN0cmluZywgZWxlbWVudDogSW50ZXJmYWNlKTogdm9pZDtcbiAgYWJzdHJhY3QgdmlzaXRGaWVsZChuYW1lOiBzdHJpbmcsIGVsZW1lbnQ6IEZpZWxkKTogdm9pZDtcbiAgYWJzdHJhY3QgdmlzaXROYW1lc3BhY2UobmFtZTogc3RyaW5nLCBlbGVtZW50OiBFbGVtZW50KTogdm9pZDtcbiAgYWJzdHJhY3QgdmlzaXRBbGlhcyhuYW1lOiBzdHJpbmcsIGVsZW1lbnQ6IEVsZW1lbnQsIG9yaWdpbmFsTmFtZTogc3RyaW5nKTogdm9pZDtcbn1cblxuLyoqIEEgV2ViSURMIGRlZmluaXRpb25zIGJ1aWxkZXIuICovXG5leHBvcnQgY2xhc3MgSURMQnVpbGRlciBleHRlbmRzIEV4cG9ydHNXYWxrZXIge1xuXG4gIC8qKiBCdWlsZHMgV2ViSURMIGRlZmluaXRpb25zIGZvciB0aGUgc3BlY2lmaWVkIHByb2dyYW0uICovXG4gIHN0YXRpYyBidWlsZChwcm9ncmFtOiBQcm9ncmFtKTogc3RyaW5nIHtcbiAgICByZXR1cm4gbmV3IElETEJ1aWxkZXIocHJvZ3JhbSkuYnVpbGQoKTtcbiAgfVxuXG4gIHByaXZhdGUgc2I6IHN0cmluZ1tdID0gW107XG4gIHByaXZhdGUgaW5kZW50TGV2ZWw6IGkzMiA9IDA7XG5cbiAgLyoqIENvbnN0cnVjdHMgYSBuZXcgV2ViSURMIGJ1aWxkZXIuICovXG4gIGNvbnN0cnVjdG9yKHByb2dyYW06IFByb2dyYW0sIGluY2x1ZGVQcml2YXRlOiBib29sID0gZmFsc2UpIHtcbiAgICBzdXBlcihwcm9ncmFtLCBpbmNsdWRlUHJpdmF0ZSk7XG4gIH1cblxuICB2aXNpdEdsb2JhbChuYW1lOiBzdHJpbmcsIGVsZW1lbnQ6IEdsb2JhbCk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgdmFyIGlzQ29uc3QgPSBlbGVtZW50LmlzKENvbW1vbkZsYWdzLklOTElORUQpO1xuICAgIGluZGVudChzYiwgdGhpcy5pbmRlbnRMZXZlbCk7XG4gICAgaWYgKGlzQ29uc3QpIHNiLnB1c2goXCJjb25zdCBcIik7XG4gICAgc2IucHVzaCh0aGlzLnR5cGVUb1N0cmluZyhlbGVtZW50LnR5cGUpKTtcbiAgICBzYi5wdXNoKFwiIFwiKTtcbiAgICBzYi5wdXNoKG5hbWUpO1xuICAgIGlmIChpc0NvbnN0KSB7XG4gICAgICBzd2l0Y2ggKGVsZW1lbnQuY29uc3RhbnRWYWx1ZUtpbmQpIHtcbiAgICAgICAgY2FzZSBDb25zdGFudFZhbHVlS2luZC5JTlRFR0VSOiB7XG4gICAgICAgICAgc2IucHVzaChcIiA9IFwiKTtcbiAgICAgICAgICBzYi5wdXNoKGk2NF90b19zdHJpbmcoZWxlbWVudC5jb25zdGFudEludGVnZXJWYWx1ZSkpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICAgIGNhc2UgQ29uc3RhbnRWYWx1ZUtpbmQuRkxPQVQ6IHtcbiAgICAgICAgICBzYi5wdXNoKFwiID0gXCIpO1xuICAgICAgICAgIHNiLnB1c2goZWxlbWVudC5jb25zdGFudEZsb2F0VmFsdWUudG9TdHJpbmcoKSk7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgICAgZGVmYXVsdDogYXNzZXJ0KGZhbHNlKTtcbiAgICAgIH1cbiAgICB9XG4gICAgc2IucHVzaChcIjtcXG5cIik7XG4gIH1cblxuICB2aXNpdEVudW0obmFtZTogc3RyaW5nLCBlbGVtZW50OiBFbnVtKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICBpbmRlbnQoc2IsIHRoaXMuaW5kZW50TGV2ZWwrKyk7XG4gICAgc2IucHVzaChcImludGVyZmFjZSBcIik7XG4gICAgc2IucHVzaChuYW1lKTtcbiAgICBzYi5wdXNoKFwiIHtcXG5cIik7XG4gICAgdmFyIG1lbWJlcnMgPSBlbGVtZW50Lm1lbWJlcnM7XG4gICAgaWYgKG1lbWJlcnMpIHtcbiAgICAgIGZvciAobGV0IFtuYW1lLCBtZW1iZXJdIG9mIG1lbWJlcnMpIHtcbiAgICAgICAgaWYgKG1lbWJlci5raW5kID09IEVsZW1lbnRLaW5kLkVOVU1WQUxVRSkge1xuICAgICAgICAgIGxldCBpc0NvbnN0ID0gKDxFbnVtVmFsdWU+bWVtYmVyKS5pcyhDb21tb25GbGFncy5JTkxJTkVEKTtcbiAgICAgICAgICBpbmRlbnQoc2IsIHRoaXMuaW5kZW50TGV2ZWwpO1xuICAgICAgICAgIGlmIChpc0NvbnN0KSBzYi5wdXNoKFwiY29uc3QgXCIpO1xuICAgICAgICAgIGVsc2Ugc2IucHVzaChcInJlYWRvbmx5IFwiKTtcbiAgICAgICAgICBzYi5wdXNoKFwidW5zaWduZWQgbG9uZyBcIik7XG4gICAgICAgICAgc2IucHVzaChuYW1lKTtcbiAgICAgICAgICBpZiAoaXNDb25zdCkge1xuICAgICAgICAgICAgc2IucHVzaChcIiA9IFwiKTtcbiAgICAgICAgICAgIGFzc2VydCgoPEVudW1WYWx1ZT5tZW1iZXIpLmNvbnN0YW50VmFsdWVLaW5kID09IENvbnN0YW50VmFsdWVLaW5kLklOVEVHRVIpO1xuICAgICAgICAgICAgc2IucHVzaChpNjRfbG93KCg8RW51bVZhbHVlPm1lbWJlcikuY29uc3RhbnRJbnRlZ2VyVmFsdWUpLnRvU3RyaW5nKDEwKSk7XG4gICAgICAgICAgfVxuICAgICAgICAgIHNiLnB1c2goXCI7XFxuXCIpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICBmb3IgKGxldCBtZW1iZXIgb2YgbWVtYmVycy52YWx1ZXMoKSkge1xuICAgICAgICBpZiAobWVtYmVyLmtpbmQgIT0gRWxlbWVudEtpbmQuRU5VTVZBTFVFKSB0aGlzLnZpc2l0RWxlbWVudChtZW1iZXIubmFtZSwgbWVtYmVyKTtcbiAgICAgIH1cbiAgICB9XG4gICAgaW5kZW50KHNiLCAtLXRoaXMuaW5kZW50TGV2ZWwpO1xuICAgIHNiLnB1c2goXCJ9XFxuXCIpO1xuICB9XG5cbiAgdmlzaXRGdW5jdGlvbihuYW1lOiBzdHJpbmcsIGVsZW1lbnQ6IEZ1bmN0aW9uKTogdm9pZCB7XG4gICAgdmFyIHNiID0gdGhpcy5zYjtcbiAgICB2YXIgc2lnbmF0dXJlID0gZWxlbWVudC5zaWduYXR1cmU7XG4gICAgaW5kZW50KHNiLCB0aGlzLmluZGVudExldmVsKTtcbiAgICBzYi5wdXNoKHRoaXMudHlwZVRvU3RyaW5nKHNpZ25hdHVyZS5yZXR1cm5UeXBlKSk7XG4gICAgc2IucHVzaChcIiBcIik7XG4gICAgc2IucHVzaChuYW1lKTtcbiAgICBzYi5wdXNoKFwiKFwiKTtcbiAgICB2YXIgcGFyYW1ldGVycyA9IHNpZ25hdHVyZS5wYXJhbWV0ZXJUeXBlcztcbiAgICB2YXIgbnVtUGFyYW1ldGVycyA9IHBhcmFtZXRlcnMubGVuZ3RoO1xuICAgIC8vIHZhciByZXF1aXJlZFBhcmFtZXRlcnMgPSBzaWduYXR1cmUucmVxdWlyZWRQYXJhbWV0ZXJzO1xuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgbnVtUGFyYW1ldGVyczsgKytpKSB7XG4gICAgICBpZiAoaSkgc2IucHVzaChcIiwgXCIpO1xuICAgICAgLy8gaWYgKGkgPj0gcmVxdWlyZWRQYXJhbWV0ZXJzKSBzYi5wdXNoKFwib3B0aW9uYWwgXCIpO1xuICAgICAgc2IucHVzaCh0aGlzLnR5cGVUb1N0cmluZyhwYXJhbWV0ZXJzW2ldKSk7XG4gICAgICBzYi5wdXNoKFwiIFwiKTtcbiAgICAgIHNiLnB1c2goc2lnbmF0dXJlLmdldFBhcmFtZXRlck5hbWUoaSkpO1xuICAgIH1cbiAgICBzYi5wdXNoKFwiKTtcXG5cIik7XG4gICAgdmFyIG1lbWJlcnMgPSBlbGVtZW50Lm1lbWJlcnM7XG4gICAgaWYgKG1lbWJlcnMgJiYgbWVtYmVycy5zaXplKSB7XG4gICAgICBpbmRlbnQoc2IsIHRoaXMuaW5kZW50TGV2ZWwpO1xuICAgICAgc2IucHVzaChcImludGVyZmFjZSBcIik7XG4gICAgICBzYi5wdXNoKGVsZW1lbnQubmFtZSk7XG4gICAgICBzYi5wdXNoKFwiIHtcXG5cIik7XG4gICAgICBmb3IgKGxldCBtZW1iZXIgb2YgbWVtYmVycy52YWx1ZXMoKSkgdGhpcy52aXNpdEVsZW1lbnQobWVtYmVyLm5hbWUsIG1lbWJlcik7XG4gICAgICBpbmRlbnQoc2IsIC0tdGhpcy5pbmRlbnRMZXZlbCk7XG4gICAgICBzYi5wdXNoKFwifVxcblwiKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdENsYXNzKG5hbWU6IHN0cmluZywgZWxlbWVudDogQ2xhc3MpOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIGluZGVudChzYiwgdGhpcy5pbmRlbnRMZXZlbCsrKTtcbiAgICBzYi5wdXNoKFwiaW50ZXJmYWNlIFwiKTtcbiAgICBzYi5wdXNoKG5hbWUpO1xuICAgIHNiLnB1c2goXCIge1xcblwiKTtcbiAgICAvLyBUT0RPXG4gICAgaW5kZW50KHNiLCAtLXRoaXMuaW5kZW50TGV2ZWwpO1xuICAgIHNiLnB1c2goXCJ9XFxuXCIpO1xuICB9XG5cbiAgdmlzaXRJbnRlcmZhY2UobmFtZTogc3RyaW5nLCBlbGVtZW50OiBJbnRlcmZhY2UpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0Q2xhc3MobmFtZSwgZWxlbWVudCk7XG4gIH1cblxuICB2aXNpdEZpZWxkKG5hbWU6IHN0cmluZywgZWxlbWVudDogRmllbGQpOiB2b2lkIHtcbiAgICAvLyBUT0RPXG4gIH1cblxuICB2aXNpdE5hbWVzcGFjZShuYW1lOiBzdHJpbmcsIGVsZW1lbnQ6IE5hbWVzcGFjZSk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgaW5kZW50KHNiLCB0aGlzLmluZGVudExldmVsKyspO1xuICAgIHNiLnB1c2goXCJpbnRlcmZhY2UgXCIpO1xuICAgIHNiLnB1c2gobmFtZSk7XG4gICAgc2IucHVzaChcIiB7XFxuXCIpO1xuICAgIHZhciBtZW1iZXJzID0gZWxlbWVudC5tZW1iZXJzO1xuICAgIGlmIChtZW1iZXJzKSB7XG4gICAgICBmb3IgKGxldCBtZW1iZXIgb2YgbWVtYmVycy52YWx1ZXMoKSkgdGhpcy52aXNpdEVsZW1lbnQobWVtYmVyLm5hbWUsIG1lbWJlcik7XG4gICAgfVxuICAgIGluZGVudChzYiwgLS10aGlzLmluZGVudExldmVsKTtcbiAgICBzYi5wdXNoKFwifVxcblwiKTtcbiAgfVxuXG4gIHZpc2l0QWxpYXMobmFtZTogc3RyaW5nLCBlbGVtZW50OiBFbGVtZW50LCBvcmlnaW5hbE5hbWU6IHN0cmluZyk6IHZvaWQge1xuICAgIC8vIFRPRE9cbiAgfVxuXG4gIHR5cGVUb1N0cmluZyh0eXBlOiBUeXBlKTogc3RyaW5nIHtcbiAgICBzd2l0Y2ggKHR5cGUua2luZCkge1xuICAgICAgY2FzZSBUeXBlS2luZC5JODogcmV0dXJuIFwiYnl0ZVwiO1xuICAgICAgY2FzZSBUeXBlS2luZC5JMTY6IHJldHVybiBcInNob3J0XCI7XG4gICAgICBjYXNlIFR5cGVLaW5kLkkzMjogcmV0dXJuIFwibG9uZ1wiO1xuICAgICAgY2FzZSBUeXBlS2luZC5JNjQ6IHJldHVybiBcImxvbmcgbG9uZ1wiO1xuICAgICAgY2FzZSBUeXBlS2luZC5JU0laRTogcmV0dXJuIHRoaXMucHJvZ3JhbS5vcHRpb25zLmlzV2FzbTY0ID8gXCJsb25nIGxvbmdcIiA6IFwibG9uZ1wiO1xuICAgICAgY2FzZSBUeXBlS2luZC5VODogcmV0dXJuIFwib2N0ZXRcIjtcbiAgICAgIGNhc2UgVHlwZUtpbmQuVTE2OiByZXR1cm4gXCJ1bnNpZ25lZCBzaG9ydFwiO1xuICAgICAgY2FzZSBUeXBlS2luZC5VMzI6IHJldHVybiBcInVuc2lnbmVkIGxvbmdcIjtcbiAgICAgICAgLy8gXiBUT0RPOiBmdW5jdGlvbiB0eXBlc1xuICAgICAgY2FzZSBUeXBlS2luZC5VNjQ6IHJldHVybiBcInVuc2lnbmVkIGxvbmcgbG9uZ1wiO1xuICAgICAgY2FzZSBUeXBlS2luZC5VU0laRTogcmV0dXJuIHRoaXMucHJvZ3JhbS5vcHRpb25zLmlzV2FzbTY0ID8gXCJ1bnNpZ25lZCBsb25nIGxvbmdcIiA6IFwidW5zaWduZWQgbG9uZ1wiO1xuICAgICAgICAvLyBeIFRPRE86IGNsYXNzIHR5cGVzXG4gICAgICBjYXNlIFR5cGVLaW5kLkJPT0w6IHJldHVybiBcImJvb2xlYW5cIjtcbiAgICAgIGNhc2UgVHlwZUtpbmQuRjMyOiByZXR1cm4gXCJ1bnJlc3RyaWN0ZWQgZmxvYXRcIjtcbiAgICAgIGNhc2UgVHlwZUtpbmQuRjY0OiByZXR1cm4gXCJ1bnJlc3RyaWN0ZWQgZG91YmxlXCI7XG4gICAgICBjYXNlIFR5cGVLaW5kLlZPSUQ6IHJldHVybiBcInZvaWRcIjtcbiAgICAgIGRlZmF1bHQ6IHtcbiAgICAgICAgYXNzZXJ0KGZhbHNlKTtcbiAgICAgICAgcmV0dXJuIFwiXCI7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgYnVpbGQoKTogc3RyaW5nIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHNiLnB1c2goXCJpbnRlcmZhY2UgQVNNb2R1bGUge1xcblwiKTtcbiAgICArK3RoaXMuaW5kZW50TGV2ZWw7XG4gICAgdGhpcy53YWxrKCk7XG4gICAgLS10aGlzLmluZGVudExldmVsO1xuICAgIHNiLnB1c2goXCJ9XFxuXCIpO1xuICAgIHJldHVybiBzYi5qb2luKFwiXCIpO1xuICB9XG59XG5cbi8qKiBBIFR5cGVTY3JpcHQgZGVmaW5pdGlvbnMgYnVpbGRlci4gKi9cbmV4cG9ydCBjbGFzcyBUU0RCdWlsZGVyIGV4dGVuZHMgRXhwb3J0c1dhbGtlciB7XG5cbiAgLyoqIEJ1aWxkcyBUeXBlU2NyaXB0IGRlZmluaXRpb25zIGZvciB0aGUgc3BlY2lmaWVkIHByb2dyYW0uICovXG4gIHN0YXRpYyBidWlsZChwcm9ncmFtOiBQcm9ncmFtKTogc3RyaW5nIHtcbiAgICByZXR1cm4gbmV3IFRTREJ1aWxkZXIocHJvZ3JhbSkuYnVpbGQoKTtcbiAgfVxuXG4gIHByaXZhdGUgc2I6IHN0cmluZ1tdID0gW107XG4gIHByaXZhdGUgaW5kZW50TGV2ZWw6IGkzMiA9IDA7XG4gIHByaXZhdGUgdW5rbm93bjogU2V0PHN0cmluZz4gPSBuZXcgU2V0KCk7XG5cbiAgLyoqIENvbnN0cnVjdHMgYSBuZXcgV2ViSURMIGJ1aWxkZXIuICovXG4gIGNvbnN0cnVjdG9yKHByb2dyYW06IFByb2dyYW0sIGluY2x1ZGVQcml2YXRlOiBib29sID0gZmFsc2UpIHtcbiAgICBzdXBlcihwcm9ncmFtLCBpbmNsdWRlUHJpdmF0ZSk7XG4gIH1cblxuICB2aXNpdEdsb2JhbChuYW1lOiBzdHJpbmcsIGVsZW1lbnQ6IEdsb2JhbCk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgdmFyIGlzQ29uc3QgPSBlbGVtZW50LmlzKENvbW1vbkZsYWdzLklOTElORUQpO1xuICAgIGluZGVudChzYiwgdGhpcy5pbmRlbnRMZXZlbCk7XG4gICAgaWYgKGVsZW1lbnQuaXMoQ29tbW9uRmxhZ3MuU1RBVElDKSkge1xuICAgICAgaWYgKGlzQ29uc3QpIHNiLnB1c2goXCJzdGF0aWMgcmVhZG9ubHkgXCIpO1xuICAgICAgZWxzZSBzYi5wdXNoKFwic3RhdGljIFwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgaWYgKGlzQ29uc3QpIHNiLnB1c2goXCJleHBvcnQgY29uc3QgXCIpO1xuICAgICAgZWxzZSBzYi5wdXNoKFwiZXhwb3J0IHZhciBcIik7XG4gICAgfVxuICAgIHNiLnB1c2gobmFtZSk7XG4gICAgc2IucHVzaChcIjogXCIpO1xuICAgIHNiLnB1c2godGhpcy50eXBlVG9TdHJpbmcoZWxlbWVudC50eXBlKSk7XG4gICAgc2IucHVzaChcIjtcXG5cIik7XG4gICAgdGhpcy52aXNpdE5hbWVzcGFjZShuYW1lLCBlbGVtZW50KTtcbiAgfVxuXG4gIHZpc2l0RW51bShuYW1lOiBzdHJpbmcsIGVsZW1lbnQ6IEVudW0pOiB2b2lkIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIGluZGVudChzYiwgdGhpcy5pbmRlbnRMZXZlbCsrKTtcbiAgICBzYi5wdXNoKFwiZXhwb3J0IGVudW0gXCIpO1xuICAgIHNiLnB1c2gobmFtZSk7XG4gICAgc2IucHVzaChcIiB7XFxuXCIpO1xuICAgIHZhciBtZW1iZXJzID0gZWxlbWVudC5tZW1iZXJzO1xuICAgIGlmIChtZW1iZXJzKSB7XG4gICAgICBsZXQgbnVtTWVtYmVycyA9IG1lbWJlcnMuc2l6ZTtcbiAgICAgIGZvciAobGV0IFtuYW1lLCBtZW1iZXJdIG9mIG1lbWJlcnMpIHtcbiAgICAgICAgaWYgKG1lbWJlci5raW5kID09IEVsZW1lbnRLaW5kLkVOVU1WQUxVRSkge1xuICAgICAgICAgIGluZGVudChzYiwgdGhpcy5pbmRlbnRMZXZlbCk7XG4gICAgICAgICAgc2IucHVzaChuYW1lKTtcbiAgICAgICAgICBpZiAobWVtYmVyLmlzKENvbW1vbkZsYWdzLklOTElORUQpKSB7XG4gICAgICAgICAgICBzYi5wdXNoKFwiID0gXCIpO1xuICAgICAgICAgICAgYXNzZXJ0KCg8RW51bVZhbHVlPm1lbWJlcikuY29uc3RhbnRWYWx1ZUtpbmQgPT0gQ29uc3RhbnRWYWx1ZUtpbmQuSU5URUdFUik7XG4gICAgICAgICAgICBzYi5wdXNoKGk2NF9sb3coKDxFbnVtVmFsdWU+bWVtYmVyKS5jb25zdGFudEludGVnZXJWYWx1ZSkudG9TdHJpbmcoMTApKTtcbiAgICAgICAgICB9XG4gICAgICAgICAgc2IucHVzaChcIixcXG5cIik7XG4gICAgICAgICAgLS1udW1NZW1iZXJzO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICBpZiAobnVtTWVtYmVycykgdGhpcy52aXNpdE5hbWVzcGFjZShuYW1lLCBlbGVtZW50KTtcbiAgICB9XG4gICAgaW5kZW50KHNiLCAtLXRoaXMuaW5kZW50TGV2ZWwpO1xuICAgIHNiLnB1c2goXCJ9XFxuXCIpO1xuICB9XG5cbiAgdmlzaXRGdW5jdGlvbihuYW1lOiBzdHJpbmcsIGVsZW1lbnQ6IEZ1bmN0aW9uKTogdm9pZCB7XG4gICAgaWYgKGVsZW1lbnQuaXNBbnkoQ29tbW9uRmxhZ3MuUFJJVkFURSB8IENvbW1vbkZsYWdzLlNFVCkpIHJldHVybjtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHZhciBzaWduYXR1cmUgPSBlbGVtZW50LnNpZ25hdHVyZTtcbiAgICBpbmRlbnQoc2IsIHRoaXMuaW5kZW50TGV2ZWwpO1xuICAgIGlmIChlbGVtZW50LmlzKENvbW1vbkZsYWdzLlBST1RFQ1RFRCkpIHNiLnB1c2goXCJwcm90ZWN0ZWQgXCIpO1xuICAgIGlmIChlbGVtZW50LmlzKENvbW1vbkZsYWdzLlNUQVRJQykpIHNiLnB1c2goXCJzdGF0aWMgXCIpO1xuICAgIGlmIChlbGVtZW50LmlzKENvbW1vbkZsYWdzLkdFVCkpIHtcbiAgICAgIHNiLnB1c2goXCJnZXQgXCIpO1xuICAgICAgc2IucHVzaChuYW1lKTsgLy8gJ2dldDpmdW5jTmFtZScgaW50ZXJuYWxseVxuICAgICAgc2IucHVzaChcIigpOiBcIik7XG4gICAgICBzYi5wdXNoKHRoaXMudHlwZVRvU3RyaW5nKHNpZ25hdHVyZS5yZXR1cm5UeXBlKSk7XG4gICAgICBzYi5wdXNoKFwiO1xcblwiKTtcbiAgICAgIHJldHVybjtcbiAgICB9IGVsc2Uge1xuICAgICAgaWYgKCFlbGVtZW50LmlzQW55KENvbW1vbkZsYWdzLlNUQVRJQyB8IENvbW1vbkZsYWdzLklOU1RBTkNFKSkgc2IucHVzaChcImV4cG9ydCBmdW5jdGlvbiBcIik7XG4gICAgICBzYi5wdXNoKG5hbWUpO1xuICAgIH1cbiAgICBzYi5wdXNoKFwiKFwiKTtcbiAgICB2YXIgcGFyYW1ldGVycyA9IHNpZ25hdHVyZS5wYXJhbWV0ZXJUeXBlcztcbiAgICB2YXIgbnVtUGFyYW1ldGVycyA9IHBhcmFtZXRlcnMubGVuZ3RoO1xuICAgIC8vIHZhciByZXF1aXJlZFBhcmFtZXRlcnMgPSBzaWduYXR1cmUucmVxdWlyZWRQYXJhbWV0ZXJzO1xuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgbnVtUGFyYW1ldGVyczsgKytpKSB7XG4gICAgICBpZiAoaSkgc2IucHVzaChcIiwgXCIpO1xuICAgICAgLy8gaWYgKGkgPj0gcmVxdWlyZWRQYXJhbWV0ZXJzKSBzYi5wdXNoKFwib3B0aW9uYWwgXCIpO1xuICAgICAgc2IucHVzaChzaWduYXR1cmUuZ2V0UGFyYW1ldGVyTmFtZShpKSk7XG4gICAgICBzYi5wdXNoKFwiOiBcIik7XG4gICAgICBzYi5wdXNoKHRoaXMudHlwZVRvU3RyaW5nKHBhcmFtZXRlcnNbaV0pKTtcbiAgICB9XG4gICAgaWYgKGVsZW1lbnQuaXNBbnkoQ29tbW9uRmxhZ3MuQ09OU1RSVUNUT1IgfCBDb21tb25GbGFncy5TRVQpKSB7XG4gICAgICBzYi5wdXNoKFwiKVwiKTtcbiAgICB9IGVsc2Uge1xuICAgICAgc2IucHVzaChcIik6IFwiKTtcbiAgICAgIHNiLnB1c2godGhpcy50eXBlVG9TdHJpbmcoc2lnbmF0dXJlLnJldHVyblR5cGUpKTtcbiAgICB9XG4gICAgc2IucHVzaChcIjtcXG5cIik7XG4gICAgaWYgKGVsZW1lbnQuY29udGV4dHVhbFR5cGVBcmd1bWVudHMpIHtcbiAgICAgIGZvciAoY29uc3QgX3R5cGUgb2YgZWxlbWVudC5jb250ZXh0dWFsVHlwZUFyZ3VtZW50cy52YWx1ZXMoKSkge1xuICAgICAgICB0aGlzLnZpc2l0VHlwZShfdHlwZSk7XG4gICAgICB9XG4gICAgfVxuICAgIHRoaXMudmlzaXROYW1lc3BhY2UobmFtZSwgZWxlbWVudCk7XG4gIH1cblxuICB2aXNpdENsYXNzKG5hbWU6IHN0cmluZywgZWxlbWVudDogQ2xhc3MpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5zZWVuLmhhcyhlbGVtZW50KSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHZhciBpc0ludGVyZmFjZSA9IGVsZW1lbnQua2luZCA9PSBFbGVtZW50S2luZC5JTlRFUkZBQ0U7XG4gICAgaW5kZW50KHNiLCB0aGlzLmluZGVudExldmVsKyspO1xuICAgIGlmIChpc0ludGVyZmFjZSkge1xuICAgICAgc2IucHVzaChcImV4cG9ydCBpbnRlcmZhY2UgXCIpO1xuICAgIH0gZWxzZSB7XG4gICAgICBpZiAoZWxlbWVudC5pcyhDb21tb25GbGFncy5BQlNUUkFDVCkpIHNiLnB1c2goXCJhYnN0cmFjdCBcIik7XG4gICAgICBzYi5wdXNoKFwiZXhwb3J0IGNsYXNzIFwiKTtcbiAgICB9XG4gICAgc2IucHVzaChuYW1lKTtcbiAgICB2YXIgYmFzZSA9IGVsZW1lbnQuYmFzZTtcbiAgICBpZiAoYmFzZSkge1xuICAgICAgc2IucHVzaChcIiBleHRlbmRzIFwiKTtcbiAgICAgIHNiLnB1c2goYmFzZS5uYW1lKTsgLy8gVE9ETzogZnFuXG4gICAgfVxuICAgIHNiLnB1c2goXCIge1xcblwiKTtcbiAgICB2YXIgc3RhdGljTWVtYmVycyA9IGVsZW1lbnQucHJvdG90eXBlLm1lbWJlcnM7XG4gICAgaWYgKHN0YXRpY01lbWJlcnMpIHtcbiAgICAgIGZvciAobGV0IG1lbWJlciBvZiBzdGF0aWNNZW1iZXJzLnZhbHVlcygpKSB0aGlzLnZpc2l0RWxlbWVudChtZW1iZXIubmFtZSwgbWVtYmVyKTtcbiAgICB9XG4gICAgdmFyIGluc3RhbmNlTWVtYmVycyA9IGVsZW1lbnQubWVtYmVycztcbiAgICBpZiAoaW5zdGFuY2VNZW1iZXJzKSB7XG4gICAgICBmb3IgKGxldCBtZW1iZXIgb2YgaW5zdGFuY2VNZW1iZXJzLnZhbHVlcygpKSB7XG4gICAgICAgIGlmIChiYXNlICYmIGJhc2UubWVtYmVycyAmJiBiYXNlLm1lbWJlcnMuaGFzKG1lbWJlci5uYW1lKSkgeyBjb250aW51ZTsgfVxuICAgICAgICBpZiAobWVtYmVyLmtpbmQgPT0gRWxlbWVudEtpbmQuRklFTEQpIHtcbiAgICAgICAgICB0aGlzLnZpc2l0RmllbGQobWVtYmVyLm5hbWUsIDxGaWVsZD5tZW1iZXIpO1xuICAgICAgICAgIHRoaXMuc2Vlbi5zZXQobWVtYmVyLCBtZW1iZXIubmFtZSk7XG4gICAgICAgICAgY29udGludWU7XG4gICAgICAgIH1cbiAgICAgICAgdGhpcy52aXNpdEVsZW1lbnQobWVtYmVyLm5hbWUsIG1lbWJlcik7XG4gICAgICB9XG4gICAgfVxuICAgIGluZGVudChzYiwgLS10aGlzLmluZGVudExldmVsKTtcbiAgICBzYi5wdXNoKFwifVxcblwiKTtcblxuICAgIHRoaXMuc2Vlbi5zZXQoZWxlbWVudCwgbmFtZSk7XG4gICAgaWYgKGJhc2UgJiYgIXRoaXMuc2Vlbi5oYXMoYmFzZSkpIHtcbiAgICAgIHRoaXMudmlzaXRDbGFzcyhiYXNlLm5hbWUsIGJhc2UpO1xuICAgIH1cbiAgICBpZiAoZWxlbWVudC50eXBlQXJndW1lbnRzKSB7XG4gICAgICBmb3IgKGxldCBpID0gMDsgaSA8IGVsZW1lbnQudHlwZUFyZ3VtZW50cy5sZW5ndGg7IGkrKykge1xuICAgICAgICBjb25zdCBnZW5BcmcgPSBlbGVtZW50LnR5cGVBcmd1bWVudHNbaV07XG4gICAgICAgIHRoaXMudmlzaXRUeXBlKGdlbkFyZyk7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgdmlzaXRJbnRlcmZhY2UobmFtZTogc3RyaW5nLCBlbGVtZW50OiBJbnRlcmZhY2UpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0Q2xhc3MobmFtZSwgZWxlbWVudCk7XG4gIH1cblxuICB2aXNpdEZpZWxkKG5hbWU6IHN0cmluZywgZWxlbWVudDogRmllbGQpOiB2b2lkIHtcbiAgICBpZiAoZWxlbWVudC5pcyhDb21tb25GbGFncy5QUklWQVRFKSkgcmV0dXJuO1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgaW5kZW50KHNiLCB0aGlzLmluZGVudExldmVsKTtcbiAgICBpZiAoZWxlbWVudC5pcyhDb21tb25GbGFncy5QUk9URUNURUQpKSBzYi5wdXNoKFwicHJvdGVjdGVkIFwiKTtcbiAgICBpZiAoZWxlbWVudC5pcyhDb21tb25GbGFncy5TVEFUSUMpKSBzYi5wdXNoKFwic3RhdGljIFwiKTtcbiAgICBpZiAoZWxlbWVudC5pcyhDb21tb25GbGFncy5SRUFET05MWSkpIHNiLnB1c2goXCJyZWFkb25seSBcIik7XG4gICAgc2IucHVzaChuYW1lKTtcbiAgICBzYi5wdXNoKFwiOiBcIik7XG4gICAgc2IucHVzaCh0aGlzLnR5cGVUb1N0cmluZyhlbGVtZW50LnR5cGUpKTtcbiAgICBzYi5wdXNoKFwiO1xcblwiKTtcbiAgICB0aGlzLnZpc2l0VHlwZShlbGVtZW50LnR5cGUpO1xuICB9XG5cbiAgdmlzaXROYW1lc3BhY2UobmFtZTogc3RyaW5nLCBlbGVtZW50OiBFbGVtZW50KTogdm9pZCB7XG4gICAgdmFyIG1lbWJlcnMgPSBlbGVtZW50Lm1lbWJlcnM7XG4gICAgaWYgKG1lbWJlcnMgJiYgbWVtYmVycy5zaXplKSB7XG4gICAgICBsZXQgc2IgPSB0aGlzLnNiO1xuICAgICAgaW5kZW50KHNiLCB0aGlzLmluZGVudExldmVsKyspO1xuICAgICAgc2IucHVzaChcImV4cG9ydCBuYW1lc3BhY2UgXCIpO1xuICAgICAgc2IucHVzaChuYW1lKTtcbiAgICAgIHNiLnB1c2goXCIge1xcblwiKTtcbiAgICAgIGZvciAobGV0IG1lbWJlciBvZiBtZW1iZXJzLnZhbHVlcygpKSB0aGlzLnZpc2l0RWxlbWVudChtZW1iZXIubmFtZSwgbWVtYmVyKTtcbiAgICAgIGluZGVudChzYiwgLS10aGlzLmluZGVudExldmVsKTtcbiAgICAgIHNiLnB1c2goXCJ9XFxuXCIpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0QWxpYXMobmFtZTogc3RyaW5nLCBlbGVtZW50OiBFbGVtZW50LCBvcmlnaW5hbE5hbWU6IHN0cmluZyk6IHZvaWQge1xuICAgIHZhciBzYiA9IHRoaXMuc2I7XG4gICAgaW5kZW50KHNiLCB0aGlzLmluZGVudExldmVsKTtcbiAgICBzYi5wdXNoKFwiZXhwb3J0IGNvbnN0IFwiKTtcbiAgICBzYi5wdXNoKG5hbWUpO1xuICAgIHNiLnB1c2goXCI6IHR5cGVvZiBcIik7XG4gICAgc2IucHVzaChvcmlnaW5hbE5hbWUpO1xuICAgIHNiLnB1c2goXCI7XFxuXCIpO1xuICB9XG5cbiAgdHlwZVRvU3RyaW5nKHR5cGU6IFR5cGUpOiBzdHJpbmcge1xuICAgIC8vIGdldCBleHRlcm5hbCBzdHJpbmcgd2l0aCBmYWxzZVxuXG4gICAgdmFyIHR5cGVTdHIgPSB0eXBlLnRvU3RyaW5nKCk7XG4gICAgaWYgKHR5cGUuaXMoVHlwZUZsYWdzLlJFRkVSRU5DRSkpIHtcbiAgICAgIGlmICh0eXBlLmNsYXNzUmVmZXJlbmNlIS5uYW1lID09IFwiU3RyaW5nXCIpe1xuICAgICAgICB0eXBlU3RyID0gXCJzdHJpbmdcIjtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHRoaXMud29ya3NldC5hZGQoPENsYXNzUHJvdG90eXBlPnRoaXMucHJvZ3JhbS5lbGVtZW50c0J5TmFtZS5nZXQodHlwZVN0cikhKTtcbiAgICAgIH1cbiAgICB9XG4gICAgdHlwZVN0ciA9IHR5cGVTdHIuc3BsaXQoXCIvXCIpLnBvcCgpITtcbiAgICAvL1RPRE9cbiAgICByZXR1cm4gdHlwZVN0cjtcbiAgfVxuXG4gIHZpc2l0VHlwZSh0eXBlOiBUeXBlKTogdm9pZCB7XG4gICAgaWYgKHR5cGUuaXMoVHlwZUZsYWdzLlJFRkVSRU5DRSkgJiYgdHlwZS5jbGFzc1JlZmVyZW5jZSkge1xuICAgICAgY29uc3QgYyA9IHR5cGUuY2xhc3NSZWZlcmVuY2U7XG4gICAgICBpZiAoIXRoaXMud29ya3NldC5oYXMoYy5wcm90b3R5cGUpKSB7XG4gICAgICAgIHRoaXMud29ya3NldC5hZGQoYy5wcm90b3R5cGUpO1xuICAgICAgICBpZiAoYy50eXBlQXJndW1lbnRzKSB7XG4gICAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBjLnR5cGVBcmd1bWVudHMubGVuZ3RoOyBpKyspIHtcbiAgICAgICAgICAgIHRoaXMudmlzaXRUeXBlKGMudHlwZUFyZ3VtZW50c1tpXSk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgYnVpbGQoKTogc3RyaW5nIHtcbiAgICB2YXIgc2IgPSB0aGlzLnNiO1xuICAgIHNiLnB1c2goXCJkZWNsYXJlIG1vZHVsZSBBU01vZHVsZSB7XFxuXCIpO1xuICAgIHNiLnB1c2goXCIgIHR5cGUgaTggPSBudW1iZXI7XFxuXCIpO1xuICAgIHNiLnB1c2goXCIgIHR5cGUgaTE2ID0gbnVtYmVyO1xcblwiKTtcbiAgICBzYi5wdXNoKFwiICB0eXBlIGkzMiA9IG51bWJlcjtcXG5cIik7XG4gICAgc2IucHVzaChcIiAgdHlwZSB1c2l6ZSA9IG51bWJlcjtcIik7XG4gICAgc2IucHVzaChcIiAgdHlwZSB1OCA9IG51bWJlcjtcXG5cIik7XG4gICAgc2IucHVzaChcIiAgdHlwZSB1MTYgPSBudW1iZXI7XFxuXCIpO1xuICAgIHNiLnB1c2goXCIgIHR5cGUgdTMyID0gbnVtYmVyO1xcblwiKTtcbiAgICBzYi5wdXNoKFwiICB0eXBlIGYzMiA9IG51bWJlcjtcXG5cIik7XG4gICAgc2IucHVzaChcIiAgdHlwZSBmNjQgPSBudW1iZXI7XFxuXCIpO1xuICAgIHNiLnB1c2goXCIgIHR5cGUgYm9vbCA9IGFueTtcXG5cIik7XG4gICAgKyt0aGlzLmluZGVudExldmVsO1xuICAgIHRoaXMud2FsaygpO1xuICAgIC0tdGhpcy5pbmRlbnRMZXZlbDtcbiAgICBzYi5wdXNoKFwifVxcblwiKTtcbiAgICBzYi5wdXNoKFwiZXhwb3J0IGRlZmF1bHQgQVNNb2R1bGU7XFxuXCIpO1xuICAgIHJldHVybiB0aGlzLnNiLmpvaW4oXCJcIik7XG4gIH1cbn1cblxuLy8gaGVscGVyc1xuXG4vKiogVGVzdHMgaWYgYSBuYW1lc3BhY2UtbGlrZSBlbGVtZW50IGhhcyBhdCBsZWFzdCBvbmUgY29tcGlsZWQgbWVtYmVyLiAqL1xuZnVuY3Rpb24gaGFzQ29tcGlsZWRNZW1iZXIoZWxlbWVudDogRWxlbWVudCk6IGJvb2wge1xuICB2YXIgbWVtYmVycyA9IGVsZW1lbnQubWVtYmVycztcbiAgaWYgKG1lbWJlcnMpIHtcbiAgICBmb3IgKGxldCBtZW1iZXIgb2YgbWVtYmVycy52YWx1ZXMoKSkge1xuICAgICAgc3dpdGNoIChtZW1iZXIua2luZCkge1xuICAgICAgICBjYXNlIEVsZW1lbnRLaW5kLkZVTkNUSU9OX1BST1RPVFlQRToge1xuICAgICAgICAgIGxldCBpbnN0YW5jZXMgPSAoPEZ1bmN0aW9uUHJvdG90eXBlPm1lbWJlcikuaW5zdGFuY2VzO1xuICAgICAgICAgIGlmIChpbnN0YW5jZXMpIHtcbiAgICAgICAgICAgIGZvciAobGV0IGluc3RhbmNlIG9mIGluc3RhbmNlcy52YWx1ZXMoKSkge1xuICAgICAgICAgICAgICBpZiAoaW5zdGFuY2UuaXMoQ29tbW9uRmxhZ3MuQ09NUElMRUQpKSByZXR1cm4gdHJ1ZTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgICAgY2FzZSBFbGVtZW50S2luZC5DTEFTU19QUk9UT1RZUEU6IHtcbiAgICAgICAgICBsZXQgaW5zdGFuY2VzID0gKDxDbGFzc1Byb3RvdHlwZT5tZW1iZXIpLmluc3RhbmNlcztcbiAgICAgICAgICBpZiAoaW5zdGFuY2VzKSB7XG4gICAgICAgICAgICBmb3IgKGxldCBpbnN0YW5jZSBvZiBpbnN0YW5jZXMudmFsdWVzKCkpIHtcbiAgICAgICAgICAgICAgaWYgKGluc3RhbmNlLmlzKENvbW1vbkZsYWdzLkNPTVBJTEVEKSkgcmV0dXJuIHRydWU7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICAgIGRlZmF1bHQ6IHtcbiAgICAgICAgICBpZiAobWVtYmVyLmlzKENvbW1vbkZsYWdzLkNPTVBJTEVEKSB8fCBoYXNDb21waWxlZE1lbWJlcihtZW1iZXIpKSByZXR1cm4gdHJ1ZTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuICByZXR1cm4gZmFsc2U7XG59XG4iXX0=