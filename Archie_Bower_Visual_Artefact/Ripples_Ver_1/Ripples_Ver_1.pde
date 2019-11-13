//int x1 = 100;
//int y1 =
int radius = 1;
boolean grow = true;

void setup()
{
  size(500, 500);
  //background(#B7CCE3);
  ellipseMode(RADIUS);
}
void draw()
{
  stroke(#19323C);
  strokeWeight(3);
  noFill();

  //background(#B7CCE3);
  color start = lerpColor(#B7CCE3,#19323C,0.6); //creates colours for fade out of ripple
  color mid = lerpColor(#B7CCE3,#19323C,0.3);
  color end = lerpColor(#B7CCE3,#19323C,0.1);

  if (grow)
  {
    radius++;
    if (radius >= 130 && radius < 140)
    {
      stroke(start);
    }
    else if (radius >= 140 && radius < 145)
    {
      stroke(mid);
    }
    else if(radius >=145 && radius < 147)
    {
      stroke(end);
    }
    else if(radius >= 147)
    {
      stroke(#B7CCE3);
    }
  }
  //stroke(Mid);
  background(#B7CCE3);
  ellipse(100, 100, radius, radius);
  //ellipse(200, 100, radius, radius);
  //ellipse(300, 100, radius, radius);
  //ellipse(400, 100, radius, radius);
  //ellipse(100, 200, radius, radius);
  //ellipse(100, 300, radius, radius);
  //ellipse(100, 400, radius, radius);
  //ellipse(200, 200, radius, radius);
  //ellipse(300, 300, radius, radius);
}


void mousePressed()
{

}
