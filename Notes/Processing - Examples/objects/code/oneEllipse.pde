float x, y;
float xspeed, yspeed;

void setup() {
  size(600, 600);
  x = width/2;
  y = height/2;

  xspeed = random(-10, 10);
  yspeed = random(-10, 10);
}

void draw() {
  background(0);
  display();
  update();
  checkEdges();
}

void display() {
  fill(255);
  noStroke();
  ellipse(x, y, 50, 50);
  ellipse(x2, y2, 50, 50);
}

void update() {
  x = x + xspeed;
  y = y + yspeed;

}

void checkEdges() {
  if (x < 25 || x > width - 25) {
    xspeed = xspeed * -1;
  }
  if (y < 25 || y > height - 25) {
    yspeed = yspeed * -1;
  }
}