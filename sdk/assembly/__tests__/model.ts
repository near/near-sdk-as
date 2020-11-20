import {
  PersistentDeque,
  PersistentSet,
  PersistentVector,
  PersistentMap,
} from "..";

// Exporting a new class TextMessage so it can be used outside of this file.
@nearBindgen
export class TextMessage {
  sender: string;
  text: string;
  number: u64;
  isRead: bool;
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
