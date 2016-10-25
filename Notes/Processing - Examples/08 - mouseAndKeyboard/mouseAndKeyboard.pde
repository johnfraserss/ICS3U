float x, y, diameter;

void settings() {  
  size(600, 600);
}

void setup() { 
  x = 0;
  y = 0;
  diameter = 5;
}

void draw() {
  ellipse(x, y, diameter, diameter);
}

//used when a key is pressed
//can specify particular keys using: key == ' '
void keyPressed() {
  if (key == ' ' || key == 'a' || key == 'A') {
    x += 5;
    y += 5;
  } else {
    x -= 5;
    y -= 5;
  }
}

//mouseClicked, mousePressed, mouseReleased
//  and mouseDragged available
//
//Can specify a particular mouse button pressed
//using mouseButton == LEFT (or RIGHT or MIDDLE)
void mouseClicked() {
  if (mouseButton == LEFT) {
    diameter += 5;
  } else if (mouseButton == RIGHT) {
    diameter -= 5;
  }
}