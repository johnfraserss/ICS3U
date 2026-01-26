/**
  * This function is a quality of life function. It is used so that we don't have to type document.getElementById all the time 
  */
function get_id(id) {
  return document.getElementById(id);
}

//Interacts with HTML side, and uses
//the hypotenuse function
function calculate_hypotenuse() {
  //Get the values from the text boxes
  const a_value = get_id('hypotenuseAValue').value;
  const b_value = get_id('hypotenuseBValue').value;

  //Convert the values to integers
  const a_int = parseInt(a_value);
  const b_int = parseInt(b_value);

  //Calculate the hypotenuse
  const hypotenuse_value = hypotenuse(a_int, b_int);
  
  //Output the information to an HTML element
  //with an id of 'hypotenuseAnswer'
  get_id('hypotenuseAnswer').innerHTML = "The hypotenuse is: " + hypotenuse_value;
}

//Calculates the hypotenuse
//Given a and b.
function hypotenuse(a, b) {
  if (isNaN(a) || isNaN(b)) {
    return NaN;
  }
  return Math.sqrt(a**2 + b**2);
}