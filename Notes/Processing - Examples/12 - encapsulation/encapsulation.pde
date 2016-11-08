float x, y;   //position variables
float xspeed; //speed variable

void settings() {
  size(640, 480);
}

void setup() {
  x = width/2;
  y = 100;
  xspeed = 5;
}

void draw() {
  background(0);
  
  drawSystem();
  update();
  checkEdges(); //to bounce
}

void update() {
  //update the position of the circle based on the speed
  x = x + xspeed;
}

void checkEdges() {
  //check edges
  if (x > width - 10 || x < 10) {
    xspeed = xspeed * -1;
  }
}

void drawSystem() {
  stroke(255);
  strokeWeight(5);
  //center circle
  ellipse(width/2, height/2, 50, 50);

  //moving circle
  ellipse(x, y, 20, 20);
}