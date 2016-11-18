float [] randomXValues;

void settings() {
  size(600, 600);
}

void setup() {
  colorMode(HSB, 255, 255, 255);
  randomXValues = new float[width/10];

  for (int i = 0; i < randomXValues.length; i++) {
    randomXValues[i] = random(0, width);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < randomXValues.length; i++) {
    stroke(3*i);
    line(randomXValues[i], 0, mouseX, mouseY);
    stroke(255 - 3*i, 255, 255);
    line(randomXValues[i], height, mouseX, mouseY);
  }
}

void mousePressed() {
  //set new random values
  for (int i = 0; i < randomXValues.length; i++) {
    randomXValues[i] = random(0, width);
  }
}

/*
An array can be of any data type (int, float, String, etc.)
To set up an array, you have an example below (using floats):

float [] array;
void setup() {
  array = new float[50];  //creates space for 50 float values to be held in the array.
}

or, you can always set up an array directly at creation.

float [] array = {5, 4, 2.3, 3, 2.3, 5.2, 3};

This will create an array on the spot with given values.

The only issue with arrays is that they cannot change in size.  Once you set a
size at the beginning of the program, that is the size it is going to be.

There will be special arrays that we use later in the course that can change size.
*/
