/*  There is no NEED to change anything other than the sections suggested.
 *  However, if you want, you can add more, or change things as you see 
 *  fit.
 */
 
class Kirby {
  float x, y;
  //you will need another variable here to deal with the mirroring
  ArrayList<PImage> basicActionOne;
  ArrayList<PImage> basicActionTwo;
  ArrayList<PImage> basicActionThree;
  ArrayList<PImage> attackActionOne;
  ArrayList<PImage> attackActionTwo;
  ArrayList<PImage> spinAttack;
  ArrayList<PImage> idleExpression;

  Kirby(float x_, float y_) {
    x = x_;
    y = y_;
    basicActionOne = new ArrayList<PImage>();
    basicActionTwo = new ArrayList<PImage>();
    basicActionThree = new ArrayList<PImage>();
    attackActionOne = new ArrayList<PImage>();
    attackActionTwo = new ArrayList<PImage>();
    spinAttack = new ArrayList<PImage>();
    idleExpression = new ArrayList<PImage>();

    //add in all information here for the arrays of pictures
  }

  void display() {
    if (keyPressed == true) {
      if (key == 'A' || key == 'a') {
        basicActionOne();
      } else if (key == 'S' || key == 's') {
        basicActionTwo();
      } else if (key == 'D' || key == 'd') {
        basicActionThree();
      } else if (key == 'G' || key == 'g') {
        attackActionOne();
      } else if (key == 'H' || key == 'h') {
        attackActionTwo();
      } else if (key == 'K' || key == 'k') {
        spinAttack();
      }
    } else {
      idleExpression();
    }
  }

  void basicActionOne() {
    //insert display information here for basic action #1
  }

  void basicActionTwo() {
    //insert display information here for basic action #2
  }

  void basicActionThree() {
    //insert display information here for basic action #3
  }

  void attackActionOne() {
    //insert display information here for attack action #1
  }

  void attackActionTwo() {
    //insert display information here for attack action #2
  }

  void spinAttack() {
    //insert display information here for spin attack
  }

  void idleExpression() {
    //insert display information here for idle expression
  }
}

