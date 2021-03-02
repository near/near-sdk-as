import { MaxHeap } from '..';

@nearBindgen
class StringLengthWrapper {
  constructor(
    public value: string,
  ) { }

  @operator(">")
  public __gt(right: StringLengthWrapper): bool {
    return this.value.length > right.value.length;
  }

  public toString(): string {
    return this.value + '';
  }
}

let numHeap: MaxHeap<u64>;
let strHeap: MaxHeap<string>;
let wrappedStrHeap: MaxHeap<StringLengthWrapper>;

function randomly(a: string, b: string): i32 {
  return Math.random() > .5 ? 1 : -1;
}

function nop<T>(a: T): T {
  return a;
}

describe('MaxHeap', () => {
  beforeEach(() => {
    numHeap = new MaxHeap<u64>('n');
    strHeap = new MaxHeap('s');
    wrappedStrHeap = new MaxHeap('w');
  });

  it('pushes one value', () => {
    expect(numHeap.length).toBe(0, 'The heap should contain 0 items before pushing');
    expect(() => { nop(numHeap.top); }).toThrow('Cannot access top of empty heap');
    expect(numHeap.isEmpty).toBe(true, 'The heap should be empty before pushing');

    expect(numHeap.push(3)).toBe(1, 'Push calls should return the new length of the heap');

    expect(numHeap.length).toBe(1, 'The heap should contain one item');
    expect(numHeap.top).toBe(3, 'The top of the heap should be 3');
    expect(numHeap.isEmpty).toBe(false, 'The heap should not be empty');
  });

  it('pushes multiple values', () => {
    expect(numHeap.push(3)).toBe(1);
    expect(numHeap.push(2)).toBe(2);
    expect(numHeap.push(1)).toBe(3);
    expect(numHeap.push(4)).toBe(4);
    expect(numHeap.push(5)).toBe(5);
    expect(numHeap.push(6)).toBe(6);

    expect(numHeap.length).toBe(6, 'The heap should contain six items');
    expect(numHeap.top).toBe(6, 'The top of the heap should be 6');
    expect(numHeap.isEmpty).toBe(false, 'The heap should not be empty');
  });

  it('pops multiple values in order', () => {
    numHeap.push(3);
    numHeap.push(2);
    numHeap.push(1);
    numHeap.push(4);
    numHeap.push(5);
    numHeap.push(6);

    for (let x: u64 = 6, i = 0; x >= 1; x--, i++) {
      expect(numHeap.pop()).toBe(x, 'Popping ' + i.toString() + ' should be ' + x.toString());
    }
  });

  it('replaces the top of the heap', () => {
    numHeap.push(809);
    numHeap.push(30);
    numHeap.push(0);
    numHeap.push(82);
    numHeap.push(3);
    numHeap.push(10000);

    expect(numHeap.top).toBe(10000, 'The top of the heap should be the largest value');
    expect(numHeap.replace(4780)).toBe(10000, 'Replacing the top of the heap with another largest value should return the top');
    expect(numHeap.top).toBe(4780, 'Replacing the top of the heap with another largest value should keep that value on the top of the heap');
    expect(numHeap.replace(10)).toBe(4780, 'Replacing the top of the heap should return the top');
    expect(numHeap.top).toBe(809, 'Replacing the top of the heap with another largest value should keep that value on the top of the heap');

    expect(numHeap.pop()).toBe(809);
    expect(numHeap.pop()).toBe(82);
    expect(numHeap.pop()).toBe(30);
    expect(numHeap.pop()).toBe(10, 'Replacing a non-max value should relocate it to the correct position in the heap');
    expect(numHeap.pop()).toBe(3);
    expect(numHeap.pop()).toBe(0);
  });

  it('works with strings', () => {
    expect(strHeap.isEmpty).toBe(true, 'Empty string max heap should be empty');
    expect(strHeap.length).toBe(0, 'The length of the heap with no items should be 0');
    expect(() => { nop(strHeap.top); }).toThrow('Cannot access top of empty heap');
    expect(strHeap.push('a string')).toBe(1, 'Pushing one value should return the length of the heap');
    expect(strHeap.length).toBe(1, 'The length of the heap with one pushed item should be 1');
    expect(strHeap.top).toBe('a string', 'The top of the heap should be the pushed item');
    expect(strHeap.isEmpty).toBe(false, 'A heap with an item in it should not be empty');
    expect(strHeap.replace('another string')).toBe('a string', 'Replacing the top should return the top');
    expect(strHeap.top).toBe('another string', 'The top of the heap should be the pushed item');
    expect(strHeap.pop()).toBe('another string', 'Popping the top of the heap should return the top');
    expect(strHeap.isEmpty).toBe(true, 'Emptied string max heap should be empty');
    expect(strHeap.length).toBe(0, 'The length of the heap with all items removed should be 0');
    expect(() => { nop(strHeap.top); }).toThrow('Cannot access top of emptied heap');

    'abcdefghijklmnopqrstuvwxyz'.split('').sort(randomly).forEach(letter => {
      strHeap.push(letter);
    });

    // 'z' > 'a'
    'abcdefghijklmnopqrstuvwxyz'.split('').reverse().forEach(letter => {
      expect(strHeap.pop()).toBe(letter);
    });
  });

  it('works with custom wrapper classes', () => {
    'abcdefghijklmnopqrstuvwxyz'
      .split('')
      .map<string>((letter, i) => letter.repeat(i + 1))
      .sort(randomly)
      .forEach(seq => {
        wrappedStrHeap.push(new StringLengthWrapper(seq));
      });

    'abcdefghijklmnopqrstuvwxyz'
      .split('')
      .map<string>((letter, i) => letter.repeat(i + 1))
      .reverse()
      .forEach(seq => {
        expect(wrappedStrHeap.pop().value).toBe(seq);
      });
  });
});
