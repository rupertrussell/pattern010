// Created with Processing see processing.org
// Licensed under Creative Commons Attribution ShareAlike
// https://creativecommons.org/licenses/by-sa/3.0
// https://creativecommons.org/licenses/GPL/2.0/
// http://www.redbubble.com/people/rupertrussell
// triangles_005_001
// 20170205 

PVector a;
PVector b;
PVector c;
float shrink = .9;
float grey=0;
float len = 15000;  // ensure that this is larger thatn the camvas
boolean black = true;

void setup () {
  size(7048, 7048);
  background(255);
  noLoop();
  smooth();
  strokeWeight(1);
  stroke(grey);
  int size = 9000;
  a = new PVector(-size, -size, 0);
  b = new PVector(size, -size, 0);
  c = new PVector(0, size, 0);
}

void draw () {
  translate(width / 2, height /2);

  a.setMag(len);
  b.setMag(len);
  c.setMag(len);

  while (len   > 1) {

    if(black){
      fill(0);
      black = false;
    }
    else{
      fill(255);
      black = true;
    }
    
    len = len -50;  // Shrink the triangle each itteration by this ammount
    a.setMag(len);
    b.setMag(len);
    c.setMag(len);

    triangle(a.x, a.y, b.x, b.y, c.x, c.y);
    rotate(radians(-0.5));
    println ("len " +  len);
  }
  save("triangle_7048.png");
  exit();
}
