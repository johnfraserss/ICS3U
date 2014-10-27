class Mover {
  float x, y;
  float xspeed, yspeed;
  float diameter;

  Mover(float xpos, float ypos) {
    x = xpos;
    y = ypos;
    xspeed = random(-10, 10);
    yspeed = random(-10, 10);
    diameter = 50;
  }

  void display() {
    fill(255);
    noStroke();
    ellipse(x, y, diameter, diameter);
  }

  void update() {
    x = x + xspeed;
    y = y + yspeed;
  }

  void checkEdges() {
    if (x < diameter/2 || x > width - diameter/2) {
      xspeed = xspeed * -1;
    }
    if (y < diameter/2 || y > height - diameter/2) {
      yspeed = yspeed * -1;
    }
  }
}
