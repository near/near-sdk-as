import { storage } from "../..";

@nearBindgen
export class ActiveRecord<T> {
  public recordId: string;
  public records: Set<string>;

  static _newRecord<T>(
    recordId: string,
    records: Set<string>
  ): ActiveRecord<T> {
    const n = new ActiveRecord<T>();
    n.recordId = recordId;
    n.records = records;
    return n;
  }

  _saveRecord(): void {
    storage.set(this.recordId, this);
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

  _get(pk: string): T {
    const uri = this.getUri(pk);
    const t = storage.get<T>(uri);
    if (!t) {
      throw new Error("Item found in Record but missing from storage");
    }
    return t;
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