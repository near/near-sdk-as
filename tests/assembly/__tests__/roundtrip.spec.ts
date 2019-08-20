import { _testTextMessage } from "../util";
import { TextMessage } from "../model";
import { util } from "near-runtime-ts";

describe("Round Trip", () => {
  it("should return the same TextMessage", () => {
  const message = _testTextMessage();
  //@ts-ignore
  const messageFromStorage = util.parseFromBytes<TextMessage>(message.serialize())!;
  expect<string>(messageFromStorage.sender).toStrictEqual("mysteriousStranger", "Incorrect data value (sender) for retrieved object");
  expect<string>(messageFromStorage.text).toStrictEqual("Hello world", "Incorrect data value (text) for retrieved object");
  expect<u64>(messageFromStorage.number).toBe(415, "Incorrect data value (number) for retrieved object");
  })
})

class Generic<T> {
  constructor(public value: T){}
}

class Foo{}
export const Foo_ID = idof<Foo>();
export const Generic_i32_ID = idof<Generic<i32>>();
export const Generic_Foo_ID = idof<Generic<Foo>>();

describe("Generic classes",() => {
  it("can use instanceof", () => {
    let genericFoo = new Generic<Foo>(new Foo());
    expect<boolean>(genericFoo instanceof Generic<Foo>).toBe(true);

  });
});