import { PersistentSet } from "..";

let set: PersistentSet<string>;
const item = "hello";

function addItem(_item: string = item): void {
  set.add(_item);
}

describe("Sets should handle", () => {
  beforeEach(() => {
    set = new PersistentSet<string>("set1");
  });

  it("supports adding items", () => {
    addItem();
    expect(set.has(item)).toBeTruthy("The set should have the item");
  });

  it("checks for items", () => {
    expect(set.has(item)).toBeFalsy("The set should not have the item");
  });

  throws("if attempting to delete a non-existent item", () => {
    set.delete(item);
  });

  it("can be cleared", () => {
    addItem();
    expect(set.size).toBe(1);
    set.clear();
    expect(set.size).toBe(0);
  });

  it("only allows items to be added once", () => {
    addItem();
    addItem();
    addItem();
    expect(set.size).toBe(1);
  });

  it("allows multiple items to be added", () => {
    addItem("hello");
    addItem("world");
    expect(set.size).toBe(2);
  });

  it("deleting items", () => {
    addItem();
    expect(set.has(item)).toBeTruthy("The item should be found first");
    set.delete(item);
    expect(set.has(item)).toBeFalsy("The item should be deleted");
  });

  it("returns a list of values as an array", () => {
    addItem("one");
    addItem("two");
    addItem("three");

    expect(set.values()).toStrictEqual(["one", "two", "three"]);
  });

  it("returns a list of values out of order after delete", () => {
    addItem("one");
    addItem("two");
    addItem("three");
    addItem("four");

    set.delete("two");

    let values = set.values();
    expect(values).not.toInclude("two");
    expect(values).toStrictEqual(["one", "four", "three"]);
  });
});
