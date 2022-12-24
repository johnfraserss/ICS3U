/*
  Name:        Custom Functions (creating_functions.js)
  Purpose:     To provide an example of how to create a functions in JavaScript

  Author:      Mr. Seidel
  Updated:     24-Dec-2022
  Updated:     24-Dec-2022
*/

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