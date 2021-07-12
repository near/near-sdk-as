import { main } from "asbuild";
import * as path from "path";

export async function compile(
  contract: string,
  build_type = "debug"
): Promise<void> {
  function asb(succ: any, fail: any) {
    main(
      [
        path.join(__dirname, "../assembly/__tests__", contract + ".ts"),
        "--target",
        build_type,
        "--wat",
      ],
      {},
      (err) => {
        if (err) {
          throw err;
        } else {
          succ();
          return 1;
        }
      }
    );
  }
  return new Promise(asb);
}

export function getGuestPanicMsg(res: ExecutionOutcome) {
  try {
    // return res.status.Failure.ActionError.kind["FunctionCallError"]["HostError"]["GuestPanic"].panic_msg;
    return (res.status as Failure).error["ActionError"].kind[
      "FunctionCallError"
    ]["HostError"]["GuestPanic"].panic_msg;
  } catch (e) {
    throw new Error(JSON.stringify(res.status, null, 2));
  }
}
