import { context, ContractPromiseBatch, u128 } from "near-sdk-as";

@payable
export function transferSomeAndKeepSomeAttachedDeposit(receiver: string): ContractPromiseBatch {
  const amount = changetype<u128>(context.attachedDeposit * u128.fromI32(90) / u128.fromI32(100));
  return ContractPromiseBatch.create(receiver).transfer(amount);
}
