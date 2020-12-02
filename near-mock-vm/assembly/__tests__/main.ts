export function add(a: i32, b: i32): i32 {
  for (let i = 0; i < a * b; i++) {
    let _x = i + a + b;
  }
  return a + b;
}
