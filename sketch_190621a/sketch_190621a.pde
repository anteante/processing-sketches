void setup() {
  size(1000, 500);
  background(255);
  // turn loop on - it's fun!
  noLoop();
  //noFill();
}

void draw() {
  translate(-50, 100);
  
  int i = 0;
  while (i < 50) {
  
  int rx1 = int(random(0,50));
  int rx2 = int(random(50,100));
  
  int ry1 = int(random(200,300));
  int ry2 = int(random(100,200));
  int ry3 = int(random(200,400));
  
  int tx = int(random(0,50));
  int ty = int(random(-50,50));
  
  beginShape();
    vertex(rx1,ry1);
    vertex(rx1,ry2);
    vertex(rx2,ry2);
    vertex(rx2,ry3);
  endShape();
  translate(tx, ty);
  i++;
  }
}


//void house() {
//  beginShape();
//  vertex(100,200);
//  vertex(100,50);
//  vertex(200,50);
//  vertex(200,100);
//  endShape();
//}
