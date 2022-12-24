# Notes (String Enhancements)

## Built-in String Functions

In the last lesson we spoke about a few of the built-in **math** functions. Now we are going to visit built-in **string** functions.

Common functions that we will discuss in class are the following: 
  * `s.at(i)``` finds the character in the string `s` at location (`i`). The first position in the string is `0`, not `1`. 
  * `s.toLowerCase()` returns a lower case version of the string `s`.
  * `s.toUpperCase()` returns an upper case version of the string `s`.
  * `s.endsWith(c)` returns a boolean value (true/false) based on whether the string (`s`) **ends** with a particular character (`c`). This is case-sensitive.
  * `s.startsWith(c)` returns a boolean value (`true`/`false`) based on whether the string (`s`) **starts** with a particular character (`c`). This is case-sensitive.
  * `s.repeat(n)` returns a new string based on the original string (`s`) repeated `n` times in a row.
  * `s.trim()` returns the string `s` without any leading or following spaces.


This is a single copy/pastable program to help demonstrate how each of the functions work.

```javascript
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
```

## Looping Through Strings 

This is just a reminder from the repetition lesson that we are able to access the individual characters in a string using a for loop. Below you will find three different ways to do that.

We will use the `s.at(i)` style to access a particular character in the string, where appropriate.

```javascript
const words = "These are words."
for (let i = 0; i < words.length; i++) {
  console.log(words.at(i));
}
```

The version below will automatically give `i` the values necessary as you are progressing through the string. This is a safer way to access the information in the string, as you do not need to worry about setting up the for loop like above.

```javascript
const words = "These are words."
for (i in words) {
  console.log(words.at(i));
}
```

The version below will create a new variable called `character` that will equal the value of the letters, one at a time, going from left to right.

```javascript
const words = "These are words."
for (character of words) {
  console.log(character);
}
```