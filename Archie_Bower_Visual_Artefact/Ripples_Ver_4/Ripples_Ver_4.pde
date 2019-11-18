int palette = 1;
int radius = 1;
boolean grow = true; // used to trigger ripple size increase
boolean empty = true;
//random varibles for radius
  int rad1 = int(random(100,250)); // generates a random number for max radius
  int random = 0;
  //int rad1 = 100;

color line;
color background;
color start;
color mid;
color end;

int randomPos[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

float positions[][] = {{200,200},{200,400},{200,600},{200,800},{400,200},{400,400},
{400,600},{400,800},{600,200},{600,400},{600,600},{600,800},{800,200},{800,400},
{800,600},{800,800}};

boolean started = false; // used to see if ripples have been generated

//int rad[] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1};

void setup()
{
  size(1000, 1000); // size of window
  //background(#B7CCE3);
  ellipseMode(RADIUS); // sets ellipse mode to radius
}


void draw()
{
//================================================================================
// sets the default colour palette and allows chagning of theme
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
//================================================================================
    background(background); // draws background each time draw loops
    if(empty) // check if the bool "empty" is true
    {
        for(int i = 0; i<16; i++) // loop to set a random int as a position in an array
        {
            random = int(random(1,6));
            randomPos[i] = random;

        }
        empty = false; // prevents the for loop repeating every time draw loops
    }

    if (grow) //checks
    {
        radius++; // increases the size of all ellipses
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

    for(int i = 0; i < 16; i++)
    {
        if(randomPos[i] == 1)
        {
            started = true;
            ellipse(positions[i][0],positions[i][1],radius,radius);

        }

    }
    if(started == false )
    {
        ellipse(300, 300, radius, radius);
        ellipse(500, 500, radius, radius);
        ellipse(700, 700, radius, radius);
    }





//==============================================================================
//SPLASHSCREEN
  stroke(line); // sets default colour for ripple
  strokeWeight(3); // sets line thickess
  noFill(); // removes fill from ellipse to make it look like a ripple

  //background(#B7CCE3);
  //color start = lerpColor(#B7CCE3,#19323C,0.6); //creates colours for fade out of ripple
  //color mid = lerpColor(#B7CCE3,#19323C,0.3);
  //color end = lerpColor(#B7CCE3,#19323C,0.1);

  /*if (grow)
  {

  }*/
  //stroke(Mid);


  //draws all ellipses
  /*
  ellipse(200, 200, radius, radius);
  ellipse(400, 200, radius, radius);
  ellipse(600, 200, radius, radius);
  ellipse(800, 200, radius, radius);
  ellipse(200, 400, radius, radius);
  ellipse(200, 600, radius, radius);
  ellipse(200, 800, radius, radius);
  ellipse(400, 400, radius, radius);
  ellipse(400, 600, radius, radius);
  ellipse(400, 800, radius, radius);
  ellipse(600, 400, radius, radius);
  ellipse(600, 600, radius, radius);
  ellipse(600, 800, radius, radius);
  ellipse(800, 400, radius, radius);
  ellipse(800, 600, radius, radius);
  ellipse(800, 800, radius, radius);
  */

}
//=======================================================================
//COLOR PALETTE
void keyTyped() // picks up on a key press
{
    if(key == 'c' || key == 'C') // checks if key is c or C
    {
        palette++; // increases palette var to change palette
    }
}
//===================================================================
// SANDBOX
void mousePressed()
{

}
