import { Ref, RustRef } from "./utils";
import * as sim from "../sim-ffi";

export class ExecutionResult extends RustRef {
  unwrap_json_value(): string {
    return sim.$er$unwrap_json_value(this.ref);
  }

  is_ok(): boolean {
    return sim.$er$is_ok(this.ref);
  }

  has_value(): boolean {
    return sim.$er$has_value(this.ref);
  }

  lookup_hash(hash: string): ExecutionResult | null {
    const res = sim.$er$lookup_hash(this.ref, hash);
    if (res.length == 0) {
      return null;
    } else {
      return new ExecutionResult(res[0]);
    }
  }

  outcome(): any {
    return JSON.parse(sim.$er$outcome(this.ref));
  }

  get_receipt_results(): Array<ExecutionResult> {
    return sim
      .$er$get_receipt_results(this.ref)
      .map((r) => new ExecutionResult(r));
  }

  promise_results(): Array<ExecutionResult> {
    return sim.$er$promise_results(this.ref).map((r) => new ExecutionResult(r));
  }

  promise_errors(): Array<ExecutionResult> {
    return sim.$er$promise_errors(this.ref).map((r) => new ExecutionResult(r));
  }

  status(): string {
    return sim.$er$status(this.ref);
  }

  gas_burnt(): string {
    return sim.$er$gas_burnt(this.ref);
  }

  tokens_burnt(): string {
    return sim.$er$gas_burnt(this.ref);
  }

  logs(): string[] {
    return sim.$er$logs(this.ref);
  }

  executor_id(): string {
    return sim.$er$executor_id(this.ref);
  }

  receipt_ids(): string[] {
    return sim.$er$receipt_ids(this.ref);
  }
}
