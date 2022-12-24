/**
  * This function is a quality of life function. It is used so that we don't have to type document.getElementById all the time 
  */
function getId(id) {
  return document.getElementById(id);
}

/**
 * Toggles a button given the id
 */
function toggleButton(id) {
  const button = getId(id);
  if (button.disabled === true) {
    button.disabled = false;
  } else {
    button.disabled = true;
  }
}

/**
 * Prints out information into the paragraph tag with ID of id
 */
function makeCookie(id) {
  const p = getId(id);
  p.innerHTML = p.innerHTML + 'Cookies!<br/>';
}