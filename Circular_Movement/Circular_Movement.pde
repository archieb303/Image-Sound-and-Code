float freq = 0.5;
float amp = 20; //amplitude
float diam = 15; //diameter 
float offset;



void setup()
{
  size(1080, 800);
  offset = diam/2;
}

void draw()
{
  background(#142269);

  for (int i=0; i<=1000; i++)
  {
    float xCentre = width/2;
    float yCentre = height/2;
    float xWave = cos(i*freq)*amp;
    float yWave = sin(i*freq)*amp;

    stroke(#fafca9);
    strokeWeight(3);

    ellipse(xCentre + xWave, yCentre + yWave, diam, diam);
    rotate(0.523599);
    ellipse((xCentre + xWave), (yCentre + yWave), diam-5, diam-5);
    //ellipse((xCentre + xWave)+18, (yCentre + yWave)+18, diam-6, diam-6);
    fill(#801912);
    amp += 0.5;
  }
  //noLoop;
  amp = 20;
}
//translate
