/*
 * Example of using variables (both built-in, and custom)
 */

//Real numbers - numbers that include decimals
float diameter; //diameter of circle

void settings() {
  size(500, 500);
}

void setup() {
  diameter = 5;    //set diameter to start at 5
}

//draw an ever-growing circle
void draw() {
  background(0);
  fill(255);
  stroke(255);
  ellipse(width/2, height/2, diameter, diameter);
  fill(50, 250, 50);
  stroke(50, 50, 250);
  ellipse(mouseX, mouseY, 25, 25);
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