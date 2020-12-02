import { Outcome } from "./outcome";

/**
 * Methods on the current VM
 */

export namespace VM {
  /**
   * Restores the internal state of the VM.
   *
   */
  // @ts-ignore
  @external("vm", "restoreState")
  export declare function restoreState(): void;

  /**
   * Return the VM Outcome of the current running contract
   */
  // @ts-ignore
  @external("vm", "outcome")
  export declare function outcome(): Outcome;

  /** Returns the logs outputed by the VM outcome */
  export function logs(): string[] {
    return outcome().logs;
  }

  // @ts-ignore
  @external("vm", "saveMem")
  export declare function saveMem(): void;
  // @ts-ignore
  @external("vm", "restoreMem")
  export declare function restoreMem(): void;
}
