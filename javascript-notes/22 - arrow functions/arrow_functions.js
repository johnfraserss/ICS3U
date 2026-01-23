/* 
  Name:        Arrow Functions (arrow_functions.js)
  Purpose:     To show examples of arrow functions based on their original function

  Author:      Mr. Seidel
  Created:     24-Dec-2022
  Updated:     24-Dec-2022
*/

/**
 * Calculates the hypotenuse given side_a and side_b
 *
 * @param {number} side_a - the length of side A of a right angle triangle
 * @param {number} side_b - the length of side B of a right angle triangle
 *
 * @returns {number} the calculated value of the hypotenuse
 * 
 */
function hypotenuse(side_a, side_b) {
  if (isNaN(side_a) || isNaN(side_b)) {
    return NaN;
  }
  return Math.sqrt(side_a**2 + side_b**2);
}
// The original function is above here.

// The arrow functions below will have the prefix "arrowFull" to denote the difference
const arrow_full_hypotenuse = (a, b) => {
  if (isNaN(a) || isNaN(b)) {
    return NaN;
  }
  return Math.sqrt(a**2 + b**2);
}

// The arrow function below is prefixed with "singleReturnBraces" to denote the 
// fact that it is a single line with braces and has the word "return" in it.
const single_return_braces_hypotenuse = (a,b) => { return Math.sqrt(a**2 + b**2); }

// The arrow function below is prefixed with "single" to denote the fact
// that it is a single line arrow function with no braces or explicit return statement
const single_hypotenuse = (a,b) => Math.sqrt(a**2 + b**2);


console.log("function hypotenuse(4,5) {} ", hypotenuse(3,4));
console.log("arrow_full_hypotenuse = (4,5) => {} ", arrow_full_hypotenuse(3,4));
console.log("single_return_braces_hypotenuse = (4,5) => {} ", single_return_braces_hypotenuse(3,4));
console.log("single_hypotenuse = (4,5) => ", single_hypotenuse(3,4));
