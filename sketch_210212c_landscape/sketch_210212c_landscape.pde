int x1 = 50;
int y1 = 500;

void setup() {
  size(2000, 1000);
  background(255);
  strokeWeight(0.2);
  noLoop();
  smooth();
  //noFill();

}

void draw() {
  
  // shift the whole to position on canvas
  // translate(-50, 100);
  
  // repeat
  int i = 0;
  while (i < 42) {
  
  // random switch long & short line
  int rndSwitch = int(random(1,10));
  int rndLength; // line length
  int rndY2; // y2 position = slant

  if (rndSwitch > 8) {
    rndLength = int(random(100,200));
    // small random y2 for short lines
    rndY2 = int(random(-4,4));
  } else {
    rndLength = int(random(400,1200));
    // bigger random y2 for longer lines
    rndY2 = int(random(-40,40));
  }

  int newY2 = y1 + rndY2;

  // shape
  line(x1, y1, x1 + rndLength, newY2);

  // random value to change position of new line
  int rndV = int(random(-40,40));

  // new line starts where old line ends + random value
  x1 = x1 + rndLength + rndV;
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
// save("landscape.png");
}