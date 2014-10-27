Mover m;
Mover m2;

void setup() {
  size(600, 600);
  m = new Mover(width/2, height/2);
  m2 = new Mover(width/2, height/2);
}

void draw() {
  background(0);
  m.display();
  m.update();
  m.checkEdges();

  m2.display();
  m2.update();
  m2.checkEdges();
}