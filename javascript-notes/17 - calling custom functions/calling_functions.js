/*
  Name:        Calling Functions (calling_functions.js)
  Purpose:     To provide an example of how to call a function in JavaScript

  Author:      Mr. Seidel
  Updated:     24-Dec-2022
  Updated:     24-Dec-2022
*/

//Needed to get console input in Node.js
const readline = require('readline-sync');

/**
 * Calculates the hypotenuse given sideA and sideB
 *
 */
function hypotenuse(sideA, sideB) {
  if (isNaN(sideA) || isNaN(sideB)) {
    return NaN;
  }
  return Math.sqrt(sideA**2 + sideB**2);
}

const a = readline.question("Enter side a of the triangle: ");
const b = readline.question("Enter side b of the triangle: ");

const hyp = hypotenuse(a,b); //calling the function here

console.log("The hypotenuse of the right angle triangle with sides ", a, "and", b, "is:", hyp);

//This is an alternate way to display the information.
//console.log(`The hypotenuse of the right angle triangle with sides ${a} and ${b} is ${hyp}`);