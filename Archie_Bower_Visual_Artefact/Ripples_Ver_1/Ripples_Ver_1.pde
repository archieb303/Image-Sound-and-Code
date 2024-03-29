
int palette = 1;
int radius = 1;
boolean grow = true; // used to trigger ripple size increase

//random varibles for radius
  int rad1 = int(random(100,250)); // generates a random number for max radius
  //int rad1 = 100;

color line;
color background;
color start;
color mid;
color end;

void setup()
{
  size(1000, 1000); // size of window
  //background(#B7CCE3);
  ellipseMode(RADIUS); // sets ellipse mode to radius
}


void draw()
{
//==============================================================================
//SPLASHSCREEN
  stroke(line); // sets default colour for ripple
  strokeWeight(3);
  noFill(); // removes fill from ellipse to make it look like a ripple
  if (palette == 1)
  {
      line = #19323C; // sets the color for the ripple
      background = #B7CCE3; // sets the color for the background
      start = lerpColor(#B7CCE3,#19323C,0.6); //creates colours for fade out of ripple
      mid = lerpColor(#B7CCE3,#19323C,0.3);
      end = lerpColor(#B7CCE3,#19323C,0.1);

  }
  if (palette == 2)
  {
      line = #A93F55;
      background = #F06543;
      start = lerpColor(#F06543, #A93F55, 0.6);
      mid = lerpColor(#F06543, #A93F55, 0.3);
      end = lerpColor(#F06543, #A93F55, 0.1);
  }
  if (palette == 3)
  {
      line = #11151C;
      background = #212D40;
      start = lerpColor(#212D40, #11151C, 0.6);
      mid = lerpColor(#212D40, #11151C, 0.3);
      end = lerpColor(#212D40, #11151C, 0.1);
  }
  if (palette > 3)
  {
      palette = 1;
  }
  //background(#B7CCE3);
  //color start = lerpColor(#B7CCE3,#19323C,0.6); //creates colours for fade out of ripple
  //color mid = lerpColor(#B7CCE3,#19323C,0.3);
  //color end = lerpColor(#B7CCE3,#19323C,0.1);

  if (grow)
  {
    radius++;
    if (radius >= rad1 && radius < rad1+10){
      stroke(start);
    }
    else if (radius >= rad1+10 && radius < rad1+15){
      stroke(mid);
    }
    else if(radius >=rad1+15 && radius < rad1+17){
      stroke(end);
    }
    else if(radius >= rad1+17){
      stroke(background);
    }
  }
  //stroke(Mid);
  background(background);
  ellipse(200, 200, radius, radius);
  ellipse(400, 200, radius, radius);
  ellipse(600, 200, radius, radius);
  ellipse(800, 200, radius, radius);
  ellipse(200, 400, radius, radius);
  ellipse(200, 600, radius, radius);
  ellipse(200, 800, radius, radius);
  ellipse(400, 400, radius, radius);
  ellipse(400, 600, radius, radius);
  ellipse(800, 800, radius, radius);
  ellipse(600, 600, radius, radius);
  ellipse(600, 600, radius, radius);
  ellipse(600, 600, radius, radius);
  ellipse(600, 600, radius, radius);
  ellipse(600, 600, radius, radius);
  ellipse(600, 600, radius, radius);
  ellipse(600, 600, radius, radius);
  ellipse(600, 600, radius, radius);
  ellipse(600, 600, radius, radius);

  // this is bad code and needs to be shorter
  //class?
}
//=======================================================================
//COLOR PALETTE
void keyTyped()
{
    if(key == 'c' || key == 'C')
    {
        palette++;
    }
}
//===================================================================
// SANDBOX
void mousePressed()
{

}
