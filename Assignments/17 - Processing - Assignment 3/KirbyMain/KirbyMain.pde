/*  There is no NEED to change anything other than the sections suggested.
 *  However, if you want, you can add more, or change things as you see 
 *  fit.
 */

Kirby k;

void setup() {
  size(700, 500);
  k = new Kirby(width/2, height*13/16);
}

void draw() {
  background(0);
  k.display();
}

void keyPressed() {
  if (key == 'M' || key == 'm') {
    //fill in the mirroring information here
  }
}

