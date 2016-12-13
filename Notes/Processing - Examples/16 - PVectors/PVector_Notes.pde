PVector location; //float x, y;
PVector velocity; //float xspeed, yspeed;

void settings() {
  size(600, 600);
}

void setup() {
  location = new PVector(width/2.0, height/2.0); //used to be x and y
  velocity = new PVector(0, 0);              //used to be xspeed, yspeed
  //x = width/2;
  //y = height/2;
  //xspeed = 0;
  //yspeed = 0;
}

void draw() {
  background(0);
  update();
  display();
}

void update() {
  location.add(velocity);
  //x = x + velocity.x;
  //y = y + velocity.y;
}

void display() {
  fill(255);
  ellipse(location.x, location.y, 50, 50);
}

void mousePressed() {
  velocity = new PVector(random(-2, 2), random(-2, 2));
  //xspeed = random(-2, 2);
  //yspeed = random(-2, 2);
}

/*

  PVectors are containers that hold 2 values.
  We use the values as an (x,y) coordinate, or
  an (xSpeed, ySpeed) type of pair.  This means
  that every PVector has a x-component, and a 
  y-component.  We can expand what we are using
  to include something like acceleration.
  
  You'll notice that we use the keyword "new"
  when we create a new PVector.  This is because
  Java/Processing is telling the computer to
  hold enough memory for storing all of what
  a PVector is.  This is also known as creating
  a new Object.  Objects are denoted by the fact
  that they have a capital letter when they are
  created.  You've seen an objects before: 
  String!  You could find the length of a String
  using:
  
  String words;
  println(words.length());
  
  Notice how length is a function in this case, 
  as denoted by the parentheses after the word "length".
  
  PVectors have a bunch of functions available 
  to them as well.  Check out the reference
  on the Processing site for more information:
  
  https://processing.org/reference/PVector.html
  
  
*/