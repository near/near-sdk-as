// Exporting a new class TextMessage so it can be used outside of this file.
@nearBindgen
export class TextMessage {
  sender: string;
  text: string;
  number: u64;
  isRead: bool;
}

@nearBindgen
export class Word {
  constructor(public text: string) {}
}

// @ts-ignore
@nearBindgen
export function capitalize(s: string): string {
  return s.toUpperCase();
}