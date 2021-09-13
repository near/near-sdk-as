import { u128 } from "near-sdk-core";
import { User, UserEmpty, UserManualPrimaryKey } from "./model";


// ----------------------------------------------------------------------------
// Contract methods
// ----------------------------------------------------------------------------


export function add_user(name: string): boolean {
  const u = new User(name, u128.from(0), false);
  if (u.exists()) throw new Error("User already exists");
  u.save();
  return true;
}

export function delete_user(name: string): boolean {
  const u = User.findOne(name);
  if (!u) throw new Error("User not found");
  u.delete();
  return true;
}

export function get_user(name: string): User  {
  const u = <User|null>User.findOne(name);
  if (!u) throw new Error("User not found");
  return u;
}

export function claim(name: string): User {
  const u = <User|null>User.findOne(name);
  if (!u) throw new Error("User not found");
  u.has_claimed = true;
  u.save();
  return u;
}

export function updateBalance(name: string, balance: u128): User {
  const u = <User|null>User.findOne(name);
  if (!u) throw new Error("User not found");
  u.balance = balance;
  u.save();
  return u;
}

export function getClaimed(): User[] {
  const all = <User[]>User.getAll();
  const claimed: User[] = [];
  for (let index = 0; index < all.length; index++) {
    const u = all[index];
    if (u.has_claimed) claimed.push(u);
  }
  return claimed;
}

export function searchUser(names: string[]): Array<User|null> {
  return <Array<User|null>>User.find(names);
}

export function testEmptyFail(): void {
  const u = new UserEmpty();
  u.save();
}

export function testManualPrimaryKey(): void {
  const u = new UserManualPrimaryKey();
  u.balance = u128.from(0);
  u.name = "u1";
  u.has_claimed = false;
  u.save();

  let found = UserManualPrimaryKey.findOne(u.primaryKey());
  assert(found, "Save or Find Fail");

  u.delete();
  found = UserManualPrimaryKey.findOne(u.primaryKey());
  assert(!found, "Delete Fail");
}