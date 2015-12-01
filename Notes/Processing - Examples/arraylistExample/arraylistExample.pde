ArrayList<Mover> movers;

void settings() {
  size(600, 600);
}

void setup() {
  movers = new ArrayList<Mover>();
  movers.add(new Mover(new PVector(width/2, height/2)));
}

void draw() {
  background(0);
  for (int i = 0; i < movers.size(); i++) {
    movers.get(i).run();
  }
}

void mousePressed() {
  for (int i = 0; i < 10; i++) {

    movers.add(new Mover(new PVector(width/2, height/2)));
  }
}

void keyPressed() {
  if (key == 'c' || key == 'C') { //empty arraylist, then add 1 new one back in
    movers.clear();
    movers.add(new Mover(new PVector(width/2, height/2)));
  }
  if (movers.size() > 1) { //force to keep 1 on the screen
    movers.remove(0);
  }
}