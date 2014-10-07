/*
 * Example of using variables
 */

//Integers - whole numbers, positive or negative
int w;

//Real numbers - numbers that include decimals
float h;

void setup() {
  size(500, 500);
  h = 5;
}

void draw() {
  background(0);
  ellipse(width/2, height/2, h, h);
  h = h + 1;
}

void mousePressed() {
  h = 5;
}

void keyPressed() {
  fill(random(255), random(255), random(255));
}
