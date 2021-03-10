/**
 * Contract function calls are stateless.
 *
 * All contract data is stored in the same key-value data store on the blockchain
 * (called `Storage` and imported from `near-sdk-as`) with a few convenience
 * methods for reading, writing, searching and deleting keys and value.
 *
 * We also provide a few collections for convenience including
 * - `PersistentVector`
 * - `PersistentMap`
 * - `PersistentDeque`
 *
 * These collections wrap the `Storage` class to mimic a Map, Vector (aka. Array) and Deque.
 * And of course you can use these as examples as inspiration for your own custom data structures.
 *
 * All of these collections read and write from `Storage` abstracting away a lot of what you might
 * want to add to the `Storage` object.
 *
 * IMPORTANT NOTE:
 * Since all data stored on the blockchain is kept in a single key-value store under the contract account,
 * you must always use a *unique storage prefix* for different collections to avoid data collision.
 */
export namespace collections {
  /** @internal */
  // @ts-ignore: decorator
  @lazy
  export const _KEY_LENGTH_SUFFIX = ":len";
  /** @internal */
  // @ts-ignore: decorator
  @lazy
  export const _KEY_FRONT_INDEX_SUFFIX = ":front";
  /** @internal */
  // @ts-ignore: decorator
  @lazy
  export const _KEY_BACK_INDEX_SUFFIX = ":back";
  /** @internal */
  // @ts-ignore: decorator
  @lazy
  export const _KEY_ELEMENT_SUFFIX = "::";
  /** @internal */
  // @ts-ignore: decorator
  @lazy
  export const _RATING_OFFSET: u64 = 2147483648;
}

/** @internal */
export * from "./persistentDeque";
/** @internal */
export * from "./persistentMap";
/** @internal */
export * from "./persistentVector";
/** @internal */
export * from "./persistentSet";
/** @internal */
export * from "./persistentUnorderedMap";
/** @internal */
export * from "./util";
export * from "./avlTree";
export * from "./maxHeap";
