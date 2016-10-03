/*
 * Everything related to stroke
 */

void settings() {
  size(500, 500);
}

void setup() {
  //nothing here for now
}

void draw() {
  background(150); //grey background
  
  noStroke(); //remove the stroke lines around shapes
  fill(255);  //set colour of fill to white for majority of shapes
  
  //create an ellipse
  ellipse(50, 50, 75, 25);
  
  //create a rectangle
  rect(150, 350, 50, 50);
  
  //create a triangle
  triangle(250, 250, 300, 250, 275, 200); 
  
  //line connecting the ellipse and rect
  strokeWeight(10); //set the stroke weight to 10 pixels wide
  stroke(0);  //set the stroke colour to black
  line(50, 50, 150, 350);
  
  //line connecting the ellipse and triangle
  strokeWeight(5); //set the strokeWeight to 5 pixels
  stroke(50, 255, 255);
  line(50, 50, 250, 250);
  
  //line connecting the rect and triangle
  strokeWeight(1); //set the strokeWeight to 1 pixel
  stroke(255, 255, 255);
  line(150, 350, 250, 250);
  
  //Stroke Capping options
  //https://processing.org/reference/strokeCap_.html
  stroke(0); //setting lines to black
  strokeWeight(12);
  strokeCap(ROUND);  //makes the ends round
  line(320, 30, 380, 30);
  strokeCap(SQUARE); //makes the ends square at the point where the round part would start
  line(320, 50, 380, 50);
  strokeCap(PROJECT); //makes the ends square at the point where the round part would end
  line(320, 70, 380, 70);
  //end Stroke Cap example
  
  
  //Stroke Join example
  //The blue triangles
  //create another triangle with rounded corners
  strokeWeight(15);
  stroke(50, 50, 255);
  fill(50, 50, 255);
  strokeJoin(ROUND);
  triangle(350, 250, 400, 250, 375, 200);
  
  strokeJoin(BEVEL);
  triangle(350, 350, 400, 350, 375, 300);

  strokeJoin(MITER);
  triangle(350, 450, 400, 450, 375, 400);
  //end Stroke Join examples
}