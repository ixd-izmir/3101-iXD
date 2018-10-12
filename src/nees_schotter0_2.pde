/*
  ixD3101f18 - Georg Nees, Schotter, Reprogramming Art
  Daniele Savasta v0.2
  last updated: 12.10.2018 9.59
  comment
  Several squares on a line by  moving the canvas
*/

int squareD = 40;
int posX=50;
int posY=50;
float rot=0.2;

void setup(){
  size(1000,1200);
  rectMode(CENTER);
}

void draw(){
  translate(posX,posY);
  rotate(rot);
  rect(0,0,squareD,squareD);
  posX+=squareD;
  rot+=0.1;

  if(posX>=480) {
    posX=50;
    posY+=squareD;
  }
  if(posY>=880)
    stop();
}
