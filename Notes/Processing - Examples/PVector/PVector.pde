PVector location; //float x, y;
PVector velocity; //float xspeed, yspeed;

void setup() {
  size(600, 600);
  location = new PVector(width/2, height/2);
  velocity = new PVector(0, 0);
  //x = width/2;
  //y = height/2;
  //xspeed = 0;
  //yspeed = 0;
}

void draw() {
  background(0);
  update();
  display();
}

void update() {
  location.add(velocity);
  //x = x + velocity.x;
  //y = y + velocity.y;
}

void display() {
  fill(255);
  ellipse(location.x, location.y, 50, 50);
}

void mousePressed() {
  velocity = new PVector(random(-2, 2), random(-2, 2));
  //xspeed = random(-2, 2);
  //yspeed = random(-2, 2);
}
