//moving ball variable creation
float x, y;
float xspeed, yspeed;
float radius;

void setup() {
  size(600, 600);
  
  //setting the variables' initial values
  x = width/2;
  y = height/2;
  xspeed = random(-10, 10);
  yspeed = random(-10, 10);
  radius = 25;
}

void draw() {
  background(0);
  display();
  update();
  checkEdges();
}

//display's the moving ball
void display() {
  fill(255);
  noStroke();
  ellipse(x, y, radius * 2, radius * 2);
}

//updates the position of the moving ball
void update() {
  x = x + xspeed;
  y = y + yspeed;
}

//checks what to do when we hit the edge of the screen
void checkEdges() {
  if (x < radius || x > width - radius) {
    xspeed = xspeed * -1;
  }
  if (y < radius || y > height - radius) {
    yspeed = yspeed * -1;
  }
}
