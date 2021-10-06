PImage Smash;
float x1, y1, x2, y2;
float speedX1, speedX2;

void setup() {
  size(800,600, P2D);
  Smash = loadImage("smash.jpg");
  Smash.resize(Smash.width, Smash.height);
  imageMode(CENTER);
  
  x1 = width/2;
  y1 = height/2;
  x2 = x1 + 80;
  y2 = y1 - 80;
  speedX1 = 2;
  speedX2 = speedX1 * 0.5;
}

void draw() {
  background(45, 90, 25);
    
  tint(200, 100);
  image(Smash, x2, y2);
  
  noTint();
  image(Smash, x1, y1); // the image drawn last will be in front
  
  x1 += speedX1;
  x2 += speedX2;
    
  if (x1 > width || x1 < 0) {
    speedX1 *= -1;  
    speedX2 *= -1;
  }
}
