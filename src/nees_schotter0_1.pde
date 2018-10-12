/*
  ixD3101f18 - Georg Nees, Schotter, Reprogramming Art
  Daniele Savasta
*/
int squareD = 40;
int posX=50;

void setup(){
  size(400,800);
  rectMode(CENTER);
}

void draw(){
  translate(posX,50);
  rect(0,0,squareD,squareD);
  posX+=squareD;
}
