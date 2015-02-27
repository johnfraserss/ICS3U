/*
 * Example using variables and if statements
 */
float diameter; //diameter used for circle

void setup() {
  size(500, 500);
  diameter = 5; //start circle at a visible amount of 5 pixels
}

void draw() {
  background(0);
  ellipse(width/2, height/2, diameter, diameter);
  diameter = diameter + 1;
  
  /* 
     Possible conditional statement comparisons
     
     greater than ">" 
     less than "<"
     equal to "=="
     greater than or equal to ">="
     less than or equal to "<="
     AND "&&"
     OR "||"
  */
  if (diameter > 100 && diameter < 200) {
    diameter = 5; //when the diameter goes above 100 
                  //(and is less than 200 (which is 
                  //always true in this case)) reset it back to 5
  }
}

