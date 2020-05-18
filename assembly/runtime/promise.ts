import { util } from "./util";
import { env } from "./env";
import { u128 } from ".";

function encodeArgs<T>(t: T) : Uint8Array {
  if (t instanceof Uint8Array) {
    return t;
  }
  return encode<T>(t);
}

// TODO: not sure if these types make any sense at all
export type Balance = u128;
export type Gas = u64;
export type PublicKey = Uint8Array;
export type AccountId = Uint8Array;

export type CreateAccount = "CreateAccount"; // TODO: this seems wierd
export type DeployContract = { code: Uint8Array };
export type FunctionCall = { methodName: Uint8Array, args: Uint8Array, amount: Balance, gas: Gas };
export type Transfer = { amount: Balance };
export type Stake = { amount: Balance, publicKey: PublicKey };
export type AddFullAccessKey = { publicKey: PublicKey };
export type AddAccessKey = { publicKey: PublicKey, allowance: Balance, receiverId: AccountId, methodNames: Uint8Array[] };
export type DeleteKey = { publicKey: PublicKey };
export type DeleteAccount = { beneficiaryId: AccountId };

export type Action =
  | CreateAccount
  | DeployContract
  | FunctionCall
  | Transfer
  | Stake
  | AddFullAccessKey
  | AddAccessKey
  | DeleteKey
  | DeleteAccount;

/**
 * Chain actions
 *
 * let p1 = new ActionPromise("bob_near").create_account();
 * let p2 = new ActionPromise("alice_near").create_account().transfer(100);
 */
export class ContractPromiseBatch {
  actions: Action[];
  after: ContractPromiseBatch;
  id: u64;

  static create(
    accountId: string
  ) : ContractPromiseBatch {
    const accountIdArr = util.stringToBytes(accountId);
    const id: u64 = env.promise_batch_create(accountIdArr.byteLength, accountIdArr.dataStart);

    //@ts-ignore: Typescript expects the object to have a function to match the type
    // Wheras as only cares about the fields.
    return {
      id,
    };
  }

  add_action(action: Action) : void {
    this.actions.push(action);
  }

  create_account() : ContractPromiseBatch {
    env.promise_batch_action_create_account(this.id);
    this.add_action("CreateAccount");
    return this;
  }

  deploy_contract(code: Uint8Array) : ContractPromiseBatch {
    env.promise_batch_action_deploy_contract(this.id, code.length, code.dataStart);
    this.add_action({ code });
    return this;
  }

  // TODO: why is amount: Balance a u128 even though the batch_action interface takes a u64?  seems like we're losing half the data here. same happens above w ContractPromise btw
  function_call<T>(methodName: string, args: T, amount: Balance, gas: Gas) : ContractPromiseBatch {
    const method_name = util.stringToBytes(methodName);
    const amountArr = amount.toUint8Array();
    const argsArr = encodeArgs<T>(args);

    env.promise_batch_action_function_call(this.id, method_name.byteLength, method_name.dataStart, argsArr.byteLength, argsArr.dataStart, amountArr.dataStart, gas);
    this.add_action({ methodName: util.stringToBytes(methodName), args: argsArr, amount, gas });
    return this;
  }

  transfer(amount: Balance) : ContractPromiseBatch {
    const amountArr = amount.toUint8Array();
    env.promise_batch_action_transfer(this.id, amountArr.dataStart)
    this.add_action({ amount });
    return this;
  }

  stake(amount: Balance, publicKey: PublicKey) : ContractPromiseBatch {
    const amountArr = amount.toUint8Array();
    env.promise_batch_action_stake(this.id, amountArr.dataStart, publicKey.byteLength, publicKey.dataStart);
    this.add_action({ amount, publicKey });
    return this;
  }

  add_full_access_key(publicKey: PublicKey, nonce = 0) : ContractPromiseBatch {
    env.promise_batch_action_add_key_with_full_access(this.id, publicKey.byteLength, publicKey.dataStart, nonce)
    this.add_action({ publicKey });
    return this;
  }

  // TODO: not sure what to do about fitting methodNames string[] into params --> (method_names_len: number, method_names_ptr: number)
  add_access_key(publicKey: PublicKey, allowance: Balance, receiverId: AccountId, methodNames: string[], nonce = 0) : ContractPromiseBatch {
    const allowanceArr = allowance.toUint8Array();
    const methodNamesArr = util.stringToBytes(methodNames[0]);
    env.promise_batch_action_add_key_with_function_call(this.id, publicKey.byteLength, publicKey.dataStart, nonce, allowanceArr.dataStart, receiverId.byteLength, receiverId.dataStart, methodNamesArr.byteLength, methodNamesArr.dataStart)
    this.add_action({ publicKey, allowance, receiverId, methodNames: [methodNamesArr] });
    return this;
  }

  delete_key(publicKey: PublicKey) : ContractPromiseBatch {
    env.promise_batch_action_delete_key(this.id, publicKey.byteLength, publicKey.dataStart)
    this.add_action({ publicKey });
    return this;
  }

  delete_account(beneficiaryId: AccountId) : ContractPromiseBatch {
    env.promise_batch_action_delete_account(this.id, beneficiaryId.byteLength, beneficiaryId.dataStart);
    this.add_action({ beneficiaryId });
    return this;
  }

  then<T>(
    accountId: string,
  ) : ContractPromiseBatch {
    const accountIdArr = util.stringToBytes(accountId)
    const id = env.promise_batch_then(
      this.id,
      accountIdArr.byteLength,
      accountIdArr.dataStart
    );
    //@ts-ignore: See above ignore comment
    return {
      id,
    };
  }
}
