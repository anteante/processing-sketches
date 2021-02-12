void setup() {
  size(1000, 500);
  background(255);
  // turn loop on - it's fun!
  noLoop();
  //noFill();
}

void draw() {
  
  // shift the whole to position on canvas
  translate(-50, 100);
  
  // repeats
  int i = 0;
  while (i < 50) {
  
  // random x coords
  int rx1 = int(random(0,50));
  int rx2 = int(random(50,100));

  // random y coords
  int ry1 = int(random(200,300));
  int ry2 = int(random(100,200));
  int ry3 = int(random(200,400));
 
  // shape
  beginShape();
    vertex(rx1,ry1);
    vertex(rx1,ry2);
    vertex(rx2,ry2);
    vertex(rx2,ry3);
  endShape();
  
  // transform pos with every iteration
  int tx = int(random(0,50));
  int ty = int(random(-50,50));
  translate(tx, ty);
  
  // repeat
  i++;
  }

// Saves a PNG"
save("city.png");
}




//void house() {
//  beginShape();
//  vertex(100,200);
//  vertex(100,50);
//  vertex(200,50);
//  vertex(200,100);
//  endShape();
//}