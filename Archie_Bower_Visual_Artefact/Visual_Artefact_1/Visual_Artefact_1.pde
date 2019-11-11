/* 
== Goal: Create an animation that 
*/

float freq = 0.5; //frequency
float amp = 20; //amplitude
float diam = 15; //diameter
float offset;

void setup()
{
  size (1080, 800);
  offset = diam/2;
}

void draw()
{
  background(#142269); // #801912 (burgundy) or #142269 (navy blue)

  for (int i=0; i<=1000; i++)
  {
    float xCentre = width/2;
    float yCentre = height/2;
    float xWave = cos(i*freq)*amp;
    float yWave = sin(i*freq)*amp;
  
    stroke(#fafca9); //changes stroke color to pastel yellow
    strokeWeight(3);

    ellipse(xCentre + xWave, yCentre + yWave, diam, diam);
   // ellipse(xCentre + xWave +70, yCentre + yWave, diam, diam);
    //rotate(0.523);
    fill(#801912);
  }
}

//checking if branches work
