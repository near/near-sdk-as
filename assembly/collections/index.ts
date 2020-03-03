/**
* Classes and functions for persistent collections on the blockchain.
*/
export namespace collections {
  export const _KEY_LENGTH_SUFFIX = ":len";
  export const _KEY_FRONT_INDEX_SUFFIX = ":front";
  export const _KEY_BACK_INDEX_SUFFIX = ":back";
  export const _KEY_ELEMENT_SUFFIX = "::";
  export const _KEY_RATING_SUFFIX = ":r";
  export const _RATING_OFFSET: u64 = 2147483648;

  /**
  * Helper class to store key->value pairs.
  */
  export class MapEntry<K, V> {
    constructor(
      public key: K,
      public value: V
    ) {
    }
  }
}
export * from "./persistentDeque";
export * from "./persistentMap";
export * from "./persistentTopn";
export * from "./persistentVector";
