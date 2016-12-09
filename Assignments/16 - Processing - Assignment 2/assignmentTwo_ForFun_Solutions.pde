int screen = 1;
int shift = 0;
String words = "Best screen, ever!";

float rotationValue;
float colouredOrbitDiameter, colouredOrbitSpeed;

void setup() {
  colorMode(HSB, 255, 255, 255);

  size(600, 600);
  
  //used on the rotating orbital circles screen
  rotationValue = 0;  
  colouredOrbitDiameter = 0;
  colouredOrbitSpeed = 1;
}

void draw() {
  background(255);
  if (screen == 1) {
    drawBubbles();
  } else if (screen == 2) {
    drawLinesToMouse();
  } else if (screen == 3) {
    drawOrbits();
  } else {
    drawWords();
    noLoop(); //to make the words not continuously change size
  }
}

//DO NOT CHANGE THIS SECTION
void mousePressed() {
  if (screen < 4) {
    screen++;
  } else {
    screen = 1;
    loop(); //makes it so the rest of the screens can animate
  }
}

void keyPressed() {
  if (screen == 4) {
     loop(); //makes a new generation of letters
  }
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

void drawWords() {
  
  //draws all the words that are in the 
  //"words" global variable
  pushMatrix();
  float y = map(mouseY, 0, height, 50, height-50);
  translate(mouseX - textWidth(words)/2, y);
  char k;
  colorMode(HSB, 255, 255, 255);
  for (int i=0; i < words.length(); i++) {
    k = words.toLowerCase().charAt(i);
    fill((i*20) % 255, 255, 255);
    textSize(random(10, 50));
    text(k, 0, 0);
    translate(textWidth(k)+5, random(-5, 5));
  }
  popMatrix();
  textSize(25);
  text("Press a key", 50, height - 50);
}

void drawOrbits() {
  background(255);
  stroke(255, 0, 0);
  strokeWeight(50);
  noFill();
  for (int i = 0; i < 360; i = i + 19) {
    stroke(i % 255, 255, 255);
    strokeWeight(i / 360.0 * 50);
    arc(width/2, height/2, width/5, height/2, i + rotationValue, i + rotationValue + 0.03);
    arc(width/2, height/2, width/5, height/2, i + PI + rotationValue, i + PI + rotationValue + 0.03);
    arc(width/2, height/2, width/2, height/5, i + rotationValue, i + rotationValue + 0.03);
    arc(width/2, height/2, width/2, height/5, i + PI + rotationValue, i + rotationValue + PI + 0.03);
    arc(width/2, height/2, 500, 500, i + rotationValue, i + rotationValue + 0.03);
    arc(width/2, height/2, 500, 500, i + rotationValue + PI, i + rotationValue + PI + 0.03);
  }
  colouredOrbitDiameter += colouredOrbitSpeed;
  rotationValue += 0.1;
  if (colouredOrbitDiameter > height/2) {
    colouredOrbitSpeed *= -1;
  }
}