/*
 *  Examples of using some built in functions and variables
 */
 
void settings() {
  size(600, 600);
}

void setup() {
}

void draw() {
  //mouseX - gives you the x-position of the mouse cursor
  //mouseY - gives you the y-position of the mouse cursor
  ellipse(mouseX, mouseY, 50, 50);
  
  //width - calculates the width of the window
  //height - calculates the height of the window
  rect(width/2, height/2, 50, 50);

  //random(-5, 5) - gives you a random number between -5 and 5
  //random(255)   - gives you a random number between 0  and 255
  triangle(random(25, 50), random(150), 130, 100, 150, 220);
  
  
}

//This function will allow you to different things
//when a key is pressed
void keyPressed() {
  stroke(random(255), random(255), random(255));  
}

//This function will allow you to different things
//when the mouse is "clicked" (pressed and released)
void mouseClicked() {
  fill(random(255), random(255), random(255));
}