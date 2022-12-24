# Notes (Calling Custom Functions)

To "call" a function, you have to use it's name along with any required parameters inside brackets (just like when you use `console.log()`!).

The purpose of functions is to make re-usable code.  So we should call them **multiple times** to make them worthwhile (and **produce different results**).  

Some students will do this when they first write functions:

```javascript

function myFunction(parameter1) {
	// Calculates... something I don't know

	parameter1 = parameter1 * 5 - 8
	return parameter1
}

// Main code area

const result = myFunction(10);
console.log("The result is: " + result)

// Move on with program and never use function again.
```

In this situation, what's the point of the function?  Perhaps it helps organize your program a bit, but if you're using a function **one time only**, you might as well not have one, and insert the code directly.

A good function is one that is used **multiple times** to produce **different results**. 
