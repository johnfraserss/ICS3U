/*
 * Exercise 7 for ICS3U
 * Solution
 */

int x, y;

void settings() {
  size(320, 600);
}

void setup() {
  colorMode(HSB, 255, 255, 255);

  //top circles
  x = y = 10;
  background(255);
  stroke(0);
  for (int i = 0; i < 256; i++) {
    fill(i, 255, 255);
    ellipse(x, y, 20, 20);
    x += 20;
    if (x > width) {
      x = 10;
      y += 20;
    }
  }
  
  //bottom circle
  noStroke();
  for (int i = width * 2/3; i >= 0; i -= 2) {
    fill(i, 255, 255);
    ellipse(width/2, height * 3/4, i, i);
  }
}

void draw() {
  
}