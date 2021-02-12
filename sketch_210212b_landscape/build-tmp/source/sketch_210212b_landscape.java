import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_210212b_landscape extends PApplet {

int x1 = 50;
int y1 = 500;

public void setup() {
  
  background(255);
  strokeWeight(0.1f);
  noLoop();
  
  //noFill();

}

public void draw() {
  
  // shift the whole to position on canvas
  // translate(-50, 100);
  
  // repeat
  int i = 0;
  while (i < 200) {
  
  // random par 1 & 2
  int par1 = PApplet.parseInt(random(100,300));
  int par2 = PApplet.parseInt(random(600,800));

  int rndL = PApplet.parseInt(random(par1,par2));

  // random y2
  int rndY2 = PApplet.parseInt(random(-20,20));
  int newY2 = y1 + rndY2;

  // shape
  line(x1, y1, x1 + rndL, newY2);

  // random value to change position of new line
  int rndV = PApplet.parseInt(random(-40,40));

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
  public void settings() {  size(2000, 1000);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_210212b_landscape" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
