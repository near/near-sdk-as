import { Outcome } from "./outcome";

/**
 * Methods on the current VM
 */ 
export declare namespace VM {
  /** 
   * Saves the internal state of the VM. 
   * */ 
  //@ts-ignore
  @external("vm", "saveState")
  export function saveState(): void;

  /** 
   * Restores the internal state of the VM. 
   * 
   */ 
  //@ts-ignore
  @external("vm", "restoreState")
  export function restoreState(): void;

  /**
   * Return the VM Outcome of the current running contract
   */ 
  //@ts-ignore
  @external("vm", "outcome")
  export function outcome(): Outcome;

  
}  