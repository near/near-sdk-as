import { Outcome } from "./outcome";

declare function _outcome(): Outcome;

declare function _restoreState(): void;

/**
 * Methods on the current VM
 */

export namespace VM {
  /**
   * Restores the internal state of the VM.
   *
   */
  //@ts-ignore
  @external("vm", "restoreState")
  export declare function restoreState(): void;

  /**
   * Return the VM Outcome of the current running contract
   */
  //@ts-ignore
  @external("vm", "outcome")
  export declare function outcome(): Outcome;

  export function logs(): string[] {
    return outcome().logs;
  }
}
