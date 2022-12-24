/* 
  Name:        Looping Structures - For (looping_for.js)
  Purpose:     To provide information about how for loops work as a looping structure in JavaScript

  Author:      Mr. Seidel
  Created:     17-Aug-2018
  Updated:     23-Dec-2022
*/

//This variable will be reused often in this code
let i = 0; 

// For loop to count up
for (i = 0; i < 5; i++) {
	console.log(i);
}

	
// For loop to count down
for (i = 5; i > 0; i--) {
	console.log(i);
}


// Breaking out of a loop early
for (i = 0; i < 5; i++) {
	console.log(i);
	if (i === 2) {
		break;
	}
}
	
// Using Continue to skip certain values
for (i = 0; i < 5; i++) {
	if (i % 2 == 0) {	// skip EVEN numbers (and ZERO)
		continue;		    // immediately jump back to "for (...)" line
	}
	console.log(i);
}

// Using "name" variable in multiple for loops below
let name = "Mr. Cho/Kowalczewski/Seidel";

// For in loop
for (i in name) { //'i' is a shortform for index
	console.log(name.at(i));
}

//For of loop
for (letter of name) {
	console.log(letter);
}