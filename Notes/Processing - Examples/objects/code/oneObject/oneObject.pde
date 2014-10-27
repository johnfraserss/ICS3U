Mover m;

void setup() {
  size(600, 600);
  m = new Mover(width/2, height/2);
}

void draw() {
  background(0);
  m.display();
  m.update();
  m.checkEdges();
}