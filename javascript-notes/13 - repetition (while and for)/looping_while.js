/*
  Name:        Looping Structures - While (looping_while.js)
  Purpose:     To provide information about how while loops work as a looping structure in JavaScript

  Author:      Mr. Seidel
  Created:     17-Aug-2018
  Updated:     23-Dec-2022
*/

// Using a while loop to count up
let count = 1;
while (count < 10) {
	console.log(count);
	count = count + 1;		// this can also be written as count += 1
}
	
// Using a while loop to count down
count = 275;
while (count > 250) {
	count = count - 1;		// this can also be written as z -= 1
	if (count % 2 == 0) {
		console.log(count, "is an even number.");
	}
}


// Creating an infinite loop.  This loop won't stop.
count = 1;
while (count === 1) {
	console.log("Count is equal to the number 1");
	count = 2; //comment this line to make the loop infinite
}

	
// Breaking out of a loop early
count = 1;
while (count < 10) {
	if (count == 5) {
		break;
	}
	count += 1;
}

// Using Continue to skip certain values
count = 1;
while (count < 10) {
	count += 1;
	if (count % 2 == 0) { // skip EVEN numbers (and ZERO)
		continue;		  // immediately jump back to "while count < 10"
	}
	console.log(count);
}

// Using a do-while loop

count = 1;

do {
  console.log(count);
  count = count + 1;
} while (count < 1);
	
