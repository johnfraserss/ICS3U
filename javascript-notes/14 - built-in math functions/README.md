# Notes (Built-in Math Functions)

## Built-in Math Functions

In every language, there are certain sets of built-in math functions to help programmers build their projects.

The common ones that we will discuss in class are the following: 
  * ```Math.PI``` is a constant that provides an accurate value for PI. 
  * ```Math.floor()``` rounds **down** the parameter value provided.
  * ```Math.ceil()``` rounds **up** the parameter value provided.
  * ```Math.random()``` creates a random number between 0 and 1.

Examples for how to use the code are below. Not all examples are copy/pastable directly.


```JavaScript
//Format for randomizing numbers.
Math.floor(Math.random() * MAX) + MIN; //cannot copy/paste this

//This will round up the answer to finding the area of a circle with radius of 5
Math.ceil(Math.PI * 5**2);

//This will round down the answer to finding the area of a circle with radius of 5
Math.floor(Math.PI * 5**2);

//Code example of randomizing numbers from 0-10
Math.floor(Math.random() * 10) + 0;

//Code example of randomizing numbers from 1-10
Math.floor(Math.random() * 10) + 1;

//Code for Math.PI

console.log(Math.PI);
// expected output: 3.141592653589793

``` 

### Question
Think of how many applications/games would use the random function. Why is randomly calculating values important?

## More Built-in Math Functions
Other common functions that we will discuss in class are the following: 
  * ```Math.abs()``` finds the absolute value of the provided value. An absolute value is the positive version of that number (see example below). 
  * ```Math.min()``` finds the **smallest** value from all values provided.
  * ```Math.max()``` finds the **largest** value from all values provided.
  * ```Math.round()``` rounds the parameter value provided to the nearest integer.
  * ```Math.sqrt()``` finds the square root of the value provided.

Examples for how to use the code are below. Not all examples are copy/pastable directly.

```JavaScript
//Find the absolute value of a number
console.log(Math.abs(5)); //outputs 5
console.log(Math.abs(-5)); //outputs 5

//This will round the answer to the nearest integer after calculating the area of a circle with radius of 5
console.log(Math.round(Math.PI * 5**2)); //outputs 79

//This will find the square root of 2
console.log(Math.sqrt(2)); //outputs 1.4142135623730951

//These will find the minimum and maximum of the values provided
//You can have more than 2 values for min and max, but we will revisit that again at a later time.
console.log(Math.min(3,4)); //outputs 3
console.log(Math.max(3,4)); //outputs 4

``` 
