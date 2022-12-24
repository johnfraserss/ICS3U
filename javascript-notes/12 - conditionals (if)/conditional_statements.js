/*
  Name:        Conditional Statements (conditional_statements.js)
  Purpose:     To provide information about how conditional statements (if) work in JavaScript

  Author:      Mr. Seidel
  Created:     15-Aug-2018
  Updated:     23-Dec-2022
*/

// Using 3D coordinates for variable nomenclature
const x = 1;
const y = 2;
const z = 300;

// Basic if statement
if (x > 0) {
	console.log("Hello!");
}

// Using "elif" in a conditional
if (x > 1) {
	console.log("It's not supposed to be!")
} else if (y === 2) {
	console.log("Yup!");
} else {
	console.log("Nope!");
}
	
// Using "and" in a conditional chain
if (x > 0 && z > 10) {
	console.log("It's supposed to be here!")
} else {
	console.log("Shouldn't reach here")
}

// Using "or" in a conditional chain
if (x > 10 || y > 10 || z > 10) {
	console.log("Yup!");
} else {
	console.log("Nope!");
}