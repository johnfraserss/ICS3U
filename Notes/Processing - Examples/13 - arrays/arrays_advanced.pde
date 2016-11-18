float [] randomXValues;

void settings() {
  size(600, 600);
}

void setup() {
  colorMode(HSB, 255, 255, 255);
  randomXValues = new float[width/20];

  for (int i = 0; i < randomXValues.length; i++) {
    randomXValues[i] = random(0, width);
  }
  randomXValues = sort(randomXValues);
}

void draw() {
  background(0);
  for (int i = 0; i < randomXValues.length; i++) {
    line(randomXValues[i], height, randomXValues[i], 0);
  }
  fill(0);
  stroke(0);
  triangle(randomXValues[0], 0, randomXValues[randomXValues.length - 1], 0, mouseX, mouseY);
  triangle(randomXValues[0], height, randomXValues[randomXValues.length - 1], height, mouseX, mouseY);
  for (int i = 0; i < randomXValues.length; i++) {
    stroke(3*i+100);
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
  randomXValues = sort(randomXValues);
}