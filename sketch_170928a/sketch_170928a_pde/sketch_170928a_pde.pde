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
 // strokeWeight(random(100));
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