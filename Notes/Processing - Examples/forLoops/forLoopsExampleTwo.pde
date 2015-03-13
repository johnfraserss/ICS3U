void setup() {
  size(600, 600);
  background(0);
  noStroke();
}

void draw() {
  for (int i = width; i > 10; i = i - 5) {
    if (i/2 > 255) {
      fill(0);
    } 
    else {
      fill(255-i/2);
    }
    ellipse(width/2, height/2, i, i);
  }
}

