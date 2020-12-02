import { storage } from "..";
import { Contract } from "./contract";

describe("Contract", () => {
  it("should be able to be stored and retrieved", () => {
    const contract = new Contract("unique name!");
    expect(storage.contains("contract")).toBe(
      false,
      "contract shouldn't exist in storage before putting it in."
    );
    storage.set("contract", contract);
    const otherContract = storage.get<Contract>("contract")!;
    expect(contract.name).toBe(
      otherContract.name,
      "contracts should have the same name"
    );
    expect(contract.name).not.toBe("", "contract's name should not be empty");
  });

  it("should not be in the storage", () => {
    // const contract = new Contract("unique name!");
    // storage.set("contract", contract);
    expect(storage.contains("contract")).toBe(
      false,
      "the contract shouldn't exist"
    );
  });
});
