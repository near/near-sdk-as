// @nearfile out
import { logging, PersistentSet, Context } from "near-sdk-as";


@nearBindgen
export class Singleton {

  private visitors: PersistentSet<string> = new PersistentSet("v");
  private _owner: string
  constructor(owner: string){
    this._owner = owner;
  };

  owner(): string {
    return this._owner;
  }

  visit(): void {
    if (!this.visitors.has(Context.sender)) {
      logging.log("Visited by " + Context.sender);
      this.visitors.add(Context.sender);
    }
  }

  hasVisited(visitor: string): bool {
    return this.visitors.has(visitor);
  }

  private hasNotVisited(visitor: string): boolean {
    return !this.hasNotVisited(visitor);
  }

} 