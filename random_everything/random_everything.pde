
int rand2 = int(random(10,20));

void setup()
{
  size(500,500);
  background(255);
}
void draw()
{
 int rand1 = int(random(100));
 for(int i=0; i<=100; i++)
 {
   noStroke();
   fill(random(200,255),random(200,255),random(200,255));
   
   if (rand1 % 2 == 0)
   {
     ellipse(random(width),random(height), 5,5);
   }
   else
   {
     rect(random(width),random(height), 5,5);
   }
 }
}
