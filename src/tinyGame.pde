/* 
 ixd3101f18 - [tinyGame]
 in-class exercise
 [nov9fri]
 [@Ceren Kayalar, @Daniele Savasta]
 */

int r = 200;
int posX, posY;
int counter = 0;

void setup() {
  //size(400, 400);
  fullScreen();
  rectMode(CENTER);
  noStroke();
  // frameRate(30);
  posX = 0;
  posY = height/2;
}

void draw() {
  background(200); 
  noStroke();
  int d=int(dist(mouseX, mouseY, posX, posY));

  if (d < r) {
    fill(244, 122, 122, 100);
    if (mousePressed) {
      ellipse(posX, posY, 2.5*r, 2.5*r);
      counter++;
    }
  } else
    fill(122, 122, 244, 100);

  ellipse(posX, posY, 2*r, 2*r);
  stroke(200);
  line(posX, posY, mouseX, mouseY);
  fill(200);
  text(d, mouseX, mouseY);
  fill(counter*2, 0, 0);
  textSize(50);
  text(counter, 60, 60);
  if (frameCount%30==0) {
    posX=int(random(width));
    posY=int(random(height));
  }
  println(frameCount);
  //saveFrame("tinyGame-###.png");
}

/*void mousePressed() {
 saveFrame("tinyGame.png");
 }*/
