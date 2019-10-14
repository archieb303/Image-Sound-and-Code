float amp = 15;

void setup()
{
  size(1000,1000);
  background(100);
}

void draw()
{
 
  for(float i=0; i<=width; i++)
  {
    ellipse(i*20,height/2 + sin(i)*amp, 20,20);
  }

}
