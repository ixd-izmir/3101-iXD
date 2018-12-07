void drawRect(){
    ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();

  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
    if (skeleton.isTracked()) {
      KJoint[] joints = skeleton.getJoints();

      color col  = skeleton.getIndexColor();
      fill(col);
      stroke(col);
      //drawBody(joints);
      rectMode(CENTER);
      for ( int j = 0; j < joints.length; j++){
        float x=joints[j].getX();
        float y=joints[j].getY();
        
        rect(x,y,100,100);
      }
      //draw different color for each hand state
      //drawHandState(joints[KinectPV2.JointType_HandRight]);
      //drawHandState(joints[KinectPV2.JointType_HandLeft]);
    }
  }
}

void drawWizard(){
    ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();

  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
    if (skeleton.isTracked()) {
      KJoint[] joints = skeleton.getJoints();

      color col  = skeleton.getIndexColor();
      //fill(col);
      //stroke(col);
      //drawBody(joints);
      //rectMode(CENTER);
      //for ( int j = 0; j < joints.length; j++){
        float x=joints[0].getX();
        float y=joints[0].getY();
        image(wizard,x-wizard.width/2,y-wizard.height/2);
        strokeWeight(40);
        stroke(0);
        line(joints[4].getX(),joints[4].getY(),joints[7].getX(),joints[7].getY());
        //rect(x,y,100,100);
      //}
      //draw different color for each hand state
      //drawHandState(joints[KinectPV2.JointType_HandRight]);
      //drawHandState(joints[KinectPV2.JointType_HandLeft]);
      //if(joints[3].getX()>1000) option=0;
    }
  }
}


void drawCircles(){
    ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();

  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
    if (skeleton.isTracked()) {
      KJoint[] joints = skeleton.getJoints();

      color col  = skeleton.getIndexColor();
      //fill(col);
      
      //drawBody(joints);
      //rectMode(CENTER);
      for ( int j = 0; j < joints.length; j++){
        float x=joints[j].getX();
        float y=joints[j].getY();
        
        //for(int k=0; k<50;k++) {
          //noFill();
          //stroke(col, 255-k*2);
          ellipse(x,y,map(joints[j].getX(),0,1280,5,100),map(joints[j].getX(),0,1280,5,100));
       // }
      }
      //draw different color for each hand state
      //drawHandState(joints[KinectPV2.JointType_HandRight]);
      //drawHandState(joints[KinectPV2.JointType_HandLeft]);
    }
  }
}

void drawLetters(){
    ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();

  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
    if (skeleton.isTracked()) {
      KJoint[] joints = skeleton.getJoints();

      color col  = skeleton.getIndexColor();
      fill(col,100);
      noStroke();//stroke(col);
      //drawBody(joints);
      textAlign(CENTER);
      textSize(26);
      for ( int j = 0; j < joints.length; j++){
        float x=joints[j].getX();
        float y=joints[j].getY();
        switch(j){
          case 0: text("Hip",x,y); break;
          case 1: text("Spine",x,y); break;
          case 2: text("Neck",x,y); break;
          case 3: text("Head",x,y); break;
          case 4: text("ShoulderL",x,y); break;
          case 5: text("ElbowL",x,y); break;
          case 6: text("WristL",x,y); break;
          case 7: text("HandL",x,y); break;
          case 8: text("ShoulderR",x,y); break;
          case 9: text("ElbowR",x,y); break;
          case 10: text("HandR",x,y); break;
          case 12: text("HipL",x,y); break;
          case 13: text("KneeL",x,y); break;
          case 14: text("AnkleL",x,y); break;
          case 15: text("FootL",x,y); break;
          case 16: text("HipR",x,y); break;
          case 17: text("KneeR",x,y); break;
          case 18: text("AnkleR",x,y); break;
          case 19: text("FootR",x,y); break;
          case 20: text("Torso",x,y); break;
          case 21: text("FingersL",x,y); break;
          case 22: text("ThumbL",x,y); break;
          case 23: text("FingersR",x,y); break;
          case 24: text("ThumbR",x,y); break;
        }
        //rect(x,y,100,100);
      }
    }
  }
}

void drawNumbers(){
    ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();

  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
    if (skeleton.isTracked()) {
      KJoint[] joints = skeleton.getJoints();

      color col  = skeleton.getIndexColor();
      fill(col,100);
      noStroke();//stroke(col);
      //drawBody(joints);
      textAlign(CENTER);
      textSize(50);
      for ( int j = 0; j < joints.length; j++){
        float x=joints[j].getX();
        float y=joints[j].getY();
         text(j,x,y);
      }
    }
  }
}

void drawParts(){
    ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();

  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
    if (skeleton.isTracked()) {
      KJoint[] joints = skeleton.getJoints();

      color col  = skeleton.getIndexColor();
      fill(col,100);
      noStroke();//stroke(col);
      //drawBody(joints);
      rectMode(CENTER);
      for ( int j = 0; j < joints.length; j++){
        float x=joints[j].getX();
        float y=joints[j].getY();
        
        rect(x,y,100,100);
      }
    }
  }
}


void drawSmile(){
    ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();

  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
    if (skeleton.isTracked()) {
      KJoint[] joints = skeleton.getJoints();

      fill(#FECE16);
      noStroke();//stroke(col);
      
      for ( int j = 0; j < joints.length; j++){
        float x=joints[j].getX();
        float y=joints[j].getY();
        
        if(j!=3) ellipse(x,y,150,150);
      } shape(smiley, joints[3].getX()-(smiley.width/2), joints[3].getY()-(smiley.height/2));
    }
  }
}


void drawSmileAdv(){
    ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();
    ArrayList<FaceData> faceData =  kinect.getFaceData();
  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
    int type=0;
    if (skeleton.isTracked()) {
      //for (int i = 0; i < faceData.size(); i++) {
        //FaceData faceD = faceData.get(i);
        if (faceData.size()>0) {
          FaceData faceD = faceData.get(i);
            if(faceD.isFaceTracked()) {
        
      FaceFeatures [] faceFeatures = faceD.getFaceFeatures();
      type = faceFeatures[i].getFeatureType();
      }}
      
      KJoint[] joints = skeleton.getJoints();
      //st   = faceFeatures[i].getState();
      
      //color col  = skeleton.getIndexColor();
      fill(#FECE16);
      noStroke();//stroke(col);
      //drawBody(joints);
      rectMode(CENTER);
      for ( int j = 0; j < joints.length; j++){
        float x=joints[j].getX();
        float y=joints[j].getY();
        
        if(j!=3) ellipse(x,y,150,150);
      }  
      smiley(type,joints[3].getX(),joints[3].getY());
    }
  }
}

void smiley(int type, float x, float y) {
  switch(type) {
  case KinectPV2.FaceProperty_Happy:
    //str = "Happy";
    shape(smiley, x-(smiley.width/2), y-(smiley.height/2));
    break;

  case KinectPV2.FaceProperty_Engaged:
    //str = "Engaged";
    break;

  case KinectPV2.FaceProperty_LeftEyeClosed:
    //str = "LeftEyeClosed";
    break;

  case KinectPV2.FaceProperty_RightEyeClosed:
    //str = "RightEyeClosed";
    break;

  case KinectPV2.FaceProperty_LookingAway:
    //str = "LookingAway";
    shape(lookingAway, x-(lookingAway.width/2), y-(lookingAway.height/2));
    break;

  case KinectPV2.FaceProperty_MouthMoved:
    //str = "MouthMoved";
    break;

  case KinectPV2.FaceProperty_MouthOpen:
    //str = "MouthOpen";
    shape(mouthOpen, x-(mouthOpen.width/2), y-(mouthOpen.height/2));
    break;

  case KinectPV2.FaceProperty_WearingGlasses:
    //str = "WearingGlasses";
    shape(glasses, x-(glasses.width/2), y-(glasses.height/2));
    break;
  
  default:
    //str = "Happy";
    shape(neutral, x-(neutral.width/2), y-(neutral.height/2));
    break;
  }
}

void drawWizardPersp(){
    ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();

  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
    if (skeleton.isTracked()) {
      KJoint[] joints = skeleton.getJoints();

      color col  = skeleton.getIndexColor();
 
      rectMode(CENTER);
        float x=joints[0].getX();
        float y=joints[0].getY();
        float z=joints[0].getZ();
        fill(0);
        textSize(100);
        textAlign(CENTER);
        text("x:"+x+"\n y:"+y+"\n z:"+z,width/2,height/2);
        pushMatrix();
        //scale(map(z,0,300,0,1000));
        image(wizard,x-wizard.width/2,y-wizard.height/2);
        popMatrix();

    }
  }
}
