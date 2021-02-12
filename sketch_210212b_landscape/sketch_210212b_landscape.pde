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
  while (i < 200) {
  
  // random par 1 & 2
  int par1 = int(random(100,300));
  int par2 = int(random(600,800));

  int rndL = int(random(par1,par2));

  // random y2
  int rndY2 = int(random(-20,20));
  int newY2 = y1 + rndY2;

  // shape
  line(x1, y1, x1 + rndL, newY2);

  // random value to change position of new line
  int rndV = int(random(-40,40));

  // new line starts where old line ends + random value
  x1 = x1 + rndL + rndV;
  y1 = newY2 + rndV;

  if (x1 > width) {
    x1 = 0;
  }
  if (y1 > height + 100) {
    y1 = height/2;
  }
  
  // repeat
  i++;
  }

// Saves a PNG"
save("landscape.png");
}