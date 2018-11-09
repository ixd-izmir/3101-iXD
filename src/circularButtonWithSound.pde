/* 
 ixd3101f18 - [circularButtonWithSound]
 in-class exercise
 [nov9fri]
 [@Ceren Kayalar]
*/
 
import processing.sound.*;

SqrOsc sqr;
SinOsc sine;

int r = 100;

void setup() {
  size(400, 400);
  rectMode(CENTER);
  noStroke();
  
  sqr = new SqrOsc(this);
  sine = new SinOsc(this);
}

void draw() {
  background(122);
  
  // Map mouseY from 0.0 to 1.0 for amplitude
  float amplitude = map(mouseY, 0, height, 1.0, 0.0);
  sine.amp(amplitude);
  
  // Map mouseX from 20Hz to 1000Hz for frequency
  float frequency = map(mouseX, 0, width, 20.0, 1000.0);
  sqr.freq(frequency);
  sqr.amp(amplitude);
  sine.freq(frequency);
  
  noStroke();
  int d=int(dist(mouseX, mouseY, width/2, height/2));

  if (d < r){
    // cursor inside ellipse
    fill(244, 122, 122, 100);
    if (mousePressed) {
      ellipse(width/2, height/2, 2.5*r, 2.5*r);
      sine.play();
      sqr.stop();
    }
    else {
      sine.stop();
      sqr.play();
    }
  }
  else {
    // cursor outside ellipse
      fill(122, 122, 244);
      sqr.stop();
      sine.stop();
  }
  

  ellipse(width/2, height/2, 2*r, 2*r);

  stroke(200);
  line(width/2, height/2, mouseX, mouseY);
  fill(200);
  text(d, mouseX, mouseY);
}
