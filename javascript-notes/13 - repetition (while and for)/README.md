# Notes (Looping Structures (while and for))

Most programming languages run instructions one at a time until the end of the code.

We can use "loops" to repeat sections of code however many times we want.

In this course we'll focus on two different types of looping structures: `for` and `while`.

## For Loops

### For (iterator)
This looping structure will count from one value to another by a particular increment structured as below.

```javascript
for (iterator/start; condition to stop; step) {
  //Code here
}
```

The above has some new concepts such as{
* `iterator/start` is a variable that is created on the spot and can be used inside the `for` loop.  This value changes every time the loop starts over, but is initialized with a starting value
* `condition to stop` is an integer value to end the range.  JavaScript will not include that particular value itself (see examples).
* `step` is the value that the `iterator` changes by each time the loop restarts.

```javascript
// Count up

for (let i = 0 ; i < 10; i++){
  console.log(i);
}
// Output
// 0
// 1
// 2
// 3
// 4
//...

// Count down
for (let i = 10; i > 0; i--){
  console.log(i);
}
// Output
//...
// 5
// 4
// 3
// 2
// 1
```

### For (in)
We can also use a `for` loop to iterate through variables that hold multiple items, such as the individual characters in a string. We can then use the built-in string function called `s.at(i)` which will find the character of the string `s` at the location of `i`. Locations start at 0, not 1.

```javascript
let name = "Mr. Cho/Kowalczewski/Seidel";

for (i in name) { //'i' is a shortform for index
	console.log(name.at(i));
}
```

In this case, each time the loop restarts the next index value is stored in the variable `i`.

### For (of)

```javascript
let name = "Mr. Cho/Kowalczewski/Seidel";

for (letter of name) {
	console.log(letter);
}
```

In this case, each time the loop restarts the next character in the string is stored in the variable `letter` (this can be named whatever you like).  You can then do whatever you like with the character (`if` statements, more loops etc).



## While Loops
The while loop is mostly used for when you are not sure exactly how many times you need to run through a loop, whereas the ```for``` loop is only run when you know how many times to loop. 

### While (condition)
This looping structure will continue doing something **while** a condition is `true`, like below.

```javascript
let count = 1;

while (count < 10) {
  console.log(count);
  count = count + 1;
}
```

The structure of a `while` loop is very similar to an `if` statement as shown above.  You can use anything that you can with an `if` to check whether the condition is `true` or `false`.

Note that the condition is only checked once the loop has reached the end.

### do {} while (condition)
This looping structure will continue doing something **while** a condition is `true`, but unlike the previous version, this loop will run **at least once**.

```javascript
let count = 1;

do {
  console.log(count);
  count = count + 1;
} while (count < 1);
```

## Loops in general

A few of the commands and options that open up with a ```while``` or ```for``` loop is:
* ```break``` is used to break out of a loop early.  This should only be used in special circumstances and *not* as the only exit condition.
* ```continue``` is used to jump back to the beginning of the loop early.  This should be **rarely** used.