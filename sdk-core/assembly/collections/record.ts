import { storage } from "..";

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
  public recordId: string;
  public records: Set<string>;

  private static _newRecord<T>(
    recordId: string,
    records: Set<string>
  ): ActiveRecord<T> {
    const n = new ActiveRecord<T>();
    n.recordId = recordId;
    n.records = records;
    return n;
  }

  private _saveRecord(): void {
    storage.set(this.recordId, this);
  }

  private _get(pk: string): T {
    const uri = this.getUri(pk);
    const t = storage.get<T>(uri);
    if (!t) {
      throw new Error("Item with key '" + pk + "' found in Record but missing from storage");
    }
    return t;
  }

  static getOrCreateRecord<T>(recordId: string): ActiveRecord<T> {
    let record = storage.get<ActiveRecord<T>>(recordId);
    if (!record) {
      record = ActiveRecord._newRecord<T>(recordId, new Set<string>());
      storage.set(recordId, record);
    }
    return record;
  }

  getUri(pk: string): string {
    return this.recordId + "#" + pk;
  }

  add(pk: string, item: T): void {
    const uri = this.getUri(pk);
    this.records.add(pk);

    storage.set(uri, item);
    this._saveRecord();
  }

  delete(pk: string): void {
    const uri = this.getUri(pk);
    this.records.delete(pk);

    storage.delete(uri);
    this._saveRecord();
  }

  exists(pk: string): bool {
    return this.records.has(pk); 
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
      pks = this.records.values();
    }
    for (let i = 0; i < pks.length; i++) {
      res.push(this.findOne(pks[i]));
    }
    return res;
  }

  getAll(): T[] {
    const res: Array<T> = [];
    const pks = this.records.values();
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