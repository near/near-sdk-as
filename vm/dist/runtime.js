"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const utils_1 = require("./utils");
const context_1 = require("./context");
const child_process_1 = require("child_process");
/*
def context(
        current_account_id="alice_near",
        signer_account_id="bob_near",
        predecessor_account_id="carol_near",
        signer_account_pk="KuTCtARNzxZQ3YvXDeLjx83FDqxv2SdQTSbiq876zR7",
        input="",
        block_index=1,
        block_timestamp=1585778575325000000,
        epoch_height=1,
        account_balance=1000000000000000000000000000000000000,
        account_locked_balance=0,
        storage_usage=100,
        attached_deposit=0,
        prepaid_gas=1000000000000000,
        random_seed="KuTCtARNzxZQ3YvXDeLjx83FDqxv2SdQTSbiq876zR7",
        is_view=False,
        output_data_receivers=[],
    ):
    if input is None:
        input = b''
    elif type(input) is dict:
        input = bytes(json.dumps(input), 'utf-8')
    elif type(input) is list:
        input = bytes(input)
    elif type(input) is str:
        input = bytes(input, 'utf-8')
    return {
        "current_account_id": current_account_id,
        "signer_account_id": signer_account_id,
        "signer_account_pk": signer_account_pk,
        "predecessor_account_id": predecessor_account_id,
        "input": base64.b64encode(input).decode('utf-8'),
        "block_index": block_index,
        "block_timestamp": block_timestamp,
        "epoch_height": epoch_height,
        "account_balance": str(account_balance),
        "account_locked_balance": str(account_locked_balance),
        "storage_usage": storage_usage,
        "attached_deposit": attached_deposit,
        "prepaid_gas": prepaid_gas,
        "random_seed": random_seed,
        "is_view": is_view,
        "output_data_receivers": output_data_receivers
    }
*/
const DEFAULT_GAS = 10 ** 15;
class Account {
    constructor(account_id, wasmFile = null, runtime) {
        this.account_id = account_id;
        this.wasmFile = wasmFile;
        this.runtime = runtime;
        this.state = {};
        this.balance = 1000000000000;
        this.lockedBalance = 0;
        this.signerAccountPk = utils_1.encodebs58(account_id.slice(0, 32).padEnd(32, " "));
    }
    createAccountContext(input = {}, prepaid_gas = DEFAULT_GAS) {
        input = JSON.stringify(input);
        let accountContext = {
            input,
            prepaid_gas,
            signer_account_pk: this.account_id,
        };
        return accountContext;
    }
    call_step_other(account_id, method_name, input = {}, prepaid_gas = DEFAULT_GAS) {
        if (this.runtime == null)
            throw new Error("Runtime is not set");
        let accountContext = this.createAccountContext(input, prepaid_gas);
        return this.runtime.call_step(account_id, method_name, accountContext.input, accountContext);
    }
    call_step(method_name, input, prepaid_gas) {
        return this.call_step_other(this.account_id, method_name, input, prepaid_gas);
    }
    call_other(account_id, method_name, input, prepaid_gas) {
        if (this.runtime == null)
            throw new Error("Runtime is not set");
        let accountContext = this.createAccountContext(input, prepaid_gas);
        return this.runtime.call(account_id, method_name, accountContext.input, accountContext);
    }
    call(method_name, input, prepaid_gas) {
        return this.call_other(this.account_id, method_name, input, prepaid_gas);
    }
    view(method_name, input) {
        if (this.runtime == null)
            throw new Error("Runtime is not set");
        let accountContext = this.createAccountContext(input);
        accountContext.is_view = true;
        const result = this.runtime.call_step(this.account_id, method_name, input, accountContext);
        var return_data = result.outcome && result.outcome.return_data; //('outcome', {}).get('return_data', None)
        if (return_data) {
            return_data = return_data['Value'] || "";
        }
        const err = result['err'];
        // if return_data is not None:
        //     return_data = return_data['Value'] if 'Value' in return_data else ''
        return {
            return_data,
            err,
            result
        };
    }
}
exports.Account = Account;
/*

class Account:
    @classmethod
    def load(cls, account_id):
      try:
        with open(os.path.join(accountsDir, account_id), "rb") as f:
          return pickle.load(f)
      except:
        None

    def save(self):
        filename = os.path.join(accountsDir, self.account_id)
        if not os.path.exists(os.path.dirname(filename)):
            try:
                os.makedirs(os.path.dirname(filename))
            except OSError as exc: # Guard against race condition
                if exc.errno != errno.EEXIST:
                    raise
        with open(filename, "wb") as f:
            runtime = self.runtime
            del self.runtime
            pickle.dump(self, f)
            self.runtime = runtime

    def __init__(self, account_id, wasm_file=None):
        self.account_id = account_id
        self.wasm_file = wasm_file
        self.state = {}
        self.balance = 1000000000000000000000000000000000000
        self.locked_balance = 0
        self.runtime = None
        self.signer_account_pk = base58.b58encode(account_id[:32].rjust(32, ' ')).decode('utf-8')

    def set_wasm_file(self, wasm_file):
        self.wasm_file = wasm_file
        return self

    def set_signer_account_pk(self, signer_account_pk):
        self.signer_account_pk = signer_account_pk
        return self

    def set_state(self, state):
        self.state = state
        return self

    def set_balance(self, balance):
        self.balance = balance
        return self

    def set_locked_balance(self, locked_balance):
        self.locked_balance = locked_balance
        return self

    def set_runtime(self, runtime):
        self.runtime = runtime
        return self

    def call_step_other(self, account_id, method_name, input=None, prepaid_gas=10**15):
        if self.runtime is None:
            raise Exception("Runtime is not set")
        return self.runtime.call_step(account_id, method_name, input=input, signer_account_id=self.account_id, prepaid_gas=prepaid_gas)

    def call_step(self, method_name, input=None, prepaid_gas=10**15):
        return self.call_step_other(self.account_id, method_name, input=input, prepaid_gas=prepaid_gas)

    def call_other(self, account_id, method_name, input=None, prepaid_gas=10**15):
        if self.runtime is None:
            raise Exception("Runtime is not set")
        return self.runtime.call(account_id, method_name, input=input, signer_account_id=self.account_id, prepaid_gas=prepaid_gas)

    def call(self, method_name, input=None, prepaid_gas=10**15):
        return self.call_other(self.account_id, method_name, input=input, prepaid_gas=prepaid_gas)

    def view(self, method_name, input=None):
        if self.runtime is None:
            raise Exception("Runtime is not set")
        result = self.runtime.call_step(self.account_id, method_name, input=input, is_view=True)
        return_data = result.get('outcome', {}).get('return_data', None)
        if return_data is not None:
            return_data = return_data['Value'] if 'Value' in return_data else ''
        return {
            'return_data': return_data,
            'err': result['err'],
            'result': result,
        }
*/
class Runtime {
    constructor() {
        this.accounts = new Map();
    }
    log(input) {
        if (process.env.DEBUG) {
            console.log(input);
        }
    }
    newAccount(accoundId, wasmFile = null) {
        const account = new Account(accoundId, wasmFile, this);
        account.runtime = this;
        this.accounts.set(accoundId, account);
        return account;
    }
    getOrCreateAccount(account_id) {
        return this.accounts.get(account_id) || this.newAccount(account_id);
    }
    call_step(account_id, method_name, input = "", accountContext = context_1.defaultAccountContext()) {
        accountContext.signer_account_id =
            accountContext.signer_account_id || account_id;
        accountContext.input = input;
        accountContext.predecessor_account_id =
            accountContext.predecessor_account_id || accountContext.signer_account_id;
        const context = utils_1.assign(accountContext, context_1.defaultAccountContext());
        const signer_account = this.getOrCreateAccount(context.signer_account_id);
        const predecessor_account = this.getOrCreateAccount(context.predecessor_account_id);
        const account = this.accounts.get(account_id);
        if (account == undefined)
            throw new Error(account_id + " has not be added and thus can't be called");
        context.current_account_id = account.account_id;
        context.signer_account_pk = signer_account.signerAccountPk;
        context.account_balance = account.balance.toString();
        context.account_locked_balance = account.lockedBalance.toString();
        context.input = input;
        // console.log(input)
        const vmContext = context_1.createContext(context);
        let args = [
            __dirname + "/bin.js",
            "--context=" + JSON.stringify(vmContext),
            "--input=" + input,
            "--wasm-file=" + account.wasmFile,
            "--method-name=" + method_name,
            "--state=" + JSON.stringify(account.state),
        ];
        // console.log(args)
        for (let data of (accountContext.input_data || [])) {
            args.push("--promise-results=" + JSON.stringify(data));
        }
        let execResult = child_process_1.spawnSync("node", args);
        // exec_result = subprocess.run(args, capture_output=True)
        if (execResult.status != 0)
            throw new Error("Failed to run successfully: " + execResult.output.toString());
        var output = execResult.output[1];
        var result;
        try {
            result = JSON.parse(output);
        }
        catch (e) {
            console.log(output);
            throw e;
        }
        if (!context.is_view && result["err"] == null) {
            account.balance = result["outcome"]["balance"];
            account.state = result["state"];
        }
        return result;
    }
    call(account_id, method_name, input = "", accountContext) {
        var q = [{
                ...accountContext,
                index: 0,
                account_id,
                method_name,
                input
            }];
        var numReceipts = 1;
        var all_input_data = {};
        var all_output_data = {};
        var num_data = 0;
        var return_index = 0;
        var calls = {};
        var results = {};
        while (q.length > 0) {
            let c = q.shift();
            let index = c['index'];
            let input_data = [];
            if (c.input_data) {
                for (let d of c.input_data) {
                    if (all_input_data[d] != undefined) {
                        input_data.push(all_input_data[d]);
                    }
                    else {
                        break;
                    }
                }
                if (input_data.length < c.input_data.length) {
                    q.push(c);
                    continue;
                }
            }
            let output_data = all_output_data[index] || [];
            calls[index] = c;
            this.log(`Call ${JSON.stringify(c)} Output ${JSON.stringify(output_data)}`);
            let accountContext = {
                ...c,
                output_data_receivers: output_data.map((d) => d['account_id']),
                input_data
            };
            let result = this.call_step(c['account_id'], c['method_name'], c['input'], accountContext);
            results[index] = result;
            this.log(`Result:`);
            this.log(result);
            if (result) {
                if (result.outcome) {
                    for (let log of result.outcome.logs) {
                        console.log(`${c['account_id']}: ${log}`);
                    }
                    if (result.outcome.err) {
                        let result_data = { "Failed": null };
                        for (let d of output_data) {
                            all_input_data[d['data_id']] = result_data;
                        }
                    }
                    else {
                        let ret = result.outcome.return_data;
                        if (ret["ReceiptIndex"] != undefined) {
                            let adj_index = ret["ReceiptIndex"] + numReceipts;
                            if (!all_output_data[adj_index]) {
                                all_output_data[adj_index] = [];
                            }
                            for (let d of output_data) {
                                all_output_data[adj_index].push(d);
                            }
                            if (return_index == index) {
                                return_index = adj_index;
                            }
                        }
                        else {
                            let result_data = {
                                "Successful": ret["Value"] || ""
                            };
                            for (let d of output_data) {
                                all_input_data[d['data_id']] = result_data;
                            }
                        }
                        for (let i in result['receipts']) {
                            const receipt = result['receipts'][i];
                            if (receipt.actions.length != 1) {
                                throw new Error("reciept actions must have length 1");
                            }
                            const action = receipt.actions[0];
                            const fca = action["FunctionCall"];
                            let new_input_data = [];
                            for (let ind of receipt['receipt_indices']) {
                                let data_id = num_data++;
                                new_input_data.push(data_id);
                                let adj_index = ind + numReceipts;
                                if (all_output_data[adj_index] == undefined) {
                                    all_output_data[adj_index] = [];
                                }
                                all_output_data[adj_index].push({
                                    account_id: receipt["receiver_id"],
                                    data_id
                                });
                                // }
                            }
                            let next = {
                                index: parseInt(i) + numReceipts,
                                "account_id": receipt['receiver_id'],
                                method_name: fca['method_name'],
                                input: fca['args'],
                                signer_account_id: accountContext.signer_account_id,
                                predecessor_account_id: c['account_id'],
                                input_data: new_input_data,
                                prepaid_gas: fca['gas'],
                                attached_deposit: fca['deposit']
                            };
                            q.push(next);
                        }
                        this.log(ret);
                        numReceipts += result['receipts'].length;
                    }
                }
            }
            this.log(`Queue:  ${q.map(x => `${x.predecessor_account_id} -> ${x.account_id}`)}`);
        }
        const result = results[return_index];
        this.log(`Final result:`);
        this.log(result);
        let return_data = result.outcome.return_data;
        if (return_data != undefined) {
            return_data = return_data['Value'] ? JSON.parse(return_data['Value']) : null;
        }
        if (result["err"] != null) {
            console.error("ERROR: ", result.err);
        }
        return {
            return_data,
            err: result["err"],
            result,
            calls,
            results
        };
    }
}
exports.Runtime = Runtime;
/*

class Runtime:
    def __init__(self):
        self.log = logging.getLogger('Runtime')
        self.accounts = {}

    def new_account(self, account_id, wasm_file=None):
        account = Account.load(account_id) or Account(account_id, wasm_file)
        self.accounts[account_id] = account
        return account.set_runtime(self)

    def load_account(self, account_id):
        account = Account.load(account_id)
        if not account:
          return None
        account['runtime'] = self
        return account

    def get_or_create_account(self, account_id):
        account = self.accounts.get(account_id)
        if account is None:
            account = self.new_account(account_id)
        return account

    def call_step(
            self,
            account_id,
            method_name,
            input=None,
            signer_account_id=None,
            predecessor_account_id=None,
            input_data=[],
            output_data_receivers=[],
            prepaid_gas=10**15,
            attached_deposit=0,
            is_view=False,
    ):
        if signer_account_id is None:
            signer_account_id = account_id
        if predecessor_account_id is None:
            predecessor_account_id = signer_account_id

        signer_account = self.get_or_create_account(signer_account_id)
        predecessor_account = self.get_or_create_account(predecessor_account_id)

        account = self.accounts.get(account_id)
        if account is None:
            return False

        ctx = context(
            current_account_id=account.account_id,
            signer_account_id=signer_account.account_id,
            predecessor_account_id=predecessor_account.account_id,
            signer_account_pk=signer_account.signer_account_pk,
            input=input,
            account_balance=account.balance,
            account_locked_balance=account.locked_balance,
            output_data_receivers=output_data_receivers,
            prepaid_gas=prepaid_gas,
            attached_deposit=attached_deposit,
            is_view=is_view
        )
        args = [
            binFile,
            "--context=%s" % (json.dumps(ctx),),
            "--wasm-file=%s" % account.wasm_file,
            "--method-name=%s" % (method_name,),
            "--state=%s" % (json.dumps(account.state),),
            ]
        for data in input_data:
            args.append("--promise-results=%s" % (json.dumps(data),))

        exec_result = subprocess.run(args, capture_output=True)
        if exec_result.returncode != 0:
            raise Exception("Failed to run successfully: %s", (exec_result,))
        result = json.loads(exec_result.stdout)
        if not is_view and result['err'] is None:
            account.set_balance(result['outcome']['balance'])
            account.set_state(result['state'])
        return result

    def call(self, account_id, method_name, input=None, signer_account_id=None, prepaid_gas=10**15):
        q = collections.deque([{
            'index': 0,
            'account_id': account_id,
            'method_name': method_name,
            'input': input,
            'signer_account_id': signer_account_id,
            'predecessor_account_id': signer_account_id,
            'input_data': [],
            'prepaid_gas': prepaid_gas,
            'attached_deposit': 0,
        }])
        num_receipts = 1
        all_input_data = {}
        all_output_data = collections.defaultdict(list)
        num_data = 0
        return_index = 0
        calls = {}
        results = {}
        while len(q) > 0:
            c = q.popleft()
            index = c['index']

            input_data = []
            for d in c['input_data']:
                if d in all_input_data:
                    input_data.append(all_input_data[d])
                else:
                    break

            if len(input_data) < len(c['input_data']):
                q.append(c)
                continue

            output_data = all_output_data.get(index, [])

            calls[index] = c
            self.log.debug('Call %s Output %s' % (c, output_data))
            result = self.call_step(
                account_id=c['account_id'],
                method_name=c['method_name'],
                input=c['input'],
                signer_account_id=c['signer_account_id'],
                predecessor_account_id=c['predecessor_account_id'],
                input_data=input_data,
                output_data_receivers=[d['account_id'] for d in output_data],
                prepaid_gas=c['prepaid_gas'],
                attached_deposit=c['attached_deposit']
            )
            results[index] = result
            self.log.debug('Result %s' % (result, ))
            if result:
                if result['outcome']:
                    for log in result['outcome']['logs']:
                            self.log.info('%s: %s' % (c['account_id'], log))
                    if result['err'] is None:
                        ret = result['outcome']['return_data']
                        if 'ReceiptIndex' in ret:
                            adj_index = ret['ReceiptIndex'] + num_receipts
                            for d in output_data:
                                all_output_data[adj_index].append(d)
                            if return_index == index:
                                return_index = adj_index
                        else:
                            result_data = {
                                'Successful': ret['Value'] if 'Value' in ret else ''
                            }
                            for d in output_data:
                                all_input_data[d['data_id']] = result_data

                        for i, receipt in enumerate(result['receipts'], num_receipts):
                            assert(len(receipt['actions']) == 1)
                            assert('FunctionCall' in receipt['actions'][0])
                            fca = receipt['actions'][0]['FunctionCall']
                            new_input_data = []
                            for ind in receipt['receipt_indices']:
                                data_id = num_data
                                num_data += 1
                                new_input_data.append(data_id)
                                adj_index = ind + num_receipts
                                all_output_data[adj_index].append({
                                    'account_id': receipt['receiver_id'],
                                    'data_id': data_id,
                                })

                            q.append({
                                'index': i,
                                'account_id': receipt['receiver_id'],
                                'method_name': fca['method_name'],
                                'input': fca['args'],
                                'signer_account_id': signer_account_id,
                                'predecessor_account_id': c['account_id'],
                                'input_data': new_input_data,
                                'prepaid_gas': fca['gas'],
                                'attached_deposit': fca['deposit'],
                            })

                        num_receipts += len(result['receipts'])
                    else:
                        result_data = {
                            'Failed': None,
                        }
                        for d in output_data:
                            all_input_data[d['data_id']] = result_data

            self.log.debug('Queue %s' % (q, ))

        result = results[return_index]
        self.log.debug("Final result %s" % (result,))
        return_data = result.get('outcome', {}).get('return_data', None)
        if return_data is not None:
            return_data = return_data['Value'] if 'Value' in return_data else ''

        return {
            'return_data': return_data,
            'err': result['err'],
            'result': result,
            'calls': calls,
            'results': results,
        }


*/
//# sourceMappingURL=runtime.js.map