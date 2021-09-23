import { PersistentMap } from ".";
import { storage, PersistentSet } from "..";

/**
 * This is an internal helper class for Active Record interface built on
 * top of NEAR Storage` class exposed by the NEAR platform.  It provides basic interface
 * for an ORM-like records.
 * 
 * To get an active record for class T (that extends Record and decorated with @nearBindgen)
 * 
 * ```ts
 * let record = ActiveRecord.getOrCreateRecord<T>("someId")   // choose unique key for each near account
 * ```
 * 
 * To access the record
 * 
 * ```ts
 * // add item (instance of T)
 * record.add("abc", item);
 * 
 * // delete item
 * record.delete("abc");
 * 
 * // find item
 * let found = record.findOne("abc");
 * ```
 * 
 * @typeParam T The generic type parameter `T` can be any class that extends `Record` and decorated with @nearBindgen.
 *
 * @internal
 */
@global
export class ActiveRecord<T> {
  public _id: string;
  public _map: PersistentMap<string, T>;
  public _keys: PersistentSet<string>;

  constructor(recordId: string) {
    let pMap = storage.get<PersistentMap<string, T>>("_map:" + recordId);
    let pSet = storage.get<PersistentSet<string>>("_set:" + recordId);
    if (!(pMap && pSet)) {
      pMap = new PersistentMap<string, T>("_map:" + recordId);
      pSet = new PersistentSet<string>("_set:" + recordId);
    }
    this._id = recordId;
    this._map = pMap;
    this._keys = pSet;
  }

  static getOrCreateRecord<T>(recordId: string): ActiveRecord<T> {
    return new ActiveRecord<T>(recordId);
  }

  private _get(pk: string): T {
    const t = this._map.get(pk);
    if (!t) {
      throw new Error("Item with key '" + pk + "' found in Record but missing from storage");
    }
    return t;
  }

  add(pk: string, item: T): void {
    this._map.set(pk, item);
    this._keys.add(pk);
  }

  delete(pk: string): void {
    this._map.delete(pk);
    this._keys.delete(pk);
  }

  exists(pk: string): bool {
    return this._keys.has(pk); 
  }

  findOne(pk: string): T | null {
    if (!this.exists(pk)) {
      return null;
    }
    return this._get(pk);
  }

  find(pks?: string[]): Array<T | null> {
    const res: Array<T | null> = [];
    if (!pks) {
      pks = this._keys.values();
    }
    for (let i = 0; i < pks.length; i++) {
      res.push(this.findOne(pks[i]));
    }
    return res;
  }

  getAll(): T[] {
    const res: Array<T> = [];
    const pks = this._keys.values();
    for (let i = 0; i < pks.length; i++) {
      res.push(this._get(pks[i]));
    }
    return res;
  }
}


export class Record {
  primaryKey(): string {
    throw new Error("NotImplemented");
  }

  static recordId(): string {
    throw new Error("NotImplemented");
  }

  exists(): bool {
    throw new Error("NotImplemented");
  }

  save(): void {
    throw new Error("NotImplemented");
  }

  delete(): void {
    throw new Error("NotImplemented");
  }

  static findOne(pk: string): Record | null {
    throw new Error("NotImplemented");
  }

  static find(pks?: string[]): Array<Record | null> {
    throw new Error("NotImplemented");
  }

  static getAll(): Record[] {
    throw new Error("NotImplemented");
  }
}