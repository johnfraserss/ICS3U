/*
  Name:        JSON-Style objects (json-style_objects.js)
  Purpose:     To provide examples of how to use JSON-style objects

  Author:      Mr. Seidel
  Created:     24-Dec-2022
  Updated:     24-Dec-2022
*/

const duck = { 
  name: "Ducky",
  number: 10,
  age: 1,
  evenFriends: [2,4,6,8,10],
  oddFriends: [1,3,5,7,9]
};

// Multiple ways to access the same property using ["property"] and "dot" notations.
console.log(duck["name"]);
console.log(duck.name);
console.log(duck);

duck.name = "Lucky Ducky";
console.log(duck);

duck["name"] = "Lucky Duck";
console.log(duck);

// Adding a new property to the duck
duck["wet"] = false;
console.log(duck);

// Adding another new property to the duck, based on input.
const isDuckInWater = prompt("Is the duck in the water? (y/n)");
if (isDuckInWater.toLowerCase().startsWith("n")) {
  duck.inWater = false;
} else if (isDuckInWater.toLowerCase().startsWith("y")) {
  duck.inWater = true;
}

// Modifying properties using an if statement
if (duck.inWater === true) {
  duck.wet = true;
  console.log(duck.name + " is wet from being in the water.");
} else {
  console.log(duck["name"] + " is sitting on a shelf.");
}

console.log(duck);

// Possibly adding a new item to the friends array property, if they don't already exist.
let newFriend = prompt("Who is " + duck.name + "'s new friend?");

if (duck.evenFriends.findIndex(friend => friend == newFriend) == -1 && duck.oddFriends.findIndex(friend => friend == newFriend) == -1) {
  if (parseInt(newFriend) == newFriend) {
    newFriend = parseInt(newFriend); //converting to number if it's only a number
  }
  if (newFriend % 2 == 0) {
	  duck.evenFriends.push(newFriend);
  } else {
	  duck.oddFriends.push(newFriend);
  }
  console.log("Welcome, " + newFriend + "!");
} else {
  console.log(newFriend + " is already " + duck.name + "'s friend!");
}

console.log(duck);