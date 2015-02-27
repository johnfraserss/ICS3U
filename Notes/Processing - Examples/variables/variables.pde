/*
 * Example of using variables
 */

//Real numbers - numbers that include decimals
float diameter; //diameter of circle

void setup() {
  size(500, 500);
  diameter = 5;
}

//draw an ever-growing circle
void draw() {
  background(0);
  ellipse(width/2, height/2, diameter, diameter);
  diameter = diameter + 1;
}

//change diameter back to 5 on mouse click
void mousePressed() {
  diameter = 5;
}

//pick a new colour based on key press
void keyPressed() {
  fill(random(255), random(255), random(255));
}
