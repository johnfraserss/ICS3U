# Notes (Formal Documentation (JSDocs))

*"Code is more often read than written."* -- Guido van Rossum (creator of Python).

Programmers rarely work alone - they work as a team, fix each other's code etc.  It's important to make sure that the purpose of your code can be understood by someone else.  So far we have used comments (`#`) to explain the purpose of our code.

On your next assignment, you'll be assessed on how clearly your comments explain your code. The style of documentation we will be using is [JSDocs](https://jsdoc.app/).

## Function Documentation

A good function is one that you could copy into another program and be able to use.  The `saleCalculator()`, `milesToKm()`, or `hypotenuse()` functions could be implemented into your previous assignment easily.

Because of this, we want to make sure that anyone looking at (or using) our functions can clearly see what it requires, what it returns and what could go wrong.  We will be using the following standard documentation for our functions:

```javascript
/**  <--- note the 2nd star here. This is required
  * Description of the function 
  *
  * @param {datatype} parameter1 - Description of parameter1
  * @param {datatype} parameter2 - Description of parameter2
  *
  * @returns {datatype} Description of return value
  *
  */
  function functionName(parameter1, parameter2) {
    return returnValue;
  }
```

This will be placed immediately **before** we define our function.
