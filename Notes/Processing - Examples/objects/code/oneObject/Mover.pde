class Mover {
  //instance variables
  float x, y;
  float xspeed, yspeed;
  float radius;

  //Constructor (the blueprint on what to do when you build a new Mover object)
  Mover(float xpos, float ypos) {
    x = xpos;
    y = ypos;
    xspeed = random(-10, 10);
    yspeed = random(-10, 10);
    radius = random(25, 50);
  }

  //how to draw the Mover
  void display() {
    fill(255);
    noStroke();
    ellipse(x, y, radius * 2, radius * 2);
  }

  //how to update the Mover
  void update() {
    x = x + xspeed;
    y = y + yspeed;
  }

  //how to deal with the edges of the screen
  void checkEdges() {
    if (x < radius || x > width - radius) {
      xspeed = xspeed * -1;
    }
    if (y < radius || y > height - radius) {
      yspeed = yspeed * -1;
    }
  }
}
