import { logging, PersistentSet, Context, persist } from "near-sdk-as";


@nearBindgen
export class Singleton {

  private visitors: PersistentSet<string> = new PersistentSet("v");
  private _owner: string = "";
  private last_visited: string = "NULL";

  @mutateState()
  setOwner(owner: string): void {
    if (this._owner != "") {
      throw new Error("contract is already initialized");
    }
    this._owner = owner;
  }

  owner(): string {
    if (this._owner == "") {
      throw new Error("contract is not initialized");
    }
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

  private hasNotVisited(visitor: string): boolean {
    return !this.hasNotVisited(visitor);
  }
} 