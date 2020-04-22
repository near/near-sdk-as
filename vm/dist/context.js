"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const js_base64_1 = require("js-base64");
function defaultAccountContext() {
    return {
        input: "{}",
        input_data: [],
        output_data_receivers: new Uint8Array([]),
        prepaid_gas: 10 ** 15,
        attached_deposit: "0",
        is_view: false,
    };
}
exports.defaultAccountContext = defaultAccountContext;
function prepareContext(vmcontext) {
    vmcontext.input = js_base64_1.Base64.encode(vmcontext.input);
    return vmcontext;
}
exports.prepareContext = prepareContext;
function createContext(accountContext) {
    return prepareContext({
        ...accountContext,
        block_index: 1,
        block_timestamp: 1585778575325000000,
        epoch_height: 1,
        storage_usage: 100,
        random_seed: "KuTCtARNzxZQ3YvXDeLjx83FDqxv2SdQTSbiq876zR7",
    });
}
exports.createContext = createContext;
//# sourceMappingURL=context.js.map