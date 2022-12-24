/*
  Name:        String Enhancements (string_enhancements.js)
  Purpose:     To provide information about accessing characters and some built-in string functions JavaScript
               This example uses no parameters

  Author:      Mr. Seidel
  Updated:     24-Dec-2022
  Updated:     24-Dec-2022
*/

const spacedWords = "           Words   ";
const stringToRepeat = "5x";
const trimmedString = spacedWords.trim();

console.log(spacedWords);
console.log(trimmedString);
console.log(trimmedString.at(0));
console.log(trimmedString.toLowerCase());
console.log(trimmedString.toUpperCase());
console.log(trimmedString.endsWith("W"));
console.log(trimmedString.startsWith("W"));
console.log(stringToRepeat.repeat(20));

//Using for (iterator) loop to access individual characters.
const words = "These are words."
for (let i = 0; i < words.length; i++) {
  console.log(words.at(i));
}

//Using for...in loop to access individual characters.
const moreWords = "These are more words."
for (i in moreWords) {
  console.log(moreWords.at(i));
}

//Using for...of loop to access individual characters.
const evenMoreWords = "These are even more words."
for (character of evenMoreWords) {
  console.log(character);
}