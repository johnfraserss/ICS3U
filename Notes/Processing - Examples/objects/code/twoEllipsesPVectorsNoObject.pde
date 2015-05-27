//moving ball variable creation
PVector location1;
PVector velocity1;

//second moving ball variable creation
PVector location2;
PVector velocity2;

float radius;

void setup() {
  size(600, 600);
  
  //setting the variables' initial values
  location1 = new PVector(width/2, height/2);
  location2 = new PVector(width/2, height/2);
  velocity1 = new PVector(random(-10, 10), random(-10, 10));
  velocity2 = new PVector(random(-10, 10), random(-10, 10));
  
  radius = 25;
}

void draw() {
  background(0);
  display();
  update();
  checkEdges();
}

//displaying both moving balls at the same time
void display() {
  fill(255);
  noStroke();
  ellipse(location1.x, location1.y, radius * 2, radius * 2);
  ellipse(location2.x, location2.y, radius * 2, radius * 2);
}

//update both moving balls at the same time
void update() {
  location1.add(velocity1);
  location2.add(velocity2);
}

//check the edges of both moving balls at the same time
void checkEdges() {
  if (location1.x < radius || location1.x > width - radius) {
    velocity1.x = velocity1.x * -1;
  }
  if (location1.y < radius || location1.y > height - radius) {
    velocity1.y = velocity1.y * -1;
  }

  if (location2.x < radius || location2.x > width - radius) {
    velocity2.x = velocity1.x * -1;
  }
  if (location2.y < radius || location2.y > height - radius) {
    velocity2.y = velocity2.y * -1;
  }
}
