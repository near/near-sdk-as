"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    Object.defineProperty(o, k2, { enumerable: true, get: function() { return m[k]; } });
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.ExecutionResult = void 0;
const utils_1 = require("./utils");
const sim = __importStar(require("../sim-ffi"));
class ExecutionResult extends utils_1.RustRef {
    unwrap_json_value() {
        return sim.$er$unwrap_json_value(this.ref);
    }
    is_ok() {
        return sim.$er$is_ok(this.ref);
    }
    has_value() {
        return sim.$er$has_value(this.ref);
    }
    lookup_hash(hash) {
        const res = sim.$er$lookup_hash(this.ref, hash);
        if (res.length == 0) {
            return null;
        }
        else {
            return new ExecutionResult(res[0]);
        }
    }
    outcome() {
        return JSON.parse(sim.$er$outcome(this.ref));
    }
    get_receipt_results() {
        return sim
            .$er$get_receipt_results(this.ref)
            .map((r) => new ExecutionResult(r));
    }
    promise_results() {
        return sim.$er$promise_results(this.ref).map((r) => new ExecutionResult(r));
    }
    promise_errors() {
        return sim.$er$promise_errors(this.ref).map((r) => new ExecutionResult(r));
    }
    status() {
        return sim.$er$status(this.ref);
    }
    gas_burnt() {
        return sim.$er$gas_burnt(this.ref);
    }
    tokens_burnt() {
        return sim.$er$gas_burnt(this.ref);
    }
    logs() {
        return sim.$er$logs(this.ref);
    }
    executor_id() {
        return sim.$er$executor_id(this.ref);
    }
    receipt_ids() {
        return sim.$er$receipt_ids(this.ref);
    }
}
exports.ExecutionResult = ExecutionResult;
//# sourceMappingURL=outcome.js.map