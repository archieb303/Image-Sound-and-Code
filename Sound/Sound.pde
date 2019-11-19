import processing.sound.*;
SoundFile file;

void setup()
{
    size(1000,1000);
    background(155);

    file = new SoundFile(this, "delele_whooop.mp3");
    file.play();
}

void draw()
{
    
}
