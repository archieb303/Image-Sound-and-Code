int palette = 1;
float radius = 1;
int info = 1;
//int currentM; // use for fade in when pressing i

int mousePosX, mousePosY; // mouse location on click or released click
int pMousePosX, pMousePosY; // previous mouse location used for the skipping function

boolean grow = true; // used to trigger ripple size increase
boolean growS = false; //used to increse ripple in sandbox
boolean empty = true;
boolean draw = false;
boolean drawLine = false;

//random varibles for radius

int rad1 = int(random(170,230)); // generates a random number for max radius

int random; // empty var to take random numbers at the start of the sketch

int opacity = 0;
int m; //used to time the
int clickMillis = 0;


color line; // variables for colors to palette swap
color background;
color start;
color mid;
color end;

int randomPos[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

float positions[][] = {{200,200},{200,400},{200,600},{200,800},{400,200},{400,400},
{400,600},{400,800},{600,200},{600,400},{600,600},{600,800},{800,200},{800,400},
{800,600},{800,800}};

float rad[] =  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,};

boolean started = false; // used to see if ripples have been generated

//==============================================================================

void setup()
{
  size(1000, 1000); // size of window
  //background(#B7CCE3);
  ellipseMode(RADIUS); // sets ellipse mode to radius
}


void draw()
{
m = millis(); // track the number of milliseconds since starting the sketch

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
        line = #6b2735;
        background = #F06543;
        start = lerpColor(#F06543, #6b2735, 0.6);
        mid = lerpColor(#F06543, #6b2735, 0.3);
        end = lerpColor(#F06543, #6b2735, 0.1);
    }
    if (palette == 3)
    {
        line = #11151C;
        background = #4d5869;
        start = lerpColor(#4d5869, #11151C, 0.6);
        mid = lerpColor(#4d5869, #11151C, 0.3);
        end = lerpColor(#4d5869, #11151C, 0.1);
    }
    if (palette > 3)
    {
        palette = 1;
    }
//==============================================================================
//SPLASHSCREEN
    background(background); // draws background each time draw loops
    if(empty) // check if the bool "empty" is true
    {
        for(int i = 0; i<16; i++) // loop to set a random int as a position in an array
        {
            random = int(random(1,5));
            randomPos[i] = random;

        }
        empty = false; // prevents the for loop repeating every time draw loops
    }
//==============================================================================
// ripple grow function for splashscreen
    if (grow) //checks
    {
        for(int i = 0; i<16; i++)
        {
            rad[i]++;

            //radius++; // increases the size of all ellipses
            if (rad[i] >= rad1 && rad[i] < rad1+10){
                stroke(start);
            }
            else if (rad[i] >= rad1+10 && rad[i] < rad1+15){
                stroke(mid);
            }
            else if(rad[i] >=rad1+15 && rad[i] < rad1+17){
                stroke(end);
            }
            else if(rad[i] >= rad1+17){
                stroke(background);
            }
        }
    }
//==============================================================================
//draws ellipses for splashscreen
    for(int i = 0; i < 16; i++)
    {
        if(randomPos[i] == 1)
        {
            started = true;
            ellipse(positions[i][0],positions[i][1],rad[i],rad[i]);

        }

    }
    if(started == false )
    {
        ellipse(300, 300, radius, radius);
        ellipse(500, 500, radius, radius);
        ellipse(700, 700, radius, radius);
    }
//=============================================================================

    if(info == 0)
    {
        opacity = 0;
    }
    else if(info == 1 && m >= 5000) // checks that the splashscreen has disappeared before being able to draw
    {
        opacity = 255;
    }
    else if (info == 1 && m < 5000)
    {
        opacity = 0;
    }

//    print(info);

    menu();

    stroke(line); // sets default colour for ripple
    strokeWeight(3); // sets line thickess
    noFill(); // removes fill from ellipse to make it look like a ripple

    if(pMousePosX != mouseX && pMousePosY != mouseY && drawLine == true)
    {
        skipLine();
    }

    if(pMousePosX != mousePosX || pMousePosY != mousePosY)
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

        skipStone();
        //growS = true;
        //rippleGrow();


    }
/*
    if(pMousePosX == mousePosX && pMousePosY == mousePosY)
    {
        ripple();
        //growS = true;
        //rippleGrow();
        //print(pMousePosX, mousePosX);
        //print(pMousePosY, mousePosY);

    }
*/
}
//=======================================================================
//COLOR PALETTE
void keyReleased() // picks up on a key press
{
    if(key == 'c' || key == 'C') // checks if key is c or C
    {
        palette++; // increases palette var to change palette
    }
    if(key == 'i' || key == 'I')
    {
        //currentM = millis(); // sets value for currentM as current milliseconds
        if(info == 0 && m > 4000)
        {
            info++;
        }
        else if(info == 1 &&  m > 4000)
        {
            info--;
        }
    }

}
//===================================================================
// SANDBOX
void mousePressed()
{
    if(radius > 230)
    {
        radius = 0;
    }


    if(m>4000)
    {
        pMousePosX = mouseX;
        pMousePosY = mouseY;
        drawLine = true;
    }
    //draw = true;

    if(clickMillis == 0 /*&& skipStone == false*/){
        clickMillis = millis();
        //print(clickMillis);
    }
    if(mousePosX != 0 && mousePosY != 0)
    {
        if(mousePressed == true)
        {
            mousePosX = mouseX;
            mousePosY = mouseY;
        }

    }
    if(info ==  1 && m > 4000)
    {
        info = 0;
    }



}

void mouseReleased()
{
    if(m > 4000)
    {
    mousePosX = mouseX;
    mousePosY = mouseY;
    //print("released");
    }

    drawLine = false;


}
