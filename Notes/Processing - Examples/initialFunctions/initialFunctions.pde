float x, y;   //position variables
float xspeed; //speed variable

void setup() {
  size(640, 480);
  x = width/2;
  y = 100;
  xspeed = 5;
}

void draw() {
  background(0);
  
  drawSystem();
  update();
  checkEdges();
  writeTextToScreen();
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

  //line connecting them
  line(width/2, height/2, x, y);
}

void writeTextToScreen() {
  //value for distance
  float distance = dist(width/2, height/2, x, y);
  
  textSize(32);
  fill(255);
  text(String.valueOf(distance), width/2 + 50, height/2 + 50);
}

