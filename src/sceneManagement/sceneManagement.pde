/* 
 ixd3101f18 - [H7: Explorer's World / Cakil]
 redo in-class
 [nov16Fri]
 [@Ceren Kayalar, @Daniele Savasta]
 */

PImage scene1;
PImage scene2;
PImage scene3;
PImage scene4;

//door
float scene1doorPosX = 174;
float scene1doorPosY = 395;
float scene1doorW =40;
float scene1doorH = 50;

//w1
float scene2WindowPosX = 84;
float scene2WindowPosY = 29;
float scene2WindowW = 98;
float scene2WindowH = 120;


//w2
float scene3WindowPosX= 233;
float scene3WindowPosY = 90;
float scene3WindowW = 41;
float scene3WindowH = 40;

int currentScene;

void setup() {
  size(400, 500);
  scene1 = loadImage("1.jpg"); 
  scene1.resize(width, height);
  scene2 = loadImage("2.png");
  scene3 = loadImage("3.png");
  scene4 = loadImage("4.png");

  currentScene = 1;
}

void draw() {
  println (mouseX +"," + mouseY);

  switch(currentScene) {
  case 1: 
    sceneHouse();   
    break;
  case 2: 
    sceneRoomWithArmchair();         
    break;
  case 3: 
    sceneRoomWithDesk();      
    break;
  case 4: 
    sceneTheCat();           
    break;
  }

  /* 
   //Instead of switch-case block, you may use the following if-else block
   
   if (currentScene == 1) {
   sceneHouse();
   } else if (currentScene == 2) {
   sceneRoomWithArmchair();
   } else if (currentScene == 3) {
   sceneRoomWithDesk();
   } else 
   sceneTheCat();
   
   */

  if (keyPressed && (key == 'h' || key == 'H'))
    highlightInteractiveAreas(currentScene);
}

void sceneHouse() {
  image(scene1, 0, 0); 
  if (mousePressed && mouseX >scene1doorPosX && mouseX<scene1doorPosX+scene1doorW && 
    mouseY>scene1doorPosY && mouseY <scene1doorPosY+scene1doorH) {
    currentScene = 2;
  }
}

void sceneRoomWithArmchair() {
  image(scene4, 0, 0);
  image(scene2, 0, 0); 
  if (mousePressed && mouseX>scene2WindowPosX && mouseX<scene2WindowPosX+scene2WindowW && 
    mouseY>scene2WindowPosY && mouseY<scene2WindowPosY+scene2WindowH) {
    currentScene = 3;
  }
}

void sceneRoomWithDesk() {
  image(scene4, 0, 0);
  image(scene3, 0, 0);
  if (mousePressed && mouseX>scene3WindowPosX && mouseX<scene3WindowPosX+scene3WindowW && 
    mouseY>scene3WindowPosY && mouseY<scene3WindowPosY+scene3WindowH) {
    currentScene = 4;
  }
}

void sceneTheCat() {
  image(scene4, 0, 0);
}

void highlightInteractiveAreas(int cs) {
  fill(0, 100);
  noStroke();

  switch (cs) {
  case 1: 
    rect(scene1doorPosX, scene1doorPosY, scene1doorW, scene1doorH);
    break;
  case 2: 
    rect(scene2WindowPosX, scene2WindowPosY, scene2WindowW, scene2WindowH);
    break;
  case 3: 
    rect(scene3WindowPosX, scene3WindowPosY, scene3WindowW, scene3WindowH);
    break;
  }

  /*
  //Instead of switch-case block, you may use the following if-else block
  
   if (cs == 1)
   rect(scene1doorPosX, scene1doorPosY, scene1doorW, scene1doorH);
   else if (cs == 2)
   rect(scene2WindowPosX, scene2WindowPosY, scene2WindowW, scene2WindowH);
   else if (cs == 3)
   rect(scene3WindowPosX, scene3WindowPosY, scene3WindowW, scene3WindowH);
   
   */
}

int someFunctionReturningAnInteger() {
  int x = 0;
  // this function doesn't do much, just returns int value 0
  return x;
}

float anotherFunctionReturningAFloat() {
  float x = 0;
  // this function doesn't do much, just returns float value 0.0
  return x;
}

/*

 // Cakil's submission:
 
 PImage a;
 PImage b;
 PImage c;
 PImage d;
 
 //door
 float x = 174;
 float y = 395;
 float w =40;
 float h = 50;
 
 //w1
 float x1 = 84;
 float y1 = 29;
 float w1 = 98;
 float h1 = 120;
 
 
 //w2
 float x2 = 233;
 float y2 = 90;
 float w2 = 41;
 float h2 = 40;
 
 
 void setup() {
 size(400,500);
 a = loadImage("1.jpg");
 b = loadImage("2.png");
 c = loadImage("3.png");
 d = loadImage("4.png");
 
 
 }
 
 void draw() {
 
 
 
 println (mouseX +"," + mouseY);
 
 
 if(mousePressed) {
 
 
 if(mouseX>x2 && mouseX<x2+w2 && mouseY>y2 && mouseY<y2+h2){
 image(c,0,0);
 } else {
 image(d,0,0);
 }
 
 
 
 if(mouseX<x1 && mouseX>x1+w1 && mouseY<y1 && mouseY>y1+h1){
 image(b,0,0);
 } else {
 image(c,0,0);
 }
 
 
 if(mouseX >x && mouseX<x+w && mouseY>y && mouseY <y+h){
 image(b,0,0);
 } else {
 image (a,0,0);
 a.resize(width,height); 
 } 
 
 
 //image(c,0,0);
 }
 }
 
 */
