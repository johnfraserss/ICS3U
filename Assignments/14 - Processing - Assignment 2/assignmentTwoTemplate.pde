boolean lines = true; //DO NOT DELETE THIS VARIABLE

//DO NOT CHANGE THIS SECTION
void setup() {
  size(600, 600);
}

//DO NOT CHANGE THIS SECTION
void draw() {
  background(255);
  if (lines) {
    drawLinesToMouse();
  } else {
    drawBubbles();
  } 
}

//DO NOT CHANGE THIS SECTION
void mousePressed() {
  lines = !lines;
}

void drawLinesToMouse() {
  //do all the work for the lines <-> mouse here
  //you will need to use for loops to complete this section
}

void drawBubbles() {
  //do all the bubble work here
  //you will need to make use of the dist() function
  //you might need more than one for loop for this section
}

