/*
Thomas Sanchez Lengeling.
 http://codigogenerativo.com/

 KinectPV2, Kinect for Windows v2 library for processing

 Skeleton color map example.
 Skeleton (x,y) positions are mapped to match the color Frame
 */

import KinectPV2.KJoint;
import KinectPV2.*;

KinectPV2 kinect;

boolean cameraView=false;
boolean debug=false;
boolean centered=false;
int option=0;
PFont font;
PImage wizard;
PShape lookingAway,glasses,neutral,mouthOpen,smiley;

void setup() {
  size(1920, 1080, P3D);
  
  font=loadFont("Bitter-Regular-48.vlw");
  kinectSetup();
  
  smiley = loadShape("smiley.svg");
  lookingAway = loadShape("lookingAway.svg");
  glasses = loadShape("glasses.svg");
  neutral = loadShape("neutral.svg");
  mouthOpen = loadShape("mouthOpen.svg");
  //centered=true;
  wizard=loadImage("cursor.png");
  textFont(font);
}

void draw() {
  background(255);
  
  if(cameraView)
  image(kinect.getColorImage(), 0, 0, width, height);
  
  switch(option){
    case 0: drawBody(); break;
    case 1: drawRect(); break;
    case 2: drawCircles(); break;
    case 3: drawLetters(); break;
    case 4: drawNumbers(); break;
    case 5: drawSmile(); break;
    case 6: drawSmileAdv(); break;
    case 7: drawWizard(); break;
    case 8: drawWizardPersp(); break;
  }
  if(debug){
    fill(255, 0, 0);
    text(frameRate, 50, 50);
  }

  centerWindow();
}
 
void centerWindow()
{
  if(frame != null && centered == false)
  {
    frame.setLocation(displayWidth/2-width/2,displayHeight/2-height/2);
    centered = true;
  }
}

void keyReleased() {
  if (key == 'c' || key == 'C') {
      cameraView=!cameraView;
    }
    if (key == 'd' || key == 'D') {
      debug=!debug;
    }
    switch(key) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      option=int(key)-48;
      println(option); break;
    }
}
