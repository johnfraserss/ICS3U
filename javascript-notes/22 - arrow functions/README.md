# Notes (Arrow Functions)

When you are reading JavaScript code online, you will start running into arrow functions more frequently.

Below is how we have been writing functions in the past.

```javascript
function hypotenuse(a, b) {
  return Math.sqrt(a**2 + b**2);
}

console.log(hypotenuse(3,4));
```

There is **nothing** wrong with the notation above; however, at times, you might not want to be as verbose in your definition of creating functions.

We can complete the same task with the notation below. Arrow function notation is a newer notation and is mostly used when there are single-line functions or what are called "anonymous functions" (we are not covering anonymous functions in this class).

### Multi-line functions as arrow functions

```javascript
const hypotenuse = (a, b) => {
  if (isNaN(a) || isNaN(b)) {
    return NaN;
  }
  return Math.sqrt(a**2 + b**2);
}

console.log(hypotenuse(3,4));
```

In this particular case, there does not seem to be much of an advantage of using the arrow function style, but it is more about getting used to the style of function.

### Single-line functions

If we are not doing any error checking, then we can start reducing the functions to look similar to below.

```javascript
const hypotenuse = (a,b) => { return Math.sqrt(a**2 + b**2); }

console.log(hypotenuse(3,4));
```
In fact, if there is only one line of code, it is implied that the item on the right side of the arrow is being returned, as long as there are no braces. This can therefore be shortened to:

```javascript
const hypotenuse = (a,b) => Math.sqrt(a**2 + b**2);

console.log(hypotenuse(3,4));
```

**ALL** of the above will work.
