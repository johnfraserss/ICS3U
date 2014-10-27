float x, y;
float xspeed, yspeed;

float x2, y2;
float x2speed, y2speed;

void setup() {
  size(600, 600);
  x = width/2;
  y = height/2;
  x2 = x;
  y2 = y;

  xspeed = random(-10, 10);
  yspeed = random(-10, 10);
  x2speed = random(-10, 10);
  y2speed = random(-10, 10);
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

  x2 = x2 + x2speed;
  y2 = y2 + y2speed;
}

void checkEdges() {
  if (x < 25 || x > width - 25) {
    xspeed = xspeed * -1;
  }
  if (y < 25 || y > height - 25) {
    yspeed = yspeed * -1;
  }

  if (x2 < 25 || x2 > width - 25) {
    x2speed = x2speed * -1;
  }
  if (y2 < 25 || y2 > height - 25) {
    y2speed = y2speed * -1;
  }
}