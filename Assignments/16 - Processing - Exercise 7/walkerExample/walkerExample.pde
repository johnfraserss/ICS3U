float x;
ArrayList<PImage> walking = new ArrayList<PImage>();

void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < 9; i++) {
    walking.add(loadImage("data/Walking000" + (i + 1) + ".png"));
  }
  for (int i = 10; i < 22; i++) {
    walking.add(loadImage("data/Walking00" + (i + 1) + ".png"));
  }
  x = 0;
}

void draw() {
  background(0);
  imageMode(CENTER);
  PImage current = walking.get(int(frameCount/4.5) % walking.size()); 
  image(current, x, height/2);
  if (x > width + current.width/2) {
    x = -current.width;
  }
  x = x + 1.5;
}
  


