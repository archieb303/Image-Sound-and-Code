void setup()
{
  size(1000,1000);
  background(100);
}

void draw()
{
 
  for(float i=0.5; i<=width; i++)
  {
    ellipse(i*20,height/2, 20,20);
  }

}
