# Notes (Arrays)

An array is a single variable that holds more than one piece of information.  Up until this point, each variable that you created held a unique **single** piece of information.

Arrays can hold any variable type within them and will typically be the same type, making them _homogeneous_ in nature.  This means you will typically deal with array items individually, rather than as a whole array.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];
const numbers = [5, 3, 2, 4, 1, 6];

console.log(fruits);
console.log(numbers);

// Example output
[ 'apple', 'pear', 'peach', 'banana', 'pineapple' ]
[ 5, 3, 2, 4, 1, 6 ]
```

An array is structured using square brackets, and each item is held within it separated by commas.  The data is stored in such a way that you can access the information by either **index** or  retrieving the **element** directly.  A visual way that an array is stored could be as follows (using our `fruits` example above):

| | | | | |
|---|---|---|---|---|
| **index** | 0 | 1 | 2 | 3 | 4 |
| **element** | 'apple' | 'pear' | 'peach' | 'banana' | 'pineapple' |   

We can access the information inside an array in multiple ways.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

for (let i = 0; i < fruits.length; i++) {
  console.log(fruits[i]);
  //console.log(fruits.at(i)); //<--- same thing
}

//Prints out the second item in the array.
console.log(fruits[1]);

//This does not work. You cannot use negative indexing with the square-bracket notation.
console.log(fruits[-4]); 

//This **does** work, as you can use negative indexing with the .at() function instead.
console.log(fruits.at(-4));

// Example output
apple
pear
peach
banana
pineapple
pear
undefined
pear
```

There is some new terminology/functions used in this example, such as:
* `.length` - will find the length of an array (or a string).
* `i` - is a variable typically used to represent the _index_ of an array.  This is one of the few cases where a single-letter variable is allowed.
* `arrayName[i]` - will access the `arrayName` array and grab the i'th _element_ in the array. This is similar to the `string.at(i)` we used back in Lab 08.

#### `for ... in`
The second way that we can access the elements in the array is via the `for ... in` loop:

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

for (i in fruits) {
  console.log(fruits[i]);
}

// Example output
apple
pear
peach
banana
pineapple
```

This way of using the for loop gives you the index without using a `let` statement, calculating the `.length` of the array, and incrementing by a particular amount. This method is used when you don't want to change anything in the array itself, as any changes made to `item` are not saved to the array.  Whereas the `arrayName[i]` method **can** allow you to change the information in the array itself (example later).

#### `for ... of`
The third way that we can access the elements in the array is via the `for ... of` loop:

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

for (element of fruits) {
  console.log(element);
}

// Example output
apple
pear
peach
banana
pineapple
```

This way of using the for loop gives you the element itself and stores it in the variable called `element`.  Every time the for loop runs, it changes to the next item in the array.  This method is used when you don't want to change anything in the array itself, as any changes made to `element` are not saved to the array.  Whereas the `arrayName[i]` method **can** allow you to change the information in the array itself as below:

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

for (let i = 0; i < fruits.length; i++) {
  fruits[i] = fruits[i] + "'s are great!";
}

console.log(fruits);


// Example Output
>>>["apple's are great!", "pear's are great!", "peach's are great!", "banana's are great!", "pineapple's are great!"]
```

### `array.push(item)`

The `push` function will add an `item` to the end of the array.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

fruits.push('kiwi');

console.log(fruits);

//Example Output
[ 'apple', 'pear', 'peach', 'banana', 'pineapple', 'kiwi' ]
```