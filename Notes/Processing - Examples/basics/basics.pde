/*
 * Example of using basics
 */

void settings() {
  size(500, 500);
}

void setup() {
  
}

//draw an ever-growing circle
void draw() {
  background(0);
  fill(25, 255, 255);
  ellipse(50, 50, 75, 25);
  fill(50);
  ellipse(250, 250, 50, 50);
}