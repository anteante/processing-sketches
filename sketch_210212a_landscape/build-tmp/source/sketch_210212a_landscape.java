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

public class sketch_210212a_landscape extends PApplet {

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
  while (i < 600) {
  
  // random lenght 
  int rndL = PApplet.parseInt(random(20,200));

  // random y2
  int rndY2 = PApplet.parseInt(random(-20,20));
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
  public void settings() {  size(2000, 1000);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_210212a_landscape" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
