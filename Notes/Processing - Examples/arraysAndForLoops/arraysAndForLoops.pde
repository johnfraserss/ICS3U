ArrayList<Mover> movers;

void setup() {
  size(displayWidth, displayHeight);
  movers = new ArrayList<Mover>();
  for (int i = 0; i < 50; i++) {
    movers.add(new Mover(width/2, height/2));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < movers.size(); i++) {
    movers.get(i).display();
    movers.get(i).update();
    movers.get(i).checkEdges();
  }
}

/* Notes from board:

ArrayList have:
  .add()
  .get()
  .remove()
  .size()


For Loop structure:

         A         B     C
for (int i = 0; i < 50; i++) {
}

Section A: is the declaration of a 
           temporary variable and the 
           value it will start with

Section B: while this condition is true
           continue looping
           
Section C: what to do when the loop restarts
           i++ is the same as i = i + 1


*/

