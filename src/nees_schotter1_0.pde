/*
  ixD3101f18 - Georg Nees, Schotter, Reprogramming Art
 Daniele Savasta v1.0
 last updated: 12.10.2018 10.43
 comment
 Completed work
 */

int squareD = 40;
int countX=1;
int countY=1;

float rot=0;

void setup() {
  size(500, 950);
  rectMode(CENTER);
  noFill();
  background(255);
}

void draw() {
  if (countY<=22) {
    translate(squareD*countX, squareD*countY);

    float direction= random(-1,1);

    if(direction>0) rotate(rot);
    else rotate(-rot);
    rotate(rot*direction);

    float noiseX= random(-countY,countY);
    float noiseY= random(-countY,countY);

    rect(noiseX, noiseY, squareD, squareD);
    countX++;
    rot+=0.001;

    if (countX>=12) {
      countX=1;
      countY++; // countY+=1; countY=countY+1;
    }
  }
}
