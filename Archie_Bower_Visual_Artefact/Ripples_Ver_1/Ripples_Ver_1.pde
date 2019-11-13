
boolean grow = true; // used to trigger ripple size increase

<<<<<<< HEAD


=======
>>>>>>> parent of 3e75d8c... added additional color palette
//random varibles for radius
  int rad1 = int(random(100,250)); // generates a random number for max radius
  //int rad1 = 100;

  class Ellipse
  {
      color line = #19323C;
      color background = #B7CCE3;
      color start = lerpColor(#B7CCE3,#19323C,0.6);
      color mid = lerpColor(#B7CCE3,#19323C,0.3);
      color end = lerpColor(#B7CCE3,#19323C,0.1);
      int palette = 1;
      int x;
      int y;
      int radius = 1;
      boolean started = false;
      Ellipse(int X, int Y)
      {
          x = X;
          y = Y;
      }
      color getBackground()
      {
          return background;
      }
      void changePalette()
      {
          palette++;
          if (palette == 1)
          {
              line = #19323C;
              background = #B7CCE3;
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
      void drawEllipse()
      {
         if(started)
         {
             ellipse(x, y, radius, radius);
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
      }
      void start ()
      {
          started = true;
      }
  }

  Ellipse r1 = new Ellipse(200,200);

void setup()
{
  size(1000, 1000); // size of window
  //background(#B7CCE3);
  ellipseMode(RADIUS); // sets ellipse mode to radius
}

//=============================================================================
//SPLASHSCREEN + INFO PAGE + COLOR PALETTE
void draw()
{
//=======================================================================
//COLOR PALETTE
<<<<<<< HEAD


//==============================================================================
//SPLASHSCREEN
  strokeWeight(3);
  noFill(); // removes fill from ellipse to make it look like a ripple

=======
    if(keyPressed)
    {
        if(key == 'c' || key == 'C')
        {
            palette++;
        }
    }
<<<<<<< Updated upstream
=======
    if (palette == 1)
    {
        line = #19323C;
        background = #B7CCE3;
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
>>>>>>> Stashed changes
//==============================================================================
//SPLASHSCREEN
  stroke(#19323C); // sets default colour for ripple
  strokeWeight(3);
  noFill(); // removes fill from ellipse to make it look like a ripple

  //background(#B7CCE3);
  color start = lerpColor(#B7CCE3,#19323C,0.6); //creates colours for fade out of ripple
  color mid = lerpColor(#B7CCE3,#19323C,0.3);
  color end = lerpColor(#B7CCE3,#19323C,0.1);
>>>>>>> parent of 3e75d8c... added additional color palette


  if(random(1,100) == 1)
  {
      r1.start();
  }
  r1.drawEllipse();





  //stroke(Mid);
<<<<<<< HEAD
  background(r1.getBackground());

  //ellipse(400, 200, radius, radius);
  //ellipse(300, 200, radius, radius);
  //ellipse(400, 200, radius, radius);
  //ellipse(200, 400, radius, radius);
  //ellipse(200, 600, radius, radius);
  //ellipse(200, 800, radius, radius);
  //ellipse(400, 400, radius, radius);
  //ellipse(600, 600, radius, radius);
=======
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
>>>>>>> parent of 3e75d8c... added additional color palette


}

//===================================================================
// SANDBOX
void mousePressed()
{

}

// increments palette to change colour palette of sandbox
void keyTyped()
{
    if(key == 'c' || key == 'C')
    {
        r1.changePalette();
    }
}
