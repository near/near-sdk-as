import { ActiveRecord, u128 } from "near-sdk-core";


// Exporting a new class TextMessage so it can be used outside of this file.
@nearBindgen
export class TextMessage {
  sender: string;
  text: string;
  number: u64;
  isRead: bool;
}

@nearBindgen
export class Word {
  constructor(public text: string) {}
}

// @ts-ignore
@nearBindgen
export function capitalize(s: string): string {
  return s.toUpperCase();
}



@nearBindgen
// @record("UserXYZ")
export class User {
  // @primaryKey()
  name: string;
  balance: u128;
  has_claimed: bool;

  constructor(name: string, balance: u128,  has_claimed: bool) {
    this.name = name;
    this.balance = balance;
    this.has_claimed = has_claimed;
  }

  //
  // Transform Generated
  //

  static recordId(): string {
    return "UserXYZ";
  }

  primaryKey(): string {
    return this.name;
  }

  exists(): bool {
    return ActiveRecord.getOrCreateRecord<User>(User.recordId()).exists(this.primaryKey());
  }

  save(): void {
    ActiveRecord.getOrCreateRecord<User>(User.recordId()).add(
      this.primaryKey(),
      this
    );
  }

  delete(): void {
    ActiveRecord.getOrCreateRecord<User>(User.recordId()).delete(this.primaryKey());
  }

  static findOne(pk: string): User | null {
    return ActiveRecord.getOrCreateRecord<User>(User.recordId()).findOne(pk);
  }

  static find(pks?: string[]): Array<User | null> {
    return ActiveRecord.getOrCreateRecord<User>(User.recordId()).find(pks);
  }

  static getAll(): User[] {
    return ActiveRecord.getOrCreateRecord<User>(User.recordId()).getAll();
  }
}