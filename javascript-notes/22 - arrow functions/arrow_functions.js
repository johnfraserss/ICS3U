/* 
  Name:        Arrow Functions (arrow_functions.js)
  Purpose:     To show examples of arrow functions based on their original function

  Author:      Mr. Seidel
  Created:     24-Dec-2022
  Updated:     24-Dec-2022
*/

/**
 * Calculates the hypotenuse given sideA and sideB
 *
 * @param {number} sideA - the length of side A of a right angle triangle
 * @param {number} sideB - the length of side B of a right angle triangle
 *
 * @returns {number} the calculated value of the hypotenuse
 * 
 */
function hypotenuse(sideA, sideB) {
  if (isNaN(sideA) || isNaN(sideB)) {
    return NaN;
  }
  return Math.sqrt(sideA**2 + sideB**2);
}
// The original function is above here.

// The arrow functions below will have the prefix "arrowFull" to denote the difference
const arrowFullHypotenuse = (a, b) => {
  if (isNaN(a) || isNaN(b)) {
    return NaN;
  }
  return Math.sqrt(a**2 + b**2);
}

// The arrow function below is prefixed with "singleReturnBraces" to denote the 
// fact that it is a single line with braces and has the word "return" in it.
const singleReturnBracesHypotenuse = (a,b) => { return Math.sqrt(a**2 + b**2); }

// The arrow function below is prefixed with "single" to denote the fact
// that it is a single line arrow function with no braces or explicit return statement
const singleHypotenuse = (a,b) => Math.sqrt(a**2 + b**2);


console.log("function hypotenuse(4,5) {} ", hypotenuse(3,4));
console.log("arrowFullHypotenuse = (4,5) => {} ", arrowFullHypotenuse(3,4));
console.log("singleReturnBracesHypotenuse = (4,5) => {} ", singleReturnBracesHypotenuse(3,4));
console.log("singleHypotenuse = (4,5) => ", singleHypotenuse(3,4));
