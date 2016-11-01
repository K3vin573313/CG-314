class Cars {

  int road, y;
  int x = 725;
  color theColor = color (random (1, 255), random (1, 255), random (1, 255));
  float r, g, b;
  int xDirection = 20;

  Cars (int tRoad) {
    road = tRoad;
    if (tRoad%3==1)
    {
      y=100;
    } else if (tRoad%3==2)
    {
      y=300;
    } 
    else if (tRoad%3==0)
    {
      y=500;
    }
  }

  public void display() {
    noStroke();
    rectMode(CENTER);
    fill(theColor);
    rect(x, y+50, 50, 30);
    fill(#000A0D);
    rect(x, y+50, 10, 25);
  }

  public void vroom() {
    delay(75);
    x-=50;
  }
  public int getX(){
  return x;
  }
  
  public int getRoad(){
  return road%3;
  }
  
}