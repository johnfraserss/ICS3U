//Points array of PVectors
PVector [] points;
//TO DO: Might need another variable here

void setup() {
  size(600, 600);
  //TO DO: Will need more set up information here
}

void draw() {
  background(255);

  //TO DO: need code here to draw points and lines

  textSize(20);
  text("The area of the triangle is: " + calculateArea(points) + " pixels²", 50, 50);
}

void mousePressed() {
  //TO DO: create or move the points
}

float calculateArea(PVector [] trianglePoints) {
  //create area variable to hold area of triangle
  float area = 0;

  //check to see we have 3 points in the array
  for (int i = 0; i < trianglePoints.length; i++) { 
    if (trianglePoints[i] == null || !(trianglePoints[i] instanceof PVector) ) {
      return area;
    }
  }

  //TO DO: calculate the area of the triangle here 
  return area;
}

