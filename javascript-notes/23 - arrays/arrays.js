/*
  Name:        Arrays (arrays.js)
  Purpose:     To provide examples of how to work with arrays in JavaScript

  Author:      Mr. Seidel
  Created:     24-Dec-2022
  Updated:     24-Dec-2022
*/

// Creating an array of fruit strings
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple']

// Printing out the fruit array (individually) using the indexing method
for (let i = 0; i < fruits.length; i++) {
  console.log(fruits[i]);
}

// Printing out the fruit arrays using one of the alternative for loops
for (fruit of fruits) {
  console.log(fruit);
}

