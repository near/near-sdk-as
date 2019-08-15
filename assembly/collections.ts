/**
* A namespace with classes and functions for persistent collections on the blockchain.
*/
export namespace collections {
  const _KEY_LENGTH_SUFFIX = ":len";
  const _KEY_FRONT_INDEX_SUFFIX = ":front";
  const _KEY_BACK_INDEX_SUFFIX = ":back";
  const _KEY_ELEMENT_SUFFIX = "::";
  const _KEY_RATING_SUFFIX = ":r";
  const _RATING_OFFSET: u64 = 2147483648;
  
  /**
  * Helper class to store key->value pairs.
  */
  export class MapEntry<K, V> {
    key: K;
    value: V;

    constructor(key: K, value: V) {
      this.key = key;
      this.value = value;
    }
  }
}
