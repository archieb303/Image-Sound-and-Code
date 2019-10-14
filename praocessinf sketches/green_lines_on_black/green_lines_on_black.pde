float speed = 8;
float x, y;

void setup()
{
  size(1080, 2280);
  background(0);
}
void draw()
{
  
  
  for (int i=0; i<=200; i++)
  {
    strokeWeight(5);
    stroke(6, 89, 75);
    line(i*2, i*15, 100, i*15);
  }
  speed = speed + 1;
  x = x + 1;
  y = y + 1;
}
