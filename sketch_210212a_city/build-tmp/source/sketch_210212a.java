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

public class sketch_210212a extends PApplet {

public void setup() {
  
  background(255);
  // turn loop on - it's fun!
  noLoop();
  //noFill();
}

public void draw() {
  
  // shift the whole to position on canvas
  translate(-50, 100);
  
  // repeats
  int i = 0;
  while (i < 50) {
  
  // random x coords
  int rx1 = PApplet.parseInt(random(0,50));
  int rx2 = PApplet.parseInt(random(50,100));

  // random y coords
  int ry1 = PApplet.parseInt(random(200,300));
  int ry2 = PApplet.parseInt(random(100,200));
  int ry3 = PApplet.parseInt(random(200,400));
 
  // shape
  beginShape();
    vertex(rx1,ry1);
    vertex(rx1,ry2);
    vertex(rx2,ry2);
    vertex(rx2,ry3);
  endShape();
  
  // transform pos with every iteration
  int tx = PApplet.parseInt(random(0,50));
  int ty = PApplet.parseInt(random(-50,50));
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
  public void settings() {  size(1000, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_210212a" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
