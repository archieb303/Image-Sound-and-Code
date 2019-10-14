


void setup()
{
  size(1000,1000);
  background(255);
}

void draw()
{
  int i;
  for(i=1; i<= height; i++)
  {
    stroke(55, 230, 30+(i*255/height));
   
  
    line(i,0,i, width);    
  }
}
