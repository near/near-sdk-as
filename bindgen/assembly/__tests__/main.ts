// These imports need to be copied properly
import { storage, Context, ContractPromise, logging } from "near-sdk-core";
import {
  FooBar,
  ContainerClass,
  AnotherContainerClass,
  PromiseArgs,
  MyCallbackResult,
  MyContractPromiseResult,
} from "./model";

@nearBindgen
class Contract {
  static foo: string = "bar";
}

/* eslint-disable @typescript-eslint/no-empty-function */
export function doNothing(): void {}

export function add(x: i32, y: i32): i32 {
  return x + y;
}

export function rewrapFoobar(container: ContainerClass): AnotherContainerClass {
  let result = new AnotherContainerClass([[<FooBar>container.foobar]]);
  return result;
}

export function unwrapFoobar(container: AnotherContainerClass): FooBar {
  return <FooBar>container.foobars[0][0];
}

export function getStringArrayLength(arr: string[]): i32 {
  let length: i32 = arr.length;
  // @ts-ignore
  logging.log("getStringArrayLength: " + length.toString());
  return arr.length;
}

export function convertFoobars(foobars: Array<FooBar>): Array<ContainerClass> {
  return foobars.map<ContainerClass>((foobar) => ({ foobar }));
}

export function callbackWithName(args: PromiseArgs): MyCallbackResult {
  let contractResults = ContractPromise.getResults();
  let allRes = new Array<MyContractPromiseResult>(contractResults.length);
  for (let i = 0; i < contractResults.length; ++i) {
    allRes[i] = new MyContractPromiseResult();
    allRes[i].ok = contractResults[i].status != 0;
    if (
      allRes[i].ok &&
      contractResults[i].buffer != null &&
      contractResults[i].buffer!.length > 0
    ) {
      allRes[i].r = MyCallbackResult.decode(contractResults[i].buffer!);
    }
  }
  let result: MyCallbackResult = {
    rs: allRes,
    n: Context.contractName,
  };
  let bytes = result.encode();
  storage.setBytes("lastResult", bytes);
  return result;
}

export function stringOrNull(): string | null {
  return null;
}

export function classOrNull(): FooBar | null {
  return new FooBar();
}

export function defaultArgs(y: u64, x: i32 = 42): i32 {
  return x + 1;
}
