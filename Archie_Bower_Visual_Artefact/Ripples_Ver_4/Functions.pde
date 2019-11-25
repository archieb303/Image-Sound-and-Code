
/*
void stall(int delay) // a function used to delay the program for a specified amount of time (seconds)
{
    int delayMillis;
    delayMillis = delay * 1000; // converts delay in seconds to milliseconds


}
*/

void menu()
{
    fill(line,opacity);

    PFont font1;
    PFont font2;
    font1 = createFont("Lucida Sans", 28);
    font2 = createFont("Lucida Sans", 20);
    textFont(font1);
    text("Welcome to the ripple simulator!", 10, 50);
    textFont(font2);
    text("============================================================================================", 0,80);
    text(" - Click and Drag to skim a stone", 10, 140);
    text(" - Press 'c' to change the colour", 10, 170);
    text(" - Press 'i' to bring up this information again", 10, 200);
    text("-= Press 'i' To Continue =-", 350, 300);

}

float x1, xL2, xL3, xL4, x5; // used in placing ripples for skipping stones
float y1, yL2, yL3, yL4, y5; // 'L' varibles are interpolated along the path

void skipLine()
{
    stroke(line, 100); // changes the stroke opacity
    line(pMousePosX,pMousePosY ,mouseX, mouseY); // draws a line between click and current mouse location
    stroke(line); // sets the stroke opacity to normal
}

void skipStone()
{

    //print("skip");
    // finds xy positions for the 4 ripples
    x1 = pMousePosX;
    xL2 = lerp(pMousePosX,mousePosX, 0.30);
    xL3 = lerp(pMousePosX,mousePosX, 0.60);
    xL4 = lerp(pMousePosX,mousePosX, 0.80);
    x5 = mousePosX;

    y1 = pMousePosY;
    yL2 = lerp(pMousePosY,mousePosY, 0.30);
    yL3 = lerp(pMousePosY,mousePosY, 0.60);
    yL4 = lerp(pMousePosY,mousePosY, 0.80);
    y5 = mousePosY;


    ellipse(x1, y1, radius,radius);
    if(millis() >= clickMillis + 2000)
    {
        ellipse(xL2, yL2, radius, radius);
    }
    if(millis() >= clickMillis + 3000)
    {
        ellipse(xL3,yL3, radius, radius);
    }
    if(millis()>= clickMillis + 3500)
    {
        ellipse(xL4,yL4, radius, radius);
    }
    if(millis() >= clickMillis + 3750)
    {
        ellipse(x5,y5, radius, radius);
    }
    print(clickMillis);
    //clickMillis = 0;


}
/*
void ripple()
{
    ellipse(mousePosX,mousePosY, radius,radius);

}
*/
