/**
  * This function is a quality of life function. It is used so that we don't have to type document.getElementById all the time 
  */
function getId(id) {
  return document.getElementById(id);
}

//Interacts with HTML side, and uses
//the hypotenuse function
function calculateHypotenuse() {
  //Get the values from the text boxes
  const aValue = getId('hypotenuseAValue').value;
  const bValue = getId('hypotenuseBValue').value;

  //Convert the values to integers
  const aInt = parseInt(aValue);
  const bInt = parseInt(bValue);

  //Calculate the hypotenuse
  const hypotenuseValue = hypotenuse(aInt, bInt);
  
  //Output the information to an HTML element
  //with an id of 'hypotenuseAnswer'
  getId('hypotenuseAnswer').innerHTML = "The hypotenuse is: " + hypotenuseValue;
}

//Calculates the hypotenuse
//Given a and b.
function hypotenuse(a, b) {
  if (isNaN(a) || isNaN(b)) {
    return NaN;
  }
  return Math.sqrt(a**2 + b**2);
}