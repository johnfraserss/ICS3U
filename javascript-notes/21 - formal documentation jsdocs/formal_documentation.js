/*
  Name:        Formal Documentation i.e. docstrings (formalDocumentation_ex1.py)
  Purpose:     Provides an example of how to create industry standard 
               formal documentation for JavaScript functions.
 
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