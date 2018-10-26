int leng=8;
int l=leng;
int spacing;
int x=0;
int y=spacing;
int h=255;
void setup() {
  size(600, 600);
  background(255);
  colorMode(HSB);
  spacing=width/29;
  y=spacing;
}

void draw() {
  h=int(map(mouseX, 0, width, 0, 255));
  x+=spacing;

  if (x>width-spacing) {
    x=spacing;
    y+=spacing;
  }
  if (y<height) {
    if (x>width/2) {
      l=leng*2;
    } else l=leng;

    if (y>height/2) {
      l=leng*3;
    }

    if ((x<width/2)&&(y>height/2)) {
      l=leng*4;
    }
    strokeWeight(2.5);
    stroke(h, 255, map(l, leng, leng*4, 255, 128));
    translate(x, y);
    rotate(radians(random(0, 360)));
    line(-l, 0, l, 0);
  }
}
