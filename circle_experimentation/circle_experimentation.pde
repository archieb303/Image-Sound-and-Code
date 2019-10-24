float freq = 0.5;
float amp = 20; //amplitude
float diam = 15; //diameter 
float offset;

void setup()
{
  size(1000, 800);
  background(0,255,0);
  offset = diam/2;
}
void draw()
{
  for(int i = 1; i <= 100; i++ ) 
  {
    stroke(#4287f5);
    strokeWeight(3);
    line(0,20*i, 1000, 10*i);
    line(0,10*i, 1000, 20*i);
  }// the above section creates lines to work as a backround
  for(int j = 1; j <=1000; j++)
  {
    float xCentre = width/2;
    float yCentre = height/2;
    float xWave = cos(j*freq)*amp;
    float yWave = sin(j*freq)*amp;
    
    strokeWeight(3);
    
    ellipse(xCentre + xWave, yCentre + yWave, diam, diam);
  }
  

}
