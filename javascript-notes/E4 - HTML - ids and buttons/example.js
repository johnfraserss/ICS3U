/**
  * This function is a quality of life function. It is used so that we don't have to type document.getElementById all the time 
  */
function get_id(id) {
  return document.getElementById(id);
}

/**
 * Toggles a button given the id
 */
function toggle_button(id) {
  const button = get_id(id);
  if (button.disabled === true) {
    button.disabled = false;
  } else {
    button.disabled = true;
  }
}

/**
 * Prints out information into the paragraph tag with ID of id
 */
function make_cookie(id) {
  const p = get_id(id);
  p.innerHTML = p.innerHTML + 'Cookies!<br/>';
}