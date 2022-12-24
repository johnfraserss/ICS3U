# Notes (JavaScript Objects)

In JavaScript there are two types of objects that exist. Ones that are built from classes (will learn in Grade 12), and ones that are similar in nature to JSON objects (will be learning immediately).

### Creating JSON-style objects

JSON-style objects are collections of data that we can use to categorize items and hold multiple datatypes. You can think of them as an array, but instead of using an index to reference an item, we can reference it by a name instead.

For example, if we were to have a list of colours that we wanted to reference to find out the hex-code equivalent (which is used in HTML), we could have something like the following code:

```javascript
const colours = {
  red : "#FF0000",
  green: "#00FF00"
};

console.log(colours);

//Example output
{ red: '#FF0000', green: '#00FF00' }
```

Each item in an object is called a **property** and is formatted in a `key` : `value` pair style. The item on the left side of the colon is the `key` and the item on the right side is the `value`. Each key in the object has to be unique. When creating the `key:value` pairs initially, they must be separated by commas (as in the first line of the sample code above).

### Accessing Items inside objects

When you want to access the information inside the objects, you would need to access the items by the keys. There are multiple ways to do that, with examples below:

```javascript
const colours = {
  red : "#FF0000",
  green: "#00FF00"
};

console.log(colours.red);
console.log(colours["green"]);

for (key in colours) {
  console.log(key + " : " + colours[key]);
}
```

### Adding new properties

To add a new property to your objects is similar in style to accessing the properties and setting a value to a variable. Let's add `blue` and `yellow` to the colours object:

```javascript
const colours = {
  red : "#FF0000",
  green: "#00FF00"
};

colours.blue = "#0000FF";
colours["yellow"] = "#FFFF00";

console.log(colours);

//Example output
{
  red: '#FF0000',
  green: '#00FF00',
  blue: '#0000FF',
  yellow: '#FFFF00'
}
```

### Deleting properties

Using the `delete` keyword, we can delete a property from an object by referencing its `key`.

```javascript
const colours = {
  red : "#FF0000",
  green: "#00FF00",
  blue: "#0000FF",
  yellow: "#FFFF00"
};

console.log(colours);

delete colours.blue;
console.log(colours);

delete colours["yellow"];
console.log(colours);

//Example output
{
  red: '#FF0000',
  green: '#00FF00',
  blue: '#0000FF',
  yellow: '#FFFF00'
}
{ red: '#FF0000', green: '#00FF00', yellow: '#FFFF00' }
{ red: '#FF0000', green: '#00FF00' }
```