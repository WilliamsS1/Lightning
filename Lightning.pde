import java.util.Random;

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int strokeWeight = 3;


void setup()
{
  size(300,300);
  background(0);
}
void draw()
{
  stroke((int)(Math.random()*256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  while(endX <= 300){
    strokeWeight(strokeWeight);
    endX = startX + (int)(Math.random() * 10);
    endY = startY + (int)(Math.random() * 19) - 9;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    strokeWeight += 1;
  }
  mousePressed();
}
void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  strokeWeight = 3;
}
