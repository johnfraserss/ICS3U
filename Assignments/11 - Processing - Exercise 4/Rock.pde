float x;
float y;
float leftForce;
float rightForce;
float gravitySpeed = 0.8;

void setup() {
  size(640, 480);
  background(255);
  fill(155, 10);
  stroke(0);
  x = width/2;
  y = 0;
  //Need some code here
  
}

//Do not change the draw() function
void draw() {
  sketch();
  checkEdges();
  update();
}

//Do not change this function
void mousePressed() {
  if (mouseButton == LEFT) {
    applyLeftForce();
  } else if (mouseButton == RIGHT) {
    applyRightForce();
  }
}

//Do not change this function
void keyPressed() {
  y = 0;
}

//This function applies a force to the left as the rock falls
void applyLeftForce() {
  //Need code here
}

//This function applies a force to the right as the rock falls
void applyRightForce() {
  //Need code here
}

//This function updates the movement of the rock
void update() {
  //Need code here
}

//This function draws the rock on the screen
void sketch() {
  //Need code here
}

//This function checks to see if the rock is at the bottom
//of the screen
void checkEdges() {
  //Need code here
}
