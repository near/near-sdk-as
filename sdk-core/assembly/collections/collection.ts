import { collections } from ".";
import { Storage, borshStorage } from "..";
/* eslint-disable @typescript-eslint/no-empty-function */
/**
 * Top level Collection class. Uses Borsh Storage by default
 */
export abstract class Collection {
  /**
   * The serializer should be a property so that the correct
   * one is used when deserializing from storage.
   *  */ 
  get storage(): Storage {
    return borshStorage;
  }

  /**
   * Empty decode so as to not use property.
   */
  decode<T>(t: T): void {}
  
  /**
   * Empty encode so as to not encode property.
   */
  encode<T>(t: T): void {}
}

export abstract class PrefixedCollection<K> extends Collection {
  get _elementPrefix(): string {
    return this.prefix + collections._KEY_ELEMENT_SUFFIX;
  }

  constructor(protected prefix: string){
    super();
  }

  /**
   * @returns An internal string key for a given key of type K.
   */
  protected _key(key: K): string {
    // @ts-ignore: TODO: Add interface that forces all K types to have toString
    return this._elementPrefix + key.toString();
  }
}