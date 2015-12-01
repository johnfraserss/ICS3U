class Mover {
  PVector location;
  PVector velocity;
  float diameter, r, g, b;

  Mover(PVector position) {
    location = new PVector(position.x, position.y);
    velocity = new PVector(random(-5, 5), random(-5, 5));
    diameter = abs((velocity.x + 1) * 10);
    r = random(255);
    g = random(255);
    b = random(255);
  }

  void display() {
    fill(r, g, b);
    stroke(r, g, b);
    ellipse(location.x, location.y, diameter, diameter);
  }

  void checkEdges() {
    if ((location.x > width - diameter/2) || location.x < diameter/2) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height - diameter/2) || location.y < diameter/2) {
      velocity.y = velocity.y * -1;
    }
  }
  
  void update() {
    location.add(velocity);
  }
  
  void run() {
    display();
    checkEdges();
    update();
  }
  
}