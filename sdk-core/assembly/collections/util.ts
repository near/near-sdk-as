/**
 * Helper class to store key->value pairs.
 * @internal
 */
@nearBindgen
export class MapEntry<K, V> {
  constructor(public key: K, public value: V) {}
}

export function orElse<T>(t: T | null, other: T): NonNullable<T> {
  return <NonNullable<T>>(t ? <NonNullable<T>> t : other);

}