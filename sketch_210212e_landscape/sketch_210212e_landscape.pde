int x1 = 50;
int y1 = 600;

int i = 0;

void setup() {
  size(2400, 1800);
  background(255);
  // noLoop();
  smooth(2);
  //noFill();

  // horizon
  int newHrz = int(random(300,height/2));
  strokeWeight(0.5);
  line(0, newHrz, width, newHrz);

  // other lines
  strokeWeight(2);

}

void draw() {
  
  // repeat
  while (i < 64) {
  
  // random switch long & short line
  int rndSwitch = int(random(1,10));
  int rndLength; // line length
  int rndY2; // y2 position = slant

  // ration of short and long lines 
  // > 5 = more long lines
  // < 5 = more short lines
  if (rndSwitch > 5) {
    rndLength = int(random(100,200));
    // small random y2 for short lines
    rndY2 = int(random(-6,6));
  } else {
    rndLength = int(random(400,800));
    // bigger random y2 for longer lines
    rndY2 = int(random(-60,60));
  }

  int newY2 = y1 + rndY2;

  // shape
  jLine(x1, y1, x1 + rndLength, newY2);

  // random value to change position of new line
  int rndV = int(random(-20,120));

  // new line starts where old line ends + random value
  x1 = x1 + rndLength + rndV;
  y1 = newY2 + rndV;

  if (x1 > width) {
    x1 = 0;
  }
  if (y1 > height + 100) {
    y1 = height/2;
  } else if (y1 < 300) {
    y1 = height/2;
  }
  
  i++;

  }

  // Saves a PNG"
  // save("landscape.png");

}

// line jitter
void jLine( float x1, float y1, float x2, float y2 ) {
  beginShape();
  vertex( x1 + random(-2,2), y1 +random(-2,2));
  curveVertex( x1 + random(-2,2), y1 +random(-2,2));
  curveVertex( x1+(x2 -x1)/3 + random(-2,2), y1 + (y2-y1)/3 +random(-2,2));
  curveVertex( x1+2*(x2-x1)/3 + random(-2,2), y1+ 2*(y2-y1)/3 +random(-2,2)); 
  curveVertex( x2 + random(-2,2), y2 +random(-2,2));
  vertex( x2 + random(-2,2), y2 +random(-2,2));
  endShape();  

  beginShape();
  vertex( x1 + random(-1,1), y1 +random(-1,1));
  curveVertex( x1 + random(-1,1), y1 +random(-1,1));
  curveVertex( x1+(x2 -x1)/3 + random(-1,1), y1 + (y2-y1)/3 +random(-1,1));
  curveVertex( x1+2*(x2-x1)/3 + random(-1,1), y1+ 2*(y2-y1)/3 +random(-1,1)); 
  curveVertex( x2 + random(-1,1), y2 +random(-1,1));
  vertex( x2 + random(-1,1), y2 +random(-1,1));
  endShape();  
}
