ArrayList<PVector> circleLocations; //using 2D vector for circle positions
ArrayList<PVector> circleSpeeds;    //using 2D vector for circle speeds
ArrayList<PVector> circleColours;   //using 3D vector for colours (R, G, B)
ArrayList<PVector> circleSizes;     //using 2D vector for width/height of circles

int quantity, radius;
float score;
int blackClicks, whiteClicks, colouredClicks;
int stopTime;
boolean gameOver, instructionScreen;

void settings() {
  fullScreen();
}

void setup() {
  circleLocations = new ArrayList<PVector>();
  circleSpeeds = new ArrayList<PVector>();
  circleColours = new ArrayList<PVector>();
  circleSizes = new ArrayList<PVector>();

  gameOver = false;
  instructionScreen = true;

  quantity = 1;
  score = 0;
  blackClicks = 0;
  whiteClicks = 0;
  colouredClicks = 0;
  stopTime = 60;
  radius = 25;
  rectMode(CENTER);
}

void draw() {

  background(255);
  noStroke();

  drawSpawnPoints();
  displayMovingCircles();
  moveCircles();
  textArea();

  if (frameCount % 3600 == 0) {
    gameOver = true;
  }

  if (gameOver && !instructionScreen) {
    drawGameOverScreen();
  } else if (instructionScreen) {
    drawInstructionScreen();
  }

  if (!gameOver) {

    if (frameCount % 150 == 0) {
      generateCircles(new PVector(width/2+50, height * 1/4 + 50));
    } else if (frameCount % 120 == 0) { 
      generateCircles(new PVector(width/2-250, height * 1/4 + 50));
    } else if (frameCount % 90 == 0) {
      generateCircles(new PVector(width/2-250, height * 3/4 - 50));
    } else if (frameCount % 60 == 0) {
      generateCircles(new PVector(width/2+50, height * 3/4 - 50));
    }
  }
}

void drawSpawnPoints() {
  //draw spawn points
  stroke(50, 50);
  noFill();
  rect(width/2+50, height * 1/4 + 50, 50, 50);
  rect(width/2-250, height * 1/4 + 50, 50, 50);
  rect(width/2-250, height * 3/4 - 50, 50, 50);
  rect(width/2+50, height * 3/4 - 50, 50, 50);
}

void displayMovingCircles() {
  for (int i = 0; i < circleLocations.size(); i++) {
    PVector loc = circleLocations.get(i);
    PVector col = circleColours.get(i);
    PVector rad = circleSizes.get(i);

    if (col.x == 255 && col.y == 255 && col.z == 255) {
      stroke(0);
    } else {
      noStroke();
    }
    fill(col.x, col.y, col.z); //using x,y,z as r,g,b
    ellipse(loc.x, loc.y, rad.x*2, rad.y*2);
  }
}

void moveCircles() {
  for (int i = 0; i < circleLocations.size(); i++) {
    PVector loc = circleLocations.get(i);
    PVector speed = circleSpeeds.get(i);
    PVector rad = circleSizes.get(i);

    loc.add(speed);

    if (loc.x > width - 195 - rad.x || loc.x < rad.x) {
      speed.x *= -1;
    }
    if (loc.y > height - rad.y || loc.y < rad.y) {
      speed.y *= -1;
    }
  }
}

void generateCircles(PVector spawnPoint) {
  int growth = radius/3 + 6 * quantity;
  if (frameCount % 600 == 0) {
    quantity += 1;

    radius -= 3;
  }

  for (int i = 0; i < quantity; i++) {
    circleLocations.add(new PVector(spawnPoint.x, spawnPoint.y));
    circleSpeeds.add(new PVector(random(-2, 2), random(-2, 2)));

    int randomColor = int(random(0, 3));
    if (randomColor == 0) {
      circleColours.add(new PVector(random(100, 255), random(100, 255), random(100, 255)));
      circleSizes.add(new PVector(radius, radius));
    } else if (randomColor == 1) {
      circleColours.add(new PVector(0, 0, 0));
      circleSizes.add(new PVector(growth, growth));
    } else if (randomColor == 2) {
      circleColours.add(new PVector(255, 255, 255));
      circleSizes.add(new PVector(radius, radius));
    }
  }
}
void mousePressed() {
  //generate 10 circles per mouse click
  if (!gameOver) {
    pop();
  }
  if (instructionScreen) {
    instructionScreen = false; 
  }
  if (mouseX > width - 190 && mouseY > height - 50) {
    reset();
    gameOver = false;
    frameCount = 0;
  } else if (mouseX > width - 190 && mouseY > height - 50) {
    reset();
    instructionScreen = true;
    frameCount = 0;
  }
  println(frameCount);
}

void keyPressed() {
  gameOver = true;
}

void pop() {
  for (int i = circleLocations.size() - 1; i >= 0; i--) {
    PVector col = circleColours.get(i);
    PVector loc = circleLocations.get(i);
    PVector rad = circleSizes.get(i);
    if (dist(mouseX, mouseY, loc.x, loc.y) < rad.x) {
      if (col.x == 255 && col.y == 255 && col.y == 255) {
        score += 1 - (rad.x / 100.0);
        whiteClicks++;
      } else if (col.x == 0 && col.y == 0 && col.y == 0) {
        score -= 2;
        blackClicks++;
        if (score < 0) {
          score = 0;
        }
      } else { 
        score += 1 + (rad.x / 100.0);
        colouredClicks++;
      }
      circleColours.remove(i);
      circleLocations.remove(i);
      circleSpeeds.remove(i);
      circleSizes.remove(i);
    }
  }
}

void reset() {
  circleLocations.clear();
  circleSpeeds.clear();
  circleColours.clear();
  circleSizes.clear();

  quantity = 1;
  score = 0;
  rectMode(CENTER);

  whiteClicks = 0;
  colouredClicks = 0;
  blackClicks = 0;

  stopTime = 60;
  radius = 25;
}

void textArea() {
  stroke(0);
  strokeWeight(10);
  fill(0);
  textSize(30);
  line(width - 190, 0, width - 190, height);
  text("Score\n" + int(score * 10) / 10.0, width - 150, 50);

  textSize(20);
  text("# white: " + whiteClicks, width - 150, 250);
  text("# color: " + colouredClicks, width - 150, 350);
  text("# black: " + blackClicks, width - 150, 450);

  strokeWeight(1);
  if (!gameOver) {
    stopTime = 60 - int(frameCount / 60);
  }
  textSize(90);
  text(stopTime, width - 150, 650);
}

void drawGameOverScreen() {
  pushStyle();
  stroke(0);
  fill(255, 0, 255);
  textSize(100);
  textAlign(CENTER);
  text("GAME\nOVER", width/2 - 100, height/2 - 40);
  rectMode(CORNER);
  rect(width - 185, height - 50, 190, 50);
  fill(255);
  textSize(40);
  textAlign(LEFT);
  text("Restart", width - 160, height - 10);
  popStyle();
}

void drawInstructionScreen() {
  background(255);
  fill(0);
  textSize(20);
  text("Click on the coloured, or white circles to gain points\n" +
    "you get more points if you click on the coloured circles\n" +
    "If you click on the black circles, you lose 2 points\n\n" +
    "Get as many points as you can before time runs out!\n\n" +
    "Click to start the game", 100, 100);
  reset();
}
