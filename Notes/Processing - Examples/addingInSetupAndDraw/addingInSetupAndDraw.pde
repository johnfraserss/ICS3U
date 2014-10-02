void setup() { //Runs once
  //set up the screen
  size(500, 500);
}

void draw() { //Runs 30 times per second
  //set background to white
  background(255);
  
  //strokeWeight(1);
  //draw a circle in the middle
  ellipse(width/2, height/2, 50, 50);

  //draw a line to the middle of the screen
  stroke(50, 50, 150); 
  strokeWeight(5);  
  line(0, 0, width/2, height/2);
  //line(mouseX, mouseY, width/2, height/2);
}
