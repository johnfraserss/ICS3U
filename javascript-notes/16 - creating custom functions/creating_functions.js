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
function hypotenuse(side_a, side_b) {
  if (isNaN(side_a) || isNaN(side_b)) {
    return NaN;
  }
  return Math.sqrt(side_a**2 + side_b**2);
}