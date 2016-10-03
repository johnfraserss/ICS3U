void settings() {
  size(600, 600);
}
void setup() {

}
void draw() {
  background(255);
  //Rectangles
  fill(255, 0, 0); //red
  rectMode(CORNER); //(x, y) is top left corner
  rect(0, 0, 50, 50);
  
  fill(0, 255, 0); //green
  rectMode(CORNERS); //(x, y) is top left, (w, h) is bottom right corner rather than width and height
  rect(0, 100, 50, 200);
  
  fill(0, 0, 255); //blue
  rectMode(CENTER); //(x,y) is center of rectangle
  rect(50, 250, 50, 50);
  
  //Quad
  fill(255, 255, 0); //yellow
  quad(50, 300, 20, 400, 70, 425, 80, 290);
  
  //Triangles
  fill(0, 255, 255); //cyan
  triangle(25, 475, 100, 475, 63, 450);
  
  //Lines
  strokeWeight(10); //easier to see the line
  stroke(255, 0, 255); //magenta
  line(50, 500, 300, 500);
  
  //Point
  strokeWeight(7); //easier to see the point
  stroke(0, 100, 0); //green
  point(250, 400); 
  
  //Ellipse
  strokeWeight(2);
  stroke(0); //black
  fill(150); //grey
  ellipse(250, 350, 30, 30);
  
  strokeWeight(15);
  stroke(200); //grey
  noFill();
  ellipse(250, 250, 30, 30);
  
  //Arcs
  strokeWeight(5);
  stroke(255, 0, 0); //yellow
  fill(255, 255, 0); //red
  arc(500, 100, 130, 130, radians(0), radians(135));
  point(500, 100); //red dot, center of circle
  
  //similar to not having a 7th argument, but creates
  //lines that go to the center of the circle
  stroke(150, 255, 0); //green
  fill(255, 150, 0); //orange
  arc(500, 200, 130, 130, radians(0), radians(135), PIE);
  point(500, 200); //green dot (can't be seen), center of circle
  
  //cuts a line from one end of the arc to the other
  //without going through the center
  stroke(0, 0, 255); //blue
  fill(255, 0, 255); //magenta
  arc(500, 300, 130, 130, radians(0), radians(135), CHORD);
  point(500, 300); //blue dot, center of circle
  
  //similar to chord, but without the stroke line connecting
  //the two arc ends
  stroke(0, 100, 100); //green
  fill(0, 255, 255); //cyan
  arc(500, 400, 130, 130, radians(0), radians(135), OPEN);
  point(500, 400); //green dot, center of circle
  
  //reset stroke/fill before wrapping back around
  fill(255);
  stroke(0);
  strokeWeight(1);
}