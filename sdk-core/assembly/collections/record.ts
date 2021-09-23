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
@nearBindgen
export class ActiveRecord<T> {
  public _id: string;
  public _set: PersistentSet<string>;

  private static _newRecord<T>(
    recordId: string,
    records: PersistentSet<string>
  ): ActiveRecord<T> {
    const n = new ActiveRecord<T>();
    n._id = recordId;
    n._set = records;
    return n;
  }

  private _get(pk: string): T {
    const uri = this._getUri(pk);
    const t = storage.get<T>(uri);
    if (!t) {
      throw new Error("Item with key '" + pk + "' found in Record but missing from storage");
    }
    return t;
  }

  static getOrCreateRecord<T>(recordId: string): ActiveRecord<T> {
    const setKey = "_ps:" + recordId;
    let pSet = storage.get<PersistentSet<string>>(setKey);
    if (!pSet) {
      pSet = new PersistentSet<string>("_ps:" + recordId);
    }
    return this._newRecord<T>(recordId, pSet);
  }

  private _getUri(pk: string): string {
    return this._id + "#" + pk;
  }

  add(pk: string, item: T): void {
    const uri = this._getUri(pk);
    this._set.add(pk);

    storage.set(uri, item);
  }

  delete(pk: string): void {
    const uri = this._getUri(pk);
    this._set.delete(pk);

    storage.delete(uri);
  }

  exists(pk: string): bool {
    return this._set.has(pk); 
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
      pks = this._set.values();
    }
    for (let i = 0; i < pks.length; i++) {
      res.push(this.findOne(pks[i]));
    }
    return res;
  }

  getAll(): T[] {
    const res: Array<T> = [];
    const pks = this._set.values();
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