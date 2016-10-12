/*
 * Example using conditionals (if statements)
 */
float diameter;

void settings() {
  size(500, 500);
}

void setup() {
  diameter = 5;
}

void draw() {
  background(0);
  strokeWeight(10);
  ellipse(width/2, height/2, diameter, diameter);
  diameter = diameter + 1;


  if (diameter > 300) {
    diameter = 5; //when the diameter goes above 300 reset it back to 5
  }
  
  if (diameter > 75 && diameter < 100) {
    fill(random(255), random(255), random(255));
  } else if (diameter > 150 && diameter < 200) { 
    stroke(random(255), random(255), random(255));
  } else {
    fill(255);
  }
}


/* 
 Conditional statements
 ----------------------
 Conditional statements (also known as if statements), are used to complete a task if
 the condition(s) within the parentheses evaluates to true.  If it evaluates to false,
 it skips that particular if statement, and if there are other connected statements, it
 will attempt to evaluate those before moving on with the program.
 
 For example, in the above program, the conditional that is written as:
    if (diameter > 300) { ... }
 will only evaluate to true when the diameter is greater than 300.  If this is true, then
 the code within the braces will be executed.
 
 The other example, in the above program, the conditions are written as: 
    if (diameter > 75 && diameter < 100) {
      //...
    } else if (diameter > 150 && diameter < 200) {
      //...
    } else {
      //...
    }
 In this case, if the first condition is evaluated to false (diameter > 75 && diameter < 100),
 then it will test the next if statement, as it is connected through the words "else if".  If
 this condition is false (diameter > 150 && diameter < 200), then the program will move on to
 the next "else if" statement.  There is none in this case, so the final statement will run
 (the "else" statement).  The "else" statement is like a catch-all kind of statement, stating
 "if all the above conditions did not evaluate to true, then run this code".
 
 
 Conditional comparison operators
 --------------------------------
 
 greater than ">" 
 less than "<"
 equal to "=="
 greater than or equal to ">="
 less than or equal to "<="
 AND "&&"
 OR "||"
 
 
 */