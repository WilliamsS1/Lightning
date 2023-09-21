import java.util.Random;

int startX = 0;//mouseX;
int startY = 0;//mouseY;
int endX = startX;
int endY = startY;
final int STROKE_WEIGHT = 10;


void setup()
{
  size(600,600);
  //noLoop();
}
void draw()
{  
  background(0);
  stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  while(endY <= 600){
    strokeWeight(STROKE_WEIGHT);
    //the lightning starts at the mouse when clicked and ends whenever it reaches the bottom of the window
    endX = startX + (int)(Math.random() * 31) - 15;
    endY = startY + (int)(Math.random() * 11);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  
}
void mousePressed()
{
  startX = mouseX;
  startY = mouseY;
  endX = startX;
  endY = startY;
}
