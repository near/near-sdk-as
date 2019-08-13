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



    // /**
    //  * Creates or restores a persistent vector with a given storage prefix.
    //  * Always use a unique storage prefix for different collections.
    //  * @param prefix A prefix to use for every key of this vector.
    //  */
    // export function vector<T>(prefix: string): Vector<T> {
    //     return new Vector<T>(prefix);
    //   }
    
    //   /**
    //    * Creates or restores a persistent deque with a given storage prefix.
    //    * Always use a unique storage prefix for different collections.
    //    * @param prefix A prefix to use for every key of this deque.
    //    */
    //   export function deque<T>(prefix: string): Deque<T> {
    //     return new Deque<T>(prefix);
    //   }
    
    //   /**
    //    * Creates or restores a persistent map with a given storage prefix.
    //    * Always use a unique storage prefix for different collections.
    //    * @param prefix A prefix to use for every key of this map.
    //    */
    //   export function map<K, V>(prefix: string): Map<K, V> {
    //     return new Map<K, V>(prefix);
    //   }
    
    //   /**
    //    * Creates or restores a persistent TopN with a given storage prefix.
    //    * Always use a unique storage prefix for different collections.
    //    * @param prefix A prefix to use for every key of this collection.
    //    * @param descending Sorting order of keys for rating. Default is descending (the highest rated keys).
    //    */
    //   export function topN<K>(prefix: string, descending: bool = true): TopN<K> {
    //     return new TopN<K>(prefix, descending);
    //   }