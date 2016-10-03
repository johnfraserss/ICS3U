/*
 * Everything related to fill
 */

void settings() {
  size(500, 500);
}

void setup() {
  //nothing here for now
}

void draw() {
  background(255); //white background
  
  noFill(); //no fill value
  ellipse(50, 50, 75, 25);
  
  fill(150); //single number is a greyscale value, values range from 0 -> 255
  rect(150, 150, 50, 50);
  
  //same as single number, but with an opacity value as the second number, 
  //values range from 0 - > 255 each
  fill(0, 150); 
  rect(250, 250, 50, 50);
  fill(200, 200);
  rect(275, 275, 50, 50);
 
  //three values uses a R, G, B (red, green, blue) colour system by default
  //the values range from 0 -> 255 each
  fill(255, 0, 0);  //red
  ellipse(400, 50, 50, 50);
  fill(0, 255, 0);  //green
  ellipse(400, 100, 50, 50);
  fill(0, 0, 255);  //blue
  ellipse(400, 150, 50, 50);
  
  fill(255, 255, 0); //yellow
  ellipse(400, 200, 50, 50); 
  fill(0, 255, 255); //cyan
  ellipse(400, 250, 50, 50); 
  fill(255, 0, 255); //magenta
  ellipse(400, 300, 50, 50);
  
  //four values uses a R, G, B, A (red, green, blue, alpha/opacity) setup
  //the values range from 0 -> 255 each
  //feel free to change the A value to play with what it looks like
  fill(255, 0, 0, 50);  //red
  ellipse(450, 50, 50, 50);
  fill(0, 255, 0, 50);  //green
  ellipse(450, 75, 50, 50);
  fill(0, 0, 255, 50);  //blue
  ellipse(450, 100, 50, 50);
  
  fill(255, 255, 0, 150); //yellow
  ellipse(450, 125, 50, 50); 
  fill(0, 255, 255, 150); //cyan
  ellipse(450, 150, 50, 50); 
  fill(255, 0, 255, 150); //magenta
  ellipse(450, 175, 50, 50);
  
}