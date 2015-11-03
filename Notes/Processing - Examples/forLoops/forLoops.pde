void settings() {
  size(600, 600);
}

void setup() {
}

void draw() {
  
  //another count up example using rectangles
  for (int i = width/2; i < width - 50; i = i + 50) {
    rect(i, 50, 50, 50);
  }
  
  //count down version using ellipses
  for (int i = width/2; i > 50; i = i - 10) {
    ellipse(width/2, height/2, i, i);
  }
}


/*

The generic setup of a for loop is as follows:

for (int i = startValue; i < endValue; i = i + increment) {
  //code here 
}

"int i = startValue;": creates an integer 'i' which will 
                       hold different values within the for 
                       loop, starting at "startValue"

"i < endValue;": is the condition (like an if statement)
                 where "while this is true, keep going"
              
"i = i + increment;": is the section where the 'i' value
                      increases based on the increment.
                      Typically this value is 1, and 
                      is normally written in it's short
                      form of 'i++'

*/

  