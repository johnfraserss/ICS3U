# Notes (Array Functions)

### `array1.concat(array2)`

The `concat` function will combine the two arrays. `array1` will be first followed by all values in `array2.

```javascript
const fruits = ['apple', 'pear', 'peach']
const otherFruits = ['banana', 'pineapple'];

const allFruits = fruits.concat(otherFruits);

console.log(fruits);
console.log(otherFruits);
console.log(allFruits);

//Example Output
[ 'apple', 'pear', 'peach' ]
[ 'banana', 'pineapple' ]
[ 'apple', 'pear', 'peach', 'banana', 'pineapple' ]
```

### `array.filter(function)`

The `filter` function will return an array that has been filtered based on an anonymous parameterless function. The left side of the arrow function is the name of an element in the array.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

const longNamedFruit = fruits.filter(fruit => fruit.length > 5);

console.log(longNamedFruit);

//Example Output
[ 'banana', 'pineapple' ]
```

### `array.find(function)`

The `find` function will return the first **element** that matches your search criteria based on an anonymous parameterless function. The left side of the arrow function is the name of an element in the array.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

const firstLongNamedFruit = fruits.find(fruit => fruit.length > 5);

console.log(firstLongNamedFruit);

//Example Output
banana
```

### `array.findIndex(function)`

The `findIndex` function will return the first **index** that matches your search criteria based on an anonymous parameterless function. The left side of the arrow function is the name of an element in the array.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

const locationOfTheFirstLongNamedFruit = fruits.findIndex(fruit => fruit.length > 5);
const locationOfBanana = fruits.findIndex(fruit => fruit == "banana");

console.log(locationOfTheFirstLongNamedFruit);
console.log(locationOfBanana);

//Example Output
3
3
```

### `array.join(token)`

The `join` function will return a single string that is the concatenation of all of the individual strings separated by the `token` that you assign.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

const fruitStringComma = fruits.join(',')
const fruitStringSpace = fruits.join(' ')
console.log(fruitStringComma);
console.log(fruitStringSpace);

//Example Output
apple,pear,peach,banana,pineapple
apple pear peach banana pineapple
```

### `array.map(function)`

The `map` function will return a new array based on the mapping provided in the anonymous parameterless function. The left side of the arrow function is the name of an element in the array.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

const fruitExclaimed = fruits.map(fruit => fruit + '!')

console.log(fruitExclaimed);

//Example Output
[ 'apple!', 'pear!', 'peach!', 'banana!', 'pineapple!' ]
```

### `array.pop()`

The `pop` function will return the last item in the array.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

console.log(fruits.pop());

//Example Output
pineapple
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

### `array.reverse()`

The `reverse` function will return an array that is in the reverse order of the `array`.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

fruits.reverse();

console.log(fruits);

//Example Output
[ 'pineapple', 'banana', 'peach', 'pear', 'apple' ]
```

### `array.slice(start, end)`

The `slice()` function will take a portion of the array based on the `start` value and the `end` value. The `end` value itself is not included in the slicing.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

const peaFruits = fruits.slice(1,3);
const peaFruitsNegative = fruits.slice(-4, -2);

console.log(fruits);
console.log(peaFruits);
console.log(peaFruitsNegative);

//Example Output
[ 'apple', 'pear', 'peach', 'banana', 'pineapple' ]
[ 'pear', 'peach' ]
[ 'pear', 'peach' ]
```

### `array.sort()`

The `sort` function will sort items in the array either ascending numerically or ascending lexicographically (like a dictionary in English class would).

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];
const numbers = [5, 3, 2, 4, 1, 6];

fruits.sort();
numbers.sort();

console.log(fruits);
console.log(numbers);

//Example Output
[ 'apple', 'banana', 'peach', 'pear', 'pineapple' ]
[ 1, 2, 3, 4, 5, 6 ]
```

### `array.splice(index, quantity)`

The `splice()` function will remove a `quantity` of items from the array starting at the `index`.

Example 1 (removing 1 item):

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

const indexOfPear = fruits.indexOf("pear");
fruits.splice(indexOfPear, 1);

console.log(fruits);

//Example Output
[ 'apple', 'peach', 'banana', 'pineapple' ]
```

Example 2 (removing 2 items):

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

const indexOfPear = fruits.indexOf("pear");
fruits.splice(indexOfPear, 2);

console.log(fruits);

//Example Output
[ 'apple', 'banana', 'pineapple' ]
```

Example 3 (special case, inserting an item):

The `splice()` function can also **insert** an `item` at a particular `index` if you follow the method of `array.splice(index, 0, item)`.

```javascript
const fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple'];

fruits.sort();
fruits.splice(2,0,"kiwi"); // inserts "kiwi" after index 2.

console.log(fruits);

//Example Output
[ 'apple', 'banana', 'kiwi', 'peach', 'pear', 'pineapple' ]
```

### Converting a string to an array using `string.split(token)`

Depending on the string that you have, you might want to split it up into an array to process the data.  In this case, you'll want to use the `string.split(token)` function that will break apart a string based on the token that you provide.

As an example, we can isolate words in a sentence (that contains no punctuation) per below:

```javascript
const sentence = "This is a sentence";

const words = sentence.split(' ');

console.log(words);
```

Another example of breaking up the information would be if we had a list of items separated by a particular symbol. This is common when reading in .CSV (comma-separated value) files.

```javascript
const sentence = "comma,separated,values";

const words = sentence.split(',');

console.log(words);

//Example Output
[ 'comma', 'separated', 'values' ]
```

If you want to convert a string into an array, there is a quick function to do that for you.

```javascript
const word = "pineapple";

const letters = word.split('');

console.log(letters);

// Example Output
[ 'p', 'i', 'n', 'e', 'a', 'p', 'p', 'l', 'e' ]
```
