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
type Balance = u128;
type Gas = u64;
type PublicKey = Uint8Array;
type AccountId = Uint8Array;

/**
 * Batch actions from within an AssemblyScript contract
 *
 * (1) transfer money
 *
 * // assume context.sender = "bob.testnet"
 * new ContractPromiseBatch("alice").transfer(100); // send 100 N to "alice"
 *
 * (2) deploy a contract
 *
 * // assume contract is loaded, either included and encoded as base64 in the current
 * // contract itself or via input to a function call (requires some other changes in near-sdk-as)
 * const code = Uint8Array[1,2,3]; // regardless, you end up with the contract code somehow
 *
 * // assume context.sender = "bob.testnet"
 *
 * ContractPromiseBatch
 *     .create("app-v1.bob.testnet")
 *     .create_account()
 *     .transfer(u128.from(100))
 *     .add_full_access_key(new Uint8Array(0)) // TODO: need signer public key as byte array
 *     .deploy_contract(code)
 *
 * (3) make cross contract calls // TODO: this example doesn't make sense
 *
 * // assume context.sender = "bob.testnet"
 *
 * let encodedArgs = new Uint8Array(0)
 * let promise = ContractPromiseBatch
 *                    .create("message-parser.testnet")
 *                    .function_call("parseMessage", encodedArgs , u128.Zero, 1000)
 *
 * promise.then("message-replier.testnet")
 *        .function_call("replyToMessage", encodedArgs, u128.Zero, 1000)
 *
 */
export class ContractPromiseBatch {
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

  create_account() : ContractPromiseBatch {
    env.promise_batch_action_create_account(this.id);
    return this;
  }

  deploy_contract(code: Uint8Array) : ContractPromiseBatch {
    env.promise_batch_action_deploy_contract(this.id, code.length, code.dataStart);
    return this;
  }

  function_call<T>(methodName: string, args: T, amount: Balance, gas: Gas) : ContractPromiseBatch {
    const method_name = util.stringToBytes(methodName);
    const amountArr = amount.toUint8Array();
    const argsArr = encodeArgs<T>(args);

    env.promise_batch_action_function_call(this.id, method_name.byteLength, method_name.dataStart, argsArr.byteLength, argsArr.dataStart, amountArr.dataStart, gas);
    return this;
  }

  transfer(amount: Balance) : ContractPromiseBatch {
    const amountArr = amount.toUint8Array();
    env.promise_batch_action_transfer(this.id, amountArr.dataStart)
    return this;
  }

  stake(amount: Balance, publicKey: PublicKey) : ContractPromiseBatch {
    const amountArr = amount.toUint8Array();
    env.promise_batch_action_stake(this.id, amountArr.dataStart, publicKey.byteLength, publicKey.dataStart);
    return this;
  }

  add_full_access_key(publicKey: PublicKey, nonce: u64 = 0) : ContractPromiseBatch {
    env.promise_batch_action_add_key_with_full_access(this.id, publicKey.byteLength, publicKey.dataStart, nonce)
    return this;
  }

  // TODO: not sure what to do about fitting methodNames string[] into params --> (method_names_len: number, method_names_ptr: number)
  add_access_key(publicKey: PublicKey, allowance: Balance, receiverId: AccountId, methodNames: string[], nonce: u64 = 0) : ContractPromiseBatch {
    const allowanceArr = allowance.toUint8Array();
    const methodNamesArr = util.stringToBytes(methodNames.join("\n"));
    env.promise_batch_action_add_key_with_function_call(this.id, publicKey.byteLength, publicKey.dataStart, nonce, allowanceArr.dataStart, receiverId.byteLength, receiverId.dataStart, methodNamesArr.byteLength, methodNamesArr.dataStart)
    return this;
  }

  delete_key(publicKey: PublicKey) : ContractPromiseBatch {
    env.promise_batch_action_delete_key(this.id, publicKey.byteLength, publicKey.dataStart)
    return this;
  }

  delete_account(beneficiaryId: AccountId) : ContractPromiseBatch {
    env.promise_batch_action_delete_account(this.id, beneficiaryId.byteLength, beneficiaryId.dataStart);
    return this;
  }

  then(
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
