/*
  Name:        Formal Documentation i.e. docstrings (formalDocumentation_ex1.py)
  Purpose:     Provides an example of how to create industry standard 
               formal documentation for JavaScript functions.
 
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