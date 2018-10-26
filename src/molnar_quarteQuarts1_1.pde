int leng=10;
int l=leng;
int spacing=31;
int x=0;
int y=spacing;

void setup() {
  size(900, 900);
  background(255);
  colorMode(HSB);
}

void draw() {
  x+=spacing;

  if (x>width) {
    x=spacing;
    y+=spacing;
  }

  if (x>width/2) {
    l=leng*2;  //second quarter top-right
    stroke(0, 255, 128);
  } else {
    l=leng;  //first quarter top-left
    stroke(0, 255, 255);
  }

  if (y>height/2) {
    l=leng*3;  //third quarter bottom-right
    stroke(0, 255, 64);
  }

  if ((x<width/2)&&(y>height/2)) {
    l=leng*4;  //forth quarter bottom-left
    stroke(0, 255, 64);
  }
  strokeWeight(2);
  //stroke(0, 255, map(l, leng, leng*4, 255, 0));
  translate(x, y);
  rotate(radians(random(0, 360)));
  line(-l, 0, l, 0);
}
