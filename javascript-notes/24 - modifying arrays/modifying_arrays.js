/*
  Name:        Lesson on Array Functions (modifying_arrays.js)
  Purpose:     An introduction to array functions in JavaScript

  Author:      Mr. Kowalczewski
  Created:     26-Sep-2019
  Updated:     27-Nov-2022 (converted to JS by Mr. Seidel)
*/

// We could create separate variables to store student names.
// What if I want to search for a student? Delete one? etc
const studentOne = 'Alvin';
const studentTwo = 'Billy';
const studentThree = 'Chris';
const studentFour = 'David';

// We can generate an array instead
const studentArray = ['Alvin', 'Billy', 'Chris', 'David', 'Eric'];
const emptyArray = []; // can add to this later!
const integerArray = [10, 5, 8];
const floatArray = [2.7, 8.1];

console.log("What an array looks like when you print: ");
console.log(studentArray);
console.log();

// An array could include multiple types of information, but try to avoid for now
// (could lead to problems)

const mixedArray = ["Hello World", 18, true, 19.6];

// Accessing individual (or sequences of) elements (index starts at ZERO)
console.log("Accessing individual elements:");
console.log(studentArray[1]);

const myInteger = integerArray[2] * 10;
console.log(myInteger);

// Index of -1 is the last element (negative indexes go BACKWARDS)
// This is handy because you may not know how long your array is (without using .length)
console.log(studentArray[-3]);

// Slice - starting at first index, going UP TO NOT INCLUDING last index
// Add a .reverse() want to go backwards or use a different pattern
const partialStudentArray = studentArray.slice(-3,-1)
const reversedPartialStudentArray = partialStudentArray.reverse();
console.log(reversedPartialStudentArray);
console.log();

// Two methods of using a FOR loop to go through an array.
// There is an important difference!  (Explanation in LESSON.md)
// len() returns the length of the array

// This method allows you to directly access and modify the elements.
console.log("Using for loop to print all elements:");
/*
for (let i = 0; i < studentArray.length; studentArray++) {
	studentArray[i] = studentArray[i] + '!';
	console.log(studentArray[i]);
}

console.log(studentArray)
*/
// for 'each' name (item) in studentArray
// This method stores each element one at a time in a SEPARATE VARIABLE, and the original array is not affected.

for (name of studentArray) {
	name = name + '!';
	console.log(name);
}

console.log(studentArray);


console.log();
// There are numerous things we can do with an array - here
// are some of the most important ones.

const fruit = ['pineapple', 'apple', 'pear', '1peach', 'banana', '3pineapple',];
const numbers = [5, 3, 2, 7, 8, 10];

// Append - adding to an array, where does it go? (to the end)
console.log("After appending:");
numbers.push(22);
numbers.push(100);
console.log(numbers);
console.log();

// Insert - adding to an array at a specific index (first value is index)
console.log("After inserting:");
numbers.splice(5, 0, 475665756);
console.log(numbers);
console.log();

// Two methods to remove items.
// The first method makes use of the index.

fruit.splice(2,1);
numbers.splice(-1,1);

console.log("After deleting:");
console.log(fruit);
console.log(numbers);
console.log();

// This will remove an actual value.  Note that this
// will only remove the first instance.

fruit.splice(fruit.indexOf('pineapple'), 1);

console.log("After removing:");
console.log(fruit);
console.log();

// Sorting
fruit.sort(); // this sorts the array in lexicographical order
numbers.sort(); // this sorts the array in ascending numerical order

console.log('After sorting:');
console.log(fruit);
console.log(numbers);
console.log();

// You can easily turn a string into an array of the
// individual characters.

const message = "Hello there";
const chars = message.split('');

console.log("Showing a string variable, and then converting it to an array:");
console.log(message);
console.log(chars);
console.log();
console.log(chars[4]);

// You can also turn an array into a string! (in the quotes is the separator if you want)
console.log("Joining an array of letters ['a', 'b', 'c', 'd', 'e']");
const letters = ['a', 'b', 'c', 'd', 'e'];
const word = letters.join('');
console.log(word);
console.log();

// Checking if something is in the array
// -1 return value means it isn't there
console.log("Using `indexOf` to see if something is in the array or not:")
if (fruit.indexOf("apple") !== -1) {
    console.log('apple is in the fruit array!');
}
if (numbers.indexOf(2) === -1) {
    console.log('2 is not in the numbers array');
}
console.log("");

// Array of arrays
const arrayOfArrays = [     [1,2,3]      ,     [4,5,6,8,10]      ];
console.log("Accessing elements in an array of arrays:");
console.log(arrayOfArrays[0][1]);
console.log();

// Watch what happens when I try to duplicate an array - it doesn't work the way you think!
// Setting one array equal to another, simply points the new array at the previous one in the memory.

const arrayOne = [1];
const arrayTwo = arrayOne;

arrayTwo.push(2);

console.log("Setting one array equal to another");
console.log("Array 1: ", arrayOne);
console.log("Array 2: ", arrayTwo);
console.log();

// You can 'access' individual characters in a string like an array -  but you can't modify!

const myString = "I don't like sand.";
console.log(myString.length);
//myString[0] = "!";
console.log(myString.slice(5,8));
