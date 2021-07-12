import { logging, PersistentSet, Context } from "near-sdk-as";

@nearBindgen
export class Singleton {

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
      logging.log("Visited by " + Context.sender);
      this.visitors.add(Context.sender);
    }
    this.last_visited = Context.sender;
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

  new(owner: string): void {

  }
} 