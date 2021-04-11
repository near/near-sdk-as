import {datetime, VMContext} from "..";
import {now, PlainDateTime} from "assemblyscript-temporal";

let dt: PlainDateTime;

describe("datetime should works", ()=> {
  it("check block_datetime()", ()=> {
    VMContext.setBlock_timestamp(1618145532342580500);
    dt = datetime.block_datetime();
    expect(dt.toString()).toBe("2021-04-11T12:52:12.3425805");
  });
});