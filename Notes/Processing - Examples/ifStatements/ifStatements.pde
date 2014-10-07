/*
 * Example using variables and if statements
 */
float h;

void setup() {
  size(500, 500);
  h = 5;
}

void draw() {
  background(0);
  ellipse(width/2, height/2, h, h);
  h = h + 1;
  
  // > < ==  <=  >= 
  // && and, 
  // || or
  if (h > 100 && h < 200) {
    h = 5;
  }
}

