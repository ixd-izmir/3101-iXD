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
    l=leng*2;
  } else l=leng;

  if (y>height/2) {
    l=leng*3;
  }

  if ((x<width/2)&&(y>height/2)) {
    l=leng*4;
  }
  strokeWeight(2);
  stroke(0, 255, map(l, leng, leng*4, 255, 0));
  translate(x, y);
  rotate(radians(random(0, 360)));
  line(-l, 0, l, 0);
}
