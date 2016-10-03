/*
 * Example of using basics
 */

void settings() {
  size(500, 500);
}

void setup() {
  //nothing here for now
}

//draw a circle and rectangle of different colors
void draw() {
  background(0); //black background
  
  fill(25, 255, 255);
  ellipse(50, 50, 75, 25);
  
  fill(150);
  rect(250, 250, 50, 50);
}