# Notes (Conditional Statements (if))

If statements allow a branching off of the program based on whether a condition is true or false.

If statements include a *condition* of some sort (see below for various comparison operators).  The condition will return a boolean value (i.e. true or false) which will determine whether the program enters that if statement or not.

```javascript
const x = 1;

if (x === 1) {
  console.log("It's ONE!");
}
```

Note the indenting of the `console.log();` command in the code above.  The indenting is suggested for you to understand that the `console.log()` command is part of the `if` statement when reading through your code.  Anytime you have an `if` statement, you will need to indent any code that you want run under those conditions.  Typically you use the `TAB` key to indent, or use 2 spaces.

For conditional statements, there are different ways for the boolean value to be checked.  Some examples include using:

| Operator  | What it does |
| --------- | ------------ |
| `==`      | checks for equality of value (a single `=` is to *assign* values) |
| `===`     | to checks for equality of value **and** data type   |
| `>=`      | greater than or equal to |
| `>`       | greater than |
| `<=`      | less than or equal to |
| `<`       | less than |
| `!=`      | checks for **in**equality of value |
| `!==`     | checks for **in**equality of value **and** data type |

There will be more options shown later in the course, but these are the basics boolean checks that a conditional statement can check.

If statements can combine to check `if` something is true, `else` (or "otherwise") do something different.  See a code block below.

```javascript
const x = 1;

if (x === 2) {
  console.log("It's the number TWO!");
} else { 
  console.log("It's NOT TWO!");
}
```

This will check to see if the value of `x` is the same as the number `2` and if it isn't, the program will jump down to the `else` statement and run the code found within that block.

You can also chain a variety of `if` statements together; however, every `if` beyond the first is written as `else if`.  See the code block below.

```javascript
const x = 15;

if (x > 10) {
  console.log('The number is at least two digits long');
} else if (x < 10) {
  console.log('The number is less than 10');
} else {
  console.log('The number IS 10!');
}
```

You can include as many `else if`s as you want, provided they are *after* the `if` and *before* the `else`.

**Important Note:** Each `else if` condition is only checked if the preceding `if` and *all* preceding `else if`s are false.  Think of `if/else if/else if/.../else` as the priority order.

Finally, we can chain different conditions together to check to see if multiple things are true.  Chaining different conditional statements together requires one of the following:
* `&&` which makes sure the conditions on both sides of the `and` are true
* `||` which checks if either of the conditions on both sides of the `or` are true

For example:
```javascript
const x = parseInt(readline.question('Enter an integer value for x: '));
const y = 2;

if (x === 1 && (y === 2):
  console.log('Yay!');
else:
  console.log('Nay!');
```

or

Lastly, you can chain the chains together; however, you will want to ensure that you use parentheses to help you, as `&&` has priority over `||`, just like how `*` has a higher precedent in the order of operations over `+` for mathematics.

```javascript
const x = parseInt(readline.question('Enter an integer value for x: '));
const y = 2;
const z = 3;

if ((x == 1 && y == 1) || (z == 1)) {
  console.log('Yay!');
} else if ((x == 1 && y == 2) && (y == 3 || z == 3)) {
  console.log('WOOHOO!');
} else {
  console.log('Nay!');
}
```