void setup()
{
  size(800,800);
  background(255);
}

int x=0;
int y=0;
int colorX = 255;
int colorY = 0;
int colorZ = 0;

void draw()
{   
  background(255);
  rect(x,y,50,50);
  if(x<width-50 && y < 1)
  {
    x+=3;
    fill(colorX-=2,colorZ,colorY+=2);
  }
  if(x == (width-50) && y<(height-50))
  {
    y+=3;
    fill(colorX,colorZ+=2,colorY-=2);
  }
  if(x > 0 && y == (height-50))
  {
    x-=3;
    fill(colorX+=2,colorZ,colorY);
  }
  if (x == 0 && y>0 && y-1 < y)
  {
    y-=3;
    fill(colorX,colorZ-=2,colorY);
  }
}
