import {
  PersistentDeque,
  PersistentSet,
  PersistentVector,
  PersistentMap,
  Context,
} from "..";

// Exporting a new class TextMessage so it can be used outside of this file.
@nearBindgen
export class TextMessage {
  sender: string = Context.sender;
  text: string = "hello";
  number: u64 = 42;
  isRead: bool = false;
}

@nearBindgen
export class Collections {
  public getVector(): PersistentVector<string> {
    return new PersistentVector<string>("v");
  }

  public getMap(): PersistentMap<string, string> {
    return new PersistentMap<string, string>("m");
  }

  public getSet(): PersistentSet<string> {
    return new PersistentSet<string>("s");
  }

  public getDeque(): PersistentDeque<string> {
    return new PersistentDeque<string>("dq");
  }
}

@nearBindgen
export class Word {
  constructor(public text: string) {}
}

export let vector = new PersistentVector<u32>("");

// @ts-ignore
@nearBindgen
export function foo(): string {
  return "Foo";
}
