void settings() {
  /* 
     Set the size equal
     to whatever is on the first line
     of the text file. 
  */
  size(500, 600);  
}

void setup() {
  String [] file = loadStrings("G:\\exercise_10.txt");
  
  String [] line1 = file[1].split(","); //get values
  int w_min = int(line1[1]);
  int w_max = int(line1[2]);
  int h_min = int(line1[3]);
  int h_max = int(line1[4]);
  
  //read the rest of the lines
  //starting at line 2 until the end
  //as these are all the coordinates
  //for the rectangles or circles
  noStroke();
  for (int i = 2; i < file.length; i++) {
    String [] line = file[i].split(","); //get x, y
    float x = float(line[0]);
    float y = float(line[1]);
    float randomWidth = random(w_min, w_max);
    float randomHeight = random(h_min, h_max);
    
    fill(i*20 % 255, 50); //add a random greyscale fill    
    ellipse(x, y, randomWidth, randomHeight);
  }
}

void draw() {
  //does nothing in this case
  //all drawing is happening in setup
}