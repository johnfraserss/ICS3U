# Notes (Creating Custom Functions)

Functions are used to encapsulate and organize **reusable** code that is used to perform a single action.  We've have been using a functions quite often throughout previous work (math functions, `console.log()`, string functions, etc.)

Functions have a different structure from anything we've done previously, and we'll take this on step-by-step.  The basic setup of a function is as follows:

```javascript
/**
 * Description of the function
 */
function functionName( parameter1, parameter2, ... ) {
    // body of the function
    return expression
}
```

The above concepts break down as follows:
* `function` tells the computer you are going to be creating a function
* `functionName` is the name of the function.  The name of the function should be clear on its purpose.
* `parameter#` are different parameters that the function accepts.  These parameters are used inside the function, just as you would use variables.  This section can be left blank as well (i.e. `function functionName() {`).
* `/** Description */` this area is used to describe the purpose of the function.  We will go further in-depth on this in the future; however, for now you will only place a description in this section.
* `body` this area is where the function does whatever the function is supposed to do (ideally a short task).
* `return` this line will return back to where you called the function, or return a value to wherever the function is called.

Before being able to use a function, it must be defined.  As such, you will need to define functions at the top of a file, and then you can use them later.

**Notes:** 

- Any variables that are *created* inside a function **only exist inside that function.**
- functions should only use parameters to receive information (`readline.question()` can be used to gather information *prior* to calling the function, but not *inside* the function)
