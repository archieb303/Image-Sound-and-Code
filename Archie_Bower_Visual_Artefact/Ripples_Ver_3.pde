
int palette = 1;
int radius = 1;
boolean grow = true; // used to trigger ripple size increase
color line;
color background;
color start;
color mid;
color end;

//random varibles for radius
  int rad1 = int(random(100,250)); // generates a random number for max radius
  //int rad1 = 100;

//==============================================================================
//RANDOM START
  boolean started[]={false,false,false,false,false,false,false,false,false,false,
  false,false,false,false,false,false};
// creating default boolean
  float radii[] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}; // array of starting radius values
  float positions[][] = {{200,200},{200,400},{200,600},{200,800},{400,200},{400,400},
  {400,600},{400,800},{600,200},{600,400},{600,600},{600,800},{800,200},{800,400},
  {800,600},{800,800}};

  float drawEllipse(float x, float y, float radius, boolean started/*, color line, color background*/)
  {
      if(started)
      {



          ellipse(x,y,radius,radius); //draws the ellipse
          radius--; //decrements RADIUS
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
      }
      return radius;

  }


void setup()
{
  size(1000, 1000); // size of window
  //background(#B7CCE3);
  ellipseMode(RADIUS); // sets ellipse mode to radius
}


void draw()
{
    stroke(line); // sets default colour for ripple
    strokeWeight(3);
    noFill(); // removes fill from ellipse to make it look like a ripple
    background(background);


    for (int i = 0; i<16; i++)
    {
        if(random(1,10)==1 )
        {
            started[i] = true;
        }

        radii[i] = drawEllipse(positions[i][0],positions[i][1],radii[i],started[i]/*, color line*/);
    }
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

}
//==============================================================================
//COLOR PALETTE SWITCHER

void keyTyped()
{
    if(key == 'c' || key == 'C')
    {
        palette++;
    }
}


//==============================================================================
// SANDBOX


/*void mousePressed()
{

}
*/
