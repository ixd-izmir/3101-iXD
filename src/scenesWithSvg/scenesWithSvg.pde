/* 
  ixd3101f18 - [H7: Explorer's World / Gulay]
  redo in-class
  [nov16Fri]
  [@Ceren Kayalar, @Daniele Savasta]
*/

PShape shapeDiamonds;
PShape shapeHearts;
PShape shapeClovers;
PShape shapeSpades;
PShape shapeSpadesIcon;
PShape shapeHeartsIcon;

void setup() {
  size(600, 480);
  shapeDiamonds = loadShape("ilk.svg");
  shapeSpades = loadShape("ikinci.svg");
  shapeClovers = loadShape("son.svg");
  shapeHearts = loadShape("kupa.svg");
  shapeSpadesIcon = loadShape("iconSpades.svg");
  shapeHeartsIcon = loadShape("iconHearts.svg");
  background(#494643);
  shape(shapeDiamonds);
}

int heartsIconposx=80;
int heartsIconposy=80;
int spadesIconposx=80;
int spadesIconposy=80;

void draw() {
  println(mouseX, mouseY);
  noStroke();
  shape(shapeHeartsIcon, heartsIconposx, heartsIconposy);
  shape(shapeSpadesIcon, 360, 250);
  if(heartsIconposx>width) heartsIconposx=0;
    heartsIconposx++;
  if((mouseX>heartsIconposx&&mouseX<heartsIconposx+shapeHeartsIcon.width)&&
     (mouseY>heartsIconposy&&mouseY<heartsIconposy+shapeHeartsIcon.height) && mousePressed) {
  //if (mouseX>80&&mouseY>80 &&mouseX<100&&mouseY<100&& mousePressed) {
    
    first();
  }
  if (mouseX>300&&mouseY>220&&mouseX<330&&mouseY<240&& mousePressed) {
    secondScene();
  }
  if (mouseX>530&&mouseY>410&&mouseX<545&&mouseY<420&& mousePressed) {
    last();
  }
}
void first() {
  fill(0);
  shape(shapeHearts);
}

void secondScene() {
  //shape(shapeHearts);
  shape(shapeClovers);
  fill(0);
}
void last() {
  fill(0);
  shape(shapeSpades);
}
void keyPressed() {
  if (key == CODED) 
    if (keyCode == UP) 
      shape(shapeDiamonds);
    else if (keyCode == DOWN) {
      shape(shapeClovers);
    }
}


/*

//Gulay's submission:

PShape f;
PShape s;
PShape t;
PShape l;
PShape k;
PShape m;
PShape ku;

void setup() {
  size(600, 480);
  f = loadShape("ilk.svg");
  s = loadShape("ikinci.svg");
  t = loadShape("son.svg");
  l = loadShape("kupa.svg");
  k = loadShape("karo.svg");
  m = loadShape("maca.svg");
  ku = loadShape("kup.svg");
  background(#494643);
  shape(f);
}
void draw() {
  println(mouseX, mouseY);
  noStroke();
  shape(m,-80,-80);
  shape(ku, 360, 250);
  if (mouseX>80&&mouseY>80 &&mouseX<100&&mouseY<100&& mousePressed) {
    first();
  }
  if (mouseX>300&&mouseY>220&&mouseX<330&&mouseY<240&& mousePressed) {
    secon();
  }
  if (mouseX>530&&mouseY>410&&mouseX<545&&mouseY<420&& mousePressed) {
    last();
  }
  
}
void first() {
  if (mouseX>80&&mouseY>80 &&mouseX<100&&mouseY<100& mousePressed) {
    fill(0);
    shape(s);
  } else 
  ellipse(85, 85, 20, 20);
}

void secon() {
  shape(s);
  if (mouseX>300&&mouseY>220&&mouseX<330&&mouseY<240& mousePressed) {
    shape(t);
    fill(0);
  } else
    fill(255,0,0);
}
void last() {
  if (mouseX>530&&mouseY>410&&mouseX<545&&mouseY<420& mousePressed) {
    fill(0);
    shape(l);
  } else
    ellipse(540, 415, 20, 20);
}
void keyPressed() {
  if (key == CODED) 
    if (keyCode == UP) 
      shape(f);
   else if (keyCode == DOWN) {
      shape(t);
    }
}

*/
