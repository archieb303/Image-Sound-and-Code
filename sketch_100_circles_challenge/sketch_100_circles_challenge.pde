//create 100 circles of different size, color and random position
//animate each circle

float diam [] = new float[100]; // creates an array with 100 spaces
float xPos [] = new float[100];
float yPos [] = new float[100];
float red [] = new float[100];
float green [] =new float[100];
float blue []= new float[100];
float xSpeed[] = new float[100];
float ySpeed[] = new float[100];



void setup()
{
    size(1000,1000);
    background(255);
    for(int i = 0;i<diam.length;i++)
    {
        diam[i] = random(30,70);
        xPos[i] = random(width);
        yPos[i] = random(height);
        red[i] = random(255);
        green[i] = random(255);
        blue[i] = random(255);
        xSpeed[i] = random(1,3);
        ySpeed[i] = random(1,3);
    }
}
void draw()
{
    int r1 = int(random(1,100));
    for(int i= 0; i<100;i++)
    {
        fill(red[i],green[i],blue[i]);
        xPos[i]= xSpeed[i] + xPos[i];
        ellipse(xPos[i],yPos[i], diam[i], diam[i]);
        if(xPos[i] > width || xPos[i] < 0)
        {
            xSpeed[i] = xSpeed[i] * -1;
        }
    }
}
