
/* 

  ixd3101f18 - Reproducing Art: Nees' Schotter
  in-class exercise
  oct12Fri

  @Ceren Kayalar 

*/

int squareSize = 40;
int posX = 50;
int posY = 50;
float rot = 0;
int translateY = 0;

void setup() {
  size(400, 800);
  rectMode(CENTER);
  smooth();
  noFill();
  background(255);
}

void draw() {

  if (posY < height) { 
    translate(posX, posY + random(0, 1)* random(-translateY, translateY));     
    // random(-translateY, translateY): shift from the center in y-axis 
    // random(0, 1): tweaks the generated numbers a little, you can experiment by removing them
    rotate(rot*random(0, 1)*random(-1,1)); 
    rect(0, 0, squareSize, squareSize);
    posX+= squareSize;
   
    if (posX > width - squareSize) {
      posX = 50;
      posY+= squareSize;
      translateY += 3; // everytime we go down one row, the squares' center in y-axis should shift a little more
      rot+= PI/18.0;  // everytime we go down one row, the squares' rotation should increase 10 degrees
     // println(rot);
    }
  }
}

