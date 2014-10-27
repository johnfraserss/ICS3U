class Mover {
  //instance variables
  float x, y;
  float xspeed, yspeed;
  float diameter;

  //Constructor (the blueprint on what to do when you build a new Mover object)
  Mover(float xpos, float ypos) {
    x = xpos;
    y = ypos;
    xspeed = random(-10, 10);
    yspeed = random(-10, 10);
    diameter = 50;
  }

  //how to draw the Mover
  void display() {
    fill(255);
    noStroke();
    ellipse(x, y, diameter, diameter);
  }

  //how to update the Mover
  void update() {
    x = x + xspeed;
    y = y + yspeed;
  }

  //how to deal with the edges of the screen
  void checkEdges() {
    if (x < diameter/2 || x > width - diameter/2) {
      xspeed = xspeed * -1;
    }
    if (y < diameter/2 || y > height - diameter/2) {
      yspeed = yspeed * -1;
    }
  }
}
