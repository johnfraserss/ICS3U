Mover m;  //create a new variable to hold a mover

void setup() {
  size(600, 600);
  m = new Mover(width/2, height/2); //create a new instance of that Mover object
}

void draw() {
  background(0);
  
  //display, update, and check the edges of the mover
  m.display();
  m.update();
  m.checkEdges();
}
