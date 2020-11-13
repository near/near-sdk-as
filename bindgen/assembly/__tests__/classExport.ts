@nearBindgen
export class Foo {
  //@ts-ignore
  @exportAs("new")
  constructor(private name: string = ""){}

  getName(a: i32 = 42): string {
    return this.name;
  }
}
