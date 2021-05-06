import { Context, logging } from "near-sdk-core";
import { Word } from "./model";

// ----------------------------------------------------------------------------
// Contract methods
// ----------------------------------------------------------------------------

/**
 * Reverse the letters of an incoming Word
 * @param word the incoming Word
 * @returns a Word whose text attribute is the same characters but reversed
 */
export function reverse(word: Word): Word {
  logging.log(
    "[" + Context.contractName + "] invoked function reverse(" + word.text + ")"
  );
  return new Word(_reverse(word.text));
}

/**
 * Convert the text attribute of an incoming Word to upper case
 * @param word the incoming Word
 * @returns a Word whose text attribute is the same characters but upper cased
 */
export function upcase(word: Word): Word {
  logging.log(
    "[" + Context.contractName + "] invoked function upcase(" + word.text + ")"
  );
  return new Word(_upcase(word.text));
}

// ----------------------------------------------------------------------------
// Helper functions
// ----------------------------------------------------------------------------

/**
 * Reverse an incoming string of letters
 *
 * @param text the incoming string
 * @returns the reversed string
 */
function _reverse(text: string): string {
  return text.split("").reverse().join("");
}

/**
 * Convert an incoming string of letters
 *
 * @param text the incoming string
 * @returns the upper case version of the string
 */
function _upcase(text: string): string {
  return text.toUpperCase();
}

export { capitalize } from "./model";
