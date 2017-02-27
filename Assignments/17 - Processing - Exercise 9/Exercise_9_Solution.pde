/*
 * Exercise #9 for ICS3U
 * Solution
 */
float [] xValues;
float [] yValues;

boolean done; //used to figure out when we are done collecting values

int counter; //used to count how many times we've clicked the mouse

void settings() {
  size(600, 600);
}

void setup() {
  xValues = new float[50];
  yValues = new float[50];

  done = false;

  counter = 0;
}

void draw() {
  background(0);

  if (done) {  //this is the same as 'if (done == true) {'
    stroke(255);
    strokeWeight(5);
    for (int i = 1; i < xValues.length; i++) {
      line(xValues[i-1], yValues[i-1], xValues[i], yValues[i]);
    }
  }
}

void mousePressed() {
  if (counter < 50) {
    xValues[counter] = mouseX;
    yValues[counter] = mouseY;

    counter += 1;
  }
  if (counter >= 50) {
    done = true;
  }
}