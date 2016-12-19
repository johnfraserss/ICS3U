ArrayList<PVector> circleLocations; //using 2D vector for circle positions
ArrayList<PVector> circleSpeeds;    //using 2D vector for circle speeds
ArrayList<PVector> circleColours;   //using 3D vector for colours (R, G, B)

void settings() {
  size(600, 600);
}

void setup() {
  circleLocations = new ArrayList<PVector>();
  circleLocations.add(new PVector(width/2, height/2));
  
  circleSpeeds = new ArrayList<PVector>();
  circleSpeeds.add(new PVector(random(-2, 2), random(-2, 2)));

  circleColours = new ArrayList<PVector>();
  circleColours.add(new PVector(random(100, 255), random(100, 255), random(100, 255)));
}

void draw() {
  background(0);
  noStroke();
  displayMovingCircles();
  moveCircles();
}

void displayMovingCircles() {
  for (int i = 0; i < circleLocations.size(); i++) {
    PVector loc = circleLocations.get(i);
    PVector col = circleColours.get(i);

    fill(col.x, col.y, col.z, 100); //using x,y,z as r,g,b
    ellipse(loc.x, loc.y, 50, 50);
  }
}

void moveCircles() {
  for (int i = 0; i < circleLocations.size(); i++) {
    PVector loc = circleLocations.get(i);
    PVector speed = circleSpeeds.get(i);

    loc.add(speed);
    
    if (loc.x > width - 25 || loc.x < 25) {
      speed.x *= -1;
    }
    if (loc.y > height - 25 || loc.y < 25) {
      speed.y *= -1;
    }
  }
}

void mouseClicked() {
  //generate 10 circles per mouse click
  for (int i = 0; i < 10; i++) {
    circleLocations.add(new PVector(width/2, height/2));
    circleSpeeds.add(new PVector(random(-2, 2), random(-2, 2)));
    circleColours.add(new PVector(random(100, 255), random(100, 255), random(100, 255)));
  }
}

void keyPressed() {
  if (key == 'c' || key == 'C') { //empty arraylist, then add 1 new one back in
    circleLocations.clear();
    circleLocations.add(new PVector(width/2, height/2));

    circleSpeeds.clear();
    circleSpeeds.add(new PVector(random(-2, 2), random(-2, 2)));

    circleColours.clear();
    circleColours.add(new PVector(random(100, 255), random(100, 255), random(100, 255)));
  }

  if (circleLocations.size() > 1) { //force to keep 1 on the screen
    circleLocations.remove(0);
    circleSpeeds.remove(0);
    circleColours.remove(0);
  }
}

/*
An arraylist is a malleable array.  It can change
size, whereas a basic array cannot.  This can prove
useful if we don't know how many items we are planning
to put in an array, or we want to save memory by
not having empty array elements.

The general way to set up and use an arraylist is 
shown below.

ArrayList<DataType> variable;
variable = new ArrayList<DataType>();

For the second line, if you don't put a value in the
() portion of the code, then it will give you an
empty arraylist to start.  This is generally how we 
use arraylists, so that we can grow them as needed.

Arraylists have a bunch of functions you can do on
them:

.size() //will return the size of the arraylist currently
.add(___) //will add an item to the arraylist
.remove(index) //will remove an item at the index given
.clear() //will empty the array entirely
.get(index) //will retrieve the item at the index given so that you can use it
.set(index, ___) //will overwrite an item at index with a new item
.isEmpty() //will return if the arraylist is empty

*/