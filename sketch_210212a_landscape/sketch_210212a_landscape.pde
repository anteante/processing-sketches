int x1 = 50;
int y1 = 500;

void setup() {
  size(2000, 1000);
  background(255);
  strokeWeight(0.1);
  noLoop();
  smooth();
  //noFill();

}

void draw() {
  
  // shift the whole to position on canvas
  // translate(-50, 100);
  
  // repeat
  int i = 0;
  while (i < 600) {
  
  // random lenght 
  int rndL = int(random(20,200));

  // random y2
  int rndY2 = int(random(-20,20));
  int newY2 = y1+rndY2;

  // shape
  line(x1, y1, x1+rndL, newY2);

  // new line starts where old line ends
  x1 = x1+rndL;
  y1 = newY2;

  if (x1 > width) {
    x1 = 0;
  }
  if (y1 > height) {
    y1 = height/2;
  }
  
  // repeat
  i++;
  }

// Saves a PNG"
save("landscape.png");
}