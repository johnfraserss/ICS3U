//Variables for position
float x;
float y;

//Variables for left and right forces
float leftForce;
float rightForce;
float gravitySpeed = 0.8;

/** This sets up the screen for the start of the program
  * REQUIRES SOME CODE TO BE ADDED
  */
void setup() {
  size(640, 480);
  background(255);
  fill(155, 10);
  stroke(0);
  x = width/2;
  y = 0;
  //Need some code here
  
}

/** This draws the program 60 times per second
  * DO NOT CHANGE THIS CODE
  */
void draw() {
 background(0);
  sketch();
  checkEdges();
  update();
}

/** This applies a left or right force
  * DO NOT CHANGE THIS CODE
  */
void mousePressed() {
  if (mouseButton == LEFT) {
    applyLeftForce();
  } else if (mouseButton == RIGHT) {
    applyRightForce();
  }
}

/** This resets the rock to the beginning
  * DO NOT CHANGE THIS CODE
  */
void keyPressed() {
  y = 0;
  
}

/** This function applies a force to the left as the rock falls
  * REQUIRES SOME CODE TO BE ADDED
  */
void applyLeftForce() {
  //Need code here
}

/** This function applies a force to the right as the rock falls
  * REQUIRES SOME CODE TO BE ADDED
  */
void applyRightForce() {
  //Need code here
}

/** This function updates the rock behaviour
  * REQUIRES SOME CODE TO BE ADDED
  */
void update() {
  //Need code here
}

/** This function draws the rock on the screen
  * REQUIRES SOME CODE TO BE ADDED
  */
void sketch() {
  //Need code here
}

/** This checks to see if the rock has hit the bottom of the screen
  * REQUIRES SOME CODE TO BE ADDED
  */
void checkEdges() {
  //Need code here
}
