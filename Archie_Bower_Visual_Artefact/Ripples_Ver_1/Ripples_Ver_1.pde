//int x1 = 100;
//int y1 =
int radius = 1;
boolean grow = true;

//random varibles for radius
  int rad1 = int(random(100,250));
  //int rad1 = 100;



void setup()
{
  size(1000, 1000);
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
    if (radius >= rad1 && radius < rad1+10)
    {
      stroke(start);
    }
    else if (radius >= rad1+10 && radius < rad1+15)
    {
      stroke(mid);
    }
    else if(radius >=rad1+15 && radius < rad1+17)
    {
      stroke(end);
    }
    else if(radius >= rad1+17)
    {
      stroke(#B7CCE3);
    }
  }
  //stroke(Mid);
  background(#B7CCE3);
  ellipse(200, 200, radius, radius);
  ellipse(400, 200, radius, radius);
  ellipse(300, 200, radius, radius);
  ellipse(400, 200, radius, radius);
  ellipse(200, 400, radius, radius);
  ellipse(200, 600, radius, radius);
  ellipse(200, 800, radius, radius);
  ellipse(400, 400, radius, radius);
  ellipse(600, 600, radius, radius);
}


void mousePressed()
{

}
