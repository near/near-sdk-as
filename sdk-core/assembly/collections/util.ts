/**
 * Helper class to store key->value pairs.
 * @internal
 */
@nearBindgen
export class MapEntry<K, V> {
  constructor(public key: K, public value: V) {}
}
