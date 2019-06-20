int i = 5;

void setup() {
  size(960, 480);
  background(255);
  noLoop();
  noFill();
}

void draw() {
  int j = 0;
  while (i < width-20) {
    j = int(random(2,40));
    rect(i, 320+(random(-j, j)), j, random(-j, j)*4);
    i = i + j;
  } 
}
