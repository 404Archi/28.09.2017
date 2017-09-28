int x, y;
int rozmiar;
int r, g, b;
void setup()
{
  size(1400, 800);
  frameRate(1000);
  x=0;
  y=0;
  rozmiar=50;
  background(255);
}

void draw()
{
  int los=(int)random(0, 101);
   stroke(random(256), random(256), random(256));
  //strokeWeight(random(100));
  //int losKolor=(int)random(0, 3);
  //if (losKolor==0)stroke(#03FF8F);
  //if (losKolor==1)stroke(#1203FF);
  //if (losKolor==2)stroke(#FF0004);
  if (los>=50)  line(x, y, rozmiar+x, rozmiar+y);
  else line(x+rozmiar, y, x, rozmiar+y);
  x=x+rozmiar;
  if (x>=width)
  {
    x=0;
    y=y+rozmiar;
  }
  if (y>=height)
  {
    x=0;
    y=0;
    rozmiar=(int)random(50);
    background(255);
  }
}