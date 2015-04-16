class Mover {
  //instance variables
  PVector location;
  PVector velocity;
  float radius;

  //Constructor (the blueprint on what to do when you build a new Mover object)
  Mover(float xpos, float ypos) {
    location = new PVector(xpos, ypos);
    velocity = new PVector(random(-10, 10), random(-10, 10));
    radius = random(25, 50);
  }

  //how to draw the Mover
  void display() {
    fill(255);
    noStroke();
    ellipse(location.x, location.y, radius * 2, radius * 2);
  }

  //how to update the Mover
  void update() {
    location.add(velocity);
  }

  //how to deal with the edges of the screen
  void checkEdges() {
    if (location.x < radius || location.x > width - radius) {
      velocity.x = velocity.x * -1;
    }
    if (location.y < radius || location.y > height - radius) {
      velocity.y = velocity.y * -1;
    }
  }
}
