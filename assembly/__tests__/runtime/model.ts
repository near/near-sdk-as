import {
  PersistentDeque,
  PersistentSet,
  PersistentVector,
  PersistentMap,
} from "../../runtime";

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
  public getVector() {
    return new PersistentVector<string>("v");
  }

  public getMap() {
    return new PersistentMap<string, string>("m");
  }

  public getSet() {
    return new PersistentSet<string>("s");
  }

  public getDeque() {
    return new PersistentDeque<string>("dq");
  }
}
