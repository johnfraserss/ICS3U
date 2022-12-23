# Notes (Basics)

### Comments

When we begin writing code, it's important to write *comments* throughout to explain what your code is doing.  This is both for you and for anybody that is trying to read your code!

In JavaScript we use the `//` sign at the beginning of a line to tell the intrepeter to ignore it.

```javascript
// This is a single line comment!

This is not a comment!

/*
This is a multi-line comment!
*/
```

### Printing to the console

When printing text (strings), you need to use a set of quotation marks around the string you want to print (i.e. "What's going on?").  

```javascript
console.log("Hello world!");
```

You can also print numbers on their own, or concatenate them with strings to create a piece of information that includes words and a calculation.

```javascript
console.log(5.5);
console.log(3*6);

console.log("The value of x is: " + 5.5);
console.log("The value of x is: " + 3*6);
```

### Variables, Constants, and Printing Them

Variables are used to temporarily store information, and can be manipulated in multiple ways.  

Variables should be named so that it is easy to tell what the value held by the variable is. The naming convention for JavaScript is to use `camelCase` when creating variables that contain more than one word.

```javascript
// camelCase
myFirstInteger = 22;
```

Variables can be of different types such as:
* integers (whole number values)
* floats (can include decimal values)
* strings (text)
* Boolean values (true or false)
* and more!

In JavaScript we don't have to declare what type the variable is - the intrepeter will figure that out from what you assign to it.

```javascript
let integerOne = 15;
let myFloat = 18.6;
let greeting = "Hello";
let myBool = false;
```

If you know a value has no need to change, you can instead create a constant:

```javascript
const PI = 3.14;
let radius = 5;

console.log("The area of the circle is: " + PI * radius);
```

Here are some examples of how to print out the information in the console.

```javascript
let result = 80;
console.log("The result of the calculation is: " + result);

const message = "There";
console.log("Hello " + message);
```

### Mathematical Operations

You can use the standard mathematical operators `+`, `-`, `*`, `/` as well as some other ones that you might not be used to using such as:

* `%` - This is used to find the remainder after a division (see below)
* `**` - This is used for a power (see below)

```javascript
let moduloOfIntegers = 5 % 2;
console.log(moduloOfIntegers);  // Should be 1

let powerOfIntegers = 2 ** 3;
console.log(powerOfIntegers);   // Should be 8
```

Make sure that you are doing math with integers or floats only - weird things happen when you do "math" with strings!

```javascript
console.log("5" * 3); // gives you 15
console.log("5a" * 3); // gives you NaN (which stands for "Not a Number"
```

### Converting between types

You can convert between different data types by using functions such as:
* `parseInt()` will extract an integer from a string, assuming the entire string is an integer
* `parseFloat()` will extract a float value from a string, assuming the entire string is a float value

```javascript
let integerConversion = parseInt("5")
print(integerConversion)

let floatConversion = parseFloat("2.2")
print(floatConversion)
```

### Receiving input from the user

Sometimes you will want to ask someone to enter information for you so that you can process that information and print it back out.  This is useful if you are, for example, receiving information to create a database, or to calculate the hypotenuse of a right-angle triangle, etc.

To do so, we use the `readline` function.  The `readline` function works by using its internal `question()` method with one argument (information in the parentheses) which is the question that we would ask the user to help guide them, as a string.  To make use of the `readline` function, we have to import the library to make use of it. To do so, we add the line `const readline = require('readline-sync');` to the top of our program.

For example:

```javascript
const readline = require('readline-sync');

let name = readline.question('Enter your name: ');
console.log(name);
```

The above program prompts the user with `Enter your name: ` and waits for the user to enter information to continue.  Afterwards, it will then just print out the name entered.

When using the `readline.question()` function, it will *always* return a string type variable (text).
Even if a number is entered, it will be the "text" of that number.  If you wish to use the user's input for any calculations, you'll have to convert it to an integer or float, using the `parseInt` and parseFloat` functions we mentioned above.
