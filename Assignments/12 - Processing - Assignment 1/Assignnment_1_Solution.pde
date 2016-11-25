/*
 * Assignment #1 for ICS3U
 * Solution
 */
float rotationValueOfMoon, moonSpeed;
float rotationOfSmallCircles;

void settings() {
  size(600, 600);
}

void setup() {
  rotationValueOfMoon = 0;
  rotationOfSmallCircles = 0;
  moonSpeed = 1;
}

void draw() {
  background(0);
  
  //draw centre circle
  colorMode(RGB);
  fill(255);
  stroke(255);
  ellipse(width/2, height/2, 50, 50);
  
  if (mouseX > width/2 - 100 &&
    mouseX < width/2 + 100 &&
    mouseY > height/2 - 100 &&
    mouseY < height/2 + 100) {
      //if mouse over the centre
      
    //draw rectangle
    rectMode(CENTER);
    strokeWeight(5);
    stroke(255);
    noFill();
    rect(width/2, height/2, 100, 100);

    //draw inner black circle
    fill(0);
    ellipse(width/2, height/2, 50, 50);
    
    //draw all little horizontal coloured circles
    colorMode(HSB);
    stroke(rotationOfSmallCircles % 255, 255, 255);
    strokeWeight(20);
    noFill();
    arc(width/2, height/2, 400, 135, radians(rotationOfSmallCircles), radians(rotationOfSmallCircles+0.01));
    arc(width/2, height/2, 400, 135, radians(rotationOfSmallCircles + 45), radians(rotationOfSmallCircles+45.01));
    arc(width/2, height/2, 400, 135, radians(rotationOfSmallCircles + 90), radians(rotationOfSmallCircles+90.01));
    arc(width/2, height/2, 400, 135, radians(rotationOfSmallCircles + 135), radians(rotationOfSmallCircles+135.01));
    arc(width/2, height/2, 400, 135, radians(rotationOfSmallCircles + 180), radians(rotationOfSmallCircles+180.01));
    arc(width/2, height/2, 400, 135, radians(rotationOfSmallCircles + 225), radians(rotationOfSmallCircles+225.01));
    arc(width/2, height/2, 400, 135, radians(rotationOfSmallCircles + 270), radians(rotationOfSmallCircles+270.01));
    arc(width/2, height/2, 400, 135, radians(rotationOfSmallCircles + 315), radians(rotationOfSmallCircles+315.01));
    
    //update position of small circles
    //and set the direction of the moon
    rotationOfSmallCircles += 2;
    moonSpeed = -1; //moves the moon backwards
  } else {
    //if mouse not in centre
    colorMode(HSB);
    
    //draw all little vertical coloured circles
    stroke(rotationOfSmallCircles % 255, 255, 255);
    strokeWeight(20);
    noFill();
    arc(width/2, height/2, 50, 320, radians(rotationOfSmallCircles), radians(rotationOfSmallCircles+0.01));
    arc(width/2, height/2, 50, 320, radians(rotationOfSmallCircles + 45), radians(rotationOfSmallCircles+45.01));
    arc(width/2, height/2, 50, 320, radians(rotationOfSmallCircles + 90), radians(rotationOfSmallCircles+90.01));
    arc(width/2, height/2, 50, 320, radians(rotationOfSmallCircles + 135), radians(rotationOfSmallCircles+135.01));
    arc(width/2, height/2, 50, 320, radians(rotationOfSmallCircles + 180), radians(rotationOfSmallCircles+180.01));
    arc(width/2, height/2, 50, 320, radians(rotationOfSmallCircles + 225), radians(rotationOfSmallCircles+225.01));
    arc(width/2, height/2, 50, 320, radians(rotationOfSmallCircles + 270), radians(rotationOfSmallCircles+270.01));
    arc(width/2, height/2, 50, 320, radians(rotationOfSmallCircles + 315), radians(rotationOfSmallCircles+315.01));
    
    //update position of small circles
    //and set the direction of the moon
    rotationOfSmallCircles += 2;
    moonSpeed = 1;
  }

  //draw with outer circle (moon)
  colorMode(RGB);
  stroke(rotationValueOfMoon);
  strokeWeight(30);
  noFill();
  arc(width/2, height/2, 450, 450, radians(rotationValueOfMoon), radians(rotationValueOfMoon+0.01));
  
  //update positioning of moon
  rotationValueOfMoon += moonSpeed;
  if (rotationValueOfMoon < 0) {
    rotationValueOfMoon = 0;
  }
  if (rotationValueOfMoon > 360) {
    rotationValueOfMoon = 360;
  }
}