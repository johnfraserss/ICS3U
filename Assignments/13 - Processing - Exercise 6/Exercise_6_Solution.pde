/*
 * Exercise 6
 * Solution
 */
 
float x, y;

void settings() {
  size(320, 600);  
}

void setup() {
  colorMode(HSB);
  x = 0;
  y = 0;
  noStroke();
}

void draw() {
  background(255);
  while (x < mouseX) {
    y = 0;
    while (y < mouseY) {
      fill(x*y%255, 255, 255);
      ellipse(10 + x, 10 + y, 10, 10);
      y += 10;
    }
    x += 10;
  }
  x = 0;
}