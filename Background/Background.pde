PImage Smash;
float X1, Y1, x2, Y2;
float speedX1, speedX2;

void setup() {
  size(800,600, P2D);
  Smash = loadImage("smash.jpg");
  Smash.resize(Smash.width, Smash.height);
  imageMode(CENTER);
  
  X1 = width/2;
  Y1 = height/2;
  x2 = X1 + 80;
  Y2 = Y1 - 80;
  speedX1 = 2;
  speedX2 = speedX1 * 0.6;
}

void draw() {
  background(45, 90, 25);
    
  tint(200, 100);
  image(Smash, x2, Y2);
  
  noTint();
  image(Smash, X1, Y1); 
  
  X1 += speedX1;
  x2 += speedX2;
    
  if (X1 > width || X1 < 0) {
    speedX1 *= -1;  
    speedX2 *= -1;
  }
}
