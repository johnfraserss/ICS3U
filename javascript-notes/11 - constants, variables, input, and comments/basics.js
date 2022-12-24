//This is required to get input from the user in the console (in Node.js).
const readline = require('readline-sync');

/*
  Name:        Some Basics (basics.js)
  Purpose:     To provide a sample program about the basics of JavaScript

  Author:      Mr. Seidel
  Created:     14-Aug-2018
  Updated:     23-Dec-2022
*/

// Printing the addition of two integers
console.log(1 + 2);

// Printing of the subtraction of two floats
console.log(4.3 - 2.1);

// Boolean values
const right = true;
const wrong = false;
console.log(right);
console.log(wrong);

// Two integers to be used for the rest of the program.
let integerOne = 1;
let integerTwo = 2;

// Two float values to be used for the rest of the program.
let floatOne = 3.14;
let floatTwo = 5.3;

// Multiplying two float values.
let productOfFloats = floatOne * floatTwo;
console.log(productOfFloats);

// Division of two float values.
let quotientOfFloats = floatTwo / floatOne;
console.log(quotientOfFloats);

// Using the modulo operator
let moduloOfIntegers = 5 % 2;
console.log(moduloOfIntegers);

// Converting between floats and integers
console.log(parseInt(floatOne));
console.log(parseFloat(integerOne));

// Equation
console.log(4 * 2 / 8);

// Getting input from the user using readline.question('Question goes here')
// Then formatting and printing back out the user input.
let name = readline.question('Enter your name: ');  // Note: This asks the user to 'Enter your name: ' in the console.
let age = readline.question('Enter your age: ');
console.log('Hello ' + name + ', you are ' + age + ' years old.');

