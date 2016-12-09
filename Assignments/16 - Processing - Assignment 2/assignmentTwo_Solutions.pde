boolean screen = true; 

void setup() {
  size(600, 600);
}

//DO NOT CHANGE THIS SECTION
void draw() {
  background(255);
  if (screen) {
    drawLinesToMouse();
  } else {
    drawBubbles();
  } 
}

//DO NOT CHANGE THIS SECTION
void mousePressed() {
  screen = !screen;
}

void drawLinesToMouse() {
  strokeWeight(2);

  //draws lines
  for (int i = 0; i <= width; i += width/25) {
    stroke((dist(0, 0, i, 0) % 150) + 50, 255, 255);
    line(mouseX, mouseY, i, 0);
    line(mouseX, mouseY, i, height);
  }
  
  //deals with the text on the lines screen 
  textSize(width/50);
  fill(50);
  if (mouseX < width/2) {
    textAlign(LEFT);
    shift = width/7;
  } else {
    textAlign(RIGHT);
    shift = -width/7;
  }
  float y = map(mouseY, 0, height, 40, height - 20);
  text("Click to get to the other screen", mouseX + shift, y);
  fill(0);
}

void drawBubbles() {
  int numberOfCircles = 15;
  
  //draws the (numberOfCircles) by (numberOfCircles) circles
  noStroke();
  for (int x = width/numberOfCircles/2; x < width; x += width/numberOfCircles) {
    for (int y = height/numberOfCircles/2; y < height; y += height/numberOfCircles) {
      if (dist(x, y, mouseX, mouseY) > width/4) {
        fill(dist(x, y, mouseX, mouseY)/2 % 150, 255, 255, (255 - dist(x, y, mouseX, mouseY) * 1/3)); 
        ellipse(x, y, width/numberOfCircles, height/numberOfCircles);
      }
    }
  }
  textAlign(CENTER);
  fill(0);

  textSize(width/40);
  text("Click to get to the other screen", mouseX, mouseY);
}