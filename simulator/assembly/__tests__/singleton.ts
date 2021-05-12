import { storage, logging, PersistentSet, Context, persist, ContractPromise } from "near-sdk-as";
import { DEFAULT_GAS } from "./sentences";


@nearBindgen
export class Singleton {
  static STORAGE_KEY: string = 'key';

  private visitors: PersistentSet<string> = new PersistentSet("v");
  private _owner: string
  private last_visited: string = "NULL";
  constructor(owner: string){
    this._owner = owner;
  };

  owner(): string {
    return this._owner;
  }

  @mutateState()
  visit(): void {
    if (!this.visitors.has(Context.sender)) {
      logging.log("Visited the first time by " + Context.sender);
      this.visitors.add(Context.sender);
    }
    this.last_visited = Context.sender;
  }

  visit_without_updated_decorator(): void {
    this.visit();
    persist(this);
  }

  visit_without_change(): void {
    this.visit();
  }

  hasVisited(visitor: string): bool {
    return this.visitors.has(visitor);
  }

  lastVisited(): string {
    return this.last_visited || "";
  }

  // test to make sure we don't get compiler error
  storageCheck(): void {
    storage.hasKey(Singleton.STORAGE_KEY);
  }

  get_storage_key(): string {
    return Singleton.STORAGE_KEY;
  }

  private hasNotVisited(visitor: string): boolean {
    return !this.hasNotVisited(visitor);
  }

  @contractPrivate()
  privateMethod(): string {
    return "in private method";
  }

  callPrivate(): void {
    let promise = ContractPromise.create(Context.contractName, "privateMethod", "{}", DEFAULT_GAS);
    promise.returnAsResult();
  }
}
