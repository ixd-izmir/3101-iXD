int spacing=11;
int plusSize=5;
void setup(){
  size(600,600);
}

void draw(){
  noStroke();
  fill(0);
  background(255);
  for(int i=0;i<50;i++) {
    pushMatrix();
      translate(spacing,spacing+spacing*i);
      drawRect();
    popMatrix();
  }
  
  for(int i=0;i<20;i++) {
    pushMatrix();
      translate(spacing*2,spacing+spacing*i);
      drawRect();
    popMatrix();
  }
}

void drawX(){
   line(-plusSize,-plusSize,plusSize,plusSize);
   line(plusSize,-plusSize,-plusSize,plusSize);
}

void drawPlus(){
   line(-plusSize,0,plusSize,0);
   line(0,-plusSize,0,plusSize);
}

void drawRect(){
  rect(-plusSize,-plusSize,plusSize*2,plusSize*2);
}
