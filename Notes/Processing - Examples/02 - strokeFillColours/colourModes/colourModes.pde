/*
 * Everything related to the two colour modes (RGB, and HSB)
 */

void settings() {
  size(500, 500);
}

void setup() {
  //nothing here for now
}

void draw() {
  background(255); //white background
  colorMode(HSB, 255, 255, 255); //force HSB to be 255, 255, 255 maximums
  //colorMode(RGB, 255, 255, 255); //uses the RGB mode instead if you uncomment this line
  
  //three values uses a H, S, B, (Hue, Saturation, Brightness)
  //the values range from: 0 -> 255 each (as stated above
  fill(0, 255, 255);  //red
  ellipse(400, 50, 50, 50);
  fill(90, 255, 255);  //green
  ellipse(400, 100, 50, 50);
  fill(180, 255, 255);  //blue
  ellipse(400, 150, 50, 50);
  
  //four values uses a H, S, B, A (hue, saturation, brightness, alpha/opacity) setup
  //the values range from 0 -> 255 each
  //feel free to change the A value to play with what it looks like
  fill(0, 255, 255, 150);  //red
  ellipse(450, 50, 50, 50);
  fill(67, 255, 255, 150);  //green
  ellipse(450, 75, 50, 50);
  fill(181, 255, 255, 150);  //blue
  ellipse(450, 100, 50, 50);
  
  //this color mode might be harder to grasp, but it is easier to
  //get multi-color drawing easier in the future.
  //we will revisit this when we get to variables, and in loops
  
}