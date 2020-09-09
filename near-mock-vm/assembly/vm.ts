import { Outcome } from "./outcome";

//@ts-ignore
@external("vm", "outcome")
declare function _outcome(): Outcome;

//@ts-ignore
@external("vm", "restoreState")
declare function _restoreState(): void;

/**
 * Methods on the current VM
 */

export namespace VM {
  /**
   * Restores the internal state of the VM.
   *
   */

  export function restoreState(): void {
    _restoreState();
  }

  /**
   * Return the VM Outcome of the current running contract
   */

  export function outcome(): Outcome {
    return _outcome();
  }

  export function logs(): string[] {
    return outcome().logs;
  }
}
