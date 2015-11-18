ArrayList<Mover> movers;

void setup() {
  size(600, 600);
  movers = new ArrayList<Mover>();
  movers.add(new Mover(width/2, height/2)); //add a single mover to the ArrayList
}

void draw() {
  background(0);
  for (int i = 0; i < movers.size (); i++) {
    movers.get(i).display();
    movers.get(i).update();
    movers.get(i).checkEdges();
  }
  while (movers.size () > 1000) {     //if there's more than 1000 movers
    movers.remove(movers.size() - 1); //remove the newest ones
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    if (movers.size() > 0 && movers.size() < 1000) {
      for (int i = movers.size (); i > 0; i--) {
        movers.add(new Mover(width/2, height/2)); //double the movers
      }
    } else {
      movers.add(new Mover(width/2, height/2));   //add a single mover
    }
  } else if (mouseButton == RIGHT) {
    if (movers.size() > 0) {
      for (int i = movers.size ()/2; i >=0; i--) { //remove half the movers
        movers.remove(0);
      }
    }
  }
}

/* 
 ArrayLists have:
 .add()
 .get()
 .remove()
 .insert()
 .size()
 */
